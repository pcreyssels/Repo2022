using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
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
using System.Xml.Serialization;

namespace InputValidation
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {


        public static RoutedCommand Command1 { get; set; }

        public MainWindow()
        {
            InitializeComponent();
            
            Command1 = new RoutedCommand();
        }


        public void Command1Executed(object sender, ExecutedRoutedEventArgs e)
        {

            string p = (string)e.Parameter;
            
        }

        public void Command1CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            if (datePicker.SelectedDate != null) 
            {
                int i = ErrorDisplay.Items.Count;
                if (i == 0)
                    e.CanExecute = true;
                else
                    e.CanExecute = false;
            }
            else
                e.CanExecute = false;

        }
    }


    

}
