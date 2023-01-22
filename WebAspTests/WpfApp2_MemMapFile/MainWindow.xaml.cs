using System;
using System.Collections.Generic;
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

namespace WpfApp2_MemMapFile
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        bool mutexCreated;
        public MainWindow()
        {
            InitializeComponent();
            TextBox1.Text = "bonjour" + Environment.NewLine;
        }
        private void B1_readMMF_Click(object sender, RoutedEventArgs e)
        {
            //(((App)App.Current).mmf;
            //using (MemoryMappedViewStream stream = (((App)App.Current).mmf.CreateViewStream()))
            //{
            //    BinaryWriter writer = new BinaryWriter(stream);
            //    writer.Write("bonjour" + Environment.NewLine);
            //    TextBox1.AppendText("valeur ecrite dand MMF" + Environment.NewLine);
            //}
            Mutex m = Mutex.OpenExisting("testmapmutex");
            m.WaitOne(1000, true);
            using (MemoryMappedViewStream stream = (((App)App.Current).mmf.CreateViewStream()))
            {
                BinaryReader reader = new BinaryReader(stream);
                string s = reader.ReadString();
                TextBox1.AppendText(s + Environment.NewLine);
                //Console.WriteLine("Process A says: {0}", reader.ReadBoolean());
                //Console.WriteLine("Process B says: {0}", reader.ReadBoolean());
                //Console.WriteLine("Process C says: {0}", reader.ReadBoolean());
            }
            m.ReleaseMutex();
        }
    }
}
