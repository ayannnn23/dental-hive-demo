/* =========================================================
   DENTAL HIVE — INTERACTIONS
   ========================================================= */


/* =========================================================
   MOBILE MENU
   ========================================================= */

const menuBtn = document.getElementById("menuBtn");
const mobileMenu = document.getElementById("mobileMenu");

if (menuBtn && mobileMenu) {

  menuBtn.addEventListener("click", () => {

    mobileMenu.classList.toggle("active");

    if (mobileMenu.classList.contains("active")) {
      menuBtn.innerHTML = "✕";
    } else {
      menuBtn.innerHTML = "☰";
    }

  });


  // Close menu when a link is clicked

  const mobileLinks = mobileMenu.querySelectorAll("a");

  mobileLinks.forEach(link => {

    link.addEventListener("click", () => {

      mobileMenu.classList.remove("active");
      menuBtn.innerHTML = "☰";

    });

  });

}


/* =========================================================
   APPOINTMENT FORM
   ========================================================= */

const appointmentForm =
  document.getElementById("appointmentForm");

if (appointmentForm) {

  appointmentForm.addEventListener("submit", function(event) {

    event.preventDefault();

    const button =
      appointmentForm.querySelector(".form-button");

    const originalText = button.innerHTML;

    button.innerHTML = `
      Request Sent ✓
      <span>✓</span>
    `;

    button.style.background = "#0d9188";

    setTimeout(() => {

      button.innerHTML = originalText;
      button.style.background = "";

      appointmentForm.reset();

    }, 3500);

  });

}


/* =========================================================
   SCROLL REVEAL
   ========================================================= */

const revealElements = document.querySelectorAll(
  ".service-card, .about-content, .feature-content, .contact-block, .appointment-form"
);

const revealObserver = new IntersectionObserver(

  entries => {

    entries.forEach(entry => {

      if (entry.isIntersecting) {

        entry.target.classList.add("revealed");

        revealObserver.unobserve(entry.target);

      }

    });

  },

  {
    threshold: 0.12
  }

);


revealElements.forEach(element => {

  element.classList.add("reveal");

  revealObserver.observe(element);

});


/* =========================================================
   ADD REVEAL CSS
   ========================================================= */

const revealStyle = document.createElement("style");

revealStyle.innerHTML = `

  .reveal {
    opacity: 0;
    transform: translateY(35px);
    transition:
      opacity 0.8s ease,
      transform 0.8s ease;
  }

  .reveal.revealed {
    opacity: 1;
    transform: translateY(0);
  }

  .service-card:nth-child(2) {
    transition-delay: 0.05s;
  }

  .service-card:nth-child(3) {
    transition-delay: 0.1s;
  }

  .service-card:nth-child(4) {
    transition-delay: 0.15s;
  }

  .service-card:nth-child(5) {
    transition-delay: 0.05s;
  }

  .service-card:nth-child(6) {
    transition-delay: 0.1s;
  }

  .service-card:nth-child(7) {
    transition-delay: 0.15s;
  }

`;

document.head.appendChild(revealStyle);


/* =========================================================
   NAVBAR SCROLL EFFECT
   ========================================================= */

const navbar = document.querySelector(".navbar");

window.addEventListener("scroll", () => {

  if (!navbar) return;

  if (window.scrollY > 60) {

    navbar.style.background =
      "rgba(4, 20, 24, 0.82)";

    navbar.style.backdropFilter =
      "blur(18px)";

    navbar.style.height = "72px";

  } else {

    navbar.style.background = "transparent";

    navbar.style.backdropFilter = "none";

    navbar.style.height = "";

  }

});


/* =========================================================
   SMOOTH ANCHOR SCROLL
   ========================================================= */

document.querySelectorAll('a[href^="#"]').forEach(anchor => {

  anchor.addEventListener("click", function(event) {

    const targetId =
      this.getAttribute("href");

    if (targetId === "#") return;

    const target =
      document.querySelector(targetId);

    if (!target) return;

    event.preventDefault();

    target.scrollIntoView({
      behavior: "smooth",
      block: "start"
    });

  });

});


/* =========================================================
   HERO PARALLAX
   ========================================================= */

const heroImage =
  document.querySelector(".hero-image");

window.addEventListener("scroll", () => {

  if (!heroImage) return;

  const scrollPosition = window.scrollY;

  if (scrollPosition < window.innerHeight) {

    heroImage.style.transform =
      `scale(1.05) translateY(${scrollPosition * 0.08}px)`;

  }

});


/* =========================================================
   CONSOLE
   ========================================================= */

console.log(
  "Dental Hive Premium Demo — Website loaded successfully."
);
