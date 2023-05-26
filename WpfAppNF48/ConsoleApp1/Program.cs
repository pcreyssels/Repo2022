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

            

            string menuItemsSwitch = "m_Dossiers:v sm_Support:v sm_Recevabilite:v sm_Instruction:v " +
            "m_Facturation:v sm_FacturesEmises:v" +
            "m_Referentiels:v sm_RefPays:v sm_RefEtablissements:v sm:RefDiplomes:v sm:RefRaisons:v " +
            "m_Communication:v sm_Statistiques:v sm_Notifications:v " +
            "m_Administration:v sm_GestionZonePays:v sm_GestionDossiers:v sm_GestionInstitutions:v sm_GestionUtilisateurs:v";

            char rc = 'h';
            
            StringBuilder sb = new StringBuilder(menuItemsSwitch);
            //string _vars = "m_Facturation";
            //int pi = menuItemsSwitch.IndexOf(_vars) + _vars.Length + 1;
            //sb[pi] = rc;
            //menuItemsSwitch = sb.ToString();

            int pi = 0;
            int si = 0;
            while (true)
            {
                pi = menuItemsSwitch.IndexOf(":", si);
                if (pi < 0)
                    break;
                sb[pi + 1] = rc;
                menuItemsSwitch = sb.ToString();
                si = pi + 1;
            }
            
            


            string y = "";
        }
    }
}
