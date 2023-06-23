using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Windows;

namespace WpfMvvmTest
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public ProductViewModel VM;
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            WpfMvvmTest.MainWindow window = new MainWindow();
            VM = new ProductViewModel();
            window.DataContext = VM;
            window.Show();
        }
    }
}
