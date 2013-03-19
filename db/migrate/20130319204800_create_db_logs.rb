class CreateDbLogs < ActiveRecord::Migration
  def change
    create_table :db_logs do |t|
      t.string :value

      t.timestamps
    end
  end
end
