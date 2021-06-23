class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :cohort
      t.date :date
      t.integer :number_of_interviews
      t.string :state
      t.integer :salary
      t.integer :number_of_applications
      
      t.references :job_board
      t.timestamps
    end
  end
end
