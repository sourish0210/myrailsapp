class Testapp < ApplicationRecord
    validates :name, presence: true
    validates :employeeid, presence: true
    validates :project, presence: true
end