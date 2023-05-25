using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Text;
using System.Windows;

namespace CustomRoutedCommand
{
    public class MainWindowVM : INotifyPropertyChanged
    {

        private string _Propstring;
        private string _Propstring2 = "Visible";
        private string _Propstring3 = "bonjour";
        private bool _Propbool = false;

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

        public string Propstring3
        {
            get
            {
                return _Propstring3;
            }
            set
            {
                _Propstring3 = value;
                OnPropertyChanged("Propstring3");
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

        public ObservableCollection<TodoItem> ObservableItems { get; set; }
        public List<TodoItem> Items { get; set; }
        public ObservableCollection<String> OStringItems { get; set; }

        public MainWindowVM()
        {
            ObservableItems = new ObservableCollection<TodoItem>();
            ObservableItems.Add(new TodoItem() { Title = "Complete this WPF tutorial", Completion = 45 });
            ObservableItems.Add(new TodoItem() { Title = "Learn C#", Completion = 80 });
            ObservableItems.Add(new TodoItem() { Title = "Wash the car", Completion = 0 });

            Items = new List<TodoItem>();
            Items.Add(new TodoItem() { Title = "2Complete this WPF tutorial", Completion = 55 });
            Items.Add(new TodoItem() { Title = "2Learn C#", Completion = 85 });
            Items.Add(new TodoItem() { Title = "2Wash the car", Completion = 5 });

            OStringItems = new ObservableCollection<String>();
            OStringItems.Add("un");
            OStringItems.Add("deux");
            OStringItems.Add("trois");


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

    public class TodoItem
    {
        public string Title { get; set; }
        public int Completion { get; set; }
    }
}
