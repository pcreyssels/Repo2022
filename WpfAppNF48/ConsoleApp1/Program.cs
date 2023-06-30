using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {


            DateTime myDate = default(DateTime);

            DateTime myDate2 = DateTime.MinValue ;

            bool b = (myDate == myDate2);
           

            DataTable dt = new DataTable();
            dt.TableName = "tablePerson";
            dt.Columns.Add("FirstName", Type.GetType("System.String"));
            dt.Columns.Add("LastName", Type.GetType("System.String"));
            dt.Columns.Add("Age", Type.GetType("System.Int32"));

            object[] rowArray = new object[3];
            DataRow dr;
            for (int i = 0; i < 10; i++)
            {
                rowArray[0] = "Nom"+i.ToString();
                rowArray[1] = "PreNom" + i.ToString();
                rowArray[2] = 10 + i;
                dr = dt.NewRow();
                dr.ItemArray = rowArray;
                dt.Rows.Add(dr);
            }

            // https://www.c-sharpcorner.com/UploadFile/9bff34/3-ways-to-convert-datatable-to-json-string-in-Asp-Net-C-Sharp/
            string JSONString = string.Empty;
            JSONString = JsonConvert.SerializeObject(dt);

            XmlSerializer serializer = new XmlSerializer(typeof(DataTable));
            StringBuilder stringBuilder = new StringBuilder();
            StringWriter sWriter = new StringWriter(stringBuilder);
            serializer.Serialize(sWriter, dt);
            string r = stringBuilder.ToString();


            XmlSerializer serializer2 = new XmlSerializer(typeof(DataTable));
            StringReader rReader = new StringReader(r);
            object o = serializer2.Deserialize(rReader);
            DataTable dt2 = (DataTable) o;





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
