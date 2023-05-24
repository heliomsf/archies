const buildingsContainer = document.getElementById("buildings");

fetch("/buildings")
  .then(response => response.json())
  .then(buildings => {
    buildings.forEach(building => {
      const buildingElement = document.createElement("div");
      buildingElement.classList.add("building");

      const nameElement = document.createElement("h2");
      nameElement.textContent = building.name;
      buildingElement.appendChild(nameElement);

      const addressElement = document.createElement("p");
      addressElement.textContent = building.address;
      buildingElement.appendChild(addressElement);

      const descriptionElement = document.createElement("p");
      descriptionElement.textContent = building.description;
      buildingElement.appendChild(descriptionElement);

      const ratingElement = document.createElement("p");
      ratingElement.textContent = `Average Rating: ${building.average_rating}`;
      buildingElement.appendChild(ratingElement);

      const showLink = document.createElement("a");
      showLink.textContent = "Show";
      showLink.href = `/buildings/${building.id}`;
      buildingElement.appendChild(showLink);

      buildingsContainer.appendChild(buildingElement);
    });
  });
  