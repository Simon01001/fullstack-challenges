/* eslint-disable import/no-unresolved */
import Mustache from "mustachejs";

const recipes = [
  {
    name: "Coq au Vin",
    ingredients: ["chicken", "red wine", "bacon", "mushrooms", "onions", "garlic"],
    difficulty: 7
  },
  {
    name: "Ratatouille",
    ingredients: ["eggplant", "zucchini", "bell peppers", "tomatoes", "onions", "garlic"],
    difficulty: 3
  },
  {
    name: "Croissant",
    ingredients: ["flour", "butter", "yeast", "sugar", "salt"],
    difficulty: 9
  },
  {
    name: "Bouillabaisse",
    ingredients: ["fish", "shellfish", "tomatoes", "fennel", "onions", "garlic", "saffron"],
    difficulty: 10
  }
];
const recipesContainer = document.querySelector("#recipesContainer");
// TODO: Your code goes below:
const template = document.querySelector("#recipeTemplate").innerHTML;
recipes.forEach((recipe) => {
  const output = Mustache.render(template, recipe);
  recipesContainer.insertAdjacentHTML("beforeend", output);
});
