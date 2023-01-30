using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Dynamic;
using System.Linq;
using System.Numerics;
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
        public SMState currentState
        {
            get => currentState;
            set
            {
                _currentState = value;
            }
        }

        public void StateMachineReset()
        {
            _currentState = SMState.state_0;
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
        // etat actif, etat suivant variables , predicat
        public Dictionary<Tuple<SMState, SMState>, Tuple<ExpandoObject, Predicate<ExpandoObject>>> StateMachineDescription;
        // dictionary nom variable et sa valeur




        public StateMachine()
        {
            SMStateDescription = new Dictionary<SMState, string>();
            StateMachineDescription = new Dictionary<Tuple<SMState, SMState>, Tuple<ExpandoObject, Predicate<ExpandoObject>>>();

            var SMState_values = Enum.GetValues<SMState>();
            for (int i = 0; i < SMState_values.Length; i++)
            {
                SMStateDescription.Add(SMState_values[i], "");
                // initialise avec des états
                ExpandoObject eo = new ExpandoObject();
                Predicate<ExpandoObject> pre = (ExpandoObject _eo) => false;
                Tuple<ExpandoObject, Predicate<ExpandoObject>> transitiondef =
                    new Tuple<ExpandoObject, Predicate<ExpandoObject>>(eo, pre);
                Tuple<SMState, SMState> states = new Tuple<SMState, SMState>(SMState_values[i], SMState.state_0);
                StateMachineDescription.Add(states, transitiondef);
            }
        }

        public int StateMachineSetStatePair(SMState currentSate, SMState nextState)
        {
            int retval = 0;
            Predicate<ExpandoObject> predicate = (ExpandoObject _eo) => false;
            ExpandoObject eo= new ExpandoObject();
            Tuple<SMState, SMState> states = new Tuple<SMState, SMState>(currentState, nextState);
            if (!StateMachineDescription.ContainsKey(states))
            {
                StateMachineDescription.Add(new Tuple<SMState, SMState>(currentState, nextState), new Tuple<ExpandoObject, Predicate<ExpandoObject>>(eo, predicate));
            }
            else
                retval = -1; //couple clé déjà enregistrée
            

            return retval;
        }

        public void StateMachine_setStateLine(SMState currentState, SMState nextSate, ExpandoObject variables, Predicate<ExpandoObject> transitionFunc)
        {
            Tuple<SMState, SMState> states = new Tuple<SMState, SMState>(currentState, nextSate);
            Tuple<ExpandoObject, Predicate<ExpandoObject>> transitiondef = new Tuple<ExpandoObject, Predicate<ExpandoObject>>(variables, transitionFunc);
            if (!StateMachineDescription.ContainsKey(states))
            {
                StateMachineDescription.Add(states, transitiondef);
            }
            else
            {
                StateMachineDescription[states] = transitiondef;
            }
            
        }

        public SMState StateMachineWork()
        {
            List<SMState> list_nextstates = new List<SMState>();
            SMState nextState = SMState.state_0;
            int morethan1transitionmatch = 0;
            foreach (Tuple<SMState, SMState> k in StateMachineDescription.Keys)
            {
                if (k.Item1 == _currentState)
                {
                    nextState = k.Item2;
                    Predicate<ExpandoObject> predicate = StateMachineDescription[k].Item2;
                    bool transition = predicate(StateMachineDescription[k].Item1);
                    if (transition)
                    {
                        morethan1transitionmatch += 1;
                    }
                }
            }
            if (morethan1transitionmatch == 0)
            {
                // return _currentState;
            }
            else if (morethan1transitionmatch == 1)
            {
                currentState = nextState;
            }
            else if (morethan1transitionmatch > 1)
            {
                // plus d'une transition possible erreur conception statemchine on avance pas
                return _currentState;
            }
            return _currentState;
        }

        public SMState[] getPreviousStates(SMState currentState)
        {
            List<SMState> list_prevstates = new List<SMState>();
            foreach (Tuple<SMState, SMState> k in StateMachineDescription.Keys)
            {
                if ((k.Item2 == currentState) && !list_prevstates.Contains(k.Item1))
                    list_prevstates.Add(k.Item1);
            }

            return list_prevstates.ToArray();
        }

        public void doWork()
        {
            int n = Enum.GetNames(typeof(SMState)).Length;
        }

    } 
}
