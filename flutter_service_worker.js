'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "1704f9b306f0844a7957429facef3beb",
"assets/assets/android_image.png": "eae67db22238dca4987094f5feca966d",
"assets/assets/avatar.jpg": "f293ca2b2b0b3cfab861611c980f1926",
"assets/assets/cpp_image.png": "f01d9a4a208dd0edbcd98f476d8419ed",
"assets/assets/c_programming_image.png": "1c1888a3eb2f04360763c1a95257b726",
"assets/assets/facebook.png": "021ada146ffb7c1753557ff29618d04c",
"assets/assets/fcm_image.png": "af5e2d26a5e6a489041c6c04f3e50a70",
"assets/assets/firebase_image.png": "e642c7556d83be574ae3929c34ead074",
"assets/assets/flutter_image.png": "d21f1eecaeaab081ba7efec1721c0712",
"assets/assets/fonts/GoogleSansRegular.ttf": "000be6a5acfcd4e4a425e9f1bb6c80f0",
"assets/assets/github.png": "d22ee3727a7216019c3848df6eafa024",
"assets/assets/git_image.png": "042664999475fd8cc3672db6567e2e53",
"assets/assets/instagram.png": "26631a4043b14dff84180bdf51c3cacb",
"assets/assets/java_image.png": "1faf0791eafd8d9fdbe24cabfec303ca",
"assets/assets/linkedin.png": "926e2dcf5ab4220a359867614556df68",
"assets/assets/projects/events_info.png": "58074cdb0900d1c82f09ddf056756433",
"assets/assets/projects/linograph.png": "c600dd3e3217f07646fabc14746e6816",
"assets/assets/projects/meals_recipe.png": "774ec340dfedd625189ac988241b9c15",
"assets/assets/projects/my_brand.png": "22b2039d3c364b1d2d9ca125dbb469b3",
"assets/assets/projects/my_shop.png": "ce46586c594e96d440d699a715134f11",
"assets/assets/projects/sudoku.png": "8eb32d003d4001b0ee107b6b9e10005f",
"assets/assets/projects/suvidha_supermarket.png": "3912ae8a2e18cb322f58ddb3acc9cc1c",
"assets/assets/projects/suvidha_wholesale.png": "9487ca5a8ab7affa8e0338397b9e144e",
"assets/FontManifest.json": "bb05d491d63534b264dea8213a4a50be",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "954706ef951b9553ecb95d1a66a0f589",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "402af9fc38bee2f56521c15a5f7a569c",
"main.dart.js": "11d5b40e0d7eb24b734e2eaef55cadad",
"manifest.json": "3d6a63557d1947dec8345188a05a14f6"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
