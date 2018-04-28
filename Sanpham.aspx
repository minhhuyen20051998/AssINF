<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Sanpham.aspx.cs" Inherits="Sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="id_Sanpham" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id_Sanpham:
            <asp:Label class="sp">id_Sanpham:</asp:Label>
            <asp:Label ID="id_SanphamLabel1" runat="server" Text='<%# Eval("id_Sanpham") %>' />
            <br />
            id_Danhmuc:
            <asp:Label class="sp">id_Danhmuc:</asp:Label>
            <asp:TextBox ID="id_DanhmucTextBox" runat="server" Text='<%# Bind("id_Danhmuc") %>' />
            <br />
            tensanpham:
            <asp:TextBox ID="tensanphamTextBox" runat="server" Text='<%# Bind("tensanpham") %>' />
            <br />
            Gia:
            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            Motasanpham:
            <asp:TextBox ID="MotasanphamTextBox" runat="server" Text='<%# Bind("Motasanpham") %>' />
            <br />
            img:
            <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            id_Sanpham:
            <asp:Label class="sp">id_Sanpham:</asp:Label>
            <asp:TextBox ID="id_SanphamTextBox" runat="server" Text='<%# Bind("id_Sanpham") %>' />
            <br />
            id_Danhmuc:
            <asp:Label class="sp">id_Danhmuc:</asp:Label>
            <asp:TextBox ID="id_DanhmucTextBox" runat="server" Text='<%# Bind("id_Danhmuc") %>' />
            <br />
            tensanpham:
            <asp:TextBox ID="tensanphamTextBox" runat="server" Text='<%# Bind("tensanpham") %>' />
            <br />
            Gia:
            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            Motasanpham:
            <asp:TextBox ID="MotasanphamTextBox" runat="server" Text='<%# Bind("Motasanpham") %>' />
            <br />
            img:
            <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            
            <asp:Label class="sp">id_Sanpham:</asp:Label>
            <asp:Label ID="id_SanphamLabel" runat="server" Text='<%# Eval("id_Sanpham") %>' CssClass='class="sp"'/>
            <br />
           
            <asp:Label class="sp">id_Danhmuc:</asp:Label>
            <asp:Label ID="id_DanhmucLabel" runat="server" Text='<%# Bind("id_Danhmuc") %>' />
            <br />
            
            <asp:Label class="sp">tensanpham:</asp:Label>
            <asp:Label ID="tensanphamLabel" runat="server" Text='<%# Bind("tensanpham") %>' />
            <br />
            
            <asp:Label class="sp">Gia:</asp:Label>
            <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
           
            <asp:Label class="sp"> Motasanpham:</asp:Label>
            <asp:Label ID="MotasanphamLabel" runat="server" Text='<%# Bind("Motasanpham") %>' />
            <br />
           
            <asp:Label class="sp">img:</asp:Label>
            <asp:Label ID="imgLabel" runat="server" Text='<%# Bind("img") %>' />
            <br />
               <asp:Image ID="img" runat="server" ImageUrl="<%#Bind('img') %>"/>"
            <br />

     
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-success"/>
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-success" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-success"/>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\CSDL_QLBS2.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Sanpham] WHERE [id_Sanpham] = @id_Sanpham" InsertCommand="INSERT INTO [Sanpham] ([id_Sanpham], [id_Danhmuc], [tensanpham], [Gia], [Motasanpham], [img]) VALUES (@id_Sanpham, @id_Danhmuc, @tensanpham, @Gia, @Motasanpham, @img)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id_Sanpham], [id_Danhmuc], [tensanpham], [Gia], [Motasanpham], [img] FROM [Sanpham]" UpdateCommand="UPDATE [Sanpham] SET [id_Danhmuc] = @id_Danhmuc, [tensanpham] = @tensanpham, [Gia] = @Gia, [Motasanpham] = @Motasanpham, [img] = @img WHERE [id_Sanpham] = @id_Sanpham">
        <DeleteParameters>
            <asp:Parameter Name="id_Sanpham" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_Sanpham" Type="String" />
            <asp:Parameter Name="id_Danhmuc" Type="Int32" />
            <asp:Parameter Name="tensanpham" Type="String" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="Motasanpham" Type="String" />
            <asp:Parameter Name="img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_Danhmuc" Type="Int32" />
            <asp:Parameter Name="tensanpham" Type="String" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="Motasanpham" Type="String" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="id_Sanpham" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

