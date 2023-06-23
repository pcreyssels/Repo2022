using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;
using System.ComponentModel;
using System.Windows.Controls;
using System.Windows.Data;

namespace WpfMvvmTest
{
    class ProductViewModel 
    {
        private IList<Product> m_Products;
        public ProductViewModel()
        {
            m_Products = new List<Product>
            {
                new Product {ID=1, Name ="Pro1", Price=10},
                new Product{ID=2, Name="BAse2", Price=12}
            };

          
        }

        public IList<Product> Products
        {
            get
            {
                return m_Products;
            }
            set
            {
                m_Products = value;
            }
        }

        private ICommand mUpdater;
        public ICommand UpdateCommand
        {
            get
            {
                if (mUpdater == null)
                    mUpdater = new Updater();
                return mUpdater;
            }
            set
            {
                mUpdater = value;
            }
        }

        private class Updater : ICommand
        {
            #region ICommand Members

            public bool CanExecute(object parameter)
            {
                return true;
            }

            public event EventHandler CanExecuteChanged;

            public void Execute(object parameter)
            {
                int i = 0;
                BindingExpression binding = MainWindow.txtID.GetBindingExpression(TextBox.TextProperty);
                binding.UpdateSource();
            }

            #endregion
        }





       
    }

    
}
