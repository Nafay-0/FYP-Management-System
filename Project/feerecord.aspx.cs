using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Fee_Record : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
            con.Open();

            String query = "SELECT std_id,name,Semester,Amount,Submission_date FROM FEE_RECORD INNER JOIN STUDENT ON std_id = Std_RegID";

            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();
        }

    }
}