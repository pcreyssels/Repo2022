using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;
using System.Windows;

namespace WpfSimple
{
    class MainWindowViewModel
    {
        // https://www.codeproject.com/Tips/1113391/Validation-in-WPF-Various-WPF-Validation-Ways
        private string _studentName;

        public string StudentName
        {
            get { return _studentName; }
            set
            {
                //if (value.Length < 0 || value.Length > 5)
                //{
                //    int v = value.Length;
                //    throw new ArgumentException("Name should be between range 6-50");
                //}

                _studentName = value;
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
            ButtonCommand=new RelayCommand(new Action<object>(ShowMessage));
        }

        public void ShowMessage(object obj)
        {
            MessageBox.Show(obj.ToString());
        }
    }
}
