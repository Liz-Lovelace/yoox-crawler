import Sequelize from'sequelize';

export default function(sequelize, DataTypes) {
  return sequelize.define('products', {
    id: {
      autoIncrement: true,
      type: DataTypes.BIGINT,
      allowNull: false,
      primaryKey: true
    },
    donor_id: {
      type: DataTypes.STRING(128),
      allowNull: true
    },
    donor_category_id: {
      type: DataTypes.STRING(128),
      allowNull: true
    },
    donor_product_id: {
      type: DataTypes.STRING(128),
      allowNull: true
    },
    meta_title: {
      type: DataTypes.JSON,
      allowNull: true
    },
    meta_description: {
      type: DataTypes.JSON,
      allowNull: true
    },
    meta_keywords: {
      type: DataTypes.JSON,
      allowNull: true
    },
    name: {
      type: DataTypes.JSON,
      allowNull: true
    },
    slug: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    description: {
      type: DataTypes.JSON,
      allowNull: true
    },
    employee_id: {
      type: DataTypes.BIGINT,
      allowNull: true,
      references: {
        model: 'employees',
        key: 'id'
      }
    },
    brand_id: {
      type: DataTypes.BIGINT,
      allowNull: true,
      references: {
        model: 'brands',
        key: 'id'
      }
    },
    category_id: {
      type: DataTypes.BIGINT,
      allowNull: true,
      references: {
        model: 'categories',
        key: 'id'
      }
    },
    is_active: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    is_draft: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: true
    },
    is_prepaid: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    }
  }, {
    sequelize,
    tableName: 'products',
    schema: 'mod',
    timestamps: true,
    indexes: [
      {
        name: "products_employee_id_index",
        fields: [
          { name: "employee_id" },
        ]
      },
      {
        name: "products_is_active_is_draft_index",
        fields: [
          { name: "is_active" },
          { name: "is_draft" },
        ]
      },
      {
        name: "products_pkey",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
      {
        name: "products_slug_index",
        fields: [
          { name: "slug" },
        ]
      },
    ]
  });
};
