<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" Title="无标题页" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NewsPlaceHolder" Runat="Server">
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="news_title" HeaderText="news_title" 
                SortExpression="news_title" />
            <asp:BoundField DataField="news_content" HeaderText="news_content" 
                SortExpression="news_content" />
            <asp:BoundField DataField="news_posttime" HeaderText="news_posttime" 
                SortExpression="news_posttime" />
            <asp:BoundField DataField="news_author_id" HeaderText="news_author_id" 
                SortExpression="news_author_id" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
<FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server">
</FCKeditorV2:FCKeditor>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" 
        DeleteCommand="DELETE FROM [news] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [news] ([news_title], [news_content], [news_posttime], [news_author_id]) VALUES (@news_title, @news_content, @news_posttime, @news_author_id)" 
        SelectCommand="SELECT * FROM [news]" 
        
        UpdateCommand="UPDATE [news] SET [news_title] = @news_title, [news_content] = @news_content, [news_posttime] = @news_posttime, [news_author_id] = @news_author_id WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="news_title" Type="String" />
            <asp:Parameter Name="news_content" Type="String" />
            <asp:Parameter DbType="Datetime" Name="news_posttime" />
            <asp:Parameter Name="news_author_id" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="news_title" Type="String" />
            <asp:Parameter Name="news_content" Type="String" />
            <asp:Parameter DbType="Datetime" Name="news_posttime" />
            <asp:Parameter Name="news_author_id" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

