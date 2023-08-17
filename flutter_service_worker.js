'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache-2.7';
const CACHE_NAME = 'flutter-app-cache-2.7';
const RESOURCES = {
  "version.json": "980547175e325fe622a3362b84d55b6a",
"favicon.ico": "24567658131497a876098015b410d20c",
"index.html": "1f3cd63175d977d289bb7b7bbdf1c4ca",
"/": "1f3cd63175d977d289bb7b7bbdf1c4ca",
"main.dart.js": "a28e50b308d7430f161d175915c780bc",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "5aa9d7febb6d319957f54bdfae768c37",
"assets/AssetManifest.json": "74a57f44f2defbbb9e3872e8c58b79a0",
"assets/NOTICES": "f3e14b108b54e6212c50d65471523879",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/background_guides.jpg": "6daf3b503294f482d59b0bd3e40ef92a",
"assets/assets/EB/AIPPM1.png": "7fca00f99076fdfab96ae6ec32f4010d",
"assets/assets/EB/IPC1.png": "ea7bd412a34ab23af5f9becbaf3a2687",
"assets/assets/EB/UNODC2.png": "9754b3691550ab738f514207f1533d72",
"assets/assets/EB/UNODC3.png": "59e2f2a685b052de8c4a1632c6b7f1bf",
"assets/assets/EB/AIPPM2.png": "13449d04f0ea6f4a961eb45fb98e96b0",
"assets/assets/EB/IPC2.png": "bd7c1498869d2f4a17aca4f033951c2b",
"assets/assets/EB/UNODC1.png": "12ba1e8924574f2da43197b54c69abd1",
"assets/assets/EB/AIPPM3.png": "c57bc45406fccd0cad2d6961fd8dac6a",
"assets/assets/EB/DISEC1.png": "0af8f405eacc4ffa95dc50bb3c883fcc",
"assets/assets/EB/UNSC3.png": "e1a07b1e44014757786f235c2e20fb40",
"assets/assets/EB/UNSC2.png": "8a2c72d4664e05bfc4e2e3d65129a0a8",
"assets/assets/EB/DISEC2.png": "f8c95992464b28f354a9a8bd9c7dd432",
"assets/assets/EB/JCC5.png": "03894421542f8b6c803fcbf3e3e46502",
"assets/assets/EB/JCC4.png": "a2f2d388bd751d4b9d18536ff1e22321",
"assets/assets/EB/UNSC1.png": "1c95b8dfffd997e387163e2904159270",
"assets/assets/EB/DISEC3.png": "c9483486d12d5e5f52a85dd368a1a657",
"assets/assets/EB/UNHRC3.png": "6806c1a30427a2cf1e41f3c40e2b754e",
"assets/assets/EB/SOCHUM3.png": "4fb4c5605fc8ae87df286a9bbea18d89",
"assets/assets/EB/UNSC4.png": "1cc6ba170a18e65ef56b9dfd06326f60",
"assets/assets/EB/SOCHUM2.png": "11635bf6fc556b347b50e6ef9ef241c9",
"assets/assets/EB/JCC1.png": "d91212b0c69e84c3d4cb4670334a1839",
"assets/assets/EB/UNHRC2.png": "907de9fd4dd032b0b7270bd89ee18a97",
"assets/assets/EB/JCC3.png": "c95589bee169b13f97b93f511c542577",
"assets/assets/EB/SOCHUM1.png": "9d93f4b4bb564f507926e22f4d053a72",
"assets/assets/EB/JCC2.png": "7f7ed83200be106191814a12a1caf174",
"assets/assets/EB/UNHRC1.png": "0287899b3ab66c778e9f0ce742c45773",
"assets/assets/EB/UNEP1.png": "fe2ea1892ebbf4a6ee44d2f1e4aefb72",
"assets/assets/EB/UNEP3.png": "f3eb4cc896d7964ec02c78a56f0e13df",
"assets/assets/EB/UNEP2.png": "2ed25c8e55bd6b93fb3744d379bdb818",
"assets/assets/gwhmun_logo.png": "e5de3fa709e9ae5c8bc38b02e9316d09",
"assets/assets/ocs/adyaa.png": "2a2b6d306cee517baa017d9b2a525883",
"assets/assets/ocs/ananya.png": "34ed381b538c67e56e3acd2c7a3d5403",
"assets/assets/ocs/ishaan.png": "0d087243eab24153ff43a9125130f002",
"assets/assets/ocs/ash.png": "75c52e9aadec93e28949c982bea44b91",
"assets/assets/ocs/neve.png": "362fad3c2e6550714bd947ac5259650c",
"assets/assets/ocs/nopicgiven.png": "36b1f419bb0b57742cddae36dff2c4d9",
"assets/assets/ocs/kriti.png": "b6f1de4cdae978d5d19ebb1bb9141071",
"assets/assets/ocs/lalitha.png": "2bc17793c38e603b787f648adb35f107",
"assets/assets/ocs/rahul.png": "26a070edc4494d24722781ec0f191025",
"assets/assets/ocs/pavan.png": "257fe4d49c3a0b6c6133f5f096cdf1fd",
"assets/assets/ocs/puja.png": "b73c66837b01b4ef1b58edcab50114cc",
"assets/assets/ocs/soham.png": "f54b025aa2834430061766cc31aa8a86",
"assets/assets/ocs/rishab.png": "a6f19115e03c69b9134d83dd5856143a",
"assets/assets/ocs/yuthika.png": "a2785a83804940f004392fe656eed7c4",
"assets/assets/ocs/sanvi.png": "a76b1e69eee7128c7177f40a52fed0ca",
"assets/assets/ocs/asheera.png": "a1b1380b2a7e8b41f1f63ec0a09dc664",
"assets/assets/ocs/adit.png": "b99666f73317eaae1ea62d4b61528ac2",
"assets/assets/ocs/rahulHome.png": "43044e30f1ffd7cace73c33314188e61",
"assets/assets/ocs/vishnu.png": "ffcce79bc76ae01601eb44dba11155a1",
"assets/assets/ocs/vanshHome.png": "a962935ad7c50f8fb71353e850332db9",
"assets/assets/ocs/vansh.png": "6fd914ed3ac0259aa32c2d6790fd6375",
"assets/assets/ocs/surya.png": "2b1f84f533ef7840bd8ce73641ad6b49",
"assets/assets/ocs/allen.png": "42ecf5d1323560bc508dc51315e56ccc",
"assets/assets/ocs/kaavya.png": "218e8a5108f404d4171028986a3e6f47",
"assets/assets/carousel/image_15.jpg": "6c8001ac2b3f8737d1428cbcd9ad0354",
"assets/assets/carousel/image_14.jpg": "73f593460a9758265c80d41adfeb6ec8",
"assets/assets/carousel/image_16.jpg": "a28c64f27a733ce503a21dac6e4ca076",
"assets/assets/carousel/image_17.jpg": "6f3424b334dc6ee44a42c5e4e7914bf5",
"assets/assets/carousel/image_13.jpg": "cf0312f461ac97764751d46f07fc7f08",
"assets/assets/carousel/image_12.jpg": "71bf7171748c36a844120791cc77b87e",
"assets/assets/carousel/image_10.jpg": "05b3cb87b1571ac085e5fd8eced6ab5c",
"assets/assets/carousel/image_11.jpg": "3d55552b0c3cd9e6592aeb95b995da0e",
"assets/assets/carousel/image_8.jpg": "c762d7f2795dbabee3f132ba7d95ad7f",
"assets/assets/carousel/image_9.jpg": "d3730bb7e7b475a3f51ddc9034fa7673",
"assets/assets/carousel/image_2.jpg": "3781d570479a207e6c0c05cc497f693a",
"assets/assets/carousel/image_3.jpg": "1bb3a1c6494497105f71c823d67b1509",
"assets/assets/carousel/image_1.jpg": "0632a45fe510a2bb4fb09bca884cc107",
"assets/assets/carousel/image_4.jpg": "8bd472dfd16ece00ee72ceb88b603b25",
"assets/assets/carousel/image_5.jpg": "7e8c1206f50eb2f0171b5a9ebd32ab19",
"assets/assets/carousel/image_7.jpg": "f064e1cc1c5769c1d5ddadc39a904132",
"assets/assets/carousel/image_6.jpg": "fe0fda26cbf74889e28f1c4c346af01c",
"assets/assets/carousel/image_19.jpg": "c02ac148b5f9bad21ebadb8b5760bade",
"assets/assets/carousel/image_18.jpg": "b97c015fd7127eb420e5e8c163e07677",
"assets/assets/committee_page/DISEC.png": "97188d635b00d44248f4f8aa08fef8c2",
"assets/assets/committee_page/UNEP.png": "cca80fbb19d4c517be97ab797aec2ff9",
"assets/assets/committee_page/AIPPM.png": "12c3f23ccc2722ef605bdd8e399c0f34",
"assets/assets/committee_page/UNODC.png": "36e2ba2ce68a7797399aed4b4dcc1cfa",
"assets/assets/committee_page/SOCHUM.png": "593a9700b265f9d5b007e9e02a3065c3",
"assets/assets/committee_page/UNSC.png": "5697565681beb98c57545a75a38a1e90",
"assets/assets/committee_page/JCC.png": "ea0af7f07cd70443df1f44a52868c256",
"assets/assets/committee_page/IPC.png": "103340cc3a3ff6aa0186256bd507089a",
"assets/assets/committee_page/UNHRC.png": "ec7e97588a6f44fef0b4004d960306d5",
"assets/assets/country_matrix.jpeg": "7c429a88b005b2e238a99b3d102a0f0c",
"assets/assets/code_of_conduct.jpg": "aa0d557ca2b203eb931875952fc9e33a",
"assets/assets/rules_of_procedure.jpg": "1f8671b387f1c20867c1f1b040c18373",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
