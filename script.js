document.addEventListener("DOMContentLoaded", function () {
    
    const translations = document.getElementById("translations");

    if (!translations) {
        return;
    }

    translations.addEventListener("click", function (event) {

        const date = new Date();

        const formattedDate = date.toLocaleString('de-DE');

        event.target.dispatchEvent(new CustomEvent("notify", {
            bubbles: true,
            detail: {
                text: formattedDate + " - Translations!"
            },
        }));

    });

});
