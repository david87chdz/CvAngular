const workExperienceModel = require('../models/WorkExperienceModel.js');

exports.getAllWorkExperiences = async (req, res) => {
  try {
    const workExperiences = await workExperienceModel.findAll();
    res.json(workExperiences);
  } catch (error) {
    console.error('Error al obtener las experiencias laborales:', error);
    res.status(500).json({ message: 'Error interno del servidor' });
  }
};