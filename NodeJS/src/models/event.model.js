const { DataTypes } = require('sequelize')
const sequelize = require('../../database/mysql.connection')
const { UUIDv7DataType } = require('../../utility/sequelize-lib')

const Table = sequelize.define(
  'event',
  {
    id_event: {
      type: DataTypes.CHAR(36),
      defaultValue: new UUIDv7DataType(),
      primaryKey: true,
    },
    nama: {
      type: DataTypes.STRING,
    },
    tempat_acara: {
      type: DataTypes.STRING,
    },
    waktu_mulai: {
      type: DataTypes.STRING,
    },
    waktu_selesai: {
      type: DataTypes.STRING,
    },
    created_at: {
      type: DataTypes.STRING,
    },
    updated_at: {
      type: DataTypes.STRING,
    },
    status_delete: {
      type: DataTypes.TINYINT,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
)

module.exports = Table
