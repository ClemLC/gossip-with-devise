# == Schema Information
#
# Table name: gossips
#
#  id             :integer          not null, primary key
#  content        :text
#  moussaillon_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Gossip < ApplicationRecord
  belongs_to :moussaillon
end
