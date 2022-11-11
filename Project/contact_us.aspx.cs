using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void SendMessage_Click(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine(name.Text);
        System.Diagnostics.Debug.WriteLine(email.Text);
        System.Diagnostics.Debug.WriteLine(r_no.Text);
        System.Diagnostics.Debug.WriteLine(subject.Text);
        System.Diagnostics.Debug.WriteLine(message.Text);
    }
}