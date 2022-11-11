using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Generate_Account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Create_Click(object sender, EventArgs e)
    {

        int a=0;
        SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
        con.Open();
        SqlCommand cmd;
        String query;
        String Role="";
        if (account_type.SelectedValue == "1")
        {
            query= "INSERT INTO ADMIN VALUES(getdate(),'"+CNIC.Text+"','"+name.Text+"','"+uname.Text+"','"+password.Text+"','"+phone_num.Text+"','"+email.Text+"')";
            cmd = new SqlCommand(query, con);
            a = cmd.ExecuteNonQuery();
            Role = "Admin";
        }

        else if (account_type.SelectedValue == "2")
        {
            query = "INSERT INTO FINANCE_OFFICER VALUES(getdate(),'" + CNIC.Text + "','" + name.Text + "','" + uname.Text + "','" + password.Text + "','" + phone_num.Text + "','" + email.Text + "')";
            cmd = new SqlCommand(query, con);
            a = cmd.ExecuteNonQuery();
            Role = "Finance Officer";
        }


        else if (account_type.SelectedValue == "3")
        {
            query = "INSERT INTO FYP_DEP_OFFICER VALUES(getdate(),'" + CNIC.Text + "','" + name.Text + "','" + uname.Text + "','" + password.Text + "','" + phone_num.Text + "','" + email.Text + "')";
            cmd = new SqlCommand(query, con);
            a = cmd.ExecuteNonQuery();
            Role = "FYP Officer";
        }
        else
            Response.Write("<script>alert('You must select an account type')</script>");
        

        if (a >= 0)
        {
            query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Director'," + Session["dirID"] + ", 'Created Account For "+Role+"')";

            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("directorpage.aspx");
        }
        else
        {
            Response.Write("<script>alert('Error')</script>");
            Response.Write("<script>alert('Account Generation Failed')</script>");
            con.Close();
        }
        
    }
}