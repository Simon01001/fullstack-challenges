const todos = [
  { title: "Code a to-do list", done: false },
  { title: "Eat breakfast", done: true },
  { title: "Do some exercise", done: false },
  { title: "Water the plants", done: true }
];
const listContainer = document.getElementById("todosContainer");
const checkbox = document.querySelector("input[type=checkbox]");

// To-do item HTML 👇
todos.forEach((todo) => {
  let check = "";
  if (todo.done === true) {
    check = "checked";
  } else if (todo.done === false) {
    check = "";
  }
  const listItem = `<div class="shadow-sm rounded px-4 py-3 mb-2 border d-flex">
    <input class="d-flex form-check-input me-1" type="checkbox" ${check}>
    <div>${todo.title}</div>
  </div>`;
  listContainer.insertAdjacentHTML("beforeend", `${listItem}`);
});

// TODO: Dynamically generate a list of to-dos based on `todos` array, and display them
