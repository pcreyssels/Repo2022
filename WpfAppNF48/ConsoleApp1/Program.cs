using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Class1 class1 = new Class1();
            class1.MyList.Add("bonjour");

            Debug.WriteLine($"list count {class1.MyList.Count}");

            class1.MyList.Add("aurevoir");

            Debug.WriteLine($"list count {class1.MyList.Count}");

            // m_Dossiers:v sm_Support:v

            string sts = "m_Dossiers";
            string h = " m_Dossiers:t sm_Support:v";
            string s = h.Substring(h.IndexOf(sts) + sts.Length + 1, 1);

            string y = "";
        }
    }
}
