﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Track_Complaint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=ASADULLAH\\SQLEXPRESS;Initial Catalog=ONE_STOP1;Integrated Security=True");
            con.Open();

            String query = " SELECT FormID as 'Form ID', Submitted_Date as 'Date Submitted', name as 'Student Name', Student_ID as 'Student ID', subject_complaint as 'Subject', complaint as 'Complaint', AdmID as 'Admin ID', Status as 'Status' FROM CORRECTION_FORM INNER JOIN STUDENT ON Student_ID = Std_RegID";


            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();
        }
    }
}