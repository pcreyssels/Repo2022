using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace CustomRoutedCommand
{
    internal class MainWindowVM : INotifyPropertyChanged
    {
       
        private string _Propstring;
        private string _Propstring2;

        private bool _Propbool =false;

        public string Propstring
        {
            get
            {
                return _Propstring;
            }
            set
            {
                _Propstring = value;
                OnPropertyChanged("Propstring");
            }
        }

        public string Propstring2
        {
            get
            {
                return _Propstring2;
            }
            set
            {
                _Propstring2 = value;
                OnPropertyChanged("Propstring2");
            }
        }

        public bool Propbool
        {
            get
            {
                return _Propbool;
            }
            set
            {
                _Propbool = value;
                OnPropertyChanged("Propbool");
            }
        }

        #region INotifyChangeProperty  

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
