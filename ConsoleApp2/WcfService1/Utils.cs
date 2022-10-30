using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices.ComTypes;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.ServiceModel.Configuration;
using System.ServiceModel.Description;
using System.ServiceModel.Dispatcher;
using System.Web;

namespace WcfService1
{
    public class Utils
    {

    }
    public class MyMessageInspector : IDispatchMessageInspector
    {
        public object AfterReceiveRequest(ref Message request, IClientChannel channel, InstanceContext instanceContext)
        {
            //MessageBuffer mb = request.CreateBufferedCopy(10000);
            //MemoryStream memStream = new MemoryStream(10000);
            //mb.WriteMessage(memStream);
            ////StreamWriter sw = new StreamWriter(memStream);
            //StringWriter sw = new StringWriter();
            //StreamReader reader = new StreamReader(memStream);
            //string text = reader.ReadToEnd();
            
            Trace.WriteLine("appel de : " + MethodBase.GetCurrentMethod().Name);
            
            return null;
        }

        public void BeforeSendReply(ref Message reply, object correlationState)
        {
            
            MessageState ms= reply.State;
            

            //MessageBuffer mb = reply.CreateBufferedCopy(10000);
            //MemoryStream memStream = new MemoryStream(10000);
            //mb.WriteMessage(memStream);
            //StringWriter sw = new StringWriter();
            //StreamReader reader = new StreamReader(memStream);
            //string text = reader.ReadToEnd();

            Trace.WriteLine("IDispatchMessageInspector.BeforeSendReply called.");
            Trace.WriteLine("appel de : " + MethodBase.GetCurrentMethod().Name);
        }
    }
    public class MyEndPointBehavior : IEndpointBehavior
    {
        #region IEndpointBehavior Members

        public void AddBindingParameters(ServiceEndpoint endpoint, BindingParameterCollection bindingParameters)
        {
            Trace.WriteLine("appel de : "+MethodBase.GetCurrentMethod().Name);
        }

        public void ApplyClientBehavior(ServiceEndpoint endpoint, ClientRuntime clientRuntime)
        {
            Trace.WriteLine("appel de : " + MethodBase.GetCurrentMethod().Name);
        }

        public void ApplyDispatchBehavior(ServiceEndpoint endpoint, EndpointDispatcher endpointDispatcher)
        {
            Trace.WriteLine("appel de : " + MethodBase.GetCurrentMethod().Name);
            ChannelDispatcher channelDispatcher = endpointDispatcher.ChannelDispatcher;
            if (channelDispatcher != null)
            {
                foreach (EndpointDispatcher ed in channelDispatcher.Endpoints)
                {
                    ed.DispatchRuntime.MessageInspectors.Add(new MyMessageInspector());
                }
            }
        }

        public void Validate(ServiceEndpoint endpoint)
        {
            Trace.WriteLine("appel de : " + MethodBase.GetCurrentMethod().Name);

        }

        #endregion
    }

    public class CustomBehaviorExtensionElement : BehaviorExtensionElement
    {
        protected override object CreateBehavior()
        {
            return new MyEndPointBehavior();
        }

        public override Type BehaviorType
        {
            get
            {
                return typeof(MyEndPointBehavior);
            }
        }
    }

    
}