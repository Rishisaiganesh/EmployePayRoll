using System;

namespace Employee_PAy
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Employe payroll");
            EmpRepo obj = new EmpRepo();
            obj.GetData();
        }
    }
}
