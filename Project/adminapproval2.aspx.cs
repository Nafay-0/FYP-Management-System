using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Approve2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
            con.Open();

            String query = "SELECT FormID as 'ID', Submitted_Date as 'Date Submitted',name as 'Student Name', Student_ID as 'Student ID', Subject_complaint as 'Subject', Complaint as 'Complaint', Status as 'Status' FROM CORRECTION_FORM INNER JOIN STUDENT ON Std_RegID = Student_ID WHERE Status='Pending'";


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
            query = "UPDATE CORRECTION_FORM SET status='Approved' WHERE FormID=" + e.CommandArgument;
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Admin'," + Session["AdmID"] + ",'Approved Correction Form with ID = " + e.CommandArgument.ToString() + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

        }

        else if (e.CommandName == "Reject")
        {
            query = "UPDATE CORRECTION_FORM SET status='Rejected' WHERE FormID=" + e.CommandArgument;
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Admin'," + Session["AdmID"] + ",'Rejected Correction Form with ID = " + e.CommandArgument.ToString() + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }
        query = "UPDATE CORRECTION_FORM SET AdmID = " + Session["admID"].ToString() + " WHERE FormID=" + e.CommandArgument;

        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        Response.Redirect("adminapproval2.aspx");
        con.Close();


    }
}