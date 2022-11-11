using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
        con.Open();
        if (role.SelectedValue == "1")
        {
            SqlCommand cmd = new SqlCommand("select * from STUDENT where username='" + username.Text + "' and password='" + password.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["login"] = "True";
                Session["username"] = username.Text;
                Session["password"] = password.Text;
                Session["role"] = role.SelectedValue;
                Session["rolename"] = "Student";
                Session["Stdid"] = dr["Std_RegID"].ToString();
                Session["name"] = dr["name"];
                Session["CNIC"] = dr["CNIC"];
                Session["email"] = dr["email"];
                Session["Name"] = dr["name"];
                Session["Father_name"] = dr["Father_name"];
                Session["batch"] = dr["batch"];
                Session["department"] = dr["department"];
                Session["degree"] = dr["degree"];

                SqlCommand cmd2 = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Student'," + Session["Stdid"] + ", 'Logged in the system')",con);
                dr.Close();
                cmd2.ExecuteNonQuery();
                Response.Redirect("studentpage.aspx");


            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
        }
        else if (role.SelectedValue == "2")
        {
            SqlCommand cmd = new SqlCommand("select * from FINANCE_OFFICER where username='" + username.Text + "' and password='" + password.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["login"] = "True";
                Session["username"] = username.Text;
                Session["password"] = password.Text;
                Session["role"] = role.SelectedValue;
                Session["rolename"] = "Finance Officer";
                Session["name"] = dr["name"];
                Session["finID"] = dr["FinOffID"];

                SqlCommand cmd2 = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Finance Officer'," + Session["finID"] + ", 'Logged in the system')", con);
                dr.Close();
                cmd2.ExecuteNonQuery();
                Response.Redirect("financepage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
        }
        else if (role.SelectedValue == "3")
        {
            SqlCommand cmd = new SqlCommand("select * from FYP_DEP_OFFICER where username='" + username.Text + "' and password='" + password.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["login"] = "True";
                Session["username"] = username.Text;
                Session["password"] = password.Text;
                Session["role"] = role.SelectedValue;
                Session["rolename"] = "FYP Officer";
                Session["name"] = dr["name"];
                Session["fypID"] = dr["FYPOffID"];

                SqlCommand cmd2 = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'FYP Officer'," + Session["fypID"] + ", 'Logged in the system')", con);
                dr.Close();
                cmd2.ExecuteNonQuery();
                Response.Redirect("fyppage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
        }
        else if (role.SelectedValue == "4")
        {
            SqlCommand cmd = new SqlCommand("select * from ADMIN where username='" + username.Text + "' and password='" + password.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["login"] = "True";
                Session["username"] = username.Text;
                Session["password"] = password.Text;
                Session["role"] = role.SelectedValue;
                Session["rolename"] = "Admin";
                Session["name"] = dr["name"];
                Session["AdmID"] = dr["AdmID"];

                SqlCommand cmd2 = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Admin'," + Session["AdmID"] + ", 'Logged in the system')", con);
                dr.Close();
                cmd2.ExecuteNonQuery();
                Response.Redirect("adminpage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
        }
        else if (role.SelectedValue == "5")
        {
            SqlCommand cmd = new SqlCommand("select * from DIRECTOR where username='" + username.Text + "' and password='" + password.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["login"] = "True";
                Session["username"] = username.Text;
                Session["password"] = password.Text;
                Session["role"] = role.SelectedValue;
                Session["rolename"] = "Director";
                Session["name"] = dr["name"];
                Session["dirID"] = dr["dirID"];

                SqlCommand cmd2 = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Director'," + Session["dirID"] + ", 'Logged in the system')", con);
                dr.Close();
                cmd2.ExecuteNonQuery();
                Response.Redirect("directorpage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('No role Selected')</script>");
        }

        


    }
}