class CreateUsersFieldsJoinTables < ActiveRecord::Migration
  def change
    create_table :mentors_grades do |t|
      t.integer :mentor_id, null: false
      t.integer :grade_id, null: false
    end

    create_table :mentors_availabilities do |t|
      t.integer :mentor_id, null: false
      t.integer :availability_id, null: false
    end

    create_table :mentors_locations do |t|
      t.integer :mentor_id, null: false
      t.integer :location_id, null: false
    end

    create_table :teachers_availabilities do |t|
      t.integer :teacher_id, null: false
      t.integer :availability_id, null: false
    end

    create_table :mentors_occupations do |t|
      t.integer :mentor_id, null: false
      t.integer :occupation_id, null: false
    end

    create_table :mentors_answers do |t|
      t.integer :question_id, null: false
      t.integer :mentor_id, null: false
      t.text :answer
      t.timestamps
    end

    create_table :mentors_languages do |t|
      t.integer :mentor_id, null: false
      t.integer :language_id, null: false
    end

    create_table :mentors_services do |t|
      t.integer :mentor_id, null: false
      t.integer :service_id, null: false
    end
  end
end
