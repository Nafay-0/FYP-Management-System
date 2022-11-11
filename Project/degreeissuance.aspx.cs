using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Degree : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        name.DataBind();
        fname.DataBind();
        email.DataBind();
        batch.DataBind();
        department.DataBind();
        CNIC.DataBind();
        degree.DataBind();
            
    }

    protected void Degree_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
        con.Open();
        int student_id = Convert.ToInt32(Session["Stdid"]);
        System.Diagnostics.Debug.WriteLine(student_id);
        string query = "EXEC SUBMIT_DEGREE_FORM @stdID = " + student_id;
        SqlCommand cmd = new SqlCommand(query, con);

        //try
        //{
            int a = cmd.ExecuteNonQuery();
            
            if (a >= 0)
            {
                Response.Write("<script>alert('Degree Form Submitted Successfully')</script>");
                query = "UPDATE STUDENT SET CGPA = '" + CGPA.Text + "' Where Std_regid = " + Session["stdid"].ToString();
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                query = "Select FormID FROM DEGREE_ISSUANCE_FORM WHERE STUDENT_ID = " + student_id;
                cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    query = "INSERT INTO AUDIT_TRAIL VALUES(getdate(),'Student'," + Session["stdID"] + ",'Submitted Degree Issuance Form with ID="+dr["FormID"]+"')";
                    cmd = new SqlCommand(query, con);
                    dr.Close();    
                    cmd.ExecuteNonQuery();
                }

                Response.Redirect("studentpage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
            /*}
            (catch (Exception ex)
            {
             Response.Write("<script>alert('There has been a problem. Please Try again!')</script>");
            }*/
            con.Close();

    }

}