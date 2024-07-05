const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');

const WorkExperience = sequelize.define('workexperience', {
    _id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    position: {
      type: DataTypes.STRING,
      allowNull: false
    },
    company: {
      type: DataTypes.STRING,
      allowNull: false
    },
    city: {
      type: DataTypes.STRING,
      allowNull: false
    },
    country: {
      type: DataTypes.STRING,
      allowNull: false,
      defaultValue: 'España'
    },
    start_date: {
      type: DataTypes.STRING,
      allowNull: false
    },
    end_date: {
      type: DataTypes.STRING,
      defaultValue: 'Actualidad'
    },
    description: {
      type: DataTypes.STRING
    }
  }, {
    tableName: 'workexperience',
    timestamps: false 
  });
  
module.exports = WorkExperience;


