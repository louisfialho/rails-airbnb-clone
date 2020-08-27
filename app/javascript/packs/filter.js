

export function price_filter() {
  const filter = document.getElementById("price-filter");

  filter.addEventListener("click", (event) => {
    const card = document.getElementById("price-card");
      if (card.style.display === "none") {
        card.style.display = "";
      } else {
        card.style.display = "none";
      }

    const save = document.getElementById("save-price");
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
  });
};

export function type_filter() {
  const filter = document.getElementById("type-filter");
  filter.addEventListener("click", (event) => {
    const card = document.getElementById("type-card");
    if (card.style.display === "none") {
        card.style.display = "";
    } else {
        card.style.display = "none";
    }

    const save = document.getElementById("save-type");

    let preferences = []

    save.addEventListener("click", (event) => {
        card.style.display = "none";
        if (document.getElementById("defaultCheck1").checked == true) {
          preferences.push(document.getElementById("defaultText1").innerHTML);
        }
        if (document.getElementById("defaultCheck2").checked == true) {
          preferences.push(document.getElementById("defaultText2").innerHTML);
        }
        if (document.getElementById("defaultCheck3").checked == true) {
          preferences.push(document.getElementById("defaultText3").innerHTML);
        }
        if (document.getElementById("defaultCheck4").checked == true) {
          preferences.push(document.getElementById("defaultText4").innerHTML);
        }

          document.querySelectorAll(".flat").forEach((flat) => {

          if (preferences.includes(flat.dataset.type) == false) {
            flat.style.display = "none";
          }

          filter.innerHTML = `Type (${preferences.length})`;

        });
  });
});
};

