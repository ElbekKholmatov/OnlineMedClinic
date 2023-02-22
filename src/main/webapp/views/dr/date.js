const dateInput = document.getElementById("date");

dateInput.addEventListener("input", function() {
    const selectedDate = dateInput.value;
    const dateObject = new Date(selectedDate);

    console.log("Selected date: " + dateObject);
});
