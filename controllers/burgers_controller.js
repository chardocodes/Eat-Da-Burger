const express = require("express");

const router = express.Router();

// Import the model (burger.js) to use its db functions
const burger = require("../models/burger.js");

// Create routes and set up logic where required.
router.get("/", function(req, res) {
  burger.all(function(data) {
    var bgData = {
      burgers: data
    };
    console.log(bgData);
    res.render("index", bgData);
  });
});

router.post("/", function(req, res) {
  burger.create([
    "burger_name"
  ], [
    req.body.burger_name
  ], function() {
    res.redirect("/");
  });
});

router.put("/:id", function(req, res) {
  var condition = "id = " + req.params.id;

  console.log("condition", condition);

  burger.update({
    devoured: req.body.devoured
  }, condition, function() {
    res.redirect("/");
  });
});


// Export routes for server.js to use
module.exports = router;