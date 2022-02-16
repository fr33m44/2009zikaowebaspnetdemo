<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsDetail_Admin.aspx.cs" Inherits="NewsDetail_Admin" Title="管理首页-重庆理工大学自考办" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NewsPlaceHolder" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" Width="290px" 
        Height="379px">
        <Fields>
            <asp:TemplateField HeaderText="编号" InsertVisible="False" SortExpression="id">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="标题" SortExpression="news_title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 0px" 
                        Text='<%# Bind("news_title") %>' Width="500px"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("news_title") %>' 
                        Width="500px"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("news_title") %>'></asp:Label>
                </ItemTemplate> 
                <HeaderStyle Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="正文" SortExpression="news_content">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Height="300px" 
                        Text='<%# Bind("news_content") %>' TextMode="MultiLine" Width="550px"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Height="300px" 
                        Text='<%# Bind("news_content") %>' TextMode="MultiLine" Width="550px"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>  
                    <asp:TextBox ID="TextBox2" runat="server" Height="300px" 
                        Text='<%# Bind("news_content") %>' TextMode="MultiLine" Width="550px" 
                        ReadOnly="true"></asp:TextBox>
                </ItemTemplate> 
                <HeaderStyle Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="更新"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="取消"></asp:LinkButton>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="插入"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="取消"></asp:LinkButton>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="编辑"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="New" Text="新建"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="删除"></asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle Width="100px" />
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" 
        DeleteCommand="DELETE FROM [news] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [news] ([news_title], [news_content],[news_posttime],[news_author_id]) VALUES (@news_title, @news_content,getdate(),@news_author_id2)" 
        SelectCommand="SELECT [id], [news_title], [news_content] FROM [news] where id=@id and news_author_id=@news_author_id_select ORDER BY [news_posttime] DESC" 
        
        UpdateCommand="UPDATE [news] SET [news_title] = @news_title, [news_content] = @news_content WHERE [id] = @id">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="id" QueryStringField="id" />
            <asp:SessionParameter Name="news_author_id_select" SessionField="account_id" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="news_title" Type="String" />
            <asp:Parameter Name="news_content" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="news_title" Type="String" />
            <asp:Parameter Name="news_content" Type="String" />
            <asp:SessionParameter Name="news_author_id2" Type="Int32" SessionField="account_id"/>
        </InsertParameters>
    </asp:SqlDataSource>
    
    
</asp:Content>

