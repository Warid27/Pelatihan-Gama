var express = require("express");
var router = express.Router();

/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", { title: "Warid" });
});

router.get("/coba-json", function (req, res, next) {
  res.status(200).send([
    {
      data: "1",
      nama: "Warid",
      hobi: "Ngoding",
      umur: 17,
    },
    {
      data: "2",
      nama: "Haidar",
      hobi: "Main MC",
      umur: 17,
    },
  ]);
});

module.exports = router;
