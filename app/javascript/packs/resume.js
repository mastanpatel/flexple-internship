window.addEventListener("load", () => {
  setupShareButtonListener();
  setupProfileImageUploadListener();
});

const setupShareButtonListener = () => {
  const shareBtn = document.getElementById("share-btn");
  shareBtn?.addEventListener("click", (event) => {
    event.preventDefault();
    //var url = "";
    //url = location.protocol + "//" + location.host + "//" + event.target.href;
    navigator.clipboard.writeText(event.target.href);
    event.target.innerText = "Copied!";
  });
};

const setupProfileImageUploadListener = () => {
  const profileImageInput = document.getElementById("profile_profile_image");
  profileImageInput?.addEventListener("change", (event) => {
    if (event.target.files && event.target.files[0]) {
      const reader = new FileReader();

      reader.onload = (e) => {
        const preview = document.getElementById("image-preview");
        preview.src = e.target.result;
      };

      reader.readAsDataURL(event.target.files[0]);
    }
  });
};
