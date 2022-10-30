using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.ServiceModel.Configuration;
using System.ServiceModel.Description;
using System.ServiceModel.Dispatcher;
using System.Text;
using System.Web;
using System.Xml;

namespace WcfService1
{



    class CustomIsoDateTimeConverter : IsoDateTimeConverter
    {
        public CustomIsoDateTimeConverter()
        {
            base.DateTimeFormat = "yyyy-MM-ddTHH:mmZ";
        }
    }

    // ********************** BLOC EXEMPLE *******************
    public class ClientJsonDateFormatter : IOperationBehavior
    {
        public void AddBindingParameters(OperationDescription operationDescription, BindingParameterCollection bindingParameters) { }

        public void ApplyClientBehavior(OperationDescription operationDescription, ClientOperation clientOperation) { }

        public void ApplyDispatchBehavior(OperationDescription operationDescription, DispatchOperation dispatchOperation)
        {
            dispatchOperation.Formatter = new ResponseJsonFormatter(operationDescription);
        }

        public void Validate(OperationDescription operationDescription) { }
    }

    public class ResponseJsonFormatter : IDispatchMessageFormatter
    {
        OperationDescription Operation;
        public ResponseJsonFormatter(OperationDescription operation)
        {
            this.Operation = operation;
        }

        public void DeserializeRequest(Message message, object[] parameters)
        {
        }

        public Message SerializeReply(MessageVersion messageVersion, object[] parameters, object result)
        {
            string json = Newtonsoft.Json.JsonConvert.SerializeObject(result);
            byte[] bytes = Encoding.UTF8.GetBytes(json);
            Message replyMessage = Message.CreateMessage(messageVersion, Operation.Messages[1].Action, new RawDataWriter(bytes));
            replyMessage.Properties.Add(WebBodyFormatMessageProperty.Name, new WebBodyFormatMessageProperty(WebContentFormat.Raw));
            return replyMessage;
        }
    }


    class RawDataWriter : BodyWriter
    {
        byte[] data;
        public RawDataWriter(byte[] data)
            : base(true)
        {
            this.data = data;
        }

        protected override void OnWriteBodyContents(XmlDictionaryWriter writer)
        {
            writer.WriteStartElement("Binary");
            writer.WriteBase64(data, 0, data.Length);
            writer.WriteEndElement();
        }
    }
    // ********************** BLOC EXEMPLE *******************

    public class NewtonsoftJsonDispatchFormatter : IDispatchMessageFormatter
    {
        IDispatchMessageFormatter innerDispatchFormatter;
        ParameterInfo[] parameterInfos;
        string operationName;
        string action;
        EndpointAddress address;
        public void DeserializeRequest(Message message, object[] parameters)
        {
            Uri via = null;
            if (message.Properties.ContainsKey("Via"))
            {
                via = message.Properties["Via"] as Uri;
            }

            string queryString = null;
            if (via != null && !String.IsNullOrEmpty(via.ToString()))
            {
                queryString = via.Query;
            }
            DeserializeParameters(parameterInfos, ParseQueryString(queryString), parameters);
        }
        public Message SerializeReply(MessageVersion messageVersion, object[] parameters, object result)
        {
            return innerDispatchFormatter.SerializeReply(messageVersion, parameters, result);
        }

        void DeserializeParameters(ParameterInfo[] parameterInfos, Dictionary<string, string> dictionary, object[] parameters)
        {
            if (parameterInfos.Length != parameters.Length)
                throw new ArgumentException("ParameterInfo(s) and parameter(s) must conain the same number of items.");

            for (int i = 0; i < parameters.Length; i++)
            {
                string value;
                if (dictionary.TryGetValue(parameterInfos[i].Name.ToLowerInvariant(), out value))
                {
                    TypeConverter converter = TypeDescriptor.GetConverter(parameterInfos[i].ParameterType);
                    object typedValue = converter.ConvertFromString(value);
                    parameters[i] = typedValue;
                }
                else
                {
                    //ignore missing parameters
                }
            }
        }


