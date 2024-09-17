const apiUrl = "https://api.dictionaryapi.dev/api/v2/entries/en/";
const definition = document.getElementById("definition");
const url = "https://api.dictionaryapi.dev/api/v2/entries/en/WORD";

const displayDefinition = (event) => {
  event.preventDefault();
  const word = document.getElementById("word").value;
  // TODO: Display your word's definition with an AJAX call instead of the console.log()
  console.log(word);
  fetch(url).then(response => response.json())
    .then((data) => {
      console.log(data);
      definition.innerText = `${data[0].meanings[0].definitions[0].definition}`;
    });
};
const form = document.getElementById("fetch-word");
form.addEventListener("submit", displayDefinition);
