<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Permission.aspx.cs" Inherits="SecureDoc_KP.Permission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="permission_Id" OnPageIndexChanging="FormView1_PageIndexChanging" DefaultMode="Insert">
        <EditItemTemplate>
            permission_Id:
            <asp:Label ID="permission_IdLabel1" runat="server" Text='<%# Eval("permission_Id") %>' />
            <br />
            user_Id:
            <asp:TextBox ID="user_IdTextBox" runat="server" Text='<%# Bind("user_Id") %>' />
            <br />
            document_Id:
            <asp:TextBox ID="document_IdTextBox" runat="server" Text='<%# Bind("document_Id") %>' />
            <br />
            document_name:
            <asp:TextBox ID="document_nameTextBox" runat="server" Text='<%# Bind("document_name") %>' />
            <br />
            accesslevel:
            <asp:TextBox ID="accesslevelTextBox" runat="server" Text='<%# Bind("accesslevel") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">User_Id: </td>
                    <td>
                        <asp:TextBox ID="user_IdTextBox" runat="server" Text='<%# Bind("user_Id") %>' Width="120px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        Document_Id:</td>
                    <td>
                        <asp:TextBox ID="document_IdTextBox" runat="server" Text='<%# Bind("document_Id") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Document_name:</td>
                    <td>
                        <asp:TextBox ID="document_nameTextBox" runat="server" Text='<%# Bind("document_name") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Accesslevel:</td>
                    <td>
                        <asp:TextBox ID="accesslevelTextBox" runat="server" Text='<%# Bind("accesslevel") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Grant" />
                        &nbsp;&nbsp; &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
&nbsp;<br />&nbsp;<br />&nbsp;<br />
        </InsertItemTemplate>
        <ItemTemplate>
            permission_Id:
            <asp:Label ID="permission_IdLabel" runat="server" Text='<%# Eval("permission_Id") %>' />
            <br />
            user_Id:
            <asp:Label ID="user_IdLabel" runat="server" Text='<%# Bind("user_Id") %>' />
            <br />
            document_Id:
            <asp:Label ID="document_IdLabel" runat="server" Text='<%# Bind("document_Id") %>' />
            <br />
            document_name:
            <asp:Label ID="document_nameLabel" runat="server" Text='<%# Bind("document_name") %>' />
            <br />
            accesslevel:
            <asp:Label ID="accesslevelLabel" runat="server" Text='<%# Bind("accesslevel") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Permission] WHERE [permission_Id] = @permission_Id" InsertCommand="INSERT INTO [Permission] ([user_Id], [document_Id], [document_name], [accesslevel]) VALUES (@user_Id, @document_Id, @document_name, @accesslevel)" SelectCommand="SELECT * FROM [Permission]" UpdateCommand="UPDATE [Permission] SET [user_Id] = @user_Id, [document_Id] = @document_Id, [document_name] = @document_name, [accesslevel] = @accesslevel WHERE [permission_Id] = @permission_Id">
        <DeleteParameters>
            <asp:Parameter Name="permission_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_Id" Type="Int32" />
            <asp:Parameter Name="document_Id" Type="Int32" />
            <asp:Parameter Name="document_name" Type="String" />
            <asp:Parameter Name="accesslevel" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_Id" Type="Int32" />
            <asp:Parameter Name="document_Id" Type="Int32" />
            <asp:Parameter Name="document_name" Type="String" />
            <asp:Parameter Name="accesslevel" Type="Int32" />
            <asp:Parameter Name="permission_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
