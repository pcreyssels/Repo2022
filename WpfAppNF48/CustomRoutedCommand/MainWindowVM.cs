using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Globalization;
using System.Text;
using System.Windows;
using System.Windows.Data;

namespace CustomRoutedCommand
{

    public enum MenuItems : ushort
    {
        None = 0,
        m_Dossiers = 1,
        sm_ = 100,
        OutlierReading = 200
    }

    public class MainWindowVM : INotifyPropertyChanged
    {
        public ObservableCollection<KeyValuePair<string,string>> MenuSwitchs { get; private set; } = new ObservableCollection<KeyValuePair<string, string>>();
        public ObservableCollection<string> VisibilitySwitchs { get; private set; } = new ObservableCollection<string>();

        public Dictionary<string, string> VisibilitySwitchs2 { get; private set; } = new Dictionary<string, string>();

        private Dictionary<string, string> visibilitySwitchs3  = new Dictionary<string, string>();
        public Dictionary<string, string> VisibilitySwitchs3 
        {
            get { return visibilitySwitchs3; }
            set
            {
                visibilitySwitchs3 = value;
                if (PropertyChanged != null) PropertyChanged(this, new PropertyChangedEventArgs("VisibilitySwitchs3"));
            }
        }


        private string _Propstring = "_propstring";
        private string _Propstring2 = "Visible";
        private string _Propstring3 = "bonjour";
        private string _ItemsSwitch = "m_Dossiers:v sm_Support:v";
        private bool _Propbool = false;

        public BandeauInfo Bi{ get; set; }

        private BandeauInfo2 bi2;
        public BandeauInfo2 Bi2 
        { 
            get
            {
                return bi2;
            }
            set
            {
                bi2 = value;
                OnPropertyChanged("Bi2");
                //OnPropertyChanged("Bi2.AppVer");
                //OnPropertyChanged("AppVer");
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

        public string ItemsSwitch
        {
            get
            {
                return _ItemsSwitch;
            }
            set
            {
                _ItemsSwitch = value;
                OnPropertyChanged("ItemsSwitch");
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

            VisibilitySwitchs.Add("Visible");
            VisibilitySwitchs.Add("Visible");
            VisibilitySwitchs.Add("Visible");

            VisibilitySwitchs2.Add("label1","Visible");
            VisibilitySwitchs2.Add("label2", "Visible");
            VisibilitySwitchs2.Add("label3", "Visible");
            VisibilitySwitchs2.Add("label4", "Visible");
            VisibilitySwitchs2.Add("label5", "Visible");
            VisibilitySwitchs2.Add("label6", "Visible");

            visibilitySwitchs3.Add("label1", "Visible");
            visibilitySwitchs3.Add("label2", "Visible");
            visibilitySwitchs3.Add("label3", "Visible");
            visibilitySwitchs3.Add("label4", "Valeur x");
            visibilitySwitchs3.Add("label5", "Visible");
            visibilitySwitchs3.Add("label6", "Visible");


            MenuSwitchs.Add(new KeyValuePair<string, string>
            (
                "label1",
                "Visible"
            ));

            MenuSwitchs.Add(new KeyValuePair<string, string>
            (
                "label2",
                "Visible"
            ));

            Bi =new BandeauInfo();
            Bi.AppVer = "2.6";
            Bi.Roles = " SYS GES";
            Bi.Login = "toto";


            Bi2 = new BandeauInfo2();
            Bi2.AppVer = "3.6";
            Bi2.Roles = " TSYS GES";
            Bi2.Login = "titi";
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

    public class BandeauInfo2
    {

        public string Login { get; set; }
        public string Roles { get; set; }
        public string AppVer { get; set; }
    }

        public class BandeauInfo :ViewModelBase
    {

        private string login;
        private string roles;
        private string appVer;

        public BandeauInfo()
        {
            Login = "l";
            Roles = "r";
            AppVer = "a";
        }
        public string Login
        {
            get => login;

            set
            {
                login = value;
                OnPropertyChanged("Login");
                //OnPropertyChanged("BandeauInfo");
            }

        }
        public string Roles
        {
            get => roles;

            set
            {
                roles = value;
                OnPropertyChanged("Roles");
                //OnPropertyChanged("BandeauInfo");
            }

        }
        public string AppVer 
        {
            get => appVer;

            set 
            {
                appVer = value;
                OnPropertyChanged("AppVer");
                //OnPropertyChanged("BandeauInfo.AppVer");
                // OnPropertyChanged("BandeauInfo");
            }
            
        }

    }

    public class ItemsSwitchConverter2 : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {

            string _return = "Visible";

            if (value == null)
                return "Visible";

            if (parameter == null)
                parameter = "1";

            string source_value = (string)value;

            //m_Dossiers:v sm_Support:v

            string _parameter = (string)parameter;

            string s = "";
            //if (_parameter == "m_Dossiers")
            //{
            s = source_value.Substring(source_value.IndexOf(_parameter) + _parameter.Length + 1, 1);
            //}

            switch (s)
            {
                case "v":
                    _return = "Visible";
                    break;
                case "h":
                    _return = "Hidden";
                    break;
                case "c":
                    _return = "Collapsed";
                    break;
                default:
                    _return = "Visible";
                    break;
            }

            return _return;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotSupportedException();
        }
    }
}
