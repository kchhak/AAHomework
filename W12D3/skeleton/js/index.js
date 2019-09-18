console.log("Hello from the JavaScript console!");

$.ajax({
  type: 'GET',
  url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b",
  success(data) {
    console.log("NY Weather:")
    console.log(data);
  },
});

console.log("Hello from the bottom of the page!")

// network order:
//  - index.html  304
//  - jquery.min.js 200
//  - index.js 200
//  - request url 200
//  - websocket 101

// console logs run first, page did not refresh?