const form = document.getElementById("appointmentForm");

form.addEventListener("submit", function (event) {
  event.preventDefault();

  alert(
    "Thank you! Your appointment request has been received. Dental Hive will contact you shortly."
  );

  form.reset();
});
