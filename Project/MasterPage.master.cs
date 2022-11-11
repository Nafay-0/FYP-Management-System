using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class MasterPage : System.Web.UI.MasterPage
{

    
    protected void Page_Load(object sender, EventArgs e)
    {
        String filename = GetCurrentPageName();

        if (filename == "contact_us.aspx")
        {
            contactpage.Attributes.Add("class", "nav-link active");
            homepage.Attributes.Add("class", "nav-link");
            loginpage.Attributes.Add("class", "nav-link");
            signuppage.Attributes.Add("class", "nav-link");
        }

        else if (filename == "homepage.aspx")
        {
            contactpage.Attributes.Add("class", "nav-link");
            homepage.Attributes.Add("class", "nav-link active");
            loginpage.Attributes.Add("class", "nav-link");
            signuppage.Attributes.Add("class", "nav-link");
        }

        else if (filename == "login.aspx")
        {
            contactpage.Attributes.Add("class", "nav-link");
            homepage.Attributes.Add("class", "nav-link");
            loginpage.Attributes.Add("class", "nav-link active");
            signuppage.Attributes.Add("class", "nav-link");
        }

        else if (filename == "signup.aspx")
        {
            contactpage.Attributes.Add("class", "nav-link");
            homepage.Attributes.Add("class", "nav-link");
            loginpage.Attributes.Add("class", "nav-link");
            signuppage.Attributes.Add("class", "nav-link active");
        }

        else if(filename == "studentpage.aspx")
        {
            contactpage.Attributes.Add("class", "nav-link");
            homepage.Attributes.Add("class", "nav-link");
            studentpage.Attributes.Add("class", "nav-link active");
        }

        else if(filename == "adminpage.aspx")
        {
            contactpage.Attributes.Add("class", "nav-link");
            homepage.Attributes.Add("class", "nav-link");
            adminpage.Attributes.Add("class", "nav-link active");
        }

        else if (filename == "financepage.aspx")
        {
            contactpage.Attributes.Add("class", "nav-link");
            homepage.Attributes.Add("class", "nav-link");
            financepage.Attributes.Add("class", "nav-link active");
        }

        else if (filename == "fyppage.aspx")
        {
            contactpage.Attributes.Add("class", "nav-link");
            homepage.Attributes.Add("class", "nav-link");
            FYPpage.Attributes.Add("class", "nav-link active");
        }

        else if (filename == "directorpage.aspx")
        {
            contactpage.Attributes.Add("class", "nav-link");
            homepage.Attributes.Add("class", "nav-link");
            directorpage.Attributes.Add("class", "nav-link active");
        }

        else
        {
            contactpage.Attributes.Add("class", "nav-link");
            homepage.Attributes.Add("class", "nav-link");
            directorpage.Attributes.Add("class", "nav-link");
        }

        if (Session["login"] != null)
        {
            if(Session["login"].ToString() == "True")
            {
                loginpage.Visible = false;
                signuppage.Visible = false;
                logoutpage.Visible = true;

                if (Session["role"].ToString() == "1")
                    studentpage.Visible = true;

                else if (Session["role"].ToString() == "2")
                    financepage.Visible = true;

                else if(Session["role"].ToString() == "3")
                    FYPpage.Visible = true;

                else if(Session["role"].ToString() == "4")
                    adminpage.Visible = true;

                else if(Session["role"].ToString() == "5")
                    directorpage.Visible = true;

            }
        }
    }

    public String GetCurrentPageName()
    {
        String sPath = Request.Url.AbsolutePath;
        System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
        String sRet = oInfo.Name;
        return sRet;
    }
    protected void Home_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }



    protected void ContactUs_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("contact_us.aspx");

    }

    protected void Student_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentpage.aspx");

    }

    protected void Admin_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpage.aspx");

    }

    protected void FYP_Click(object sender, EventArgs e)
    {
        Response.Redirect("fyppage.aspx");

    }

    protected void Finance_Click(object sender, EventArgs e)
    {
        Response.Redirect("financepage.aspx");

    }

    protected void Director_Click(object sender, EventArgs e)
    {
        Response.Redirect("directorpage.aspx");

    }

    protected void Login_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");

    }

    protected void Logout_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
        con.Open();
        SqlCommand cmd;

        if (Session["rolename"].ToString() == "Student") {
            cmd = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'" + Session["rolename"] + "'," + Session["Stdid"] + ", 'Logged out of the system')", con);
            cmd.ExecuteNonQuery();
        }   
        else if (Session["rolename"].ToString() == "Finance Officer") {
            cmd = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'" + Session["rolename"] + "'," + Session["finID"] + ", 'Logged out of the system')", con);
            cmd.ExecuteNonQuery();
        }

        else if (Session["rolename"].ToString() == "FYP Officer") {
            cmd = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'" + Session["rolename"] + "'," + Session["fypID"] + ", 'Logged out of the system')", con);
            cmd.ExecuteNonQuery();
        }
        else if (Session["rolename"].ToString() == "Admin") {
            cmd = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'" + Session["rolename"] + "'," + Session["AdmID"] + ", 'Logged out of the system')", con);
            cmd.ExecuteNonQuery();
        }
        else if (Session["rolename"].ToString() == "Director") {
            cmd = new SqlCommand("INSERT INTO AUDIT_TRAIL VALUES(getdate(),'" + Session["rolename"] + "'," + Session["dirID"] + ", 'Logged out of the system')", con);
            cmd.ExecuteNonQuery();
        }

        Session["login"] = "False";
        con.Close();
        Response.Redirect("homepage.aspx");

    }

    protected void Signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");

    }



}
