<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default_Admin.aspx.cs" Inherits="Default_Admin" Title="管理首页-重庆理工大学自考办" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NewsPlaceHolder" Runat="Server">
    <br />&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" 
        Width="660px" DataKeyNames="id"   >
        <Columns>
           
            
           
            <asp:BoundField DataField="id" HeaderText="编号" 
                SortExpression="id" InsertVisible="False" ReadOnly="True" /> 
            <asp:HyperLinkField DataTextField="news_title" DataNavigateUrlFields="id" 
            DataNavigateUrlFormatString="NewsDetail_Admin.aspx?id={0}" HeaderText="标题"> 
            </asp:HyperLinkField>
            <asp:BoundField DataField="news_author_id" HeaderText="作者" 
                SortExpression="news_author_id"> 
            </asp:BoundField>
            <asp:BoundField DataField="news_posttime" HeaderText="发布时间" 
                SortExpression="news_posttime" />
                
            <asp:CommandField ShowDeleteButton="True"  DeleteText="删除" HeaderText="操作" ButtonType="Button"/>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" 
        
        
        SelectCommand="SELECT [id], [news_title], [news_author_id], [news_posttime] FROM [news] WHERE ([news_author_id] = @news_author_id2) ORDER BY [news_posttime] DESC" 
        DeleteCommand="DELETE FROM [news] WHERE [id] = @id" 
        
        InsertCommand="INSERT INTO [news] ([news_title], [news_author_id], [news_posttime]) VALUES (@news_title, @news_author_id3, @news_posttime)" 
        UpdateCommand="UPDATE [news] SET [news_title] = @news_title, [news_author_id] = @news_author_id, [news_posttime] = @news_posttime WHERE [id] = @id"
         
        >
        
        <SelectParameters>
            <asp:SessionParameter Name="news_author_id2" SessionField="account_id" 
                Type="Int32" />
        </SelectParameters> 
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="news_title" Type="String" />
            <asp:Parameter Name="news_author_id" Type="Int32" />
            <asp:Parameter DbType="Date" Name="news_posttime" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="news_title" Type="String" />
            <asp:SessionParameter Name="news_author_id3" Type="Int32" SessionField="account_id"/>
            <asp:Parameter DbType="Date" Name="news_posttime" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

