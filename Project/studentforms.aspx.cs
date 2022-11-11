using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class StudentForms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { 
            SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
            con.Open();

            String query = "SELECT FormID as 'ID', SubmissionDate as 'Date Submitted', Token_no as 'Token No', fee_status as 'Fee Status', FYP_Decision as 'Decision by FYP', FYP_Comment as 'Comments by FYP', FIN_Decision as 'Decision by Finance', FIN_Comment as 'Comments by Finance', Status as 'Status' FROM DEGREE_ISSUANCE_FORM WHERE Student_Id = "+ Session["Stdid"].ToString();

            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();

            rdr.Close();
            query = "Select FormID as 'ID', Submitted_Date as 'Date Submitted', subject_complaint as 'Subject', complaint as 'Complaint', status as 'Status' From Correction_Form where Student_ID = "+ Session["Stdid"].ToString();
            SqlCommand cmd2 = new SqlCommand(query, con);
            SqlDataReader rdr2 = cmd2.ExecuteReader();
            GridView2.DataSource = rdr2;
            GridView2.DataBind();
            rdr2.Close();
            con.Close();
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
        con.Open();
        String query;
        SqlCommand cmd;
        if (e.CommandName == "Fee")
        {
            query = "UPDATE DEGREE_ISSUANCE_FORM SET fee_status='Paid' WHERE FormID=" + e.CommandArgument;
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            
        }

        query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Student'," + Session["StdID"] + ", 'Paid Fees For Degree Issuance')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("studentforms.aspx");
        con.Close();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button buttonId = (Button)e.Row.FindControl("fee");

            if (e.Row.Cells[3].Text == "Paid")
                buttonId.Enabled = false;
        }
    }
}