class Department < ApplicationRecord
    has_many :students do
        def active
            where("status = ?", 0)
        end

        def graduate
            where("status = ?", 1)
        end

        def dropout
            where("status = ?", 2)
        end
    end
end
