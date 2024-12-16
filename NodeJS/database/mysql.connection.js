const { Sequelize } = require('sequelize')


const dbConfig = require('../config/db.config')['mysql']


const sequelize = new Sequelize(dbConfig.DB, dbConfig.USERNAME, dbConfig.PASSWORD, {
 host: dbConfig.HOST,
 port: dbConfig.PORT,
 dialect: dbConfig.DIALECT,
 dialectOptions: dbConfig.DIALECTOPTIONS,
 operatorsAliases: 0,
 pool: dbConfig.OPTIONS,
 logging: dbConfig.LOGGING,
//  timezone: 'Asia/Jakarta'
})


sequelize
 .authenticate()
 .then(() => {
   console.log('Connected to the database mysql!')
 })
 .catch((err) => {
   console.log('Cannot connect to the database mysql: ', err)
 })


module.exports = sequelize
