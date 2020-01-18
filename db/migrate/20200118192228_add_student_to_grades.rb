class AddStudentToGrades < ActiveRecord::Migration[6.0]
  def change

    add_reference :grades, :student, null: false, foreign_key: true
  end
end
