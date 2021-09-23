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

// Loop through the fires array and create one marker for each fire.
fires.forEach(function(fires) {
  console.log(fires)
  L.marker(Latitude, Lng).addTo(map);
});

// // Create a base layer that holds both maps.
// let baseMaps = {
//   Street: streets,
//   Dark: dark
// };

// // Create the map object with center, zoom level and default layer.
// let map = L.map('mapid', {
//   center: [30, 30],
//   zoom: 2,
//   layers: [streets]
// });

// // Pass our map layers into our layers control and add the layers control to the map.
// L.control.layers(baseMaps).addTo(map);

// // Then we add our 'streets' tile layer to the map.
// streets.addTo(map);

// // Accessing the County Fire Lines GeoJSON URL
// let stationData = "https://services1.arcgis.com/jUJYIo9tSA7EHvfZ/arcgis/rest/services/California_County_Boundaries/FeatureServer/0?f=pjson";

// // Grabbing our GeoJSON data.
// d3.json(stationData).then(function(data) {
//   console.log(data);
  
// // Creating a GeoJSON layer with the retrieved data.
// L.geoJson(data, {
//   onEachFeature: function (feature, layer) {
//     layer.bindPopup("<h1>" + feature.properties.faa + "</h1> <hr> <h2>" + feature.properties.name + "</h2>");
//   }
//   }).addTo(map)
// });