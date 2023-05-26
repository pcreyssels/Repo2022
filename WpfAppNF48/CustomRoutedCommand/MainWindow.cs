// // Copyright (c) Microsoft. All rights reserved.
// // Licensed under the MIT license. See LICENSE file in the project root for full license information.

using System.Collections.ObjectModel;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Globalization;
using System.Windows.Data;

namespace CustomRoutedCommand
{

    
    /// <summary>
    ///     Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //private MainWindowVM vm;

        public static RoutedCommand ColorCmd = new RoutedCommand();

        public static RoutedCommand Command2 = new RoutedCommand();

        public ObservableCollection<String> OStringItems2;


        public MainWindow()
        {
            InitializeComponent();
            Debug.WriteLine("initialize mainwindows");
            string s = ColorCmd.Name;
            
            string t = "";
            //vm = new MainWindowVM();
            //DataContext = vm;

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

        private void button_sw_Click(object sender, RoutedEventArgs e)
        {
            //if (vm.VisibilitySwitchs[0] == "Collapsed")
            //    vm.VisibilitySwitchs[0] = "Visible";
            //else if (vm.VisibilitySwitchs[0] == "Visible")
            //    vm.VisibilitySwitchs[0] = "Collapsed";

            vm.VisibilitySwitchs2["label4"] = "valeur t";
            vm.VisibilitySwitchs3["label4"] = "valeur t";

            vm.ItemsSwitch = "m_Dossiers:c sm_Support:h";
        }

        private void Window_MouseUp(object sender, MouseButtonEventArgs e)
        {
            
        }
    }

    public class ItemsSwitchConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {

            string _return = "Visible";

            if (value == null)
                return "Visible";

            if (parameter == null)
                parameter = "1";

            string source_value =(string)value;

            //m_Dossiers:v sm_Support:v

            string _parameter = (string)parameter;

            string s = "";
            //if (_parameter == "m_Dossiers")
            //{
                s = source_value.Substring(source_value.IndexOf(_parameter) + _parameter.Length + 1, 1);
            //}

            switch (s)
            {
                case "v":
                    _return = "Visible";
                    break;
                case "h":
                    _return = "Hidden";
                    break;
                case "c":
                    _return = "Collapsed";
                    break;
                default:
                    _return = "Visible";
                    break;
            }

            return _return;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotSupportedException();
        }
    }
}