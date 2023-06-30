using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfSimple
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }



        //private string _studentName;

        //public string StudentName
        //{
        //    get { return _studentName; }
        //    set
        //    {
        //        if (value.Length < 6 || value.Length > 50)
        //        {
        //            throw new ArgumentException("Name should be between range 6-50");
        //        }

        //        _studentName = value;
        //    }
        //}
    }

    public class StudentNameValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            string valueToValidate = value as string;
            if (valueToValidate.Length < 6 || valueToValidate.Length > 10)
            {
                return new ValidationResult(false, "Name should be between range 3-50");
            }

            return new ValidationResult(true, null);
        }
    }

    //https://learn.microsoft.com/en-us/dotnet/desktop/wpf/data/how-to-implement-binding-validation?view=netframeworkdesktop-4.8
    public class AgeRangeRule : ValidationRule
    {
        public int Min { get; set; }
        public int Max { get; set; }

        public AgeRangeRule()
        {
        }

        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            int age = 0;

            try
            {
                if (((string)value).Length > 0)
                    age = Int32.Parse((String)value);
            }
            catch (Exception e)
            {
                return new ValidationResult(false, $"Illegal characters or {e.Message}");
            }

            if ((age < Min) || (age > Max))
            {
                return new ValidationResult(false,
                  $"Please enter an age in the range: {Min}-{Max}.");
            }
            return ValidationResult.ValidResult;
        }
    }

    public class MyDataSource
    {
        public MyDataSource()
        {
            Age = 0;
            Age2 = 0;
        }

        public int Age { get; set; }
        public int Age2 { get; set; }
        public int Age3 { get; set; }
    }

}
