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
            string a = "";
            string b = null;

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
            
            //Task.Delay(4000);

            //string s = sr.ReadToEnd();
            //Textbox1.AppendText(s+Environment.NewLine);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

           // pipeClient.Connect();
            String? s = "";
            bool isc = pipeClient.IsConnected;
            
            //using (StreamReader sr = new StreamReader(pipeClient))
            //{
                // Display the read text to the console
                //s=sr.ReadToEnd();
                s= sr.ReadToEnd();
                //string temp;
                //while ((temp = sr.Read) != null)
                //{
                //    Textbox1.AppendText($"Received from server: {temp}");
                //}
            //}

            //int i = 0;
            int n = 0;
            //StringBuilder sw = new StringBuilder();
            //while (i != -1)
            //{
            //    i = pipeClient.ReadByte();
            //    n += 1;
            //}
            isc = pipeClient.IsConnected;

            //while (!sr.EndOfStream)
            //{
            //    int j = sr.Read();
            //}
            //int i = sr.Read(buffer,0,buffer.Length);
            Textbox1.AppendText($"valeur lue : {s} {Environment.NewLine}");
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            pipeClient.Connect(5000);
            bool isc = pipeClient.IsConnected;
            String? s = "";
        }
    }
}
