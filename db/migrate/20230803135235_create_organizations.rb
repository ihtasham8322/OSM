class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :subdomain, null: false, unique: true, limit: 20

      t.timestamps
    end
    add_index :organizations, :subdomain
  end
end
