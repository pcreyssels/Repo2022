using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using System.ServiceModel.Description;

namespace ConsoleAppWCFHost
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ServiceHost host;
            host = new ServiceHost(typeof(Class1    ));
            host.AddServiceEndpoint(typeof(Interface1), new WebHttpBinding(), Consts.WebHttpAddress);

            foreach (var endpoint in host.Description.Endpoints)
            {
                WebHttpBinding wb = new WebHttpBinding();
                wb.ContentTypeMapper = new RawMapper();
                Type t = endpoint.Binding.GetType();
                if (endpoint.Address.Uri.Scheme.StartsWith("http"))
                {
                    
                    foreach (var operation in endpoint.Contract.Operations)
                    {
                        operation.OperationBehaviors.Add(new ClientJsonDateFormatterBehavior());
                    }
                    endpoint.Behaviors.Add(new WebHttpBehavior());
                }
            }

            host.Open();
            Console.WriteLine("Host opened. Hit button to shut it down.");
            Console.Read();
        }
    }
}
