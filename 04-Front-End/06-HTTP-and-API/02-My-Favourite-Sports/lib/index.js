// TODO: write your code here!
const buttons = document.querySelectorAll(".clickable");
buttons.forEach((button) => {
  button.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("active");
  });
});
const toggleActiveClass = (event) => {
  event.currentTarget.classList.toggle("active");
};
const bindSportToClick = (button) => {
  button.addEventListener("click", toggleActiveClass);
};


buttons.forEach(bindSportToClick);
