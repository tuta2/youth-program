function toggleButton() {
  var open = document.getElementById("firstIcon");
  var close = document.getElementById("secondIcon");

  if (close.style.display === "block") {
    open.style.display = "block";
    close.style.display = "none";

    document.getElementById("jsSidebar").style.width = "0";
    document.getElementById("main-content").style.marginLeft= "0";
    document.body.style.backgroundColor = "#F1F6F7";
  } else {
    open.style.display = "none";
    close.style.display = "block";

    document.getElementById("jsSidebar").style.width = "200px";
    document.getElementById("main-content").style.marginLeft = "200px";
    document.body.style.backgroundColor = "rgba(52, 73, 94, 0.5)";
  }
}

function hideNav() {
  var open = document.getElementById("firstIcon");
  var close = document.getElementById("secondIcon");

  open.style.display = "block";
  close.style.display = "none";

  document.getElementById("jsSidebar").style.width = "0";
  document.getElementById("main-content").style.marginLeft= "0";
  document.body.style.backgroundColor = "#F1F6F7";
}   

// Sticky Part
window.onscroll = function() {scrollFunction()};

var bottomNav = document.getElementById("stickyNav");
var sticky = bottomNav.offsetTop;

function scrollFunction() {
  if (window.pageYOffset > sticky) {
    bottomNav.classList.add("sticky");
  } else {
    bottomNav.classList.remove("sticky");
  }
}

function screenFunction(largeScreen) {
  var open = document.getElementById("firstIcon");
  var close = document.getElementById("secondIcon");

  open.style.display = "block";
  close.style.display = "none";

  document.getElementById("jsSidebar").style.width = "0";
  document.getElementById("main-content").style.marginLeft= "0";
  document.body.style.backgroundColor = "#F1F6F7";
}

var largeScreen = window.matchMedia("(max-width: 992px)")
screenFunction(largeScreen) 
largeScreen.addListener(screenFunction) 
