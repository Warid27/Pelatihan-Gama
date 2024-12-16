module.exports = {
    mysql: {
      PORT: process.env.MYSQL_PORT || '3306',
      HOST: process.env.MYSQL_HOST || 'localhost',
      DB: process.env.MYSQL_DB || 'pelatihan_flutter',
      USERNAME: process.env.MYSQL_USER || 'root',
      PASSWORD: process.env.MYSQL_PASS || '',
      DIALECT: 'mysql',
      OPTIONS: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000,
      },
      LOGGING: console.log,
    },
  }