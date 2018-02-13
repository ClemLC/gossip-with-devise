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

require 'rails_helper'

RSpec.describe Gossip, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
