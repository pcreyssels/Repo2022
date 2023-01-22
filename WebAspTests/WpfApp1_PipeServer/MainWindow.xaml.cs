using System;
using System.Collections.Generic;
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
using System.IO.Pipes;
using System.IO;
using System.Timers;
using System.Windows.Threading;

namespace WpfApp1_PipeServer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public DispatcherTimer dispatcherTimer;
        Task t;
        Task t1;
        NamedPipeServerStream pipeServer;
        StreamWriter sw;
        public void SetTimer()
        {
            // Create a timer with a two second interval.
            dispatcherTimer = new System.Windows.Threading.DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 0, 2);
            dispatcherTimer.Start();

        }

        public void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            // code goes here
            //Textbox1.AppendText($"The Elapsed event was raised at {DateTime.Now.ToString("HH:mm:ss")}");
            if (t.IsCompleted)
            {

            }
        }

        public MainWindow()
        {
            InitializeComponent();
            Textbox1.AppendText("initialisation..Server." + Environment.NewLine);
            //SetTimer();

        // https://learn.microsoft.com/en-us/dotnet/api/system.io.pipes.namedpipeserverstream?view=net-7.0

            pipeServer = new NamedPipeServerStream("testpipe", PipeDirection.Out);
            sw = new StreamWriter(pipeServer);
            

            //Console.WriteLine("NamedPipeServerStream object created.");
            Textbox1.AppendText("NamedPipeServerStream object created." + Environment.NewLine);

            // Wait for a client to connect
            //Console.Write("Waiting for client connection...");
            Textbox1.AppendText("Waiting for client connection..." + Environment.NewLine);

            // pipeServer.WaitForConnection();
            Action myDelegate = new Action(MessageITC);
            void MessageITC()
            {
                Textbox1.AppendText("client connected " + Environment.NewLine);
            }
            pipeServer.WaitForConnection();
            Textbox1.AppendText("client connected " + Environment.NewLine);

            //t = pipeServer.WaitForConnectionAsync();
            //t1 = t.ContinueWith(t => { Dispatcher.Invoke(myDelegate); } );

            //t1.Wait();
            bool icn = pipeServer.IsConnected;
            //Task.Delay(2000);
            //using (StreamWriter sw = new StreamWriter(pipeServer))
            //{
            //    bool af = sw.AutoFlush;
                //sw.AutoFlush = true;
                //Console.Write("Enter text: ");
                //sw.WriteLine("bonjour vous"+ Environment.NewLine);

                //sw.WriteLine("bonjour nous" );
            //}
            icn = pipeServer.IsConnected;

            //Textbox1.AppendText("Client connected.");
            //try
            //{
            //    // Read user input and send that to the client process.
            //    using (StreamWriter sw = new StreamWriter(pipeServer))
            //    {
            //        sw.AutoFlush = true;
            //        Console.Write("Enter text: ");
            //        sw.WriteLine(Console.ReadLine());
            //    }
            //}
            //// Catch the IOException that is raised if the pipe is broken
            //// or disconnected.
            //catch (IOException e)
            //{
            //    Console.WriteLine("ERROR: {0}", e.Message);
            //}
            icn = pipeServer.IsConnected;

        }

        private void B1_Click(object sender, RoutedEventArgs e)
        {
            string texte = "envoie sur pipe ";
            
            bool icn = pipeServer.IsConnected;
            //using (StreamWriter sw = new StreamWriter(pipeServer))
            //{
            //    bool af = sw.AutoFlush;
                //sw.AutoFlush = true;
                //Console.Write("Enter text: ");
                sw.WriteLine(texte + Environment.NewLine);

                //sw.WriteLine("bonjour nous");
            //}
            Textbox1.AppendText(texte + Environment.NewLine);
        }
    }
}
