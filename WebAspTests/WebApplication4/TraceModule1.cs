using System;
using System.Web;

namespace WebApplication4
{
    public class TraceModule1 : IHttpModule
    {
        /// <summary>
        /// Vous devrez configurer ce module dans le fichier Web.config de votre
        /// projet Web et l'inscrire auprès des services IIS (Internet Information Services) pour pouvoir l'utiliser. Pour plus d'informations
        /// consultez le lien suivant : https://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region Membres IHttpModule

        public void Dispose()
        {
            //code de nettoyage ici.
        }

        public void Init(HttpApplication context)
        {
            // Exemple ci-dessous montrant comment gérer l'événement LogRequest et fournir 
            // une implémentation de journalisation personnalisée pour celui-ci
            context.LogRequest += new EventHandler(OnLogRequest);
        }

        #endregion

        public void OnLogRequest(Object source, EventArgs e)
        {
            //emplacement de la logique de journalisation personnalisée
        }
    }
}
