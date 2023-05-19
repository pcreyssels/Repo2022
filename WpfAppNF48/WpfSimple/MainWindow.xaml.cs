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

namespace WpfSimple
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        // https://www.codeproject.com/Articles/126249/MVVM-Pattern-in-WPF-A-Simple-Tutorial-for-Absolute
        public MainWindow()
        {
            InitializeComponent();
            int cbc = TextBox1.CommandBindings.Count;

            int i = 0;
        }
    }
}
