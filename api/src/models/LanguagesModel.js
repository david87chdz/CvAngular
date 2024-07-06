const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');

const Language = sequelize.define('language', {
    _id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    language: {
        type: DataTypes.STRING,
        allowNull: false
    },
    description: {
        type: DataTypes.STRING,
        allowNull: false
    }
}, {
    tableName: 'languages',
    timestamps: false
});

module.exports = Language;