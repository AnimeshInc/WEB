export const map = (array, key) => new Map(array
    .map(entry => [entry[key], entry])
);