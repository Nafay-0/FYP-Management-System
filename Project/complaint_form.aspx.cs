using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Complaint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Complaint_Click(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine(subject.Text);
        System.Diagnostics.Debug.WriteLine(complaint.Text);
        int student_id = Convert.ToInt32(Session["Stdid"]);
        SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
        con.Open();
        string query = "EXEC SUBMIT_COMPLAINT_FROM @stdID = " + student_id + ",@complaint = '" + complaint.Text + "' ,@sub = '" + subject.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        query = "Select FormID FROM CORRECTION_FORM WHERE STUDENT_ID = " + student_id + "and complaint = '"+complaint.Text+"' and subject_complaint = '"+subject.Text+"'";
        cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Student'," + Session["stdID"] + ",'Submitted Complaint Form with ID=" + dr["FormID"] + "')";
            cmd = new SqlCommand(query, con);
            dr.Close();
            cmd.ExecuteNonQuery();
        }

        Response.Write("<script>alert('Complaint Submitted Successfully')</script>");
        Response.Redirect("studentpage.aspx");
    }
}