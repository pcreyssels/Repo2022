using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace WpfAppDataGrid
{
    public class MainWindowVM : INotifyPropertyChanged
    {
        private DataTable table;
        public DataTable Table
        {
            get
            {
                return table;
            }
            set
            {
                table = value;
                OnPropertyChanged("Table");
            }
        }

        private DataTable table2;
        public DataTable Table2
        {
            get
            {
                return table2;
            }
            set
            {
                table2 = value;
                OnPropertyChanged("Table2");
            }
        }


        //public MainWindowVM();
        public MainWindowVM() 
        { 
            table = new DataTable();
            table.Columns.Add("Nom",typeof(string));
            table.Columns.Add("PreNom", typeof(string));
            table.Columns.Add("Age", typeof(int));

            
            DataRow dr = table.NewRow();
            dr.ItemArray = new object[] { "Bedos", "Guy", 45 };
            table.Rows.Add(dr);
            dr = table.NewRow();
            dr.ItemArray = new object[] { "leLuron", "Thierry", 50 };
            table.Rows.Add(dr);


            table2 = new DataTable();
            table2.Columns.Add("Ville", typeof(string));
            table2.Columns.Add("Pays", typeof(string));
            table2.Columns.Add("Hab", typeof(int));


            DataRow dr2 = table2.NewRow();
            dr2.ItemArray = new object[] { "Paris", "France", 4500 };
            table2.Rows.Add(dr2);
            dr2 = table2.NewRow();
            dr2.ItemArray = new object[] { "Rome", "Italie", 3000 };
            table2.Rows.Add(dr2);
            dr2 = table2.NewRow();
            dr2.ItemArray = new object[] { "Berlin", "Allemagne", 5000 };
            table2.Rows.Add(dr2);
            dr2 = table2.NewRow();
            dr2.ItemArray = new object[] { "Londres", "Angleterre", 2000 };
            table2.Rows.Add(dr2);
            dr2 = table2.NewRow();
            dr2.ItemArray = new object[] { "Budapest", "Hongrie", 7000 };
            table2.Rows.Add(dr2);

            DataGridCell dgc = new DataGridCell();
            
        }

        public void datagrid_AutoGeneratingColumn2(object sender, DataGridAutoGeneratingColumnEventArgs e)
        {
            string headername = e.Column.Header.ToString();

            //Cancel the column you don't want to generate
            if (headername == "MiddleName")
            {
                e.Cancel = true;
            }

            //update column details when generating
            if (headername == "Nom")
            {
                e.Column.Header = "les Noms";
            }
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
}
