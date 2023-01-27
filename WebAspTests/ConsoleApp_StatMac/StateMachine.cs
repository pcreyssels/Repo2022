using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp_StatMac
{

    using _ExtVarDef = Dictionary<string, Type>;
    using _ExtVarVal = Dictionary<string, object>;

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
        public SMState currentState
        {
            get => currentState;
            set {
                    _currentState = value;
            }
        }

        // description des états
        private Dictionary<SMState, string> SMStateDescription;

        public void setSMStateDescription(SMState state, string desciption)
        {
            SMStateDescription[state] = desciption;
        }

        public string getSMStateDescription(SMState state)
        {
            return SMStateDescription[state];
        }

        // dictionary nom variable et son type
        public _ExtVarDef ExtVarDef;
        // dictionary nom variable et sa valeur
        public _ExtVarVal ExtVarVal;

        // etats transitions de la machine
        private Dictionary<SMState, Tuple<SMState, _ExtVarVal>> SMStatesTransitions;

            

        public StateMachine(_ExtVarDef? _ext_def)
        {
            SMStateDescription = new Dictionary<SMState, string>();
            
            var SMState_values = Enum.GetValues<SMState>();
            for (int i = 0; i < SMState_values.Length; i++)
            {
                SMStateDescription.Add(SMState_values[i], "");
            }
            
            ExtVarDef = new _ExtVarDef();
            ExtVarVal = new _ExtVarVal();
            // copy definition des valeurs du vecteur
            if (_ext_def !=null)
            {
                ExtVarDef.Clear();
                foreach (var k in _ext_def.Keys) 
                {
                    ExtVarDef.Add(k, _ext_def[k]);
                }
            }

            // SMStatesTransitions initialise à des valeurs state suivant  =state_0 et vecteur transitions à valeurs 0, "" ou false
            SMStatesTransitions = new Dictionary<SMState, Tuple<SMState, _ExtVarVal>>();

            for (int j = 0; j < SMState_values.Length; j++)
            {
                // remplit avec liste de valeurs nulles les vecteurs de transisions
                _ExtVarVal transitionVector = new _ExtVarVal();
                foreach (var k in ExtVarDef.Keys)
                {
                    object? o = Activator.CreateInstance(ExtVarDef[k]);
                    if (o is int) o = (int)0;
                    else if(o is string) o = (string)"";
                    else if (o is bool) o = (bool)false;
                    else o= null;

                    transitionVector.Add(k, o);
                }
                Tuple<SMState, _ExtVarVal> transitiondef = new Tuple<SMState, _ExtVarVal>(SMState.state_0, transitionVector);
                SMStatesTransitions.Add(SMState_values[j],transitiondef);
            }


        }

        public void doWork()
        {
            int n = Enum.GetNames(typeof(SMState)).Length;
        }

        public void StateMachineWork(_ExtVarVal variablesvalues)
        {
            int n = Enum.GetNames(typeof(SMState)).Length;
        }
    }
}
