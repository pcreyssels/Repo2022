﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3
{
    /// <summary>
    /// Description résumée de Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}