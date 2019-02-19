class Store < ActiveRecord::Base
  has_many :employees

  validates :name, 
    presence: true,
    length: { minimum: 3 }
  validates :annual_revenue,
    numericality: { 
      only_integer: true,
      greater_than: 0
    }
  validate :has_mens_or_womens_apparel

    private 

    def has_mens_or_womens_apparel
      unless mens_apparel || womens_apparel
        errors.add("womens apparel or mens apparel", "requires either womens or mens apparel")
      end
    end
end
