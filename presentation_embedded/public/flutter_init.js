window._stateSet = function () {};

window.addEventListener("load", function (ev) {
  console.log("Initializing Flutter");
  _flutter.loader.loadEntrypoint({
    entrypointUrl: "./flutter/main.dart.js",
    onEntrypointLoaded: async function (engineInitializer) {
      let appRunner = await engineInitializer.initializeEngine({
        useColorEmoji: true,
      });
      await appRunner.runApp();
    },
  });
});
