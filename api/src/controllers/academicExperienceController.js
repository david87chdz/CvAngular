const academicExperienceModel = require('../models/AcademicExperienceModel.js');

exports.getAllAcademicExperieces = async (req, res) => {
    try{
        const academicExperiences = await academicExperienceModel.findAll();
        res.json(academicExperiences);
    } catch (error){
        console.error('Error al obtener las experiencias academicas:', error);
        res.status(500).json({ message: 'Error interno del servidor'});
    }
};