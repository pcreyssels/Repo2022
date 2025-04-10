﻿using System;
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
        public Dictionary<int, string> SMStatesDescription;
        

        private int _SMcurrentState;
        public int SMcurrentState
        {
            get => _SMcurrentState;
            set
            {
                _SMcurrentState = value;
            }
        }

        private int _foundTransitionsStates;
        public int foundTransitionsStates
        {
            get => _foundTransitionsStates;
        }

        public void StateMachineReset()
        {
            _SMcurrentState = 0;
        }
       

        public void setSMStateDescription(int state, string description)
        {
            if (SMStatesDescription.ContainsKey(state))
                SMStatesDescription[state] = description;
            else
                SMStatesDescription.Add(state, description);
        }

        public string getSMStateDescription(int state)
        {
            return SMStatesDescription[state];
        }

        // dictionary nom variable et son type
        // etat actif, etat suivant variables , predicat
        public Dictionary<Tuple<int, int>, Tuple<ExpandoObject, Predicate<ExpandoObject>>> StateMachineDescription;
        // dictionary nom variable et sa valeur


        public StateMachine()
        {
            SMStatesDescription = new Dictionary<int, string>();
            StateMachineDescription = new Dictionary<Tuple<int, int>, Tuple<ExpandoObject, Predicate<ExpandoObject>>>();

            foreach (int k in SMStatesDescription.Keys)
            {
                // initialise avec des états
                ExpandoObject eo = new ExpandoObject();
                Predicate<ExpandoObject> pre = (ExpandoObject _eo) => false;
                Tuple<ExpandoObject, Predicate<ExpandoObject>> transitiondef =
                    new Tuple<ExpandoObject, Predicate<ExpandoObject>>(eo, pre);
                Tuple<int, int> states = new Tuple<int, int>(k, k);
                StateMachineDescription.Add(states, transitiondef);
            }
        }

        public int StateMachineSetStatePair(int _currentState, int _nextState)
        {
            int retval = 0;
            Predicate<ExpandoObject> predicate = (ExpandoObject _eo) => false;
            ExpandoObject eo = new ExpandoObject();
            Tuple<int, int> states = new Tuple<int, int>(_currentState, _nextState);
            if (!StateMachineDescription.ContainsKey(states))
            {
                StateMachineDescription.Add(new Tuple<int, int>(_currentState, _nextState), new Tuple<ExpandoObject, Predicate<ExpandoObject>>(eo, predicate));
            }
            else
                retval = -1; //couple clé déjà enregistrée


            return retval;
        }

        public void StateMachine_setStateLine(int currentState, int nextState, ExpandoObject variables, Predicate<ExpandoObject> transitionFunc)
        {
            Tuple<int, int> states = new Tuple<int, int>(currentState, nextState);
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

        public int StateMachineWork()
        {
            List<int> list_nextstates = new List<int>();
            int nextState = 0;
            int morethan1transitionmatch = 0;
            foreach (Tuple<int, int> k in StateMachineDescription.Keys)
            {
                // debug Console.WriteLine(k.Item1.ToString() + "   -   " + k.Item2.ToString());
                if (k.Item1 == _SMcurrentState)
                {

                    Predicate<ExpandoObject> predicate = StateMachineDescription[k].Item2;
                    bool transition = predicate(StateMachineDescription[k].Item1);
                    if (transition)
                    {
                        nextState = k.Item2;
                        morethan1transitionmatch += 1;
                        // debug  Console.WriteLine(" match !");
                    }
                }
            }
            if (morethan1transitionmatch == 0)
            {
                // return _SMcurrentState;
            }
            else if (morethan1transitionmatch == 1)
            {
                _SMcurrentState = nextState;
            }
            else if (morethan1transitionmatch > 1)
            {
                // plus d'une transition possible erreur conception statemchine on avance pas
                return _SMcurrentState;
            }
            _foundTransitionsStates = morethan1transitionmatch;
            return _SMcurrentState;
        }

        public int[] getPreviousStates(int currentState)
        {
            List<int> list_prevstates = new List<int>();
            foreach (Tuple<int, int> k in StateMachineDescription.Keys)
            {
                if ((k.Item2 == currentState) && !list_prevstates.Contains(k.Item1))
                    list_prevstates.Add(k.Item1);
            }

            return list_prevstates.ToArray();
        }

        

    }

    internal class StateMachine2
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

        private SMState _SMcurrentState;
        public SMState SMcurrentState
        {
            get => _SMcurrentState;
            set
            {
                _SMcurrentState = value;
            }
        }

        private int _foundTransitionsStates;
        public int foundTransitionsStates
        {
            get => _foundTransitionsStates;
        }

        public void StateMachineReset()
        {
            _SMcurrentState = SMState.state_0;
        }
        // description des états
        private Dictionary<SMState, string> SMStateDescription;

        public void setSMStateDescription(SMState state, string description)
        {
            SMStateDescription[state] = description;
        }

        public string getSMStateDescription(SMState state)
        {
            return SMStateDescription[state];
        }

        // dictionary nom variable et son type
        // etat actif, etat suivant variables , predicat
        public Dictionary<Tuple<SMState, SMState>, Tuple<ExpandoObject, Predicate<ExpandoObject>>> StateMachineDescription;
        // dictionary nom variable et sa valeur




        public StateMachine2()
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
                Tuple<SMState, SMState> states = new Tuple<SMState, SMState>(SMState_values[i], SMState_values[i]);
                StateMachineDescription.Add(states, transitiondef);
            }
        }

        public int StateMachineSetStatePair(SMState _currentState, SMState _nextState)
        {
            int retval = 0;
            Predicate<ExpandoObject> predicate = (ExpandoObject _eo) => false;
            ExpandoObject eo= new ExpandoObject();
            Tuple<SMState, SMState> states = new Tuple<SMState, SMState>(_currentState, _nextState);
            if (!StateMachineDescription.ContainsKey(states))
            {
                StateMachineDescription.Add(new Tuple<SMState, SMState>(_currentState, _nextState), new Tuple<ExpandoObject, Predicate<ExpandoObject>>(eo, predicate));
            }
            else
                retval = -1; //couple clé déjà enregistrée
            

            return retval;
        }

        public void StateMachine_setStateLine(SMState currentState, SMState nextState, ExpandoObject variables, Predicate<ExpandoObject> transitionFunc)
        {
            Tuple<SMState, SMState> states = new Tuple<SMState, SMState>(currentState, nextState);
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
                // debug Console.WriteLine(k.Item1.ToString() + "   -   " + k.Item2.ToString());
                if (k.Item1 == _SMcurrentState)
                {
                    
                    Predicate<ExpandoObject> predicate = StateMachineDescription[k].Item2;
                    bool transition = predicate(StateMachineDescription[k].Item1);
                    if (transition)
                    {
                        nextState = k.Item2;
                        morethan1transitionmatch += 1;
                        // debug  Console.WriteLine(" match !");
                    }
                }
            }
            if (morethan1transitionmatch == 0)
            {
                // return _SMcurrentState;
            }
            else if (morethan1transitionmatch == 1)
            {
                _SMcurrentState = nextState;
            }
            else if (morethan1transitionmatch > 1)
            {
                // plus d'une transition possible erreur conception statemchine on avance pas
                return _SMcurrentState;
            }
            _foundTransitionsStates = morethan1transitionmatch;
            return _SMcurrentState;
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

        

    } 
}
