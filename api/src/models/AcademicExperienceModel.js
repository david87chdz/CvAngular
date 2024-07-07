const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');

const AcademicExperience = sequelize.define('academicexperience', {
    _id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      tittle: {
        type: DataTypes.STRING,
        allowNull: false
      },
      school: {
        type: DataTypes.STRING,
        allowNull: false
      },
      start_date: {
        type: DataTypes.STRING,
        allowNull: false
      },
      end_date: {
        type: DataTypes.STRING,
        defaultValue: 'Actualidad'
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
    }, {
        tableName: 'academicexperience',
        timestamps: false 
      });
      
module.exports = AcademicExperience;