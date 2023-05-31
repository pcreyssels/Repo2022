using CommunityToolkit.Mvvm.ComponentModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp2NF48
{
    public class MainWindowVM : INotifyPropertyChanged
    {
        public ObservableUser OUser { get; set; }


        private string _Propstring = "_propstring";
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

        public MainWindowVM()
        {
            Propstring = "bonjour";
            OUser = new ObservableUser();
            OUser.Name = "DUPONT";
            OUser.LastName = "John";
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
    public class ObservableUser : ObservableObject
    {
        private string name;

        public ObservableUser()
        {
            Name = string.Empty;
            LastName = string.Empty;
        }

        public string Name
        {
            get => name;
            set => SetProperty(ref name, value);
        }

        private string lastName;

        public string LastName
        {
            get => lastName;
            set => SetProperty(ref lastName, value);
        }
    }
}
