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

        //Inserting a user into the database
        public bool InsertUser(string Email, string Password, string firstName, string lastName, int phoneNumber)
        {
            try
            {
                if (SqlConn.State == ConnectionState.Closed)
                {
                    SqlConn.Open();
                }

                

                SqlCommand cmd = new SqlCommand("insert into member values ('" + firstName + "','" + lastName + "','" +
                    Email + "'," + phoneNumber + ",'" + Password + "', 0)", SqlConn);

                cmd.ExecuteNonQuery();
                SqlConn.Close();
                return true;
            }

            catch(Exception ex)
            {
                return false;
            }


        }

        public bool checkMemberExists(string Email)
        {

            try
            {
                if (SqlConn.State == ConnectionState.Closed)
                {
                    SqlConn.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member WHERE email = '" + Email + "'", SqlConn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }

                else
                {
                    return false;
                }
            }
            catch(Exception Ex)
            {

            }



            return false;
        }



        //Selecting a user in the database
        public object SelectUser()
        {
            SqlDataAdapter SQLAdp = new SqlDataAdapter("Select * from member", SqlConn);
            DataTable DT = new DataTable();
            SQLAdp.Fill(DT);
            return DT;
        }

        //Logging in a user
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

        //Logging in an admin
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


    }
}