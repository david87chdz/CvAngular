const softSkillModel = require('../models/SoftSkillsModel.js');

exports.getAllSoftSkills = async (req, res) => {
    try {
        const softSkills = await softSkillModel.findAll();
        res.json(softSkills);
    } catch (error) {
        console.error('Error getting soft skills:', error);
        res.status(500).json({ message: 'Internal server error'});
    }
}
