using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Transcript : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
            con.Open();

            String query = "SELECT T.student_id,name,Department,degree,batch,cgpa, T.status, date_issued FROM STUDENT S INNER JOIN TRANSCRIPT T on student_id = Std_RegID INNER JOIN DEGREE_ISSUANCE_FORM D on T.Student_ID = D.Student_ID where D.Status = 'Approved'";

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
        if (e.CommandName == "transcript")
        {
            query = "UPDATE TRANSCRIPT SET status='Issued',date_issued=getdate() WHERE student_id=" + e.CommandArgument;
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

        }
        query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Admin'," + Session["AdmID"] + ", 'Issued Transcript To Student With ID=" + e.CommandArgument + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        Response.Redirect("transcript.aspx");
        con.Close();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button buttonId = (Button)e.Row.FindControl("transcript");

            if (e.Row.Cells[7].Text == "Issued")
                buttonId.Enabled = false;
        }
    }
}