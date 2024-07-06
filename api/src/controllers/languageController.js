const languageModel = require('../models/LanguagesModel.js');

exports.getAllLanguages = async (req, res) => {
    try {
        const languages = await languageModel.findAll();
        res.json(languages);
    } catch (error) {
        console.error('Error getting languages:', error);
        res.status(500).json({ message: 'Internal server error'});
    }
}