// step 1
// workbox.routing.setDefaultHandler(async ({ event }) => {
//   try {
//     return await fetch(event.request)
//   } catch (e) {
//     return caches.match('/offline.html');
//   }
// });

// step 2
workbox.routing.setDefaultHandler(({ event: { request } }) => fetch(request));

workbox.routing.setCatchHandler(() => caches.match('/offline.html'));

// step 3
workbox.routing.setDefaultHandler(workbox.strategies.networkFirst());

workbox.routing.setCatchHandler(() => caches.match('/offline.html'));

