class RemoveIndexFromCourseIdStudents < ActiveRecord::Migration[6.0]
  def change
      remove_index :students, name: "index_students_on_course_id"
  end
end
