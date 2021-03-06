function titleize(names, cb) {
  let newNames = names.map(el => `Mx. ${el} Jingleheimer Schmidt`);
  return cb(newNames);
}

function printCallback(arr) {
  arr.forEach(el => console.log(el));
}

//PHASE 2
function Elephant(name, height, tricks){
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!`);
}

Elephant.prototype.grow = function() {
  this.height = this.height + 12;
  console.log(this.height);
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}

Elephant.prototype.play = function(){
  let trick = this.tricks[Math.floor(Math.random()*this.tricks.length)];
  console.log(`${this.name} is ${trick}!`);
}

//PHASE 3

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`);
}

herd.forEach(el => Elephant.paradeHelper(el));

//Phase 4 

function dinerBreakfast(){
  const order = ["cheesy scrambled eggs"];

  return function (food){
    if (food){
      order.push(food);
    }
    console.log(`I'd like ${order.join(" and ")} please.`)
  }
}