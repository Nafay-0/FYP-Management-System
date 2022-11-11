using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["login"] == null || Session["login"].ToString() == "False")
        {
            degreelink.NavigateUrl = "~/login.aspx";
            transcriptlink.NavigateUrl = "~/login.aspx";
            correctionlink.NavigateUrl = "~/login.aspx";
            feelink.NavigateUrl = "~/login.aspx";

        }

        else if (Session["login"] != null)
        {

            if (Session["login"].ToString() == "True" && Session["role"].ToString()=="1")
            {
                degreelink.NavigateUrl = "~/degreeissuance.aspx";
                transcriptlink.NavigateUrl = "#";
                correctionlink.NavigateUrl = "~/complaint_form.aspx";
                feelink.NavigateUrl = "#";
            }

            else if (Session["login"].ToString() == "True" && Session["role"].ToString() == "4")
            {
                degreelink.NavigateUrl = "#";
                transcriptlink.NavigateUrl = "transcript.aspx";
                correctionlink.NavigateUrl = "#";
                feelink.NavigateUrl = "#";
            }

            else if (Session["login"].ToString() == "True" && Session["role"].ToString() == "2")
            {
                degreelink.NavigateUrl = "#";
                transcriptlink.NavigateUrl = "#";
                correctionlink.NavigateUrl = "#";
                feelink.NavigateUrl = "~/feerecord.aspx";
            }

            else
            {
                degreelink.NavigateUrl = "#";
                transcriptlink.NavigateUrl = "#";
                correctionlink.NavigateUrl = "#";
                feelink.NavigateUrl = "#";

            }



        }
    }
}