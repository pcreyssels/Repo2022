using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Xml.Linq;

namespace WpfCommands
{
    internal class MainWindowViewModel : INotifyPropertyChanged
    {

        private int _Propint;
        private string _Propstring;
        private double _Propdouble;

        public int Propint
        {
            get
            {
                return _Propint;
            }
            set
            {
                _Propint = value;
                OnPropertyChanged("Propint");
            }
        }
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
        public double Propdouble
        {
            get
            {
                return _Propdouble;
            }
            set
            {
                _Propdouble = value;
                OnPropertyChanged("Propdouble");
            }
        }

        private ICommand m_ButtonCommand;
        public ICommand ButtonCommand
        {
            get
            {
                return m_ButtonCommand;
            }
            set
            {
                m_ButtonCommand = value;
            }
        }
        public MainWindowViewModel()
        {
            Predicate<object> _predicate = o => (o ==null ||(string) o == "heloi");
            ButtonCommand = new RelayCommand(_predicate, new Action<object>(DoSomething));
        }
        public void DoSomething(object obj)
        {
            // do Something
            int j = 12;
            j = j + 1;
            Propint = 32;
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

