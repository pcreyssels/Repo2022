using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace CustomRoutedCommand
{
    /// <summary>
    /// Logique d'interaction pour Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        Window1VM Wmw1;
        public Window1()
        {
            InitializeComponent();
            Wmw1 = new Window1VM();
            this.DataContext = Wmw1;
        }

        private void button0_Click(object sender, RoutedEventArgs e)
        {
            Wmw1.Propstring = "toto";
            Wmw1.OUser.Name = "COLLINS";
        }
    }
}
