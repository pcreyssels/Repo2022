using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Net.Http.Headers;
using System.Resources;
using System.Text;
using System.Threading;
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
using System.Xml.Linq;

namespace WpfAppNF48
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            string lg = "en-US";
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(lg);
            Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(lg);
            InitializeComponent();

            

            // resources de la page en cours définies dans Xaml
            //object o = this.FindResource("cle1");
            //bool b = Resources.Contains("cle1");
            //object c = Resources["cle1"];
            // label_1.Content = "toto";

            //label_2.Content = Resources["cle2"];
            object or = Resources["Texte1_fr"];

            //string localizedMessage = (string)Application.Current.FindResource("Texte1_fr");


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

        private void button_2_Click(object sender, RoutedEventArgs e)
        {
            Window1 window1 = new Window1();
            window1.Show();
        }

        private void dosomething()
        {
            //Resources["textResourceWindows"] = "ressource 1 sur windows changé";
            //string localizedMessage = (string)Application.Current.FindResource("Texte1_fr");
            //object o = Application.Current.FindResource("Texte1_fr");
            //o = "ce texte est en francais changé";
            //string j = "ce texte est en francais changé";

            int i = this.Resources.MergedDictionaries.Count();
            int j = App.Current.Resources.MergedDictionaries.Count();
            var rd = App.Current.Resources.MergedDictionaries[0];
            var rd2 = App.Current.Resources.MergedDictionaries[1];

            string locXamlFile = "MainWindow.fr-FR" + ".xaml";
            string directory = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);
            string inFile = System.IO.Path.Combine(directory, "Resources", locXamlFile);
            var languageDictionary = new ResourceDictionary();
            languageDictionary.Source = new Uri(inFile);
            App.Current.Resources.MergedDictionaries[0] = languageDictionary;

            locXamlFile = "Window1.fr-FR" + ".xaml";
            inFile = System.IO.Path.Combine(directory, "Resources", locXamlFile);
            var languageDictionary2 = new ResourceDictionary();
            languageDictionary2.Source = new Uri(inFile);
            App.Current.Resources.MergedDictionaries[1] = languageDictionary2;
            //Resources.MergedDictionaries.Add(languageDictionary2);
            int u = 0;
        }

        private void Button_switchfr_Click(object sender, RoutedEventArgs e)
        {
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("fr");
            Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("fr");
            
        }

        private void Button_switchen_Click(object sender, RoutedEventArgs e)
        {
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en");
            Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en");
        }

        private void button_Click_1(object sender, RoutedEventArgs e)
        {

            int nw = Application.Current.Windows.Count;

            foreach (Window w in Application.Current.Windows)
            {
                string n = w.Name;
                int i = 0;
                if (w.Name=="W1")
                {
                    w.Close();
                    string lg = "fr";
                    Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(lg);
                    Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(lg);
                    Window1 w1 = new Window1();
                   
                    w1.Show();
                }
            }
        }

        private void button_Click_2(object sender, RoutedEventArgs e)
        {
            Application.Current.MainWindow.Close();
            string lg = "fr";
            Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(lg);
            Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(lg);
            MainWindow mainWindow = new MainWindow();
            App.Current.MainWindow = mainWindow;
            mainWindow.Show();
            
        }

        private void button_10_Click(object sender, RoutedEventArgs e)
        {
            dosomething();
        }
    }
}
