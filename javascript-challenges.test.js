// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

describe("codedMessage", () => {
  it("returns a message that converts 'a' to 4, 'e' to 3, 'i' to 1, and 'o' to 0 ", () => {
    expect(codedMessage(secretCodeWord1)).toEqual("L4ck4d41s1c4l");
    expect(codedMessage(secretCodeWord3)).toEqual("3cc3ntr1c");
  });
});

const secretCodeWord1 = "Lackadaisical";
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook";
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric";
// Expected output: "3cc3ntr1c"

// b) Create the function that makes the test pass.

const codedMessage = (string) => {
  const newMessage = [];
  for (let i = 0; i < string.length; i++) {
    if (string[i] === "a" || string[i] === "A") {
      newMessage.push(4);
    } else if (string[i] === "e" || string[i] === "E") {
      newMessage.push(3);
    } else if (string[i] === "i" || string[i] === "I") {
      newMessage.push(1);
    } else if (string[i] === "o" || string[i] === "O") {
      newMessage.push(0);
    } else {
      newMessage.push(string[i]);
    }
  }

  return newMessage.join("");
};

// Pseudo code:
/*
Prompt: Function that takes in a string as parameter; evaluates if the string parameter has a specific character, change that character to a specific number: "a = 4", "e = 3", "i = 1", "o = 0" and returns a "coded message" as a string.
- Input: string
- Output: string
-   *** Steps ***
    1. Create a ES6 arrow function that takes in a string as a parameter
    2. Create an empty array
    3. interate over the string parameter with a for loop
      - If any element meets the 'a = 4, e = 3, i = 1, o = 0' criteria:
        - push the number to the array
      - If any element does not meet the 'aeio' criteria:
        - push the element to the array
    4. Join the array -> creates a string
    5. return the array

 */

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

describe("fullHouse", () => {
  it("returns a boolean that indicates whether the parameter (array) is a full house", () => {
    expect(fullHouse(hand1)).toEqual(true);
    expect(fullHouse(hand2)).toEqual(false);
    expect(fullHouse(hand3)).toEqual(false);
    expect(fullHouse(hand4)).toEqual(true);
  });
});

const hand1 = [5, 5, 5, 3, 3];
// Expected output: true
const hand2 = [5, 5, 3, 3, 4];
// Expected output: false
const hand3 = [5, 5, 5, 5, 4];
// Expected output: false
const hand4 = [7, 2, 7, 2, 7];
// Expected output: true

// b) Create the function that makes the test pass.

const fullHouse = (arr) => {
  const obj = {};
  let num1 = 0;
  let num2 = 0;

  for (let i = 0; i < arr.length; i++) {
    if (!obj[arr[i]]) {
      obj[arr[i]] = 1;
    } else {
      obj[arr[i]]++;
    }
  }

  for (key in obj) {
    if (obj[key] === 2) num1 = key;
    if (obj[key] === 3) num2 = key;
  }

  if (num1 !== 0 && num2 !== 0) return true;

  return false;
};

// Pseudo code:
/*
Prompt: Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.
Input: array
Output: boolean
*** Steps ***
  1. Create a ES6 arrow function that accepts an array as a parameter
  2. Create three variables: empty object and two number variables that hold the value of zero:
      obj = {}, num1 = 0, num2 = 0 
  3. iterate over the array parameter with a for loop
    1. if the object does not contain a element: add a key for that element and a value of one.
    2. if the object does contain a element, update the value for the element by one (add one)
  4. iterate of the object.
    1. if there is a value of 2, save that value to num1 (number variable)
    2. if there is a value of 3, save that value to num2 (number variable)
  5. create a conditional to evaluate if num1 and num2 hold the value of zero
    1. if both variables hold the value of zero, return false
    2. if both variables do not hold the value of zero, return true
*/
