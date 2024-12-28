<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DocumentUpload.aspx.cs" Inherits="SecureDoc_KP.DocumentUpload1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 45px;
        }
        .auto-style6 {
            width: 191px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Document_Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            Document_Id:
            <asp:Label ID="Document_IdLabel1" runat="server" Text='<%# Eval("Document_Id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            type:
            <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
            <br />
            content:
            <asp:TextBox ID="contentTextBox" runat="server" Text='<%# Bind("content") %>' />
            <br />
            createdate:
            <asp:TextBox ID="createdateTextBox" runat="server" Text='<%# Bind("createdate") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Document Name:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' Width="133px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Type:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Content:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="contentTextBox" runat="server" Text='<%# Bind("content") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Createdate:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="createdateTextBox" runat="server" Text='<%# Bind("createdate") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Upload" />
                        &nbsp;
                        <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            &nbsp;<br />&nbsp;&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;
        </InsertItemTemplate>
        <ItemTemplate>
            Document_Id:
            <asp:Label ID="Document_IdLabel" runat="server" Text='<%# Eval("Document_Id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            type:
            <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
            <br />
            content:
            <asp:Label ID="contentLabel" runat="server" Text='<%# Bind("content") %>' />
            <br />
            createdate:
            <asp:Label ID="createdateLabel" runat="server" Text='<%# Bind("createdate") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [document] WHERE [Document_Id] = @Document_Id" InsertCommand="INSERT INTO [document] ([name], [type], [content], [createdate]) VALUES (@name, @type, @content, @createdate)" SelectCommand="SELECT * FROM [document]" UpdateCommand="UPDATE [document] SET [name] = @name, [type] = @type, [content] = @content, [createdate] = @createdate WHERE [Document_Id] = @Document_Id">
        
        <DeleteParameters>
            <asp:Parameter Name="Document_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter DbType="Date" Name="createdate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter DbType="Date" Name="createdate" />
            <asp:Parameter Name="Document_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

