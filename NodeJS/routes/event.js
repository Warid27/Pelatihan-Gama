var express = require("express");
var controller = require("../src/controllers/event.controller");
var router = express.Router();

/* GET event */
router.get("/", controller.show);
router.post('/', controller.insert)
router.patch('/:id', controller.update)
router.delete('/:id', controller.delete_status)

module.exports = router;
