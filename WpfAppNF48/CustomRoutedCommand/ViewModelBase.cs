using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace CustomRoutedCommand
{
    public class ViewModelBase
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string nomPte)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nomPte));
        }
    }
}
