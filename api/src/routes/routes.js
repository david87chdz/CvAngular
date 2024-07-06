const express = require('express');
const router = express.Router();
const workExperiencieController = require('../controllers/workExperienceController.js');
const academicExperiencieController = require('../controllers/academicExperienceController.js');
const contactController = require('../controllers/contactController.js');
const languageController = require('../controllers/languageController.js');
const skillController = require('../controllers/skillController.js');
const softSkillController = require('../controllers/softSkillController.js')
router.get('/contact', contactController.getAllContact);
router.get('/language', languageController.getAllLanguages);
router.get('/skill', skillController.getAllSkills);
router.get('/softSkill', softSkillController.getAllSoftSkills)
router.get('/workexperience', workExperiencieController.getAllWorkExperiences);
router.get('/academicexperience', academicExperiencieController.getAllAcademicExperieces);
module.exports = router;