const socket = io();

let currentLocationMarker;
let hasCentered = false;
const loading = document.getElementById("loading");
const findLocationBtn = document.getElementById("find-location-btn");

let locationTrackingStarted = false;

function startTracking() {
  if (navigator.geolocation) {
    loading.style.display = "block"; // Show loading indicator
    findLocationBtn.disabled = true; // Disable the button
    setTimeout(() => {
      navigator.geolocation.watchPosition(
        (position) => {
          sendLocation(position);
        },
        (error) => {
          console.error("Error getting location:", error);
          loading.innerText = "Unable to fetch location.";
        },
        {
          enableHighAccuracy: true,
          maximumAge: 0,
          timeout: Infinity,
        }
      );
    }, 2000); // 2-second timeout
  } else {
    alert("Geolocation is not supported by this browser.");
  }
}

function sendLocation(position) {
  const { latitude, longitude } = position.coords;
  socket.emit("sendLocation", { latitude, longitude });

  if (currentLocationMarker) {
    currentLocationMarker.setLatLng([latitude, longitude]);
  } else {
    currentLocationMarker = L.circleMarker([latitude, longitude], {
      radius: 10,
      color: "#007BFF",
      fillColor: "#007BFF",
      fillOpacity: 0.5,
    }).addTo(map);
  }

  if (!hasCentered) {
    map.setView([latitude, longitude], map.getZoom());
    hasCentered = true;
    loading.style.display = "none"; // Hide loading indicator
  }
}

findLocationBtn.addEventListener("click", startTracking);

const districtBounds = L.latLngBounds(
  [30.34999, 76.35737],
  [30.35881, 76.37468]
);

const map = L.map("map", {
  maxBounds: districtBounds,
  maxBoundsViscosity: 1.0,
  minZoom: 14,
  maxZoom: 18,
}).setView([30.3541, 76.3654], 15);

L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
  attribution: "&copy; OpenStreetMap contributors",
  maxZoom: 18,
  minZoom: 14,
}).addTo(map);

map.fitBounds(districtBounds);

let userMarker;

socket.on("receiveLocation", (data) => {
  const { latitude, longitude } = data;

  if (userMarker) {
    userMarker.setLatLng([latitude, longitude]);
  } else {
    userMarker = L.circleMarker([latitude, longitude], {
      radius: 8,
      color: "#FF5733",
      fillColor: "#FF5733",
      fillOpacity: 0.5,
    }).addTo(map);
  }
});

socket.on("userDisconnected", (id) => {
  if (userMarker) {
    map.removeLayer(userMarker);
    userMarker = null;
  }
});
