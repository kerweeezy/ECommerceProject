# frozen_string_literal: true

class RenameColumns < ActiveRecord::Migration[6.0]
  def up
    rename_column :jerseys, :fullName, :name
  end
end
