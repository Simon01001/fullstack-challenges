// TODO: Select the form element
const form = document.querySelector('form');
// TODO: Select the adress (input) element
const address = document.querySelector('#address');
const coordinatesDisplay = document.getElementById("coordinates");
const mapDisplay = document.getElementById("map");

const mapboxApiKey = 'pk.eyJ1Ijoic3p5bW9ubiIsImEiOiJjbTE0eHY5ZDUwMno0MnFzOGlwaXc0dGI3In0.SCHwfgvyRtfml4Ogg9q0zg';

// TODO: Create a function to get the coordinates
// from an address and display a map with a marker on it
const showMap = (userInput) => {
  // TODO: Construct the URL (with apiKey & userInput)
  // and make the fetch request to the mapbox API
  const url = `https://api.mapbox.com/search/geocode/v6/forward?q=${userInput}&access_token=${mapboxApiKey}`;

  fetch(url)
    .then(response => response.json())
    .then((data) => {
      const coordinates = data.features[0].geometry.coordinates;
      coordinatesDisplay.innerText = `${coordinates}`;

      mapboxgl.accessToken = mapboxApiKey;
      const map = new mapboxgl.Map({
        container: 'map', // container ID
        center: coordinates,
        zoom: 9 // starting zoom
      });
      new mapboxgl.Marker()
        .setLngLat(coordinates)
        .addTo(map);
      // TODO: Insert the info into the DOM
      // - Extract the coordinates from the parsed JSON response (lang, lat)
      // - Display the coordinates in the element where the coordinates will be displayed
      // - Create a map using the Mapbox API and the coordinates
      // - Add a marker to the map at the coordinates
    });
};

// TODO: Add event listener to the form that:
// - Prevents the default form submission behavior
// - Get the user input
// - Calls the showMap function with the user input as an argument

form.addEventListener('submit', (event) => {
  event.preventDefault();
  showMap(address.value);
});
