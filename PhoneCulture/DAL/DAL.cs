using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using PhoneCulture.Classes;
using System.Windows;

namespace PhoneCulture
{
    public class DAL
    {

        SqlConnection SqlConn = new SqlConnection("Data Source=.;Initial Catalog=PhoneCulture;Integrated Security=True");

        public void InsertUser(string Email, string Password, string firstName, string lastName, int phoneNumber)
        {

            SqlCommand cmd = new SqlCommand("select * from member where email = '" + Email + "'");


            SqlDataAdapter SqlAdp = new SqlDataAdapter("insert into member values ('" + firstName + "','" + lastName + "','" +
                    Email + "'," + phoneNumber + ",'" + Password + "', 0)", SqlConn);
            DataTable DT = new DataTable();
            SqlAdp.Fill(DT);
        }

        public object SelectUser()
        {
            SqlDataAdapter SQLAdp = new SqlDataAdapter("Select * from member", SqlConn);
            DataTable DT = new DataTable();
            SQLAdp.Fill(DT);
            return DT;
        }

        public bool UserLogin(string email, string password)
        {
            SqlConn.Open();
            

            try
            {
                SqlCommand cmd = new SqlCommand("select * from member where email = '" + email + "' AND password = '" + password + "'");
                cmd.Connection = SqlConn;
                SqlDataReader dr = cmd.ExecuteReader();
                
                if (dr.HasRows)
                {
                    return true;
                }

                else
                {
                    MessageBox.Show("Invalid User");

                    return false;
                }
            }

            catch
            {
                MessageBox.Show("Did not execute");

                return false;
            }
            finally
            {
                SqlConn.Close();
                SqlConn.Dispose();
            }



        }


        public bool AdminLogin(string email, string password)
        {
            SqlConn.Open();


            try
            {
                SqlCommand cmd = new SqlCommand("select * from member where email = '" + email + "' AND password = '" + password + "' AND isAdmin= 1");
                cmd.Connection = SqlConn;
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    return true;
                }

                else
                {
                    MessageBox.Show("Invalid Admin");

                    return false;
                }
            }

            catch
            {
                MessageBox.Show("Did not execute");

                return false;
            }
            finally
            {
                SqlConn.Close();
                SqlConn.Dispose();
            }



        }

        //public bool RegisterMemberData(string Email, string Password, string firstName, string lastName, int phoneNumber)
        //{
        //    conString.con.Open();
        //    try
        //    {
        //        string query = "insert into member values ('" + firstName + "','" + lastName + "','" +
        //            Email + "'," + phoneNumber+ ",'" + Password + "', null)";
        //        SqlCommand cmd = new SqlCommand(query, conString.con);
        //        cmd.ExecuteNonQuery();
        //        return true;
        //    }

        //    catch(Exception ex)
        //    {
        //        throw new Exception(ex.Message.ToString());
        //    }
        //    finally
        //    {
        //        conString.con.Close();
        //        conString.con.Dispose();
        //    }
        //}

    }
}