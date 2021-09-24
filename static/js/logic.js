// Add console.log to check to see if our code is working.
console.log("working");

// Create the map object with a center and zoom level.
let map = L.map('mapid').setView([37.871666, -122.272781], 6);

// Adding the tileLayer code for the background of the map
let streets = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token={accessToken}', {
  attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
  maxZoom: 18,
  accessToken: API_KEY
}).addTo(map);

//  Add a marker to the map for Berkeley, California.
let UCB = L.circleMarker([37.871666, -122.272781], {
  color: 'black',
  fillcolor: 'lightyellow',
  radius: 70
}).addTo(map);

// Get data from fire.js
let fireData = fire;

// Loop through the fire array and create one marker for each event.
fireData.forEach(function(fire) {
  console.log(fire)
  L.marker(fire.coordinates).addTo(map);
    radius = fire.AcresBurned*1000
});