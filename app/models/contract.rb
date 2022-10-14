class Contract < ApplicationRecord
  belongs_to :purchase
  belongs_to :group
end
