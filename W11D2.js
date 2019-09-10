
// in block, in block
function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

//in block, out of block
function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

//<-- syntax error (line 26) & reference error
function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

//in block, out of block
function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

//syntax error (line 49) & reference error
function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`;
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

//PHASE 2

function fizzBuzz(array) {

  let magic_nums = [];
  
  array.forEach(function(num) {
    if ((num % 3 === 0 || num % 5 === 0) && !(num % 3 === 0 && num % 5 === 0)){
      magic_nums.push(num);
    }
  });

  return magic_nums;
}

function isPrime(num) {
  if (num < 2) {return false;}

  for (let i = 2; i < num; i++){
    if (num % i === 0) {
      return false;
    }
  }

  return true;
}


function sumOfNPrimes(n) {
  let sum = 0;
  let count = 0;
  let i = 2;

  while(count < n) {
    if (isPrime(i)) {
      sum += i;
      count++;
    }
    i++;
  }

  return sum;
}