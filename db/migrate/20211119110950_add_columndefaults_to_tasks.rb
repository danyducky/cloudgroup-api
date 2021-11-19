class AddColumndefaultsToTasks < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :is_completed, :boolean, default: false
  end
end
