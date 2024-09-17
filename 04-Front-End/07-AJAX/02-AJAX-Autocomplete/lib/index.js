// TODO: Autocomplete the input with AJAX calls.
const searchInput = document.getElementById("search");
const resultsList = document.querySelector('#results');

const displaySuggestions = (url) => {
  fetch(url).then(response => response.json())
    .then((data) => {
      const suggestedWords = data.words;
      suggestedWords.forEach((word) => {
        resultsList.insertAdjacentHTML('beforeend', `<li>${word}</li>`);
      });
    });
};

searchInput.addEventListener("keyup", (event) => {
  event.preventDefault();
  resultsList.innerHTML = '';

  const userInput = searchInput.value;

  if (userInput) { // '' == false
    const url = `https://dictionary.lewagon.com/autocomplete/${userInput}`;
    displaySuggestions(url);
  }
});
