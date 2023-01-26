using System.Linq.Expressions;
using System.Reflection;

// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");

Expression constantExpr = Expression.Constant(5.5);
Console.WriteLine(constantExpr.ToString());

double num = 3.5;
constantExpr = Expression.Constant(num);
Console.WriteLine(constantExpr.ToString());

BlockExpression blockExpr = Expression.Block(
    Expression.Call(
        null,
        typeof(Console).GetMethod("Write", new Type[] { typeof(string) })!,
        Expression.Constant("Hello ")
       ),
    Expression.Call(
        null,
        typeof(Console).GetMethod("WriteLine", new Type[] { typeof(String) })!,
        Expression.Constant("World!")
        ),
    Expression.Constant(42)
);

