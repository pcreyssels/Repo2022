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
        // 
        /*
         * 
         * la commutation par les thread ne marchen pas comme pour asp
         * pour le changement dynamique de langue il faut relancer le thread principal ce qui rrique de réinitialiser l'état de l'application => sujet non exploré
         * par contre pour le changement de langue à l'initialisation on peut définir les parametres de culture du thread : 
         *   Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(culturecode-REGIONCODE);
             Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(culturecode-REGIONCODE);
         *  puis définir l'espace xmlns:CC="clr-namespace:WpfAppNF48.Properties, dans la fenêtre qui affichera les controle
         *  créer dans le dossier 'Properties' (automatiquement crée par Vstudio) du projet les fichiers Resources.xx-YY.resx avec les termes de langues et referencer ces données 
         *  dans un controle par exemple pour la variable
         *  'InfoResxFile':
         *  <Button x:Name="button_1" Content="{x:Static CC:Resources.InfoResxFile}" HorizontalAlignment="Left" Margin="149,56,0,0" VerticalAlignment="Top" Height="28" Width="175"/>
         *  par contre les paramètres de langues classés par fichier resx de la forme NomFenetre.xaml.culturecode-REGIONCODE.resx ne semble pas marcher comme dans
         *  asp.net
         *  
         * paramétrage des langues dynamique par resourcedictionary :
         * créer un répertoire 'Resources' dans le projet puis ajouter nouvel element -> dictionnaire de ressources (wpf) les nommer pour plus de clarté
         * NomFenetre.culturecode-REGIONCODE.xaml:
         * dans les propriétés de ce fichier mettre 'action de génération = contenu' et 'copier dans le répertoire de sortie = copier si plus récent'
         * y rajouter deux string (par exemple) x:Key pour plus de clarte doit referencer le feneetre (par ex : nomfenetre_novariable)
         *      <ResourceDictionary xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
                         xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
                         xmlns:sys="clr-namespace:System;assembly=mscorlib">
                     <sys:String x:Key="ResourceDictionaryName">Loc-en-US</sys:String> <-- ce paramètre est commun pour nommer le dictionniare
                     <sys:String x:Key="MainWindows_RessourceWin1">RessourceWin1 fr-FR</sys:String>
         *      </ResourceDictionary>
         * créer au niveaude l'application dans App.xaml des references aux dictionnaires les referencer tous
         * <Application.Resources>
                <ResourceDictionary>
                    <ResourceDictionary.MergedDictionaries>
                        <ResourceDictionary Source="Resources/MainWindow.en-US.xaml"/>
                        <ResourceDictionary Source="Resources/Window1.en-US.xaml"/>
                    </ResourceDictionary.MergedDictionaries>
                </ResourceDictionary>
            </Application.Resources>
         * 
         * commuter les langues :
         * dans le code accéder au dixtionnaires via : App.Current.Resources.MergedDictionaries
         * puis accéder au fichier ressource désiré 
         * mettre un paramètre dont le nom est commun merged dictionary pour repérer leurs languesles merged dictionary
         *              <sys:String x:Key="ResourceDictionaryName">Loc-en-US</sys:String>
         *       
         *       string locXamlFile = "MainWindow.fr-FR" + ".xaml";
                 string directory = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);
                 string inFile = System.IO.Path.Combine(directory, "Resources", locXamlFile);
                 var languageDictionary = new ResourceDictionary();
                 languageDictionary.Source = new Uri(inFile);
            --> repérer le dictionnaire de la langue dans MergedDictionaries et lui affecter le resourceDictionary 
                créé dynamiquement à partir du fichier de resources xaml du dossier Resources.
                 App.Current.Resources.MergedDictionaries[0] = languageDictionary;
         * 
         */


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
                if (w.Name == "W1")
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
