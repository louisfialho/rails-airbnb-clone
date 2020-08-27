

export function filter() {
  const filter = document.getElementById("price-filter");

  filter.addEventListener("click", (event) => {
    // display a white box with min price, max price
    const card = document.getElementById("price-card");
    card.style.display = "";

    const save = document.getElementById("save");
      save.addEventListener("click", (event) => {
        card.style.display = "none";

        document.querySelectorAll(".flat").forEach((flat) => {
          const min = document.getElementById("minimum-price");
          const max = document.getElementById("maximum-price");

          if (flat.dataset.price > max.value || flat.dataset.price < min.value ) {
            flat.style.display = "none";
          }

          filter.innerHTML = `${min.value}€ - ${max.value}€`;

        });

      });

    // 2) Actualise le bouton price avec les nvelles valeurs
  });
};



