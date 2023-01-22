using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO.MemoryMappedFiles;
using System.IO;
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
using System.Threading;
using System.Diagnostics.Metrics;

namespace WpfApp_MemMapFile
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        public String v1 = "";
        bool mutexCreated;
        Mutex mutex;
        public MainWindow()
        {
            InitializeComponent();
            TextBox1.AppendText("hello"+Environment.NewLine);
            App.staticappvar = "bonjout static";
            TextBox1.AppendText(App.staticappvar + Environment.NewLine);
            TextBox1.AppendText(((App)App.Current).appvar + Environment.NewLine);
            ((App)App.Current).appvar = "appvar non static";
        }

        private void B1_writeMMF_Click(object sender, RoutedEventArgs e)
        {
            
            //(((App)App.Current).mmf;
            Mutex m = Mutex.OpenExisting("testmapmutex");
            m.WaitOne();
            using (MemoryMappedViewStream stream = (((App)App.Current).mmf.CreateViewStream()))
            {
                BinaryWriter writer = new BinaryWriter(stream);
                writer.Write(TextBox2.Text + Environment.NewLine);
                TextBox1.AppendText("valeur ecrite dand MMF" + Environment.NewLine);
            }
            m.ReleaseMutex();
            
        }
    }
}
