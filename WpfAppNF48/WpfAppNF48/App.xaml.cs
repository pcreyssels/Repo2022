using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;

namespace WpfAppNF48
{
    /// <summary>
    /// Logique d'interaction pour App.xaml
    /// </summary>
    public partial class App : Application
    {

        public static string _staticstring = "bonjour";

        App()
        {
            string lg = "fr";
           Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(lg);
       
        }
        
    }
}
