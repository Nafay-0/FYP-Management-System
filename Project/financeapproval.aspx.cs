using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Finance_Approval : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
            con.Open();

            String query = "SELECT FormID as 'ID', SubmissionDate as 'Date Submitted',name as 'Student Name', student_id as 'Student ID', fee_status as 'Fee Status' FROM DEGREE_ISSUANCE_FORM INNER JOIN STUDENT on Std_RegID = Student_ID WHERE FIN_Decision='Pending' and status='Processing'";


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

        Button lb = (Button)e.CommandSource;
        String comment = ((TextBox)lb.Parent.FindControl("comment")).Text;
        String query;
        SqlCommand cmd;

        if (e.CommandName == "Accept")
        {
            query = "UPDATE DEGREE_ISSUANCE_FORM SET FIN_Decision='Accepted',FIN_Comment= '"+comment+"' WHERE FormID=" + e.CommandArgument;
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Finance Officer'," + Session["finID"] + ",'Accepted Degree Issuance Form with ID = " + e.CommandArgument.ToString() + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();


        }

        else if(e.CommandName == "Reject")
        {
            query = "UPDATE DEGREE_ISSUANCE_FORM SET FIN_Decision='Rejected',FIN_Comment='" + comment + "' WHERE FormID=" + e.CommandArgument;
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Finance Officer'," + Session["finID"] + ",'Rejected Degree Issuance Form with ID = " + e.CommandArgument.ToString() + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        query = "UPDATE DEGREE_ISSUANCE_FORM SET FINOFFID = " + Session["finID"].ToString() + " WHERE FormID=" + e.CommandArgument;
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        query = "Exec Duration @fID=" + e.CommandArgument + ", @role='Finance Officer'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        Response.Redirect("financeapproval.aspx");
        con.Close();


    }
}