import $ from 'jquery';
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr";
import "../plugins/slider";
import { initUpdateNavbarOnScroll } from '../components/navbar';
 // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

initUpdateNavbarOnScroll();


// balapaCop("Bouncing Profile Card", "rgba(255,255,255,.5)");
