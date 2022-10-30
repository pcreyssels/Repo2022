using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.ServiceModel.Channels;
using System.ServiceModel.Description;
using System.ServiceModel.Dispatcher;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace ConsoleAppWCFHost
{
    internal class Class1 : Interface1
    {
        public string EchoWithGet(string s)
        {
            return "You said " + s;
        }

        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }
    }

    public class Consts
    {
        public const string WebHttpAddress = "http://localhost:45000/";
    }

    public class ClientJsonDateFormatterBehavior : IOperationBehavior
    {
        public void AddBindingParameters(OperationDescription operationDescription, BindingParameterCollection bindingParameters)
        {
            // throw new NotImplementedException();
        }

        public void ApplyClientBehavior(OperationDescription operationDescription, ClientOperation clientOperation)
        {
        }

        public void ApplyDispatchBehavior(OperationDescription operationDescription, DispatchOperation dispatchOperation)
        {
            dispatchOperation.Formatter = new ResponseJsonFormatter(operationDescription, dispatchOperation.Formatter);
        }

        public void Validate(OperationDescription operationDescription)
        {
            // throw new NotImplementedException();
        }
    }

    public class ResponseJsonFormatter : IDispatchMessageFormatter
    {
        IDispatchMessageFormatter basicDispatchMessageFormatter;
        OperationDescription Operation;
        public ResponseJsonFormatter(OperationDescription operation, IDispatchMessageFormatter inner)
        {
            this.Operation = operation;
            this.basicDispatchMessageFormatter = inner;
        }

        public void DeserializeRequest(Message message, object[] parameters)
        {
            //var bodyReader = message.GetReaderAtBodyContents();
            //bodyReader.ReadStartElement("Binary");
            //byte[] rawBody = bodyReader.ReadContentAsBase64();

            //string messageAsString;
            //using (var reader = new StreamReader(new MemoryStream(rawBody)))
            //    messageAsString = reader.ReadToEnd();

            //object jsonObj = JsonConvert.DeserializeObject(messageAsString);

            //parameters[0] = jsonObj;

            basicDispatchMessageFormatter.DeserializeRequest(message, parameters);
        }

        public Message SerializeReply(MessageVersion messageVersion, object[] parameters, object result)
        {
            string json = Newtonsoft.Json.JsonConvert.SerializeObject(result);
            byte[] bytes = Encoding.UTF8.GetBytes(json);
            //Message replyMessage = Message.CreateMessage(messageVersion, Operation.Messages[1].Action, new RawDataWriter(bytes));
            Message replyMessage = Message.CreateMessage(messageVersion, Operation.Messages[1].Action, new RawDataWriter(bytes));
            replyMessage.Properties.Add(WebBodyFormatMessageProperty.Name, new WebBodyFormatMessageProperty(WebContentFormat.Raw));
            return replyMessage;
        }
    }

    public class RawMapper : WebContentTypeMapper
    {
        public override WebContentFormat GetMessageFormatForContentType(string contentType)
        {
            return WebContentFormat.Raw;
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


}
