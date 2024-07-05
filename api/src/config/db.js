//Cargar las variables de entorno .env
require('dotenv').config(); 
// Crear la instancia de Sequelize
const { Sequelize } = require('sequelize');

// Asegúrate de que la URL de conexión es una cadena
const connectionString = process.env.DATABASE_URL; 
if (!connectionString) {
    throw new Error('La variable de entorno "DATABASE_URL" no está definida.');
}

const sequelize = new Sequelize(connectionString);



const connectDB = async () => {
  try {
    await sequelize.authenticate();
    console.log('PostgreSQL connected');
    await sequelize.sync({ alter: true }); // Sincroniza los modelos con la base de datos
    console.log('All models were synchronized successfully.');
  } catch (err) {
    console.error('Unable to connect to the database:', err);
    process.exit(1);
  }
};

module.exports = { sequelize, connectDB };
