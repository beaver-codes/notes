#! /bin/node

/**
 * PRIVATE KEY GENERATOR
 */
const LENGHT = 64;

let result = '';


for (let counter = 0; counter < LENGHT; counter++) {
    const number = Math.round(Math.random() * 15);

    result += number.toString(16);
}


console.log('Private Key: ', result);