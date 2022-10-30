using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization.Formatters.Binary;

using System.Runtime.Serialization;
using System.IO;
using System.Runtime.Serialization.Json;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace ConsoleApp1
{
    internal class Program
    {

        [DataContract]
        internal class Personx
        {
            [DataMember]
            internal string name;

            [DataMember]
            internal int age;

            [DataMember]
            public DateTime BirthDate { get; set; }
        }

        class CustomIsoDateTimeConverter : IsoDateTimeConverter
        {
            public CustomIsoDateTimeConverter()
            {
                base.DateTimeFormat = "yyyy-MM-ddTHH:mmZ";
            }
        }

        [JsonObject(MemberSerialization.OptIn)]
        public class Person
        {
            // "John Smith"
            [JsonProperty]
            public string Name { get; set; }

            // "2000-12-15T22:11:03"
            [JsonProperty]
            public DateTime BirthDate { get; set; }

            // new Date(976918263055)
            [JsonProperty]
            public DateTime LastModified { get; set; }

            // new Date(976918263055)
            [JsonProperty]
            [JsonConverter(typeof(CustomIsoDateTimeConverter))]
            public DateTime date1 { get; set; }

            [JsonProperty]
            [JsonConverter(typeof(IsoDateTimeConverter))]
            public DateTime date2 { get; set; }

            // not serialized because mode is opt-in
            public string Department { get; set; }
        }

        static void Main(string[] args)
        {

            Person p = new Person();
            p.Name = "SINCLAIR";
            p.date1 = new DateTime(2022, 01, 05,14,50,10);
            p.date2 = new DateTime(2022, 01, 05, 19, 59, 59);
            p.BirthDate = new DateTime(1966, 01, 08, 10, 50, 00);
            p.LastModified = DateTime.Now;
            string s =JsonConvert.SerializeObject(p);

            DateTime dt = DateTime.Now;
            string fileName = @"c:\tmp\info.txt";
            ISerializable now = dt;
            
            IFormatter formatter = new BinaryFormatter();
            IFormatter formatter2 = new NetDataContractSerializer();
            FileStream writer = new FileStream(fileName, FileMode.Create);
            DataContractSerializer ser = new DataContractSerializer(typeof(DateTime));
            DataContractJsonSerializerSettings settings = new DataContractJsonSerializerSettings();
            settings.DateTimeFormat = new DateTimeFormat("yyyy-MM-ddTHH:mmZ");
            DataContractJsonSerializer jsons = new DataContractJsonSerializer(typeof(DateTime),settings);
            //ser.WriteObject(writer, dt);
            DateTimeFormat df =  jsons.DateTimeFormat;
            jsons.WriteObject(writer, dt);
            writer.Close();
            int i = 0;

            //SerializationInfo si = new SerializationInfo(typeof(DateTime),)
            //now.GetObjectData(si,formatter2.Context);
        }
    }
}
