class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.belongs_to :user, index: true, null: false
      t.text :body
      t.hstore :common

      t.timestamps null: false
    end
  end
end
