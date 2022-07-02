// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "controllers";
import "bootstrap";
import { startBurger } from "../components/burger";

document.addEventListener("turbolinks:load", () => {
  console.clear();
  console.log(
    "\u001b[31m  _______________________________________________________\n   ____________________________________\u001b[32m/\u001b[92m\\\\\\\u001b[31m_______________\n    ___________________________________\u001b[32m\\///\u001b[31m________________\n     _____\u001b[32m/\u001b[92m\\\\\\\\\\\\\\\\\u001b[31m__\u001b[32m/\u001b[92m\\\\\\\\\\\\\\\\\\\u001b[31m__________\u001b[32m/\u001b[92m\\\\\\\u001b[31m__\u001b[32m/\u001b[92m\\\\\\\u001b[31m____\u001b[32m/\u001b[92m\\\\\\\u001b[31m_\n      ___\u001b[32m/\u001b[92m\\\\\\\u001b[32m//////\u001b[31m__\u001b[32m\\////////\u001b[92m\\\\\\\u001b[31m________\u001b[32m\\/\u001b[92m\\\\\\\u001b[31m_\u001b[32m\\/\u001b[92m\\\\\\\u001b[31m___\u001b[32m\\/\u001b[92m\\\\\\\u001b[31m_\n       __\u001b[32m/\u001b[92m\\\\\\\u001b[31m___________\u001b[32m/\u001b[92m\\\\\\\\\\\\\\\\\\\\\u001b[31m_______\u001b[32m\\/\u001b[92m\\\\\\\u001b[31m_\u001b[32m\\/\u001b[92m\\\\\\\u001b[31m___\u001b[32m\\/\u001b[92m\\\\\\\u001b[31m_\n        _\u001b[32m\\//\u001b[92m\\\\\\\u001b[31m_________\u001b[32m/\u001b[92m\\\\\\\u001b[32m/////\u001b[92m\\\\\\\u001b[31m___\u001b[32m/\u001b[92m\\\\\u001b[31m_\u001b[32m\\/\u001b[92m\\\\\\\u001b[31m_\u001b[32m\\/\u001b[92m\\\\\\\u001b[31m___\u001b[32m\\/\u001b[92m\\\\\\\u001b[31m_\n         __\u001b[32m\\///\u001b[92m\\\\\\\\\\\\\\\\\u001b[31m_\u001b[32m\\//\u001b[92m\\\\\\\\\\\\\\\\\u001b[32m/\u001b[92m\\\\\u001b[31m_\u001b[32m\\//\u001b[92m\\\\\\\\\\\\\u001b[31m__\u001b[32m\\//\u001b[92m\\\\\\\\\\\\\\\\\\\u001b[31m__\n          ____\u001b[32m\\////////\u001b[31m___\u001b[32m\\////////\\//\u001b[31m___\u001b[32m\\//////\u001b[31m____\u001b[32m\\/////////\u001b[31m___\n           _______________________________________________________"
  );
  startBurger();
});
