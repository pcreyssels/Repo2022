using CommunityToolkit.Mvvm.ComponentModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace WpfCommands
{
    internal class Person : INotifyPropertyChanged
    {

		/*
		 * To implement INotifyPropertyChanged you need to declare the PropertyChanged event 
		 * and create the OnPropertyChanged method. 
		 * Then for each property you want change notifications for, 
		 * you call OnPropertyChanged whenever the property is updated.
		 */
		private int age;

		public int  Age
		{
			get { return age; }
			set 
			{ 
				age = value;
                // Call OnPropertyChanged whenever the property is updated
                OnPropertyChanged();
            }
		}


		private string firstName;

		public string FirstName
        {
			get { return firstName; }
			set 
            { 
                firstName = value;
                // Call OnPropertyChanged whenever the property is updated
                OnPropertyChanged();
            }
		}

		private string lastName;

		public string LastName
        {
			get { return lastName; }
			set 
			{ 
				lastName = value;
                // Call OnPropertyChanged whenever the property is updated
                OnPropertyChanged();
            }
		}

        // Declare the event
        public event PropertyChangedEventHandler PropertyChanged;

        // Create the OnPropertyChanged method to raise the event
        // The calling member's name will be used as the parameter.
        protected void OnPropertyChanged([CallerMemberName] string name = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
    }


    public class User : ObservableObject
    {
        private string name;

        public string Name
        {
            get => name;
            set => SetProperty(ref name, value);
        }
    }

}
