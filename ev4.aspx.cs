using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ev4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void btn_TextChanged(object sender, EventArgs e)
    //{
    //    string gothr = "https://www.surveymonkey.com/r/EV4Survey?c=" + Server.HtmlEncode(tbSurveyCode.Text);
    //    //Response.Redirect(gothr, false);
    //    Label1.Text = gothr;
    //}
    protected void btn_Click(object sender, EventArgs e)
    {
        this.tbSurveyCode.Text = this.tbSurveyCode.Text.ToUpper();
        string sCode = this.tbSurveyCode.Text;
        
        if (sCode.IndexOf("15") > 0 || sCode.IndexOf("16") > 0) {
        string gothr = "https://www.surveymonkey.com/r/EV4Survey?c=" + Server.HtmlEncode(tbSurveyCode.Text);
        Response.Redirect(gothr, false);
        }
        else
        {
        string gothr = "https://www.surveymonkey.com/r/EV4Survey2014?c=" + Server.HtmlEncode(tbSurveyCode.Text);
        Response.Redirect(gothr, false);
        }

        //Server.Transfer(gothr);
        
        //Label1.Text = gothr;
    }
}