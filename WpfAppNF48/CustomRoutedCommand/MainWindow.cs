// // Copyright (c) Microsoft. All rights reserved.
// // Licensed under the MIT license. See LICENSE file in the project root for full license information.

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
        public static RoutedCommand ColorCmd = new RoutedCommand();

        public MainWindow()
        {
            InitializeComponent();
            Debug.WriteLine("initialize mainwindows");
        }

        // ExecutedRoutedEventHandler for the custom color command.
        private void ColorCmdExecuted(object sender, ExecutedRoutedEventArgs e)
        {
            object so = e.Source;
            object oso = e.OriginalSource;
            object se = e.Source;
            Debug.WriteLine($" executed source {so.GetType().Name} -> name : {((FrameworkElement)so).Name}");
            Debug.WriteLine($"  sender {se.GetType().Name} -> name : {((FrameworkElement)se).Name}");
            Debug.WriteLine($"  original {oso.GetType().Name} -> name : {((FrameworkElement)oso).Name}");
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
            object se = e.Source;
            object oso = e.OriginalSource;
            Debug.WriteLine($" canexec {so.GetType().Name} -> name : {((FrameworkElement)so).Name}");
            Debug.WriteLine($"  sender {se.GetType().Name} -> name : {((FrameworkElement)se).Name}");
            Debug.WriteLine($"  original {oso.GetType().Name} -> name : {((FrameworkElement)oso).Name}");

            if (e.Source is Panel)
            {
                e.CanExecute = true;
            }
            else
            {
                e.CanExecute = false;
            }
        }
    }
}