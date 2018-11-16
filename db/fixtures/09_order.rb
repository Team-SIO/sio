# # == Schema Information
# #
# # Table name: orders
# #
# #  id         :integer          not null, primary key
# #  user_id    :integer
# #  created_at :datetime         not null
# #  updated_at :datetime         not null
# #  deleted_at :datetime
# #  status     :integer
# #  ship       :text
# #
# Order.seed do |s|
# 	s.id = 1
# 	s.user_id = 1
# 	s.status = 0
# 	s.ship = "送り先1"
# end
#
# Order.seed do |s|
# 	s.id = 2
# 	s.user_id = 1
# 	s.status = 1
# 	s.ship = "送り先2"
# end
#
# Order.seed do |s|
# 	s.id = 3
# 	s.user_id = 2
# 	s.status = 0
# 	s.ship = "送り先3"
# end
#
# Order.seed do |s|
# 	s.id = 4
# 	s.user_id = 3
# 	s.status = 1
# 	s.ship = "送り先4"
# end
#
# Order.seed do |s|
# 	s.id = 5
# 	s.user_id = 2
# 	s.status = 1
# 	s.ship = "送り先5"
# end
#
# Order.seed do |s|
# 	s.id = 6
# 	s.user_id = 1
# 	s.status = 1
# 	s.ship = "送り先6"
# end
#
# Order.seed do |s|
# 	s.id = 7
# 	s.user_id = 2
# 	s.status = 0
# 	s.ship = "送り先7"
# end
#
# Order.seed do |s|
# 	s.id = 8
# 	s.user_id = 2
# 	s.status = 0
# 	s.ship = "送り先8"
# end
#
# Order.seed do |s|
# 	s.id = 9
# 	s.user_id = 3
# 	s.status = 1
# 	s.ship = "送り先9"
# end
#
# Order.seed do |s|
# 	s.id = 10
# 	s.user_id = 1
# 	s.status = 0
# 	s.ship = "送り先10"
# end
#
# Order.seed do |s|
# 	s.id = 11
# 	s.user_id = 1
# 	s.status = 1
# 	s.ship = "送り先11"
# end
#
# Order.seed do |s|
# 	s.id = 12
# 	s.user_id = 2
# 	s.status = 1
# 	s.ship = "送り先12"
# end
#
# Order.seed do |s|
# 	s.id = 13
# 	s.user_id = 3
# 	s.status = 1
# 	s.ship = "送り先13"
# end
#
# Order.seed do |s|
# 	s.id = 14
# 	s.user_id = 3
# 	s.status = 0
# 	s.ship = "送り先14"
# end
#
# Order.seed do |s|
# 	s.id = 15
# 	s.user_id = 1
# 	s.status = 1
# 	s.ship = "送り先15"
# end
#
# Order.seed do |s|
# 	s.id = 16
# 	s.user_id = 2
# 	s.status = 1
# 	s.ship = "送り先16"
# end