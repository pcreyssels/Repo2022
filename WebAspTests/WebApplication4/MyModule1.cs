using System;
using System.Diagnostics;
using System.Web;

namespace WebApplication4
{
    public class MyModule1 : IHttpModule
    {
        /// <summary>
        /// Vous devrez configurer ce module dans le fichier Web.config de votre
        /// projet Web et l'inscrire auprès des services IIS (Internet Information Services) pour pouvoir l'utiliser. Pour plus d'informations
        /// consultez le lien suivant : https://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region Membres IHttpModule

        DateTime beginrequest;

        public void Dispose()
        {
            //code de nettoyage ici.
        }

        public void Init(HttpApplication context)
        {
            // Exemple ci-dessous montrant comment gérer l'événement LogRequest et fournir 
            // une implémentation de journalisation personnalisée pour celui-ci
            context.LogRequest += new EventHandler(OnLogRequest);
            DefaultTraceListener dtl = (DefaultTraceListener)Trace.Listeners[0];
            dtl.WriteLine("log info from mymodule1  Init");

            context.BeginRequest += context_BeginRequest;
            context.EndRequest += context_EndRequest;
            
        }

        #endregion

        public void OnLogRequest(Object source, EventArgs e)
        {
            //emplacement de la logique de journalisation personnalisée
            DefaultTraceListener dtl = (DefaultTraceListener)Trace.Listeners[0];
            dtl.WriteLine("log info from mymodule1 OnLogRequest");
        }

        public void context_BeginRequest(object sender, EventArgs e)
        {
            // obtain the time of the current request
            beginrequest = DateTime.Now;
            DefaultTraceListener dtl = (DefaultTraceListener)Trace.Listeners[0];
            dtl.WriteLine("log info from mymodule1  OnBeginRequest");
        }

        public void context_EndRequest(object sender, EventArgs e)
        {
            // obtain the time of the current request
            beginrequest = DateTime.Now;
            DefaultTraceListener dtl = (DefaultTraceListener)Trace.Listeners[0];
            dtl.WriteLine("log info from mymodule1  OnEndRequest");
        }
    }
}
