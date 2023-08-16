window._stateSet = function () {};

window.addEventListener("load", function (ev) {
  console.log("Initializing Flutter");
  _flutter.loader.loadEntrypoint({
    onEntrypointLoaded: async function (engineInitializer) {
      let appRunner = await engineInitializer.initializeEngine();
      await appRunner.runApp();
    },
  });
});
