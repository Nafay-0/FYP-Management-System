using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Signup_Click(object sender, EventArgs e)
    {
    
        string dep = "NULL";
        double cgpa = 0.0;
        if (department.SelectedValue == "1")
            dep = "Computing";

        else if (department.SelectedValue == "2")
            dep = "Management";

        else if (department.SelectedValue == "3")
            dep = "Electrical Engineering";
        else
            Response.Write("<script>alert('You must select a department')</script>");
        
        SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
        con.Open();

        SqlCommand cmd = new SqlCommand("insert into STUDENT values('" + CNIC.Text + "','" + name.Text + "','" + uname.Text + "','" + password.Text + "','" + phone_num.Text + "','" + email.Text + "','" + address.Text + "','" + dep + "'," + cgpa + ",'" + fname.Text + "','" + batch.Text + "','" + degree.Text + "')", con);
        int a = cmd.ExecuteNonQuery();

        if (a >= 0)
        {
            

            cmd = new SqlCommand("SELECT std_RegID FROM STUDENT WHERE CNIC = '"+CNIC.Text+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                String id = dr["Std_RegID"].ToString();
                cmd = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Student'," + id + ", 'Signed up for an account')", con);
                dr.Close();
                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("INSERT INTO TRANSCRIPT VALUES("+id+",'Pending',NULL)", con);
                cmd.ExecuteNonQuery();
            }

            

            Response.Redirect("login.aspx");
        }
        else
        {
            Response.Write("<script>alert('Error')</script>");
            Response.Write("<script>alert('Signup Failed')</script>");
            
        }
        con.Close();
        
    }
}