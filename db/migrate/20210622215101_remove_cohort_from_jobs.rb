class RemoveCohortFromJobs < ActiveRecord::Migration[6.1]
  def change
    remove_column :jobs, :cohort
  end
end
