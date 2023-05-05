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

namespace DynamicLocalization
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            LocUtil.SetDefaultLanguage(this);

            // Adjust checked language menu item
            foreach ( MenuItem item in menuItemLanguages.Items )
            {
                if ( item.Tag.ToString().Equals(LocUtil.GetCurrentCultureName(this)) )
                    item.IsChecked = true;
            }
        }

        private void MenuItem_Click( object sender, RoutedEventArgs e )
        {
            foreach ( MenuItem item in menuItemLanguages.Items )
            {
                item.IsChecked = false;
            }

            MenuItem mi = sender as MenuItem; //Console.WriteLine("menu tag: " + mi.Tag.ToString());
            mi.IsChecked = true;
            //SwitchLanguage(mi.Tag.ToString());
            LocUtil.SwitchLanguage(this, mi.Tag.ToString());
        }
    }
}
