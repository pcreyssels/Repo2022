// See https://aka.ms/new-console-template for more information

Console.WriteLine("Hello, World!");
Dictionary<SMState, string> SMStateDescription=null;
SMStateDescription = new Dictionary<SMState, string>();
//SMStateDescription.Add(new SMState(, "");

var SMState_values = Enum.GetValues<SMState>();

for (int j = 0;j< SMState_values.Length;j++)
{
    SMStateDescription.Add(SMState_values[j], "");
}

int z = 3;

SMStateDescription[SMState.state_8] = "bonjour";

z= 4;

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




