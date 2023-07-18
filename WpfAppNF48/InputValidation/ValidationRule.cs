using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace InputValidation
{
    public class ValidationRules
    {
    }

    public class AgeRangeRule : ValidationRule
    {
        public int Min { get; set; }
        public int Max { get; set; }

        public int Param { get; set; }

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

    public class DateValidationRule : ValidationRule
    {

        public string Param { get; set; }

        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {

            DateTime dt = DateTime.Now;
            if (value == null)
            {
                return new ValidationResult(false,
                    "Please enter date: " + Param);
            }
            try
            {
                dt = (DateTime)value;

            }
            catch (Exception e)
            {
                return new ValidationResult(false, "Illegal characters or " + e.Message);
            }

            if (dt.Year < 2020)
            {
                return new ValidationResult(false,
                    "enter YEAR > 2020: " + Param);
            }
            return new ValidationResult(true, null);
        }
    }

    public class DataClass
    {
        public DataClass()
        {
            Age = 0;
            Age2 = 0;
        }

        public int Age { get; set; }
        public int Age2 { get; set; }
        public int Age3 { get; set; }

        public DateTime? Date { get; set; }
    }
}
