using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private string _strTitle = "重庆理工大学自考办";
    public string strTitle
    {
        set
        {
            _strTitle=value;
        }
        get
        {
            return string.Format("<title>{0}</title>",Server.HtmlEncode(_strTitle));
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
