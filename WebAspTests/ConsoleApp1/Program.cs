using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Globalization;
using System.Reflection;
using System.Text.RegularExpressions;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {

            bool a1 = true;

            object ob = a1;

            string v = ob.ToString();

            bool br = true;
            bool tp = bool.TryParse(v, out br);

            string s0 = "bonjour";
            string s1 = "Bonjour";

            s0.ToLower();

            SqlDateTime sqlDateTime = new SqlDateTime();
            sqlDateTime = SqlDateTime.MinValue;
            DateTime dt=sqlDateTime.Value;
            //DateTime? dt2=SqlDateTime.Null.Value;

            string dtf = DateTime.Now.ToString("O");


            DateTime dtp = DateTime.ParseExact(dtf, "O", CultureInfo.InvariantCulture);

            // https://stackoverflow.com/questions/42355995/regex-to-match-date-formats-dd-mm-yyyy-and-dd-mm-yyyy
            // ^([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0]?[1-9]|[1][0-2])[./-]([0-9]{4}|[0-9]{2})$

            bool b = false;
            bool c = false;
            Regex rx = new Regex(@"^([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0]?[1-9]|[1][0-2])[./-]([0-9]{4}|[0-9]{2})$",
         RegexOptions.Compiled | RegexOptions.IgnoreCase);

            Regex rx2 = new Regex(@"^([0]?[1-9]|[1|2][0-9]|[3][0|1])[/]([0]?[1-9]|[1][0-2])[/]([0-9]{4}|[0-9]{2})$",
         RegexOptions.Compiled | RegexOptions.IgnoreCase);

            string s = "15/02/1978";
            b = rx.IsMatch(s);
            c= rx2.IsMatch(s);
            s = "15/02/1978";
            b = rx.IsMatch(s);
            c = rx2.IsMatch(s);
            s = "15-02-1978";
            b = rx.IsMatch(s);
            c = rx2.IsMatch(s);


            b = rx.IsMatch("15-02-1978");
            b = rx.IsMatch("15.02.1978");
            b = rx.IsMatch("15/15/1978");
            b = rx.IsMatch("15/15/1978");
            b = rx.IsMatch("15/15/1978");
            b = rx.IsMatch("15/15/1978");
            b = rx.IsMatch("15/15/1978");
            b = rx.IsMatch("15/15/1978");


            // SUCCESS:12 _ STATETEXT:Inscription phase 1 _ REFUGIESTATUS:0 _ INSTRUCTIONDATE:1901-02-02
            string ri = "SUCCESS:12 _ STATETEXT:Inscription phase 1 _ REFUGIESTATUS:0 _ INSTRUCTIONDATE:1901-02-02";
            int account_state = 0;
            string state_text = "";
            string sep = " _ ";
            DateTime instruction_date = DateTime.MinValue;
            bool refugie_status=false;
            string[] paramlist = ri.Split(new string[] { sep }, StringSplitOptions.None);
            for (int i = 0; i < paramlist.Length; i++)
            {
                if (paramlist[i].StartsWith("SUCCESS:"))
                {
                    account_state = Int32.Parse(paramlist[i].Substring(8));
                }
                else if (paramlist[i].StartsWith("STATETEXT:"))
                {
                    state_text = paramlist[i].Substring(10);
                }
                else if (paramlist[i].StartsWith("REFUGIESTATUS:"))
                {
                    string bs = paramlist[i].Substring(14);
                    if (bs == "0")
                        refugie_status = false;
                    else if (bs == "1")
                        refugie_status  |= true;

                }
                else if (paramlist[i].StartsWith("INSTRUCTIONDATE:"))
                {
                    string bs = paramlist[i].Substring(16);
                    instruction_date = DateTime.ParseExact(bs, "yyyy-MM-dd", null);

                }
            }

            ActivationContext ac = AppDomain.CurrentDomain.ActivationContext;
            if (ac != null)
            {
                ApplicationIdentity ai = ac.Identity;
                Console.WriteLine("Full name = " + ai.FullName);
                Console.WriteLine("Code base = " + ai.CodeBase);
            }

            DateTime dta = SqlDateTime.MinValue.Value;

            s = "System.Int32";
            object o = Activator.CreateInstance(Type.GetType(s));
            o = (Int32)125;
            Assembly ass = Assembly.GetAssembly(Type.GetType(s));
            string an = ass.GetName().FullName;
            //ObjectHandle handle = Activator.CreateInstance(an, "Int32");
            //object t = handle.Unwrap();


            int a = 3;
            List<int> li1 = new List<int>();
            try
            {
                if (a > 0)
                    throw new Exception();


            }
            catch (Exception e)
            {

                throw;
            }

            //string document_name = "chaine.toto.tata";
            //sep = new char[] { '.' };
            //string[] tc = document_name.Split(sep);


            //int li = document_name.LastIndexOf('.');
            //string _ext = document_name.Substring(li);

            //document_name = "chaine";
            //tc = document_name.Split(sep);
            //li = document_name.LastIndexOf('.');
            //if (li >= 0) _ext = document_name.Substring(li);

            //document_name = ".achaine";
            //tc = document_name.Split(sep);
            //li = document_name.LastIndexOf('.');
            //if (li >= 0) _ext = document_name.Substring(li);

            //document_name = "chaine.";
            //tc = document_name.Split(sep);
            //li = document_name.LastIndexOf('.');
            //if (li >= 0) _ext = document_name.Substring(li);

            //document_name = "chaine.tutu";
            //tc = document_name.Split(sep);
            //li = document_name.LastIndexOf('.');
            //if (li >= 0) _ext = document_name.Substring(li);


            //int i = 2;
            //int j = 3;

            //li = document_name.LastIndexOf('.');
        }
    }
}
