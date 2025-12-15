import express from "express";

const app = express();

app.get("/", (_req, res) => res.send("Hello Advent App"));

app.listen(3000, () => console.log("Listening on http://localhost:3000"));

console.log('test');
console.log('test');
console.log('test');
