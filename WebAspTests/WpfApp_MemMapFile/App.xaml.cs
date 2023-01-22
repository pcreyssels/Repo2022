using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.IO.MemoryMappedFiles;
using System.IO;
using System.Threading;
using System.Diagnostics.Metrics;

namespace WpfApp_MemMapFile
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    /// 
    public partial class App : Application
    {
        public string appvar = "bonjour";
        public static string staticappvar = "bonjour";
        public MemoryMappedFile mmf;
        Mutex mutex;
        public App()
        {
            mmf = MemoryMappedFile.CreateOrOpen("testmap", 10000);
            mutex = new Mutex(false, "testmapmutex");
            //using (MemoryMappedViewStream stream = mmf.CreateViewStream())
            //{
            //    BinaryWriter writer = new BinaryWriter(stream);
            //    writer.Write(1);
            //}
        }
    }
}
