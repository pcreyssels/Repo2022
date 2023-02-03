// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");


ValueTuple<string, DateTime>[] vt = new ValueTuple<string, DateTime>[10];
Queue<ValueTuple<string, DateTime>> qu = new Queue<ValueTuple<string, DateTime>>(10);

qu.Enqueue(ValueTuple.Create<string, DateTime>("az", new DateTime(2022, 5, 6)));
qu.Enqueue(ValueTuple.Create<string, DateTime>("er", new DateTime(2022, 6, 3)));
qu.Enqueue(ValueTuple.Create<string, DateTime>("ty", new DateTime(2022, 6, 10)));

int n = qu.Count;
List<ValueTuple<string, DateTime>> li = new List<ValueTuple<string, DateTime>>(10);

for (int i=0; i<20;i++)
{
    if (li.Count>=10)
        li.RemoveAt(0);
    li.Add(ValueTuple.Create<string, DateTime>(i.ToString(), new DateTime(2022, 6, i+1)));

    int c = li.Count;
}
li.RemoveAt(0);

List<Int32> list = new();

