/* =========================
   DENTAL HIVE - STYLE SHEET
========================= */

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
}

body {
  font-family: "DM Sans", sans-serif;
  color: #17252b;
  background: #f8fbfa;
  line-height: 1.6;
}

a {
  text-decoration: none;
  color: inherit;
}

.container {
  width: min(1120px, 92%);
  margin: auto;
}

.section {
  padding: 100px 0;
}

/* NAVBAR */

.navbar {
  position: sticky;
  top: 0;
  z-index: 1000;
  background: rgba(248, 251, 250, 0.94);
  backdrop-filter: blur(14px);
  border-bottom: 1px solid #e3ecea;
}

.nav-inner {
  min-height: 76px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 30px;
}

.logo {
  font-size: 22px;
  font-weight: 600;
  display: flex;
  align-items: center;
  gap: 8px;
}

.logo strong {
  font-weight: 700;
}

.logo-icon {
  width: 34px;
  height: 34px;
  border-radius: 50%;
  display: grid;
  place-items: center;
  background: #d7f2ed;
  color: #16877b;
}

.nav-links {
  display: flex;
  gap: 32px;
  font-size: 14px;
  font-weight: 500;
}

.nav-links a:hover {
  color: #16877b;
}

.nav-button,
.primary-button {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  background: #16877b;
  color: white;
  padding: 13px 21px;
  border-radius: 10px;
  font-weight: 600;
  transition: 0.3s;
}

.nav-button:hover,
.primary-button:hover {
  transform: translateY(-2px);
  background: #116d64;
}

/* HERO */

.hero {
  padding: 90px 0 110px;
  background:
    radial-gradient(circle at 80% 20%, #d9f4ef 0, transparent 32%),
    #f8fbfa;
}

.hero-grid {
  display: grid;
  grid-template-columns: 1.15fr 0.85fr;
  align-items: center;
  gap: 70px;
}

.eyebrow {
  display: inline-block;
  color: #16877b;
  font-size: 12px;
  font-weight: 700;
  letter-spacing: 2px;
  margin-bottom: 18px;
}

.hero h1,
.section-heading h2,
.why-content h2,
.appointment-content h2 {
  font-family: "Playfair Display", serif;
  line-height: 1.08;
}

.hero h1 {
  font-size: clamp(48px, 7vw, 78px);
  max-width: 700px;
  margin-bottom: 25px;
}

.hero h1 span,
.section-heading h2 span,
.why-content h2 span,
.appointment-content h2 span {
  color: #16877b;
}

.hero-content > p {
  max-width: 560px;
  font-size: 18px;
  color: #607078;
  margin-bottom: 32px;
}

.hero-buttons {
  display: flex;
  gap: 14px;
  flex-wrap: wrap;
}

.secondary-button {
  padding: 13px 21px;
  border: 1px solid #cfdedb;
  border-radius: 10px;
  font-weight: 600;
  background: white;
}

.secondary-button:hover {
  border-color: #16877b;
  color: #16877b;
}

.hero-trust {
  display: flex;
  gap: 30px;
  margin-top: 50px;
}

.hero-trust div {
  display: flex;
  flex-direction: column;
}

.hero-trust strong {
  font-size: 20px;
}

.hero-trust span {
  color: #78858b;
  font-size: 12px;
}

/* HERO CARD */

.hero-card {
  min-height: 460px;
  border-radius: 32px;
  padding: 42px;
  background: #dff3ef;
  position: relative;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.hero-card::before {
  content: "";
  position: absolute;
  width: 330px;
  height: 330px;
  border-radius: 50%;
  background: #c8e9e3;
  top: -120px;
  right: -100px;
}

.hero-card-top {
  position: absolute;
  top: 28px;
  left: 30px;
  font-size: 12px;
  font-weight: 600;
}

.status-dot {
  display: inline-block;
  width: 8px;
  height: 8px;
  background: #26a269;
  border-radius: 50%;
  margin-right: 7px;
}

.smile-icon {
  width: 92px;
  height: 92px;
  border-radius: 28px;
  background: white;
  display: grid;
  place-items: center;
  font-size: 45px;
  margin-bottom: 30px;
  position: relative;
}

.hero-card h3 {
  font-family: "Playfair Display", serif;
  font-size: 42px;
  line-height: 1.1;
  position: relative;
}

.hero-card p {
  color: #52666a;
  margin: 20px 0;
  position: relative;
}

.card-link {
  color: #16877b;
  font-weight: 700;
  position: relative;
}

/* SECTION HEADING */

.section-heading {
  max-width: 650px;
  margin-bottom: 55px;
}

.section-heading h2,
.why-content h2,
.appointment-content h2 {
  font-size: clamp(38px, 5vw, 58px);
  margin-bottom: 20px;
}

.section-heading p {
  color: #6d7b80;
}

/* SERVICES */

.services {
  background: white;
}

.service-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 18px;
}

.service-card {
  padding: 30px 25px;
  border: 1px solid #e4ecea;
  border-radius: 20px;
  background: #fff;
  transition: 0.3s;
}

.service-card:hover {
  transform: translateY(-6px);
  border-color: #a8d9d1;
  box-shadow: 0 18px 45px rgba(25, 80, 75, 0.08);
}

.service-icon {
  font-size: 28px;
  margin-bottom: 25px;
}

.service-card h3 {
  font-size: 18px;
  margin-bottom: 10px;
}

.service-card p {
  font-size: 14px;
  color: #718087;
  min-height: 68px;
}

.service-card a {
  display: inline-block;
  color: #16877b;
  font-size: 13px;
  font-weight: 700;
  margin-top: 15px;
}

/* WHY US */

.why-us {
  background: #eef8f6;
}

.why-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 90px;
  align-items: center;
}

