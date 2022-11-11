using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Track_Degree : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
            con.Open();

            String query = " SELECT FormID as 'Form ID',Token_No as 'Token No' ,SubmissionDate as 'Date Submitted', name as 'Student Name', Student_ID as 'Student ID', FinOffID as 'Finance Officer ID', FIN_Decision as 'Decision by Finance', FypOffID as 'FYP Officer ID', FYP_Decision as 'Decision by FYP', AdmID as 'Admin ID', Status as 'Status', Admin_Processing_Time, FIN_Processing_Time, FYP_Processing_Time FROM DEGREE_ISSUANCE_FORM INNER JOIN STUDENT ON Student_ID = Std_RegID";

            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            rdr.Close();

            SqlDataReader rdr2 = cmd.ExecuteReader();
            GridView2.DataSource = rdr2;
            GridView2.DataBind();
            rdr2.Close();
            con.Close();
        }

    }
}