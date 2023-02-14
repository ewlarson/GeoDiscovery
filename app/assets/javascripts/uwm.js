$(document).ready(function() {
  // Mimics the UWM scrollTop feature.
  let scrollButton = document.getElementById("scrolltotop");

  window.onscroll = function() { scrollFunction() };

  function scrollFunction() {
    // Scroll down 20px from the top of the document, show the button
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      scrollButton.style.visibility = "visible";
    } else {
      scrollButton.style.visibility = "hidden";
    }
  }
});