.why-visual {
  min-height: 500px;
  background: #cceae4;
  border-radius: 35px;
  display: grid;
  place-items: center;
  position: relative;
}

.visual-circle {
  width: 250px;
  height: 250px;
  background: white;
  border-radius: 50%;
  display: grid;
  place-items: center;
  font-size: 100px;
  box-shadow: 0 20px 50px rgba(20, 80, 75, 0.1);
}

.floating-card {
  position: absolute;
  bottom: 30px;
  left: 30px;
  right: 30px;
  padding: 20px;
  background: white;
  border-radius: 18px;
  display: flex;
  flex-direction: column;
}

.floating-card span {
  color: #77858a;
  font-size: 13px;
}

.why-content > p {
  color: #68777c;
  margin-bottom: 35px;
}

.feature {
  display: flex;
  gap: 20px;
  padding: 20px 0;
  border-top: 1px solid #d4e5e1;
}

.feature-number {
  color: #16877b;
  font-weight: 700;
}

.feature h3 {
  font-size: 17px;
}

.feature p {
  color: #748188;
  font-size: 14px;
  margin-top: 5px;
}

/* APPOINTMENT */

.appointment {
  background: #12282d;
}

.appointment-box {
  display: grid;
  grid-template-columns: 0.9fr 1.1fr;
  gap: 70px;
  align-items: center;
}

.appointment-content {
  color: white;
}

.appointment-content > p {
  color: #b7c7ca;
  margin-bottom: 30px;
}

.appointment-form {
  background: white;
  padding: 35px;
  border-radius: 25px;
  display: grid;
  gap: 14px;
}

.appointment-form input,
.appointment-form select,
.appointment-form textarea {
  width: 100%;
  padding: 14px 16px;
  border: 1px solid #dce5e4;
  border-radius: 10px;
  font: inherit;
  outline: none;
}

.appointment-form input:focus,
.appointment-form select:focus,
.appointment-form textarea:focus {
  border-color: #16877b;
}

.form-button {
  border: 0;
  padding: 15px;
  background: #16877b;
  color: white;
  border-radius: 10px;
  font: inherit;
  font-weight: 700;
  cursor: pointer;
}

.form-button:hover {
  background: #116d64;
}

/* CONTACT */

.contact {
  background: white;
}

.contact-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 18px;
}

.contact-card {
  border: 1px solid #e3ebe9;
  border-radius: 18px;
  padding: 28px;
}

.contact-card > span {
  font-size: 28px;
}

.contact-card h3 {
  margin: 18px 0 8px;
}

.contact-card p,
.contact-card a {
  color: #6d7b80;
  font-size: 14px;
}

.contact-card a:hover {
  color: #16877b;
}

/* FOOTER */

footer {
  background: #0d2024;
  color: white;
  padding: 30px 0;
}

.footer-inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 20px;
}

.footer-inner p,
.footer-inner > a:last-child {
  color: #9eafb2;
  font-size: 13px;
}

/* FLOATING CALL */

.floating-call {
  position: fixed;
  right: 22px;
  bottom: 22px;
  width: 55px;
  height: 55px;
  border-radius: 50%;
  background: #16877b;
  color: white;
  display: grid;
  place-items: center;
  font-size: 22px;
  box-shadow: 0 10px 30px rgba(22, 135, 123, 0.3);
  z-index: 999;
}

/* MOBILE */

@media (max-width: 900px) {

  .nav-links {
    display: none;
  }

  .hero-grid,
  .why-grid,
  .appointment-box {
    grid-template-columns: 1fr;
  }

  .hero {
    padding-top: 60px;
  }

  .hero-card {
    min-height: 400px;
  }

  .service-grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .contact-grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .why-visual {
    min-height: 400px;
  }
}

@media (max-width: 600px) {

  .section {
    padding: 70px 0;
  }

  .nav-button {
    padding: 10px 14px;
    font-size: 12px;
  }

  .hero h1 {
    font-size: 50px;
  }

  .hero-card h3 {
    font-size: 35px;
  }

  .hero-trust {
    gap: 15px;
    flex-wrap: wrap;
  }

  .service-grid,
  .contact-grid {
    grid-template-columns: 1fr;
  }

  .appointment-form {
    padding: 22px;
  }

  .footer-inner {
    flex-direction: column;
    text-align: center;
  }
} ni
