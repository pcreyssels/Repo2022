using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WcfService1
{
    // REMARQUE : vous pouvez utiliser la commande Renommer du menu Refactoriser pour changer le nom de classe "Service1" dans le code, le fichier svc et le fichier de configuration.
    // REMARQUE : pour lancer le client test WCF afin de tester ce service, sélectionnez Service1.svc ou Service1.svc.cs dans l'Explorateur de solutions et démarrez le débogage.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }


        static int valeur;
        static Service1()
        {
            int i = 5;
            valeur = 6;
            string fullyQualifiedName = typeof(CustomBehaviorExtensionElement).AssemblyQualifiedName;
            string t = typeof(CustomBehaviorExtensionElement).Assembly.FullName;
            valeur = 8;
        }


        Service1()
        {
            int i = 5;
        }

        public Person SeriPerson(string t)
        {
            Person p = new Person();
            p.Name= t;
            p.date1 = new DateTime(2022, 01, 05, 14, 50, 10);
            p.date2 = new DateTime(2022, 01, 05, 19, 59, 59);
            p.BirthDate = new DateTime(1966, 01, 08, 10, 50, 00);
            p.LastModified = DateTime.Now;

            return p;
        }


        [OperationBehavior]
        public Person2 SeriPerson2(string t)
        {
            Person2 p = new Person2();
            p.Name = t;
            
            p.BirthDate = new DateTime(1966, 01, 08, 10, 50, 00);
           

            return p;
        }

        public string EchoWithGet(string s)
        {
            return "You said " + s;
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }
    }
}
