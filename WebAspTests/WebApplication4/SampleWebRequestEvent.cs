﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Management;

namespace WebApplication4
{
    public class SampleWebRequestEvent : System.Web.Management.WebRequestEvent
    {
        private string customCreatedMsg,
                        customRaisedMsg;

        // Invoked in case of events identified only 
        // by their event code.
        public SampleWebRequestEvent(
            string msg,
            object eventSource, int eventCode) :
            base(msg, eventSource, eventCode)
        {

            // Perform custom initialization.
            customCreatedMsg =
              string.Format(
              "Event created at: {0}",
              EventTime.ToString());
        }

        // Invoked in case of events identified 
        // by their event code.and 
        // related event detailed code.
        public SampleWebRequestEvent(string msg,
            object eventSource, int eventCode,
            int eventDetailCode) :
            base(msg, eventSource, eventCode,
            eventDetailCode)
        {
            // Perform custom initialization.
            customCreatedMsg =
              string.Format(
              "Event created at: {0}",
              EventTime.ToString());
        }


        // Raises the SampleWebRequestEvent.
        public override void Raise()
        {
            // Perform custom processing.
            customRaisedMsg =
              string.Format(
              "Event raised at: {0}",
              EventTime.ToString());

            // Raise the event.
            base.Raise();
        }

        //Formats Web request event information.
        public override void FormatCustomEventDetails(
            WebEventFormatter formatter)
        {
            // Add custom data.
            formatter.AppendLine("");

            formatter.IndentationLevel += 1;
            formatter.AppendLine(
                "* Custom Request Information Start *");

            //// Display custom event timing.
            formatter.AppendLine(customCreatedMsg);
            formatter.AppendLine(customRaisedMsg);

            formatter.AppendLine(
                "* Custom Request Information End *");

            formatter.IndentationLevel -= 1;
        }
    }
}