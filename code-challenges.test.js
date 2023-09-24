// ASSESSMENT 4: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in an array, removes the first item from the array and shuffles the remaining items.



// a) Create a test with an expect statement using the variable provided.
// HINT: Check out this resource: https://jestjs.io/docs/expect#expectarraycontainingarray

describe ("removeAndShuffle", () => {

  const colors1 = ["purple", "blue", "green", "yellow", "pink"]
  // Expected output example (can be a different order): ["yellow", "blue", "pink", "green"]
  const colors2 = [
    "chartreuse",
    "indigo",
    "periwinkle",
    "ochre",
    "aquamarine",
    "saffron"
  ]
  // Expected output example (can be a different order): ["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]

  it("Removes the first item from the array and shuffles the remaining items.", () => {

    // expect(["purple", "blue", "green", "yellow", "pink"]).toHaveReturnedWith(removeAndShuffle(colors1))
    // Matcher error: received value must be a mock function
    // Received has type:  array
    // Received has value: ["purple", "blue", "green", "yellow", "pink"]


    // expect(["purple", "blue", "green", "yellow", "pink"]).toEqual(expect.removeAndShuffle(colors1))
    // TypeError: expect.removeAndShuffle is not a function

    // expect(removeAndShuffle(colors1)).toHaveLength(4)
    // expect(removeAndShuffle(colors2)).toHaveLength(5)

    expect(removeAndShuffle(colors1)).toEqual(expect.arrayContaining(["yellow", "blue", "pink", "green"]))
    expect(removeAndShuffle(colors2)).toEqual(expect.arrayContaining(["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]))
  })
})


// b) Create the function that makes the test pass.

// Pseudo code:

// INPUT: variable with array of words
// FUNCTION_NAME: removeAndShuffle with parameter thing
// OUTPUT: an array with removed first word and shuffled words
// EXPECTED_OUTPUT: an array.length - 1

// PROCESS:
// 1) create a reusable function (removeAndShuffle) with a parameter (thing) 
// 2) create a for loop that that will itirate through given array 
// 3) use method for an array.shift() that will remove value at index 0
// 4) return a method.sort with a passed in anonymous function that includes a randomized mathod math.randome, multiply by 0.5 to make it be picked at randome.

const removeAndShuffle = (thing) => {
  for (let i=0; i< thing.length; i++){
    thing.shift()
    // return thing.sort((a, b) => Math.floor(Math.random() * (i - 1)))
    return thing.sort((a, b) => Math.random() - 0.5);
  }
} 



// --------------------2) Create a function that takes in an object that contains up votes and down votes and returns the end tally.

// a) Create a test with expect statements for each of the variables provided.

describe("tally", () => {

  const votes1 = { upVotes: 13, downVotes: 2 }
  // Expected output: 11
  
  const votes2 = { upVotes: 2, downVotes: 33 }
  // Expected output: -31

  it("takes in an object that contains up votes and down votes and returns the end tally", () => {
    expect(tally(votes1)).toEqual(11)
    expect(tally(votes2)).toEqual(-31)
  })
})

// b) Create the function that makes the test pass.

// Pseudo code:

// INPUT: object 
// FUNCTION_NAME: tally
// OUTPUT: number
// PROCESS:
// 1) create a function named tally
// 2) return the key:value1-key:value2

const tally = (object) => { 
  return object.upVotes - object.downVotes  
}

// --------------------3) Create a function that takes in two arrays as arguments and returns one array with no duplicate values. STRETCH: Use the spread operator to pass in a dynamic number of arguments.

// a) Create a test with an expect statement using the variables provided.
describe ("takeOutTheDuplex", () => {

  const dataTypesArray1 = ["array", "object", "number", "string", "Boolean"]
  const dataTypesArray2 = ["string", "null", "Boolean", "string", "undefined"]
  // Expected output: ["array", "object", "number", "string", "Boolean", "null", "undefined"]

  it("returns one array with no duplicate values", () => {
    expect(takeOutTheDuplex(...dataTypesArray1, ...dataTypesArray2)).toEqual(["array", "object", "number", "string", "Boolean", "null", "undefined"])
  })
})

// b) Create the function that makes the test pass.

// Pseudo code:

// INPUT: two arrays concatinated with spread operator
// FUNCTION_NAME: takeOutTheDuplex with a parameter ...duplex
// OUTPUT: one array with out duplicated values
// PROCESS:
// 1) create a function and pass in a parameter with spread operator to take in and concatinate 2 arrays
// 2) filter the parameter by creating an anonymous function and passing only 2 out of 3 possible parameter(value, index, no array needed here)
// 3) return duplex parameter and using method indexOf compare it and output array without the equated values

// const duplicatesIncluded = dataTypesArray1.concat(dataTypesArray2)
// console.log(duplicatesIncluded);
const takeOutTheDuplex = (...duplex) => {
    return duplex.filter((value, index) => {
        return duplex.indexOf(value) == index
    })
  } 
