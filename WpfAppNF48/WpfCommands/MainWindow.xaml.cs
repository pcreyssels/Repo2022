using System;
using System.Collections.Generic;
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

namespace WpfCommands
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            //MainWindowViewModel mwvm = new MainWindowViewModel();
            //mwvm.Propdouble = 222;
            //mwvm.Propint = 15;

            //this.DataContext = mwvm;

            MainWindowViewModel mvvm = (MainWindowViewModel)DataContext;
            mvvm.Propdouble = 34;
        }



        private void Button_command2_Click(object sender, RoutedEventArgs e)
        {
            MainWindowViewModel mvvm = (MainWindowViewModel)DataContext;
            mvvm.User2.Name = "Test2";
        }

        private void Button_command3_Click(object sender, RoutedEventArgs e)
        {
            MainWindowViewModel mvvm = (MainWindowViewModel)DataContext;
            mvvm.User2.Age = 7;
        }
    }
}
