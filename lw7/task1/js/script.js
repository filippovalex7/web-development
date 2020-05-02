function isPrimeNumber(number) {
  let isPrime = true;
  if (typeof(number) == 'number') {
    if (number % 1 !== 0) {
      isPrime = false;
    }
    for (let j = 2; j < number; j++) {
      if (number % j == 0) {
        isPrime = false;
        break;
      }
    } 
    if (isPrime) {
      console.log(number + ' is prime number');
    } else {
        console.log(number + ' is not prime number');
      }
  } else if (Array.isArray(number)) {
      for (let i = 0; i < number.length; i++) {
        isPrimeNumber(number[i]);
      }   
  } else {
      console.log('Incorrect type of data');
  }
}
