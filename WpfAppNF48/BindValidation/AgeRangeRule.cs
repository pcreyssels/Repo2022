// // Copyright (c) Microsoft. All rights reserved.
// // Licensed under the MIT license. See LICENSE file in the project root for full license information.

using System;
using System.Globalization;
using System.Windows.Controls;

namespace BindValidation
{
    public class AgeRangeRule : ValidationRule
    {
        public int Min { get; set; }
        public int Max { get; set; }

        public int Param { get; set; }

        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            var age = 0;


            try
            {
                if (((string)value).Length > 0)
                    age = int.Parse((string)value);
            }
            catch (Exception e)
            {
                return new ValidationResult(false, "Illegal characters or " + e.Message);
            }

            if ((age < Min) || (age > Max))
            {
                return new ValidationResult(false,
                    "Please enter an age in the range: " + Min + " - " + Max + ".");
            }
            return new ValidationResult(true, null);
        }
    }


    public class DateValidationRule : ValidationRule
    {
        
        public string Param { get; set; }

        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            
            DateTime dt= DateTime.Now;
            if (value==null)
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

            if (dt.Year<2020)
            {
                return new ValidationResult(false,
                    "enter YEAR > 2020: " + Param);
            }
            return new ValidationResult(true, null);
        }
    }
}