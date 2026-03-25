<%@ Page Title="Gallery" MasterPageFile="~/Site.Master" Language="C#" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

<style>
    .gallery-container {
        padding: 120px 0 80px;
    }

    .gallery-title {
        text-align: center;
        font-size: 48px;
        font-weight: 300;
        text-transform: uppercase;
        letter-spacing: 4px;
        margin-bottom: 60px;
        color: #fff;
    }

    .gallery-title span {
        color: #bc13fe;
        font-weight: 700;
    }

    .gallery {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 25px;
    }

    .gallery-item {
        position: relative;
        overflow: hidden;
        cursor: pointer;
        background: #111;
    }

    .gallery-item img {
        width: 100%;
        height: 350px;
        object-fit: cover;
        display: block;
        transition: 0.5s;
        filter: grayscale(100%) contrast(1.1);
    }

    .gallery-item:hover img {
        transform: scale(1.1);
        filter: grayscale(0%) contrast(1.2);
    }

    .label {
        position: absolute;
        bottom: 20px;
        left: 20px;
        color: white;
        font-size: 14px;
        opacity: 0;
        transition: 0.4s;
    }

    .gallery-item:hover .label {
        opacity: 1;
    }

    /* FULL SCREEN */
    .fullscreen {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100vw;
        height: 100vh;
        background: black;
        z-index: 9999;
        justify-content: center;
        align-items: center;
    }

    .fullscreen img {
        width: 100%;
        height: 100%;
        object-fit: contain;
    }

    @media (max-width: 768px) {
        .gallery-title { font-size: 32px; }
        .gallery-item img { height: 250px; }
    }
</style>

<div class="gallery-container">
    <div class="container">
        <h2 class="gallery-title">My <span>Work</span></h2>

        <div class="gallery">
            <div class="gallery-item">
                <img src="Images/p1.jpg" onclick="openFull(this)" />
                <div class="label">Portrait</div>
            </div>

            <div class="gallery-item">
                <img src="Images/p2.jpg" onclick="openFull(this)" />
                <div class="label">Nature</div>
            </div>

            <div class="gallery-item">
                <img src="Images/p3.jpg" onclick="openFull(this)" />
                <div class="label">Wedding</div>
            </div>

            <div class="gallery-item">
                <img src="Images/p4.jpg" onclick="openFull(this)" />
                <div class="label">Fashion</div>
            </div>

            <div class="gallery-item">
                <img src="Images/p5.jpg" onclick="openFull(this)" />
                <div class="label">Street</div>
            </div>

            <div class="gallery-item">
                <img src="Images/p6.jpg" onclick="openFull(this)" />
                <div class="label">Event</div>
            </div>

            <div class="gallery-item">
                <img src="Images/Untitled-1.jpeg" onclick="openFull(this)" />
                <div class="label">Event</div>
            </div>

            <div class="gallery-item">
                <img src="Images/poster.png" onclick="openFull(this)" />
                <div class="label">Event</div>
            </div>

            <div class="gallery-item">
                <img src="Images/p8.png" onclick="openFull(this)" />
                <div class="label">Event</div>
            </div>

            <div class="gallery-item">
                <img src="Images/p7.png" onclick="openFull(this)" />
                <div class="label">Event</div>
            </div>
        </div>
    </div>
</div>

<!-- FULL SCREEN IMAGE -->
<div class="fullscreen" id="fullscreen" onclick="closeFull()">
    <img id="fullimg" />
</div>

<!-- SIMPLE SCRIPT -->
<script>
    function openFull(img) {
        document.getElementById("fullscreen").style.display = "flex";
        document.getElementById("fullimg").src = img.src;
    }

    function closeFull() {
        document.getElementById("fullscreen").style.display = "none";
    }
</script>

</asp:Content>
