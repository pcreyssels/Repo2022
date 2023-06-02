using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfMvvmTest
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ListViewEmployeeDetails_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }

        private void btnUpdate2_Click(object sender, RoutedEventArgs e)
        {
            BindingExpression binding = txtID.GetBindingExpression(TextBox.TextProperty);
            BindingExpression binding2 = ((TextBox)this.FindName("txtID")).GetBindingExpression(TextBox.TextProperty);
            binding2.UpdateSource();
        }
    }
}
