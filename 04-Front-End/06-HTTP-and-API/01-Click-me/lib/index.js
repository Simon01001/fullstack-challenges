const displayAlertOnButtonClick = () => {
  // TODO: Select the big green button
  // TODO: Bind the `click` event to the button
  // TODO: On click, display `Thank you!` in a JavaScript alert!
  const button = document.querySelector(".btn");
  button.addEventListener("click", (event) => {
    window.alert("Thank you!");
  });
};

displayAlertOnButtonClick(); // Do not remove!
