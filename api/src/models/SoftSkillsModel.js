const { DataTypes } = require('sequelize');
const { sequelize } = require('../config/db');

const SoftSkill = sequelize.define('softSkill', {
    _id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    title: {
        type: DataTypes.STRING,
        allowNull: false
    },
    description: {
        type: DataTypes.STRING,
        allowNull: false
    }
}, {
    tableName: 'softskills',
    timestamps: false
});

module.exports = SoftSkill;