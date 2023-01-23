using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            int a = 3;

            try
            {
                if (a > 0)
                    throw new Exception();


            }
            catch (Exception e )
            {

                throw;
            }

            string document_name = "chaine.toto.tata";
            char[] sep = new char[] { '.' };
            string[] tc = document_name.Split(sep);
            

            int li = document_name.LastIndexOf('.');
            string _ext = document_name.Substring(li);

            document_name = "chaine";
            tc = document_name.Split(sep);
            li = document_name.LastIndexOf('.');
            if (li>=0) _ext = document_name.Substring(li);

            document_name = ".achaine";
            tc = document_name.Split(sep);
            li = document_name.LastIndexOf('.');
            if (li >= 0)  _ext = document_name.Substring(li);

            document_name = "chaine.";
            tc = document_name.Split(sep);
            li = document_name.LastIndexOf('.');
            if (li >= 0)  _ext = document_name.Substring(li);

            document_name = "chaine.tutu";
            tc = document_name.Split(sep);
            li = document_name.LastIndexOf('.');
            if (li >= 0)  _ext = document_name.Substring(li);


            int i = 2;
            int j = 3;

            li = document_name.LastIndexOf('.');
        }
    }
}
