'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "ae3ced3c30c1ba82092a7205a63e0bcb",
"index.html": "41ac8073f5b826c484a4fcdbf927e19d",
"/": "41ac8073f5b826c484a4fcdbf927e19d",
"main.dart.js": "b58cfc7af860ca836cf36b45b5097cc1",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "590358463d53b028a453c59abf19bc12",
"icons/Icon-192.png": "642e0031e01fc859646b499d3ab973a8",
"icons/Icon-maskable-192.png": "642e0031e01fc859646b499d3ab973a8",
"icons/Icon-maskable-512.png": "ac2045a45ea6b5029f867da9c0dbd07b",
"icons/Icon-512.png": "ac2045a45ea6b5029f867da9c0dbd07b",
"manifest.json": "2e2d5b219d08c3544f995d1dc2319aab",
"assets/AssetManifest.json": "c83f00d53d459d59b975d2871eff8b41",
"assets/NOTICES": "391bdcc5f4674d1e83af167da5c0d5d7",
"assets/FontManifest.json": "06a8ba46aa27781cfad1ba8d47dc9011",
"assets/AssetManifest.bin.json": "01ebdb9e3281674849692d19d15fe3cf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "8f5cfe9d166e13cc01b02c84d469009a",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/shaders/glitch.frag": "a9b2db6c1ef846633eea6e7c06cae4fb",
"assets/AssetManifest.bin": "652cbf31206e6d7e1602cab9efef20ae",
"assets/assets/images/introduction/tsukuba_daigaku.png": "4ce3345cb8e28057e7b86c425a5656d7",
"assets/assets/images/shared/gdgtokyo_logo.png": "c62547ccd64c9b5a33ba70e87be1cf69",
"assets/assets/images/shared/flutter_icon.svg": "7cc4ee1c2514daeb8efd087f7c9cc5e1",
"assets/assets/images/website_review/website_preview.png": "3122ac7ce9e2e75510e33576e6548205",
"assets/assets/images/title_slide/meiji_jingu.png": "46c2a1377d767fa490cdaed112b93bfa",
"assets/assets/images/title_slide/elizabeth_welcome.png": "59a8adc9f53e2a1ce4f803ab21155538",
"assets/assets/images/title_slide/osaka_castle.png": "c8dbdd2d02ac6240e0377172f027ac8d",
"assets/assets/images/title_slide/tokyo_tower.png": "16595d5d809399f90c25e16dedd760d4",
"assets/assets/images/golden_hammer/golden_hammer.png": "264117d34ef6832c7d3b4922051dbdde",
"assets/assets/images/golden_hammer/explosion.png": "589ebd6331493b9fcc0d210b5c6e010b",
"assets/assets/images/custom/fluttershow.png": "3d3db8e62c43048b61e264007458b947",
"assets/assets/images/custom/qr.png": "7dacff15465121dce091d7d31da54211",
"assets/assets/images/custom/distortion.png": "31805b8562a47ddd91f063f42943c88d",
"assets/assets/rive/guy.riv": "1dcc3b42c7dd3933f3024580a0ebfdf9",
"assets/assets/rive/folder.riv": "15e1264f61094d8919d62eaa12c74ae1",
"assets/assets/fonts/GraphikSemibold.otf": "99c54fc5e6f750bc0d849ccfbf8ab8cf",
"assets/assets/fonts/GraphikRegular.otf": "e2a1876e68b3885d03062214bc6016e9",
"assets/assets/fonts/GraphikMedium.otf": "4a127c955329def8ac32316e4c6b55a5",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
