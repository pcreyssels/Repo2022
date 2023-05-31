using CommunityToolkit.Mvvm.ComponentModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace CustomRoutedCommand
{
    public class Window1VM : INotifyPropertyChanged
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

        public Window1VM()
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
