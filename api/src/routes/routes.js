const express = require('express');
const router = express.Router();
const workExperiencieController = require('../controllers/workExperienceController.js');
const academicExperiencieController = require('../controllers/academicExperienceController.js');
router.get('/workexperience', workExperiencieController.getAllWorkExperiences);
router.get('/academicexperience', academicExperiencieController.getAllAcademicExperieces);
module.exports = router;