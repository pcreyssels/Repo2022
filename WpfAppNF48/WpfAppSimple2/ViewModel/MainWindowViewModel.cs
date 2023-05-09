using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfSimple2.ViewModel
{
    internal class MainWindowViewModel
    {

        public static string staticContent
        {
            get
            {
                return "staticmember";
            }
        }
        public string ButtonContent
        {
            get
            {
                return "Click Me";
            }
        }

        public string Content2
        {
            get
            {
                return "Content2";
            }
        }
    }
}
