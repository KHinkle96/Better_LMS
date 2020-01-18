class AddAssignmentsToGrades < ActiveRecord::Migration[6.0]
  def change
   add_reference :grades, :assignment, null: false, foreign_key: true 
  end
end
