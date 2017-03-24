# TEST 1
#
# GET https://www.richard.com/api/cases/?url=https://www.hannahsuttondesign.com.au/contact
#
# Should return JSON like this:
#
# {
#   cases: {
#     id: 123,
#     url: 'https://www.hannahsuttondesign.com.au/contact',
#     user_id: 20,
#     comments: [33,22,11],
#     x_pos: 2222,
#     y_pos: 1111,
#     box_w: 200,
#     box_h: 300,
#     screen_w: 2000
#   },
#   comments: [{
#     id: 1,
#     user_id: 33,
#     text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
#     created_on: 'date'
#   },{
#     id: 2,
#     user_id: 33,
#     text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
#     created_on: 'date'
#   },{
#     id: 3,
#     user_id: 33,
#     text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
#     created_on: 'date'
#   }]
# }

require 'test_helper'

class CasesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
