class Student < ApplicationRecord
    belongs_to :department
    enum status: { active: 0, graduate: 1, dropout: 2 }
end
