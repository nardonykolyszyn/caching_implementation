# frozen_string_literal: true


class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.belongs_to :author, foreign_key: { on_delete: :cascade }, index: true

      t.timestamps
    end
  end
end
