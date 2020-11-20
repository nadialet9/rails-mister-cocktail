class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  validates :name, presence: true, uniqueness: true

  # before_destroy :check
  # def check
  # # will always be true since all grandchildren have already been destroyed at this stage
  #   if self.

  #   else

  #   end
  #   return self.grandchildren.still_there.empty?
  # end

end
