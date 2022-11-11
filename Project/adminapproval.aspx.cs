using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Approve : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
            con.Open();

            String query = "SELECT FormID as 'ID', SubmissionDate as 'Date Submitted',name as 'Student Name', student_id as 'Student ID', Token_no as 'Token No', FIN_Decision as 'DECISION BY FINANCE', FYP_Decision as 'DECISION BY FYP' FROM DEGREE_ISSUANCE_FORM INNER JOIN STUDENT on Std_RegID = Student_ID WHERE status='Processing'";


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
        String query;
        SqlCommand cmd;
        if (e.CommandName == "Approve")
        {
             query = "UPDATE DEGREE_ISSUANCE_FORM SET status='Approved' WHERE FormID=" + e.CommandArgument;
             cmd = new SqlCommand(query, con);
             cmd.ExecuteNonQuery();

            query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Admin'," + Session["AdmID"] + ",'Approved Degree Issuance Form with ID = " + e.CommandArgument.ToString() + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

        }

        else if (e.CommandName == "Reject")
        {
             query = "UPDATE DEGREE_ISSUANCE_FORM SET status='Rejected' WHERE FormID=" + e.CommandArgument;
             cmd = new SqlCommand(query, con);
             cmd.ExecuteNonQuery();

            query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Admin'," + Session["AdmID"] + ",'Rejected Degree Issuance Form with ID = " + e.CommandArgument.ToString() + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        query = "UPDATE DEGREE_ISSUANCE_FORM SET AdmID = "+Session["admID"].ToString()+" WHERE FormID=" + e.CommandArgument;

        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        query = "Exec Duration @fID=" + e.CommandArgument + ", @role='Admin'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("adminapproval.aspx");
        con.Close();


    }
}