<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="登录-重庆理工大学自考办" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NewsPlaceHolder" Runat="Server">
<div align="center">
	<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%" id="table9" >
		<tr>
			<td style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed;">
			<div align="center">
				<table border="0" cellpadding="0" cellspacing="0"  background="images/admin_login.jpg" width="563" height="364" id="table10">
					<tr>
						<td valign="top" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">
						<div align="center">
							<div align="center">
								<table border="0" cellpadding="0" cellspacing="0" width="100%" id="table11">
									<tr>
										<td width="207" height="130" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
										<td height="130" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; "> 
			</td>
										<td width="37" height="130" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
									</tr>
									<tr>
										<td width="207" height="111" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">
										<p align="center">
										<a target="_blank" href="#">
										<img alt="" border="0" src="images/nothing.gif" width="155" height="94" /></a></td>
										<td height="111" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">
										
										<table border="0" cellpadding="5" cellspacing="0" width="319" id="table12">
											<tr>
												<td width="114" align="center" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">
												用户名</td>
												<td width="205" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">
                                                 <asp:TextBox ID="user_input" runat="server"></asp:TextBox></td>
											</tr>
											<tr>
												<td width="114" align="center" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">
												密　码</td>
												<td width="205" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">
												<asp:TextBox ID="pass_input" runat="server"></asp:TextBox></td>
											</tr>
											<tr>
												<td>
												    <asp:Label ID="msg" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
												</td>
											</tr>
											</table>
										</td>
										<td width="37" height="111" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
									</tr>
									<tr>
										<td width="207" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
										<td style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
										<td width="37" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
									</tr>
									<tr>
										<td width="207" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
										<td style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">
										<p align="center">
                                            <asp:ImageButton ID="LoginImageButton" runat="server" 
                                                ImageUrl="images/login001.jpg" onclick="LoginImageButton_Click" /> 
											<a href="javascript:window.opener=null;window.close()"> 
											<img alt="" border="0" src="images/login002.jpg" width="72" height="21"></a></td>
										<td width="37" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
									</tr>
									<tr>
										<td width="207" height="56" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
										<td height="56" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
										<td width="37" height="56" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
									</tr>
									<tr>
										<td width="207" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">&nbsp;　<font color="#FFBEC6">时间
                                            </font></td>
										<td style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; "><span style="letter-spacing: -1pt">　　　　　　&nbsp;&nbsp;&nbsp;</span>　　　　　　　&nbsp;&nbsp;　 &nbsp; </td>
										<td width="37" style="font-size: 9pt; font-family: 宋体,MingLiU, Arial; color: #000000; table-layout: fixed; ">　</td>
									</tr>
								</table>
							</div>
						</div>
						</td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
	</table>
</div> 
</asp:Content>

