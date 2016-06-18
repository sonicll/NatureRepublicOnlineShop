﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // PostBack이란 이벤트가 일어날 경우와 않을 경우가 있다.
        // 처음뜨는 페이지와 이벤트가 갔다온 페이지와 구분할 필요가 있을때.
        // 처음 온 페이지와 아닌 페이지의 구분
        // 같은 페이지에서 !
        if (!IsPostBack)
        {
            textBoxID.Text = "";
            if (Request.Cookies["CookieID"] != null)
            {
                textBoxID.Text = Request.Cookies["CookieID"].Value;
            }
        }
    }

    protected void ImgButtonLogin_Click(object sender, ImageClickEventArgs e)
    {
        string sql;
        sql = " SELECT  memberPW, memberName ";
        sql = sql + " FROM tableMemeber ";
        sql = sql + string.Format(" WHERE  (memberID = '{0}')", textBoxID.Text);

        string[] sqlResult;

        OleDbSqlServerQueryReader RecordData = new OleDbSqlServerQueryReader(sql, 2);
        sqlResult = RecordData.RunQueryCol();

        if (RecordData.ResultExist)
        {
            if (!textBoxPW.Text.Equals(sqlResult[0]))
            {
                Response.Write("패스워드를 확인해 주세요");
                return;
            }
        }
        else {
            Response.Write("아이디 를 확인해 주세요");
            return;
        }

        // 세션은 인터넷 익스플로러를 닫으면 없어진다.
        // 쿠키 값 관련 // 쿠키는 익스플로러를 닫아도 없어지지 않는다.
        if(CheckboxID.Checked)
        {
            HttpCookie ckID = new HttpCookie("CookieID");
            DateTime now = DateTime.Now;
            TimeSpan span = new TimeSpan(7, 0, 0, 0); // 일, 시, 분, 초

            ckID.Value = textBoxID.Text;
            ckID.Expires = now + span;
            Response.Cookies.Add(ckID);
        }
        Session.Add("MemberID", textBoxID.Text.Trim());
        Response.Redirect("Home.aspx");
    }
}