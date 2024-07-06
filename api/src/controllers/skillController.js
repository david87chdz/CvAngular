const skillModel = require('../models/SkillModel.js');

exports.getAllSkills = async (req, res) => {
    try {
        const skills = await skillModel.findAll();
        res.json(skills);
    } catch (error) {
        console.error('Error getting skills:', error);
        res.status(500).json({ message: 'Internal server error'});
    }
}
