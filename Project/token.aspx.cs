using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Token : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
            con.Open();

            String query = "SELECT FormID as 'ID', SubmissionDate as 'Date Submitted',name as 'Student Name', student_id as 'Student ID' FROM DEGREE_ISSUANCE_FORM INNER JOIN STUDENT on Std_RegID = Student_ID WHERE status='Pending'";

            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();
        }

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
        con.Open();

        if (e.CommandName == "Token")
        {
            System.Diagnostics.Debug.WriteLine(e.CommandArgument.ToString());
            String query = "UPDATE DEGREE_ISSUANCE_FORM SET Token_no = (SELECT MAX(TOKEN_NO) FROM DEGREE_ISSUANCE_FORM)+1, Status='Processing' WHERE FormID = " + e.CommandArgument;
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Admin'," + Session["AdmID"] + ",'Assigned Token to Degree Issuance Form with ID = " + e.CommandArgument.ToString() + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }


        Response.Redirect("token.aspx");
        con.Close();


    }
}