﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignupAgreement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void imgButtonLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void imageButtonSignupGo_Click(object sender, ImageClickEventArgs e)
    {
        if(!radioButtonAgreement1Ok.Checked)
        {
            MessageBox.Show("회원약관 동의에 동의해 주셔야 가입하실수 있습니다.", this);
            return;
        }

        if (!radioButtonAgreement2Ok.Checked)
        {
            MessageBox.Show("개인정보 동의사항에 동의해 주셔야 가입히실수 있습니다.", this);
            return;
        }

        Response.Redirect("Signupinfo.aspx");
    }
}