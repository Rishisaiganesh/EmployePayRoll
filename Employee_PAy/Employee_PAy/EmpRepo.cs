using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace Employee_PAy
{
    class EmpRepo
    {
        public static string connectionString =@" Data Source=DESKTOP-77TPKFS;Initial Catalog = PayingrollService; Integrated Security = True";
        SqlConnection connection = new SqlConnection(connectionString);
        public void GetData()
        {
            try
            {
                Employee_Details emp = new Employee_Details();
                using (this.connection)
                {
                    string query = @"SELECT EmployeeName, Gender, , PhoneNumber, StartingDate FROM EmpPayroll;";
                    SqlCommand cmd = new SqlCommand(query, this.connection);
                    this.connection.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {

                            emp.EmployeeName = reader.GetString(0);
                            emp.Gender = reader.GetString(1);
                            emp.PhoneNumber = reader.GetString(2);
                            emp.StartingDate = reader.GetDateTime(3);
                        }
                        Console.WriteLine("{0},{1},{2},{3}", emp.EmployeeName, emp.Gender, emp.PhoneNumber , emp.StartingDate);
                    }
                    else
                    {
                        Console.WriteLine("NO DATA FOUND");
                    }
                    reader.Close();
                    this.connection.Close();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                connection.Close();
            }

        }
    }
}
