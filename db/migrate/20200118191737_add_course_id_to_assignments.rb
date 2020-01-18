class AddCourseIdToAssignments < ActiveRecord::Migration[6.0]
  def change
    add_reference :assignments, :course, null: false, foreign_key: true
  end
end
