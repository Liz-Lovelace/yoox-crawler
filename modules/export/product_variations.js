import Sequelize from 'sequelize';

export default function(sequelize, DataTypes) {
  return sequelize.define('product_variations', {
    id: {
      autoIncrement: true,
      type: DataTypes.BIGINT,
      allowNull: false,
      primaryKey: true
    },
    donor_attribute_id: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    product_id: {
      type: DataTypes.BIGINT,
      allowNull: false,
      references: {
        model: 'products',
        key: 'id'
      }
    },
    attribute_id: {
      type: DataTypes.BIGINT,
      allowNull: false,
      references: {
        model: 'attributes',
        key: 'id'
      }
    },
    value_id: {
      type: DataTypes.BIGINT,
      allowNull: false,
      references: {
        model: 'attribute_values',
        key: 'id'
      }
    },
    parent_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: 0
    },
    reference: {
      type: DataTypes.STRING(128),
      allowNull: true
    },
    barcode: {
      type: DataTypes.STRING(16),
      allowNull: true
    },
    price: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    old_price: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    description: {
      type: DataTypes.JSON,
      allowNull: true
    },
    in_stock: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    is_default: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    sort_order: {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: 0
    }
  }, {
    sequelize,
    tableName: 'product_variations',
    schema: 'mod',
    timestamps: true,
    indexes: [
      {
        name: "product_variations_is_default_index",
        fields: [
          { name: "is_default" },
        ]
      },
      {
        name: "product_variations_pkey",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
      {
        name: "product_variations_product_id_in_stock_parent_id_index",
        fields: [
          { name: "product_id" },
          { name: "in_stock" },
          { name: "parent_id" },
        ]
      },
    ]
  });
};
