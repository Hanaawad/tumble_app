import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
 // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

// balapaCop("Bouncing Profile Card", "rgba(255,255,255,.5)");



$("#show-map").click(function(){
  $("#map").toggleClass("hide")
});

