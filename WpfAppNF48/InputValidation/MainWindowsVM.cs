using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace InputValidation
{
    public class MainWindowsVM : INotifyPropertyChanged
    {
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

        Action<object> Exec;
        Predicate<object> CanExec;

        public MainWindowsVM() 
        {
            Exec = new Action<object>(CommandExec);
            CanExec = new Predicate<object>(CommandCanExec);
            ButtonCommand = new RelayCommand(CanExec, Exec);

            //Predicate<object> _predicate = o => (o == null || (string)o == "heloi");
        }

        public bool CommandCanExec(object p)
        {
            // do Something
            if (p != null)
            {
                string sp = p.ToString();
            }
                

            return true;
        }

        public void CommandExec(object p)
        {
            // do Something
            string sp = p.ToString();
            
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
