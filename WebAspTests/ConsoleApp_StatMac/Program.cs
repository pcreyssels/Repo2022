// See https://aka.ms/new-console-template for more information



using ConsoleApp_StatMac;
using System.Dynamic;
using System.Net.Http.Headers;
using System.Reflection;
using System.Reflection.Emit;

Console.WriteLine("Hello, World!");
var i1 = new int[0].FirstOrDefault();

AppDomain currentDomain = AppDomain.CurrentDomain;

// Create a dynamic assembly in the current application domain,
// and allow it to be executed and saved to disk.
AssemblyName aName = new AssemblyName("TempAssembly");
AssemblyBuilder ab = AssemblyBuilder.DefineDynamicAssembly(aName, AssemblyBuilderAccess.Run);

ModuleBuilder mb = ab.DefineDynamicModule(aName.Name);

// Define a public enumeration with the name "Elevation" and an
// underlying type of Integer.
EnumBuilder eb = mb.DefineEnum("SMacState", TypeAttributes.Public, typeof(int));

// Define two members, "High" and "Low".
eb.DefineLiteral("Low", 0);
eb.DefineLiteral("High", 1);

Type Smatype = eb.CreateType();

Array ar = Enum.GetValues(Smatype);

object ep = Enum.Parse(Smatype, "Low");
Type ot = ep.GetType();
 var i2 = new int[3];



// *********** Tests
int a = 6;

Addition ad = (int a, int b) => (a + b);

int r1 = ad.Invoke(5, 6);

int s = ad(3,4);

dynamic po = new paramsObj();

dynamic myobject = new ExpandoObject();

IDictionary<string, object> myUnderlyingObject = myobject;

myUnderlyingObject.Add("IsDynamic", true); // Adding dynamically named property
Int32 i = new Int32();
String st = new String('c', 4);

myobject.test = "bonjour";
((IDictionary<String, Object>)myobject).Add("prop2", Activator.CreateInstance(typeof(int)));
((IDictionary<String, Object>)myobject).Add("prop3", Activator.CreateInstance(typeof(String),new object[] { 'd',4}));
int Y = myobject.prop2;

string h = myobject.prop3;

Predic pred1 = (ExpandoObject parametres) => (((dynamic)parametres).prop3 =="dded");

bool predresult = pred1(myobject);

Predicate<ExpandoObject> preo = (ExpandoObject parametres) => ((dynamic)parametres).prop3 == "dded";
// *********** fin Tests

StateMachine sma = new StateMachine();
// définition des labels états
sma.setSMStateDescription(StateMachine.SMState.state_1, "etat 0");
sma.setSMStateDescription(StateMachine.SMState.state_1, "etat 1");
sma.setSMStateDescription(StateMachine.SMState.state_2, "etat 2");
sma.setSMStateDescription(StateMachine.SMState.state_3, "etat 3");
sma.setSMStateDescription(StateMachine.SMState.state_4, "etat 4");
sma.setSMStateDescription(StateMachine.SMState.state_5, "etat 5");
sma.setSMStateDescription(StateMachine.SMState.state_6, "etat 6");
sma.setSMStateDescription(StateMachine.SMState.state_7, "etat 7");
sma.setSMStateDescription(StateMachine.SMState.state_8, "etat 8");

// définition des tansitions
/*
 * 0 -> 1
 * 0 -> 2
 * 0 -> 3
 * 1 -> 2
 * 2 -> 3
 * 3 -> 4
 * 4 -> 5
 * 5 -> 6
 * 6 -> 0
 * 7 -> 0
 * 8 -> 0
 */
int r = 0;
r= sma.StateMachineSetStatePair(StateMachine.SMState.state_0, StateMachine.SMState.state_1);
r = sma.StateMachineSetStatePair(StateMachine.SMState.state_0, StateMachine.SMState.state_2);
r = sma.StateMachineSetStatePair(StateMachine.SMState.state_0, StateMachine.SMState.state_3);
r = sma.StateMachineSetStatePair(StateMachine.SMState.state_1, StateMachine.SMState.state_2);
r = sma.StateMachineSetStatePair(StateMachine.SMState.state_2, StateMachine.SMState.state_3);
r = sma.StateMachineSetStatePair(StateMachine.SMState.state_3, StateMachine.SMState.state_4);
r = sma.StateMachineSetStatePair(StateMachine.SMState.state_4, StateMachine.SMState.state_5);
r = sma.StateMachineSetStatePair(StateMachine.SMState.state_5, StateMachine.SMState.state_6);
r = sma.StateMachineSetStatePair(StateMachine.SMState.state_6, StateMachine.SMState.state_0);
r = sma.StateMachineSetStatePair(StateMachine.SMState.state_7, StateMachine.SMState.state_0);
r = sma.StateMachineSetStatePair(StateMachine.SMState.state_8, StateMachine.SMState.state_0);

string external_variable = "toto bonjour";

// définition des transitions
// transition 0 -> 1
ExpandoObject eo= new ExpandoObject();
Predicate<ExpandoObject> predicate11 = (ExpandoObject _eo) => {
    bool retv = false;
    if (external_variable == "bonjour")
        retv = true;
    
    return retv;
};
sma.StateMachine_setStateLine(StateMachine.SMState.state_0, StateMachine.SMState.state_1, eo, predicate11);
   


sma.StateMachineReset();
sma.SMcurrentState = StateMachine.SMState.state_0;

sma.StateMachineWork();
StateMachine.SMState cs = sma.SMcurrentState;

external_variable = "bonjour";

sma.StateMachineWork();
cs = sma.SMcurrentState;



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

//public enum SMState0 : ushort
//{
//    state_0 = 0,
//    state_1 = 1,
//    state_2 = 2,
//    state_3 = 3,
//    state_4 = 4,
//    state_5 = 5,
//    state_6 = 6,
//    state_7 = 7,
//    state_8 = 8
//}
delegate int Addition(int x, int y);

delegate bool Predic (ExpandoObject variables);

public class paramsObj
{
    public int x;
}

