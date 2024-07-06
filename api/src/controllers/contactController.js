const contactModel = require('../models/ContactModel.js');

exports.getAllContact = async (req, res) => {
    try {
        const contact = await contactModel.findAll();
        res.json(contact);
    } catch (error) {
        console.error('Error getting contact:', error);
        res.status(500).json({ message: 'Internal server error'});
    }
}