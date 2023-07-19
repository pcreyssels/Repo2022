using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Markup;

namespace WpfAppGrid
{
    internal class MainWindowVM :INotifyPropertyChanged
    {

        internal MainWindowVM() 
        {
            DataGridDatas = new DataTable();
            DataGridDatas.Columns.Add("Nom", typeof(string));
            DataGridDatas.Columns.Add("Age", typeof(int));
            DataRow dr = DataGridDatas.NewRow();
            dr["Nom"] = "DUPONT";
            dr["Age"] = 23;
            DataGridDatas.Rows.Add(dr);
            dr = DataGridDatas.NewRow();
            dr["Nom"] = "DURAND";
            dr["Age"] = 40;
            DataGridDatas.Rows.Add(dr);
        }  

        private DataTable dataGridDatas;
        public DataTable DataGridDatas
        {
            get { return dataGridDatas; }
            set
            {
                dataGridDatas = value;
                OnPropertyChanged("DataGridDatas");
            }
        }


        #region INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string nomPte)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nomPte));
        }
        #endregion
    }
}
