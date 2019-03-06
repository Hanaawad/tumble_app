import $ from 'jquery';
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr";

import "../plugins/slider";

import swal from 'sweetalert';


import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initUpdateShowOnJoin } from '../components/show';
import { initMapbox } from '../plugins/init_mapbox';
// import { initAutocomplete } from '../plugins/init_autocomplete';
 // <-- you need to uncomment the stylesheet_pack_tag in the layout!


initMapbox();

initUpdateNavbarOnScroll();

initUpdateShowOnJoin();

// initAutocomplete();

// swal("Hello world!");


// balapaCop("Bouncing Profile Card", "rgba(255,255,255,.5)");


