module.exports = (sequelize, Sequelize) => {
    const Product = sequelize.define('product', {
        variantName: {
            type: Sequelize.STRING
        },
        variantDescription: {
            type: Sequelize.TEXT
        },
        variantQuantity: {
            type: Sequelize.INTEGER
        },
        variantImage: {
            type: Sequelize.TEXT,

            get() {
                return this.getDataValue('variantImage').split(';')
            },
            set(val) {
                this.setDataValue('variantImage', val.join(';'));
            }
        },
        variantDirection: {
            type: Sequelize.STRING
        },
        variantGuests: {
            type: Sequelize.STRING
        },
        variantRooms: {
            type: Sequelize.STRING
        },
        variantOffer: {
            type: Sequelize.INTEGER
        },
        variantPrice: {
            type: Sequelize.INTEGER
        },
        id: {
            type: Sequelize.STRING,
            primaryKey: true
        },
        published: {
            type: Sequelize.BOOLEAN
        }
    });

    return Product;
}