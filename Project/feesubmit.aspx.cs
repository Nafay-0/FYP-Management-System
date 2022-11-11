using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Fee_Submit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        int Amount = Convert.ToInt32(amount.Text);
        int Semester = Convert.ToInt32(semester.SelectedValue);

        if (Semester < 1)
            Response.Write("<script>alert('You must select a Semester')</script>");

        else
        {

            SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("Insert into Fee_Record values(" + Session["Stdid"] + "," + Semester + "," + Amount + ",getdate())" , con);
            int a = cmd.ExecuteNonQuery();

            if (a >= 0)
            {
                cmd = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Student'," + Session["Stdid"] + ", 'Submitted Fees for Semester "+Semester+"')", con);
                cmd.ExecuteNonQuery();

                Response.Redirect("studentpage.aspx");
            }

            else
            {
                Response.Write("<script>alert('Error')</script>");
                Response.Write("<script>alert('Fee Submission Failed')</script>");
            }
        }

        

    }
}