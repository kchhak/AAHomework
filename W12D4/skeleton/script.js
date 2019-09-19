document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  //add place

  const submitFavoritePlace = (e) => {
    e.preventDefault();

    const placeInput = document.querySelector(".favorite-input");
    const placesList = document.getElementById("sf-places");
    
    const value = placeInput.value;
    placeInput.value = "";
    
    const newPlace = document.createElement("li");
    newPlace.textContent = value;
    placesList.appendChild(newPlace);
  };
  
  const submitPlace = document.querySelector(".favorite-submit")
  submitPlace.addEventListener("click", submitFavoritePlace);

  //show photo form

  const togglePhotoForm = (e) => {
    const photoForm = document.querySelector(".photo-form-container");
    
    if (photoForm.className === "photo-form-container"){
      photoForm.className = "photo-form-container hidden";
    } else {
      photoForm.className = "photo-form-container";
    }
  };
    
  const photoFormButton = document.querySelector(".photo-show-button");
  photoFormButton.addEventListener("click", togglePhotoForm)

    // adding new photos

  const addPhoto = (e) => {
    e.preventDefault();
    const urlInput = document.querySelector(".photo-url-input");
    const dogPhotos = document.querySelector(".dog-photos");

    const url = urlInput.value;
    urlInput.value = "";

    const newDog = document.createElement("li");
    const photo = document.createElement("img");
    photo.src = url;
    newDog.appendChild(photo);

    dogPhotos.appendChild(newDog);
  }

  const submitPhoto = document.querySelector(".photo-url-submit");
  submitPhoto.addEventListener("click", addPhoto);

});
