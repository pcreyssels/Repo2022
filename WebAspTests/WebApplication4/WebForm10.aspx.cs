using System;
using System.Configuration;
using System.Diagnostics;
using System.Web.Configuration;
using System.Net.Configuration;
using System.Web;

namespace WebApplication4
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        void OnTraceFinished(object sender, TraceContextEventArgs e)
        {
            TraceContextRecord r = null;

            // Iterate through the collection of trace records and write 
            // them to the response stream.
            //Response.Write("<table>");
            //foreach (object o in e.TraceRecords)
            //{
            //    r = (TraceContextRecord)o;
            //    Response.Write(String.Format("<tr><td>{0}</td><td>{1}</td></tr>", r.Message, r.Category));
            //}
            //Response.Write("</table>");
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            Trace.TraceFinished += new TraceContextEventHandler(this.OnTraceFinished);
            
            // Write a trace message.
            Trace.Write("Web Forms Infrastructure Methods", "USERMESSAGE: Page_Load complete.");

            TraceContext tc = new TraceContext(HttpContext.Current);

            // web.config lue par la machine
            //C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config

            string applicationName = Environment.GetCommandLineArgs()[0] ;
            string exePath = System.IO.Path.Combine(Environment.CurrentDirectory, applicationName);
            
            Configuration config = ConfigurationManager.OpenExeConfiguration(exePath);

            // https://learn.microsoft.com/en-us/previous-versions/ms227545(v=vs.140)?redirectedfrom=MSDN
            // https://learn.microsoft.com/en-us/previous-versions/ms227980(v=vs.140)

            // https://learn.microsoft.com/en-us/dotnet/api/system.web.configuration.systemwebsectiongroup?view=netframework-4.8.1
            System.Configuration.Configuration configWeb =  WebConfigurationManager.OpenWebConfiguration(null);

            SystemWebSectionGroup systemWeb = (SystemWebSectionGroup)configWeb.GetSectionGroup("system.web");

            HealthMonitoringSection healthMonitoring = systemWeb.HealthMonitoring;

            SectionInformation info = healthMonitoring.SectionInformation;

            string name = info.SectionName;
            string type = info.Type;
            string declared = info.IsDeclared.ToString();
            string msg = String.Format(
                "Name:     {0}\nDeclared: {1}\nType:     {2}\n",
                name, declared, type);

            ContextInformation cinf = config.EvaluationContext;

            //Configuration config = ConfigurationManager.OpenMachineConfiguration();

            ConnectionStringsSection cs_sec =   config.ConnectionStrings;

            AppSettingsSection as_sec = config.AppSettings;

            var cs_settings = cs_sec.ConnectionStrings;

            var as_settings =  as_sec.Settings;

            object un = ConfigurationManager.AppSettings["userName"];

            object  oas = ConfigurationManager.GetSection("appSettings");
            string oas_name = oas.GetType().Name;

            object hms0 = ConfigurationManager.GetSection("healthMonitoring");
            hms0 = ConfigurationManager.GetSection("system.web/healthMonitoring");

            HealthMonitoringSection _hms = (HealthMonitoringSection)ConfigurationManager.GetSection("system.web/healthMonitoring");
            BufferModesCollection bmc = _hms.BufferModes;
            //Debug.WriteLine(" BufferModesCollection : ");
            //foreach (BufferModeSettings bfs in bmc)
            //{
            //    Debug.WriteLine($" ->       BufferModes name     : {bfs.Name}");
            //    Debug.WriteLine($" ->       MaxBufferSize        : {bfs.MaxBufferSize}");
            //    Debug.WriteLine($" ->       MaxFlushSize         : {bfs.MaxFlushSize}");
            //    Debug.WriteLine($" ->       MaxBufferThreads     : {bfs.MaxBufferThreads}");
            //    Debug.WriteLine($" ->       RegularFlushInterval : {bfs.RegularFlushInterval}");
            //    Debug.WriteLine($" ->       UrgentFlushInterval  : {bfs.UrgentFlushInterval}");
            //    Debug.WriteLine($" ->       UrgentFlushThreshold : {bfs.UrgentFlushThreshold}");
            //    Debug.WriteLine($"*");
            //}

            //Debug.WriteLine($"");
            //Debug.WriteLine(" ProfileSettingsCollection : ");
            //ProfileSettingsCollection psc= _hms.Profiles;
            //foreach (ProfileSettings ps in psc)
            //{
            //    Debug.WriteLine($" ->  {ps.Name}");
            //    Debug.WriteLine($" ->       Profile name     : {ps.Name}");
            //    Debug.WriteLine($" ->       Custom           : {ps.Custom}");
            //    Debug.WriteLine($" ->       ps.MaxLimit      : {ps.MaxLimit}");
            //    Debug.WriteLine($" ->       MinInstance      : {ps.MinInstances}");
            //    Debug.WriteLine($" ->       MinInterval      : {ps.MinInterval}");
            //    Debug.WriteLine($"*");
            //}

            //Debug.WriteLine($"");
            //Debug.WriteLine(" ProviderSettingsCollection : ");
            //ProviderSettingsCollection prsc = _hms.Providers;

            //foreach (ProviderSettings prs in prsc)
            //{
            //    Debug.WriteLine($" ->  provider name : {prs.Name}");
            //    Debug.WriteLine($" ->  provider parameters count : {prs.Parameters.Count}");
            //    foreach (string key in prs.Parameters.Keys)
            //    {
            //        Debug.WriteLine($"         ->  parametre {key}, valeur :{prs.Parameters[key]}");
            //    }
            //    Debug.WriteLine($"*");
            //}

            //Debug.WriteLine($"");
            //Debug.WriteLine(" RuleSettingsCollection : ");
            //RuleSettingsCollection rsc = _hms.Rules;
            //foreach (RuleSettings rs in rsc)
            //{
            //    Debug.WriteLine($" -> rule name         : {rs.Name}");
            //    Debug.WriteLine($" -> rule EventName    : {rs.EventName}");
            //    Debug.WriteLine($" -> rule Provider     : {rs.Provider}");
            //    Debug.WriteLine($" -> rule Custom       : {rs.Custom}");
            //    Debug.WriteLine($" -> rule MaxLimit     : {rs.MaxLimit}");
            //    Debug.WriteLine($" -> rule MinInstances : {rs.MinInstances}");
            //    Debug.WriteLine($" -> rule MinInterval  : {rs.MinInterval}");
            //    Debug.WriteLine($"*");
            //}

            //Debug.WriteLine($"");
            //Debug.WriteLine(" EventMappingCollection : ");
            //EventMappingSettingsCollection emsc = _hms.EventMappings;
            //foreach (EventMappingSettings em in emsc)
            //{
            //    Debug.WriteLine($" ->       EventMapping name : {em.Name}");
            //    Debug.WriteLine($" ->       StartEventCode    : {em.StartEventCode}");
            //    Debug.WriteLine($" ->       EndEventCode      : {em.EndEventCode}");
            //    Debug.WriteLine($" ->       Type              : {em.Type}");
            //    Debug.WriteLine($"*");
            //}







            string hms0_name = oas.GetType().Name;

            ConfigurationLocationCollection clc = config.Locations;

            ConnectionStringsSection cstrs = config.ConnectionStrings;

            int css_count = cstrs.ConnectionStrings.Count;

            ConfigurationSectionGroup csg0 = config.SectionGroups.Get("system.web");

            // detailsSectionGroup(csg0);

            ConfigurationSectionGroup csg11 = csg0.SectionGroups.Get("system.web/healthMonitoring");

            ConfigurationSection cs0= csg0.Sections.Get("healthMonitoring");

            


            ConfigurationSectionGroup systemnet_cg = config.SectionGroups.Get("system.net");

            NetSectionGroup nsg = (NetSectionGroup) config.SectionGroups.Get("system.net");

            MailSettingsSectionGroup mssg = nsg.MailSettings;

            SmtpSection smtps = mssg.Smtp;
            SmtpSpecifiedPickupDirectoryElement sde =  smtps.SpecifiedPickupDirectory;

            string directory = sde.PickupDirectoryLocation;

            ConfigurationSectionGroup mailsettings_sg = systemnet_cg.SectionGroups.Get("mailSettings");


            // detailsSectionGroup(systemnet_cg);

            cs0=systemnet_cg.Sections.Get("mailSettings");


            HealthMonitoringSection hms = (HealthMonitoringSection)csg0.Sections.Get("healthMonitoring");
            ConfigurationSection cs2 = csg0.Sections.Get("httpRuntime"); 
            HttpRuntimeSection hrts = (HttpRuntimeSection)csg0.Sections.Get("httpRuntime");




            /*
            Debug.WriteLine("");
            Debug.WriteLine("**** CONFIGURATION SECTIONS ****");
            Debug.WriteLine("");

            //Configuration cfg = ConfigurationManager.OpenMachineConfiguration();
            var s = config.Sections;

            foreach (string kc in s.Keys)
            {
                Debug.WriteLine(kc);
                //object o = kc.GetType();

                if (kc == "satelliteassemblies" || kc == "appSettings" || kc == "connectionStrings")
                {
                    ConfigurationSection sec = config.Sections[kc];
                    SectionInformation si = sec.SectionInformation;
                }
            }

            Debug.WriteLine("");
            Debug.WriteLine("**** CONFIGURATION SECTIONS GROUPS ****");
            Debug.WriteLine("");

            var sg = config.SectionGroups;
            foreach (string kc in sg.Keys)
            {
                Debug.WriteLine(kc);
                ConfigurationSectionGroup csg = config.SectionGroups.Get(kc);
                if (csg !=null)
                {
                    Debug.WriteLine($" - nom groupe {csg.SectionGroupName}");
                    Debug.WriteLine($" --- nombre sous groupes {csg.SectionGroups.Count}");
                    Debug.WriteLine($" --- nombre sections {csg.Sections.Count}");
                }
                else
                    Debug.WriteLine($" --- nom groupe null");


                //object o = kc.GetType();
            }

            Debug.WriteLine("");
            Debug.WriteLine("**** SYSTEM WEB ****");
            Debug.WriteLine("");
            ConfigurationSectionGroup csg1 = config.SectionGroups.Get("system.web");
            detailsSectionGroup(csg1);

            ConfigurationSection cs_1 = config.SectionGroups.Get("system.web").Sections.Get("healthMonitoring");

            ConfigurationSection cs_2 = config.SectionGroups.Get("system.web").Sections["healthMonitoring"];

            */

            int fin = 1;

        }


        protected void detailsSectionGroup(ConfigurationSectionGroup csg )
        {

            Debug.WriteLine("");
            Debug.WriteLine("**** section group ****");
            Debug.WriteLine("");

            if (csg ==null)
            {
                Debug.WriteLine("    ->  section group is null ! ");
            }
            else
            {
                string nom_sectiongroup = csg.SectionGroupName;
                Debug.WriteLine($" -> nom section group : {nom_sectiongroup}");
                var sg = csg.SectionGroups;
                Debug.WriteLine($"    -> {csg.SectionGroups.Count} SectionGroups du SectionGroup {nom_sectiongroup }: ");
                foreach (string kc in sg.Keys)
                {
                    Debug.WriteLine($"      -> cle du sous SectionGroup :{ kc }");
                    ConfigurationSectionGroup csg_sg = csg.SectionGroups.Get(kc);
                    if (csg_sg != null)
                    {
                        Debug.WriteLine($"      -> nombre du sous SectionGroup du SectionGroup {csg_sg.SectionGroups.Count}");
                        Debug.WriteLine($"      -> nombre du sous Sections du SectionGroup {csg_sg.Sections.Count}");
                        foreach (string ksec in csg_sg.Sections.Keys)
                        {
                            Debug.WriteLine($"        -> nom sous Sections du SectionGroup :  {ksec}");
                        }
                    }
                    else
                        Debug.WriteLine($" --- nom groupe null");
                }

                Debug.WriteLine("");
                Debug.WriteLine("");

                var se = csg.Sections;
                Debug.WriteLine($"    -> {se.Count} Sections du SectionGroup {nom_sectiongroup} : ");
                foreach (string kc in se.Keys)
                {
                    Debug.WriteLine($"      -> cles :{kc}");
                    ConfigurationSection cs_sg = se.Get(kc);
                    if (cs_sg != null)
                    {
                        Debug.WriteLine($"      -> type section  {cs_sg.GetType().Name}");
                    }
                    else
                        Debug.WriteLine($" --- nom groupe null");
                }
            }
            
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string applicationName = Environment.GetCommandLineArgs()[0];
            //string exePath = System.IO.Path.Combine(Environment.CurrentDirectory, applicationName);

            //Configuration config = ConfigurationManager.OpenExeConfiguration(exePath);

            //config = ConfigurationManager.OpenMachineConfiguration();

            //ConfigurationSectionGroup csg0 = config.SectionGroups.Get("system.web");
            //ConfigurationSection cs0 = csg0.Sections.Get("healthMonitoring");


            throw new Exception("This is an exception to test health monitoring!");
        }
    }
}