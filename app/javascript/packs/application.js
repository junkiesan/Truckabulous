// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

// Mapbox
import 'mapbox-gl/dist/mapbox-gl.css';
import mapboxgl from 'mapbox-gl';
mapboxgl.accessToken = 'pk.eyJ1IjoianVua2llc2FuIiwiYSI6ImNrOW83OWg5dTA3YXQzZnBtbWZyYnY5N2EifQ.pSV4ixeAeUHpg6SjgkXoHA';
const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v10'
});

const mapElement = document.getElementById('map')
const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
