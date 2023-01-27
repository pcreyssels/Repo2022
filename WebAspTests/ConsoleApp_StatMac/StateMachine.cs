using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_StatMac
{

    

    internal class StateMachine
    {
        public enum SMState : ushort
        {
            state_0 = 0,
            state_1 = 1,
            state_2 = 2,
            state_3 = 3,
            state_4 = 4,
            state_5 = 5,
            state_6 = 6,
            state_7 = 7,
            state_8 = 8
        }
        
        private SMState _currentState;

        private Dictionary<SMState, string> SMStateDescription;

        public SMState currentState
        {
            get => currentState;
            set
            {
                if (true)
                {
                    _currentState = value;
                }
            }
        
        }

        public StateMachine()
        {
            SMStateDescription = new Dictionary<SMState, string>();
            
            var SMState_values = Enum.GetValues<SMState>();
            for (int i = 0; i < SMState_values.Length; i++)
            {
                SMStateDescription.Add(SMState_values[i], "");
            }
        }

        public void setSMStateDescription(SMState state, string desciption)
        {
            SMStateDescription[state] = desciption;
        }

        public string getSMStateDescription(SMState state)
        {
            return SMStateDescription[state];
        }

        public void doWork()
        {
            int n = Enum.GetNames(typeof(SMState)).Length;
        }
    }
}
