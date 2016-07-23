<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="News4U.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Admin Panel</h1>
    <hr />
    <h3>Add news article:</h3>
    <table>
        <tr>
            <td>
                <asp:Label ID="LabelAddNewsArticle" runat="server"> Title </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AddNewsArticleTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Title required" ControlToValidate="AddNewsArticleTitle" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <p></p>
        <tr>
            <td>
                <asp:Label ID="LabelAddMainBody" runat="server"> Main Body </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AddNewsArticleMainBody" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Title required" ControlToValidate="AddNewsArticleMainBody" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <p></p>
        <tr>
            <td>
                <asp:Label ID="LabelAddNewsArticleDatePublished" runat="server"> Date Published </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AddNewsArticleDatePublished" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Title required" ControlToValidate="AddNewsArticleDatePublished" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <p></p>
        <tr>
            <td>
                <asp:Label ID="LabelAddNewsArticleImagePath" runat="server"> Image path </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AddNewsArticleImagePath" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Title required" ControlToValidate="AddNewsArticleImagePath" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="AddNewsArticleButton" runat="server" Text="Add news article" OnClick="AddNewsArticleButton_Click" CausesValidation="false" />
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>
    <h2>Remove news article</h2>
    <table>
        <tr>
            <td><asp:Label ID="LabelRemoveNewsArticle" runat="server"> News article</asp:Label></td>
            <td><asp:DropDownList ID="DropDownRemoveNewsArticle" runat="server" ItemType="News4U.Models.NewsArticle" SelectMethod="GetNewsArticle" AppendDataBoundItems="true" DataTextField="NewsArticleTitle" DataValueField="NewsArticleID"></asp:DropDownList></td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="RemoveNewsArticleButton" runat="server" Text="Remove news article" OnClick="RemoveNewsArticleButton_Click" CausesValidation="false" />
    <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
</asp:Content>