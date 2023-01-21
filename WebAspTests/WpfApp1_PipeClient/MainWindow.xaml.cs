using System;
using System.Collections.Generic;
using System.IO.Pipes;
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

namespace WpfApp1_PipeClient
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        StreamReader sr;
        NamedPipeClientStream pipeClient;
        char[] buffer;
        public MainWindow()
        {
            InitializeComponent();
            Textbox1.AppendText("initialisation..Client." + Environment.NewLine);

            // https://learn.microsoft.com/en-us/dotnet/api/system.io.pipes.namedpipeclientstream?view=net-7.0
            buffer = new char[1024];

            pipeClient = new NamedPipeClientStream(".", "testpipe", PipeDirection.In);
            // Connect to the pipe or wait until the pipe is available.
            Textbox1.AppendText("Attempting to connect to pipe..." + Environment.NewLine);
            pipeClient.Connect();
                
            Textbox1.AppendText("Connected to pipe." + Environment.NewLine);
            Textbox1.AppendText($"There are currently {pipeClient.NumberOfServerInstances} pipe server instances open.");
            sr = new StreamReader(pipeClient);
            
            //string s = sr.ReadToEnd();
            
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            while (!sr.EndOfStream)
            {
                int j = sr.Read();
            }
            int i = sr.Read(buffer,0,buffer.Length);
            Textbox1.AppendText("valeur lue : "+Environment.NewLine);
        }
    }
}
