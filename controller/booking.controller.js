const db = require("../config/db.config");
const Product = db.products;

//Creating Controllers

exports.create = (req, res) => {
    // Validate request
    if (!req.body.variantName) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
        return;
    }

    // Create a Booking
    const product = {
        variantName: req.body.variantName,
        variantDescription: req.body.variantDescription,
        variantQuantity: req.body.variantQuantity,
        variantImage: req.body.variantImage,
        variantDirection: req.body.variantDirection,
        variantGuests: req.body.variantGuests,
        variantRooms: req.body.variantRooms,
        variantOffer: req.body.variantOffer,
        variantPrice: req.body.variantPrice,
        id: req.body.id,
        published: req.body.published ? req.body.published : false
    };

    // Save Booking in the database
    Product.create(product)
        .then(data => {
            res.send(data);
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || "Some error occurred while creating the Booking."
            });
        });
};

exports.findAll = (req, res) => {
    const variantName = req.query.variantName;
    var condition = variantName ? {
        variantName: {
            [Op.like]: `%${variantName}%`
        }
    } : null;

    Product.findAll({
            where: condition
        })
        .then(data => {
            res.send(data);
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || "Some error occurred while retrieving bookings."
            });
        });
};


exports.findById = (req, res) => {
    const id = String(req.params.id);

    Product.findByPk(id)
        .then(data => {
            res.send(data);
        })
        .catch(err => {
            res.status(500).send({
                message: "Error retrieving Booking with id=" + id
            });
        });
};

exports.update = (req, res) => {
    const id = req.params.id;

    Product.update(req.body, {
            where: {
                id: id
            }
        })
        .then(num => {
            if (num == 1) {
                res.send({
                    message: "Booking was updated successfully."
                });
            } else {
                res.send({
                    message: `Cannot update Booking with id=${id}. Maybe Booking was not found or req.body is empty!`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message: "Error updating Booking with id=" + id
            });
        });
};

exports.delete = (req, res) => {
    const id = req.params.id;

    Product.destroy({
            where: {
                id: id
            }
        })
        .then(num => {
            if (num == 1) {
                res.send({
                    message: "Booking was deleted successfully!"
                });
            } else {
                res.send({
                    message: `Cannot delete Booking with id=${id}. Maybe Booking was not found!`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message: "Could not delete Booking with id=" + id
            });
        });
};