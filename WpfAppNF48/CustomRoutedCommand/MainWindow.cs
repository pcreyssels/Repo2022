// // Copyright (c) Microsoft. All rights reserved.
// // Licensed under the MIT license. See LICENSE file in the project root for full license information.

using System.Collections.ObjectModel;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

namespace CustomRoutedCommand
{

    
    /// <summary>
    ///     Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private MainWindowVM vm;

        public static RoutedCommand ColorCmd = new RoutedCommand();

        public static RoutedCommand Command2 = new RoutedCommand();

        public ObservableCollection<String> OStringItems2;


        public MainWindow()
        {
            InitializeComponent();
            Debug.WriteLine("initialize mainwindows");
            string s = ColorCmd.Name;
            
            string t = "";
            vm = new MainWindowVM();
            DataContext = vm;

            OStringItems2 = new ObservableCollection<String>();
            OStringItems2.Add("un");
            OStringItems2.Add("deux");
            OStringItems2.Add("trois");

        }

        // ExecutedRoutedEventHandler for the custom color command.
        private void ColorCmdExecuted(object sender, ExecutedRoutedEventArgs e)
        {
            object so = e.Source;
            object oso = e.OriginalSource;
            object se = sender;
            
            Debug.WriteLine($" executed source {so.GetType().Name} -> name : {((FrameworkElement)so).Name}");
            Debug.WriteLine($"  sender {se.GetType().Name} -> name : {((FrameworkElement)se).Name}");
            Debug.WriteLine($"  original {oso.GetType().Name} -> name : {((FrameworkElement)oso).Name}");
            Debug.WriteLine($"  parameter {e.Parameter}"); 
            var target = e.Source as Panel;
            if (target != null)
            {
                target.Background = target.Background == Brushes.AliceBlue ? Brushes.LemonChiffon : Brushes.AliceBlue;
            }
        }

        

        // CanExecuteRoutedEventHandler for the custom color command.
        private void ColorCmdCanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            object so = e.Source;
            object se = sender;
            object oso = e.OriginalSource;
            Debug.WriteLine($" canexec {so.GetType().Name} -> name : {((FrameworkElement)so).Name}");
            Debug.WriteLine($"  sender {se.GetType().Name} -> name : {((FrameworkElement)se).Name}");
            Debug.WriteLine($"  original {oso.GetType().Name} -> name : {((FrameworkElement)oso).Name}");

            if (e.Source is Panel)
            {
                e.CanExecute = true;
            }
            else if (e.Source is Button)
            {
                e.CanExecute = true;
            }
            else
            {
                e.CanExecute = false;
            }
        }

        private void ColorCmdExecuted2(object sender, ExecutedRoutedEventArgs e)
        {
            object so = e.Source;
            object oso = e.OriginalSource;
            object se = sender;
            Debug.WriteLine($" executed2 source {so.GetType().Name} -> name : {((FrameworkElement)so).Name}");
            Debug.WriteLine($"  sender {se.GetType().Name} -> name : {((FrameworkElement)se).Name}");
            Debug.WriteLine($"  original {oso.GetType().Name} -> name : {((FrameworkElement)oso).Name}");
            var target = e.Source as Panel;
            if (target != null)
            {
                target.Background = target.Background == Brushes.AliceBlue ? Brushes.LemonChiffon : Brushes.AliceBlue;
            }
        }
        private void ColorCmdCanExecute2(object sender, CanExecuteRoutedEventArgs e)
        {
            object so = e.Source;
            object se = sender;
            object oso = e.OriginalSource;
            Debug.WriteLine($" canexec2 {so.GetType().Name} -> name : {((FrameworkElement)so).Name}");
            Debug.WriteLine($"  sender {se.GetType().Name} -> name : {((FrameworkElement)se).Name}");
            Debug.WriteLine($"  original {oso.GetType().Name} -> name : {((FrameworkElement)oso).Name}");

            if (e.Source is Panel)
            {
                e.CanExecute = true;
            }
            else if (e.Source is Button)
            {
                e.CanExecute = true;
            }
            else
            {
                e.CanExecute = false;
            }
        }
        private void ColorCmdExecuted20(object sender, ExecutedRoutedEventArgs e)
        {
        }

        private void ColorCmdCanExecute20(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = true;
        }

        private void ColorCmdExecuted3(object sender, ExecutedRoutedEventArgs e)
        {
        }

        private void ColorCmdCanExecute3(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute=true;
        }


        private void Command2Executed(object sender, ExecutedRoutedEventArgs e)
        {
        }

        private void Command2CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = true;
        }

        private void button01_Click(object sender, RoutedEventArgs e)
        {
            vm.Propstring="toto";
        }

        private void button02_Click(object sender, RoutedEventArgs e)
        {
            vm.Propbool = false;
            //vm.Propstring2 = "Hidden"; 
            vm.Propstring2 = "Collapsed";
        }

        private void Window_MouseUp(object sender, MouseButtonEventArgs e)
        {

        }
    }
}