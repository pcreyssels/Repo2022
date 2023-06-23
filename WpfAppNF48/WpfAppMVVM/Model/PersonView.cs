using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfAppMVVM.Model
{
    internal class PersonView
    {
        
        private string firstnameview;
        private string lastnameview;
        private int ageview;

        public int Ageview
        {
            get
            {
                return ageview;
            }
            set
            {
                ageview = value;
                OnPropertyChanged("Ageview");
            }
        }

        public string Firstnameview
        {
            get
            {
                return firstnameview;
            }
            set
            {
                firstnameview = value;
                OnPropertyChanged("Firstnameview");
            }
        }

        public string Lastnameview
        {
            get
            {
                return lastnameview;
            }
            set
            {
                lastnameview = value;
                OnPropertyChanged("Lastnameview");
            }
        }



        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
        #endregion
    }
}
}
