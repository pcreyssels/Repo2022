// See https://aka.ms/new-console-template for more information



using ConsoleApp_StatMac;
using System.Dynamic;
using System.Net.Http.Headers;
using System.Reflection;
using System.Reflection.Emit;

using _smState = ConsoleApp_StatMac.StateMachine2.SMState;

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


string external_variable = "bonjour";

//  ************* statemachine1 *************
StateMachine sma = new StateMachine();
// définition des labels états
sma.setSMStateDescription(0, "etat 0");
sma.setSMStateDescription(1, "etat 1");
sma.setSMStateDescription(2, "etat 2");
sma.setSMStateDescription(3, "etat 3");
sma.setSMStateDescription(4, "etat 4");
sma.setSMStateDescription(5, "etat 5");

// définition des tansitions
/*
 * 0 -> 1
 * 0 -> 2
 * 0 -> 3
 * 1 -> 2
 * 2 -> 3
 * 3 -> 4
 * 4 -> 5
 */
sma.StateMachineSetStatePair(0, 1);
sma.StateMachineSetStatePair(0, 2);
sma.StateMachineSetStatePair(0, 3);
sma.StateMachineSetStatePair(1, 2);
sma.StateMachineSetStatePair(2, 3);
sma.StateMachineSetStatePair(3, 4);
sma.StateMachineSetStatePair(4, 5);
sma.StateMachineSetStatePair(4, 1);
sma.StateMachineSetStatePair(5, 0);

// définition des transitions
// transition 0 -> 1
ExpandoObject eo = new ExpandoObject();
Predicate<ExpandoObject> predicate_1 = (ExpandoObject _eo) => {
    bool retv = false;
    if (external_variable == "bonjour")
        retv = true;

    return retv;
};
sma.StateMachine_setStateLine(0, 1, eo, predicate_1);

predicate_1 = _ => true;
sma.StateMachine_setStateLine(1, 2, eo, predicate_1);
sma.StateMachine_setStateLine(2, 3, eo, predicate_1);

dynamic eo1 = new ExpandoObject();
eo1.prop1 = "valeur 1";
Predicate<ExpandoObject> predicate_2 = (ExpandoObject _eo) => {
    bool retv = false;
    if (((dynamic)_eo).prop1 == "valeur 1")
        retv = true;
    return retv;
};
sma.StateMachine_setStateLine(3, 4, eo1, predicate_2);


sma.StateMachineReset();
int[] pr_st = sma.getPreviousStates(0);
int curstat = 0;
int nexsta = 0;
int y = 0;
for (int sts=0; sts<10;sts++)
{
    y = 0;
    Tuple<int,int> d = new Tuple<int, int>(3,4);
    if (y==1) 
        ((dynamic)sma.StateMachineDescription[d].Item1).prop1 = "autre";
    nexsta = sma.StateMachineWork();
    Console.WriteLine($" etat : {nexsta.ToString()}");
    curstat = sma.SMcurrentState;
}
curstat = sma.SMcurrentState;
nexsta = sma.StateMachineWork();
curstat = sma.SMcurrentState;





// ************* statemachine2 *************
StateMachine2 sma2 = new StateMachine2();
// définition des labels états
sma2.setSMStateDescription(StateMachine2.SMState.state_1, "etat 0");
sma2.setSMStateDescription(StateMachine2.SMState.state_1, "etat 1");
sma2.setSMStateDescription(StateMachine2.SMState.state_2, "etat 2");
sma2.setSMStateDescription(StateMachine2.SMState.state_3, "etat 3");
sma2.setSMStateDescription(StateMachine2.SMState.state_4, "etat 4");
sma2.setSMStateDescription(StateMachine2.SMState.state_5, "etat 5");
sma2.setSMStateDescription(StateMachine2.SMState.state_6, "etat 6");
sma2.setSMStateDescription(StateMachine2.SMState.state_7, "etat 7");
sma2.setSMStateDescription(StateMachine2.SMState.state_8, "etat 8");

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
r= sma2.StateMachineSetStatePair(StateMachine2.SMState.state_0, StateMachine2.SMState.state_1);
r = sma2.StateMachineSetStatePair(StateMachine2.SMState.state_0, StateMachine2.SMState.state_2);
r = sma2.StateMachineSetStatePair(StateMachine2.SMState.state_0, StateMachine2.SMState.state_3);
r = sma2.StateMachineSetStatePair(StateMachine2.SMState.state_1, StateMachine2.SMState.state_2);
r = sma2.StateMachineSetStatePair(StateMachine2.SMState.state_2, StateMachine2.SMState.state_3);
r = sma2.StateMachineSetStatePair(StateMachine2.SMState.state_3, StateMachine2.SMState.state_4);
r = sma2.StateMachineSetStatePair(StateMachine2.SMState.state_4, StateMachine2.SMState.state_5);
r = sma2.StateMachineSetStatePair(StateMachine2.SMState.state_5, StateMachine2.SMState.state_6);
r = sma2.StateMachineSetStatePair(StateMachine2.SMState.state_6, StateMachine2.SMState.state_0);
r = sma2.StateMachineSetStatePair(StateMachine2.SMState.state_7, StateMachine2.SMState.state_0);
r = sma2.StateMachineSetStatePair(StateMachine2.SMState.state_8, StateMachine2.SMState.state_0);



_smState[] _sma = sma2.getPreviousStates(StateMachine2.SMState.state_0);

// définition des transitions
// transition 0 -> 1
eo= new ExpandoObject();
Predicate<ExpandoObject> predicate11 = (ExpandoObject _eo) => {
    bool retv = false;
    if (external_variable == "bonjour")
        retv = true;
    
    return retv;
};
sma2.StateMachine_setStateLine(StateMachine2.SMState.state_0, StateMachine2.SMState.state_1, eo, predicate11);




sma2.StateMachineReset();
sma2.SMcurrentState = StateMachine2.SMState.state_0;

sma2.StateMachineWork();
StateMachine2.SMState cs = sma2.SMcurrentState;

external_variable = "bonjour";

sma2.StateMachineWork();
cs = sma2.SMcurrentState;



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

