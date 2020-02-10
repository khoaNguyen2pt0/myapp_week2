const express = require("express");
const path = require("path");
const app = express();
const members = require("./Members");
//const myFunc = require("./myFunc");

/* set 2 static endpoints that contains html and css files*/
app.use(express.static(path.join(__dirname, "styles")));
app.use(express.static(path.join(__dirname, "content")));

/* dynamic endpoint */
app.get("/members", (req, res) => {
  res.json(members);
});

app.get("/members/VIP", (req, res) => {
  res.json(members[0]);
});

app.listen(5000, () => console.log(`Server started on port 5000`));
