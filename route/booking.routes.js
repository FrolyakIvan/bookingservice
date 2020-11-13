module.exports = app => {
    const products = require("../controller/booking.controller.js");

    // Create a new Booking
    app.post("/api/product", products.create);

    // Retrieve all Booking
    app.get("/api/products", products.findAll);

    // Retrieve a single Booking with id
    app.get("/api/product/:id", products.findById);

    // Update a Booking with id
    app.put("/api/product/:id", products.update);

    // Delete a Booking with id
    app.delete("/api/product/:id", products.delete);

}