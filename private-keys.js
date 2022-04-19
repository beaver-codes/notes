#! /bin/node

const LENGTH = 64;

let result = '';

for (let counter = 0; counter < LENGTH; counter++) {
    const rand = Math.round(Math.random() * 15);

    result += rand.toString(16);
}

console.log('Private key is', result)