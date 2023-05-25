// // Copyright (c) Microsoft. All rights reserved.
// // Licensed under the MIT license. See LICENSE file in the project root for full license information.

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
        public static RoutedCommand ColorCmd = new RoutedCommand();
        
        public MainWindow()
        {
            InitializeComponent();
        }

        // ExecutedRoutedEventHandler for the custom color command.
        private void ColorCmdExecuted(object sender, ExecutedRoutedEventArgs e)
        {
            object so = e.Source;
            var target = e.Source as Panel;
            if (target != null)
            {
                target.Background = target.Background == Brushes.AliceBlue ? Brushes.LemonChiffon : Brushes.AliceBlue;
            }
        }

        // CanExecuteRoutedEventHandler for the custom color command.
        private void ColorCmdCanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            Debug.WriteLine(e.Source.GetType().FullName);
            FrameworkElement fe = (FrameworkElement)e.Source;
            Debug.WriteLine(" Name -> "+fe.Name);
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

        private void Window_MouseUp(object sender, MouseButtonEventArgs e)
        {

        }
    }
}