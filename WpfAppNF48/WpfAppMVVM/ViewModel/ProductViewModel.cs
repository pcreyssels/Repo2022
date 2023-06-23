using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using WpfAppMVVM.Model;

namespace WpfAppMVVM.ViewModel
{
    internal class ProductViewModel :INotifyPropertyChanged
    {

        // commandes exposées à la vue
        public ICommand cmd1
        {
            get;
            set;
        }
        public ICommand cmd2
        {
            get;
            set;
        }

        public void SetProduct(object o)
        {
            Prod.ID = 9;
            Prod.Price = 99;
            Prod.Name = "bike";
        }

        // 
        private Product prod;

        public Product Prod {
            get => prod;
            set
            {
                prod = value;
                OnPropertyChanged("Prod");
            }
        }
        public ProductViewModel()
        {
            prod = new Product { ID = 1, Name = "car", Price = 12000 };

            cmd1 = new RelayCommand(
                new Action<object>(SetProduct)
                ,
                o => true);
            cmd2 = new RelayCommand(o => { Prod.ID = 20; Prod.Name = "motorbike";Prod.Price = 200000;  /* do something 2 */ }, o => true);

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


        

        // commande
        private ICommand genericCmd;
        public ICommand GenericCmd
        {
            get
            {
                if (genericCmd == null)
                    genericCmd = new GenericCommand();
                return genericCmd;
            }
            set
            {
                genericCmd = value;
            }
        }

        // relaycommande
        private ICommand genericRelaycmd;
        public ICommand GenericRelaycmd
        {
            get
            {
                if (genericCmd == null)
                    genericCmd = new RelayCommand(o => { /* do something 1 */ }, o => true);
                return genericCmd;
            }
            set
            {
                genericCmd = value;
            }
        }

        
        

    }

    class GenericCommand : ICommand
    {
        #region ICommand Members  

        public bool CanExecute(object parameter)
        {
            return true;
        }
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public void Execute(object parameter)
        {
            //Your Code inconvenient le code est ficgé dans la def de la classe et pas modifiable dans l'instance
            // d'où l'utilisation de la relayCommand

            int i = 7;
            
        }
        #endregion
    }

    //https://www.c-sharpcorner.com/UploadFile/20c06b/icommand-and-relaycommand-in-wpf/
    public class RelayCommand : ICommand
    {
        private Action<object> execute;
        private Func<object, bool> canExecute;

        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public RelayCommand(Action<object> execute, Func<object, bool> canExecute = null)
        {
            this.execute = execute;
            this.canExecute = canExecute;
        }

        public bool CanExecute(object parameter)
        {
            return true;
            //return this.canExecute == null || this.canExecute(parameter);
        }

        public void Execute(object parameter)
        {
            this.execute(parameter);
        }
    }

}
