// See https://aka.ms/new-console-template for more information

using ConsoleApp_StatMac;

Console.WriteLine("Hello, World!");

StateMachine sma = new StateMachine(null);
// définition des labels états
sma.setSMStateDescription(StateMachine.SMState.state_1, "etat 1");
sma.setSMStateDescription(StateMachine.SMState.state_2, "etat 2");
sma.setSMStateDescription(StateMachine.SMState.state_2, "etat 3");

sma.currentState = StateMachine.SMState.state_0;
// définition des variables externes
sma.ExtVarDef.Add("param1_int",typeof(int));
sma.ExtVarDef.Add("param2_string", typeof(string));
sma.ExtVarDef.Add("param3_int", typeof(int));
sma.ExtVarDef.Add("param4_string", typeof(int));
sma.ExtVarDef.Add("param5_BOOL", typeof(bool));

// définition des valeurs des variables externes
sma.ExtVarVal.Add("param1_int", 5);
sma.ExtVarVal.Add("param2_string", "bonjour");
sma.ExtVarVal.Add("param3_int", 14);
sma.ExtVarVal.Add("param4_string", "chaine 5");
sma.ExtVarVal.Add("param5_BOOL", true);



//***************

//Dictionary<SMState0, string> SMStateDescription=null;
//SMStateDescription = new Dictionary<SMState0, string>();
////SMStateDescription.Add(new SMState(, "");

//var SMState_items = Enum.GetValues<SMState0>();

//for (int j = 0;j< SMState_items.Length;j++)
//{
//    SMStateDescription.Add(SMState_items[j], "");
//}

int z = 3;

//SMStateDescription[SMState0.state_8] = "bonjour";

z= 4;

public enum SMState0 : ushort
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