        public static Dictionary<string, string> ParseQueryString(string queryString)
        {
            Dictionary<string, string> dictionary = new Dictionary<string, string>();
            if (queryString == null)
            {
                return dictionary;
            }

            if ((queryString.Length > 0) && (queryString[0] == '?'))
                queryString = queryString.Substring(1);

            // parse and populate dictionary containing parameter names and values
            string[] keyValuePairs = queryString.Split('&');
            foreach (string keyValuePair in keyValuePairs)
            {
                int equalsIndex = keyValuePair.IndexOf('=');
                string key, value;
                if (equalsIndex < 0)
                {
                    key = keyValuePair;
                    value = string.Empty;
                }
                else
                {
                    key = keyValuePair.Substring(0, equalsIndex);
                    value = keyValuePair.Substring(equalsIndex + 1, keyValuePair.Length - equalsIndex - 1);
                }

                dictionary.Add(
                    HttpUtility.UrlDecode(key).ToLowerInvariant(),
                    HttpUtility.UrlDecode(value));
            }
            return dictionary;
        }

    }

    //public class NewtonsoftJsonBehaviorExtension : BehaviorExtensionElement
    //{
    //    public override Type BehaviorType
    //    {
    //        get { return typeof(NewtonsoftJsonBehavior); }
    //    }

    //    protected override object CreateBehavior()
    //    {
    //        return new NewtonsoftJsonBehavior();
    //    }
    //}

    public class NewtonsoftJsonContentTypeMapper : WebContentTypeMapper
    {
        public override WebContentFormat GetMessageFormatForContentType(string contentType)
        {
            return WebContentFormat.Raw;
        }
    }


    //public class NewtonsoftJsonBehavior : WebHttpBehavior
    //{
    //    protected override IDispatchMessageFormatter GetRequestDispatchFormatter(OperationDescription operationDescription, ServiceEndpoint endpoint)
    //    {
    //        return new NewtonsoftJsonDispatchFormatter(operationDescription, true);
    //    }

    //    protected override IDispatchMessageFormatter GetReplyDispatchFormatter(OperationDescription operationDescription, ServiceEndpoint endpoint)
    //    {
    //        return new NewtonsoftJsonDispatchFormatter(operationDescription, false);
    //    }
    //}

    [JsonObject(MemberSerialization.OptIn)]
    [Serializable]
    public class Person : ISerializable
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
        [DataMember]
        public DateTime date2 { get; set; }

        // not serialized because mode is opt-in
        [IgnoreDataMember]
        public string Department { get; set; }

        public Person()
        {

        }

        protected Person(SerializationInfo info, StreamingContext context)
        {
            if (info == null)
                throw new System.ArgumentNullException("info");
            Name = (string)info.GetValue("Name", typeof(string));
            BirthDate = (DateTime)info.GetValue("BirthDate", typeof(DateTime));
            LastModified = (DateTime)info.GetValue("LastModified", typeof(DateTime));
            date1 = (DateTime)info.GetValue("date1", typeof(DateTime));
            date2 = (DateTime)info.GetValue("date2", typeof(DateTime));

        }

        [OnSerializing()]
        internal void OnSerializingMethod(StreamingContext context)
        {
            StreamingContextStates scs = context.State;
            int i = 0;
        }

        [OnSerialized()]
        internal void OnSerializedMethod(StreamingContext context)
        {
            StreamingContextStates scs = context.State;
            int i = 0;
        }

        [OnDeserializing()]
        internal void OnDeserializingMethod(StreamingContext context)
        {
            StreamingContextStates scs = context.State;
            int i = 0;
        }

        [OnDeserialized()]
        internal void OnDeserializedMethod(StreamingContext context)
        {
            StreamingContextStates scs = context.State;
            int i = 0;
        }
        public virtual void GetObjectData(
        SerializationInfo info, StreamingContext context)
        {
            if (info == null)
                throw new System.ArgumentNullException("info");
            int i = info.MemberCount;

            info.AddValue("date2", date2.ToString("yyyy-MM-ddTHH:mmZ"));
        }

        
    }



    public class Person2
    {
        public string Name { get; set; }

        public DateTime BirthDate { get; set; }

    }
}