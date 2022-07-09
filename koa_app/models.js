const { Sequelize, Model, DataTypes } = require("sequelize");

const sequelize = new Sequelize('hello_world_development', 'tian', '', {
  dialect: 'postgres',
  pool: {
    min: 1,
    max: 5,
  }
});

const User = sequelize.define('User', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
  },
  name: DataTypes.STRING,
}, {
  tableName: 'users',
  createdAt: 'created_at',
  updatedAt: 'updated_at',
});

module.exports = { User };
