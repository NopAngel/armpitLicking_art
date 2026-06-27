function changeImage()
{
    var img = document.getElementById("toggleAdImg");
    if (img.getAttribute('src') === "assets/widgets/enable_ads.gif") {
        img.setAttribute('src', "assets/widgets/disable_ads.gif");
    }
    else {
        img.setAttribute('src', "assets/widgets/enable_ads.gif");
    }
// img.style.backgroundImage = "url('assets/widgets/enable_ads.gif')"
}

function toggleAds()
{
    var x = document.getElementById("fake1");
    if (x.style.display === "none") {
        x.style.display = "";
    } else {
        x.style.display = "none";
    }
    var x = document.getElementById("fake2");
    if (x.style.display === "none") {
        x.style.display = "";
    } else {
        x.style.display = "none";
    }
}