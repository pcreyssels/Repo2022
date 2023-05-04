using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfAppNF48
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            // resources de la page en cours définies dans Xaml
            object o = this.FindResource("cle1");
            bool b = Resources.Contains("cle1");
            object c = Resources["cle1"];
            label_1.Content = "toto";

            label_2.Content = Resources["cle2"];

            // ressource dans le dictionary (dictionnaire de ressources)
            //object p = this.FindResource("WindowTitle");

            String h = ConfigurationManager.AppSettings["param2"];

            // compatible avec langue définie dans le thread (fichier .resx)
            string t = Properties.Resources.Texte1;
            
            // resources dans Properties/Settings.settings
            var v1 = Properties.Settings.Default.Properties["Param1"].DefaultValue;
            var v2 = Properties.Settings.Default.Properties["Param1"].PropertyType;

            // accès direct
            int u = Properties.Settings.Default.Param2;

       

            int j = 0;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        // https://www.c-sharpcorner.com/article/static-dynamic-resources-in-wpf/ (ressources dynamiques)
        private void button_1_Click(object sender, RoutedEventArgs e)
        {
            // changement label sur bouton 3
            Resources["cle2"] = "bonjour";
        }
    }
}
