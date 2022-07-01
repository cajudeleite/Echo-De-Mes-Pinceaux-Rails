export const startBurger = () => {
  console.log("burger loaded");
  document.querySelector(".navbar__burger__button").addEventListener("click", () => {
    console.log("burger clicked");
    document.getElementById("sidebar").classList.toggle("hidden");
    document.getElementById("filter").classList.toggle("hidden");
  });
};
