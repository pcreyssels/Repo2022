using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace WebApplication5
{
    // https://weblogs.asp.net/imranbaloch/using-response-redirect-effectively
    // utilisation correcte du response.redirect avec l'option booléenne false (url, false)
    public static class HttpResponseExtensions
    {
        public static void RedirectUser(this HttpResponse response, string url)
        {
            Debug.WriteLine(" ********** debut RedirectUser");
            if (response.IsRequestBeingRedirected)
                return;
            response.Redirect(url, false);
            var context = HttpContext.Current;
            if (context != null)
            {
                context.ApplicationInstance.CompleteRequest();
            }
            Debug.WriteLine(" ********** fin RedirectUser");
        }
    }
}