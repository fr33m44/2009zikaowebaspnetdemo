<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="NewsDetail.aspx.cs" Inherits="NewsDetail"  %>



<asp:Content ID="NewsDetailContent" ContentPlaceHolderID="NewsPlaceHolder" Runat="Server">
    <asp:DetailsView ID="NewsDetailView" runat="server" AutoGenerateRows="False" 
        DataSourceID="SqlDataSource1" Height="50px" Width="660px">
        <Fields>  
            <asp:TemplateField>
                <ItemTemplate>
                <div class="newstitle">
                    <asp:Label ID="news_title" runat="server" Text='<%# Bind("news_title") %>'></asp:Label>
                </div>
                <div id="news_meta_info">
                    录入：<asp:Label ID="author" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                    发表时间：<asp:Label ID="news_posttime" runat="server" Text='<%# Bind("news_posttime") %>'></asp:Label>
                </div>
                <div id="newscontent">
                    <asp:Label ID="news_content" runat="server" Text='<%# Bind("news_content") %>'></asp:Label>
                </div>
                
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" SelectCommand="select news.news_title,news.news_content,account.username,news.news_posttime
from news,account
where news.news_author_id=account.id and news.id=@id">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="id" QueryStringField="id" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>



<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" SelectCommand="select news.news_title,news.news_content,account.username,news.news_posttime
from news,account
where news.news_author_id=account.id and news.id=@id">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="id" QueryStringField="id" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <title><asp:Literal ID="lt_title" runat="server" Text='<%# Bind("news_title") %>'></asp:Literal></title> 
</asp:Content>
