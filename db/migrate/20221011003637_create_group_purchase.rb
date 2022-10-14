# frozen_string_literal: true

class CreateGroupPurchase < ActiveRecord::Migration[7.0]
  def change
    create_table :group_purchases do |t|
      t.references :purchase, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
