// Sets up a channel to JS-interop with Flutter
(function () {
  "use strict";
  // This function will be called from Flutter when it prepares the JS-interop.
  window._stateSet = function () {
    window._stateSet = function () {
      console.log("Call _stateSet only once!");
    };

    // The state of the flutter app, see `class _MyAppState` in lib/main.dart.
    let appState = window._appState;

    let valueField = document.querySelector("#value");
    let updateState = function () {
      valueField.value = appState.count;
    };

    // Register a callback to update the HTML field from Flutter.
    appState.addHandler(updateState);

    // Render the first value (0).
    updateState();

    let incrementButton = document.querySelector("#increase-btn");
    incrementButton.addEventListener("click", (event) => {
      appState.increment();
    });
  };
})();
