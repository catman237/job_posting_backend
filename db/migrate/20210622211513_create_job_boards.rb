class CreateJobBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :job_boards do |t|
      t.string :name

      t.timestamps
    end
  end
end
