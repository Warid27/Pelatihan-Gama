const { Sequelize, DataTypes } = require('sequelize')
const { v7: uuidv7 } = require('uuid')


class UUIDv7DataType extends DataTypes.UUIDV4 {
 static get Sequelize() {
   return Sequelize
 }


 static get _stringify() {
   return function (value) {
     return uuidv7()
   }
 }
}


const parseObject = async (data) => {
 return await JSON.parse(JSON.stringify(data))
}


module.exports = {
 UUIDv7DataType,
 parseObject,
}
