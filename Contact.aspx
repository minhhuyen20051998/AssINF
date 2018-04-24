<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Liên hệ với chúng tôi</h2>
    </hgroup>
<h2>
    <section class="contact">
        <header>
            <h3>Điện thoại</h3>
        </header>
        <p>
            <span class="label">SĐT</span>
            <span>425.555.0100</span>
        </p>

    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:Support@example.com">Sachhay@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">TienPhong@gmail.com</a></span>
        </p>

    </section>

    <section class="contact">
        <header>
            <h3>Địa Chỉ</h3>
        </header>
        <p>
           <br />
          Tòa nhà Tiền Phong, số 15 Hồ Xuân Hương,<br /> Q. Hai Bà Trưng, Hà Nội.
        </p>
    </section>
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.021293350726!2d105.82834371438675!3d21.03183398599663!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135aba04c49f811%3A0x7bc9cef21807a2b1!2sTi%E1%BB%81n+Phong+Bookstore!5e0!3m2!1svi!2s!4v1524061411152" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</h2>
</asp:Content>