using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfAppMVVM.Model
{
    internal class Product : INotifyPropertyChanged
    {

        // https://www.dotnetforall.com/wpf-mvvm-practical-data-application-example/
        // https://www.codeproject.com/Articles/124160/Using-WPF-MVVM-for-Database-Access
        //https://stackoverflow.com/questions/10324009/mvvm-modified-model-how-to-correctly-update-viewmodel-and-view

        private int m_ID;
        private string m_Name;
        private double m_Price;

        public int ID
        {
            get
            {
                return m_ID;
            }
            set
            {
                m_ID = value;
                OnPropertyChanged("ID");
            }
        }

        public string Name
        {
            get
            {
                return m_Name;
            }
            set
            {
                m_Name = value;
                OnPropertyChanged("Name");
            }

        }

        public double Price
        {

            get
            {
                return m_Price;
            }
            set
            {
                m_Price = value;
                OnPropertyChanged("Price");
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
