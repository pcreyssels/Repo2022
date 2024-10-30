using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Web;
using System.Web.Management;

namespace WebApplication4
{
    public class ReadableConfigurationElement : ConfigurationElement
    {
        protected internal ConfigurationElement _cel;
        protected internal ConfigurationPropertyCollection _cpc;
        public ReadableConfigurationElement(ConfigurationElement cel) 
        {
            _cel = cel;
        }


        public ReadableConfigurationElement() : base() 
        {
           
        }

        //public ReadableConfigurationElement(ProviderSettings prs)
        //{
        //    _cel = prs;
        //}

        public ConfigurationPropertyCollection GetProperties()
        {
            _cpc = ((ReadableConfigurationElement)_cel).Properties;
            return _cpc;
        }

        //public static explicit operator ReadableConfigurationElement(ConfigurationElement cel)
        //{
        //    return new ReadableConfigurationElement(cel);
        //}

        //protected internal virtual new ConfigurationPropertyCollection Properties
        //{
        //    get
        //    {
        //        return _cpc.Properties;
        //    }
        //}
    }
}