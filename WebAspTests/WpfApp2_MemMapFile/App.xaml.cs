using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO.MemoryMappedFiles;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace WpfApp2_MemMapFile
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    /// public string appvar = "bonjour";

    public partial class App : Application
    {
        public static string staticappvar = "bonjour";
        public MemoryMappedFile mmf;

        public App()
        {
            mmf = MemoryMappedFile.CreateOrOpen("testmap",10000);
        }
    }
}
