﻿<%@ Page Title="NewsArticle Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
         CodeBehind="NewsArticleDetails.aspx.cs" Inherits="News4U.NewsArticleDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="NewsArticleDetails" runat="server" ItemType="News4U.Models.NewsArticle" SelectMethod ="GetArticles" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.NewsArticleTitle %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <img src="<%#:Item.NewsArticleImagePath %>" style="border:solid; height:300px" alt="<%#:Item.NewsArticleTitle %>"/>
                    </td>
                    <td>&nbsp;</td>  
                    <td style="vertical-align: top; text-align:left;">
                        <br /><%#:Item.NewsArticleMainBody %><br />
                        <span><b>Date published:</b>&nbsp;<%#:Item.NewsArticleDatePublished %></span>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>