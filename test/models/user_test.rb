# frozen_string_literal: true
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Edward Elric', email: 'brother@niisan.com')
  end

  test 'email addresses should be unique' do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test 'email addresses should be saved as lowercase' do
    mixed_case_email = 'xXxH4cK3rxXx@ExAMPle.CoM'
    @user.email = mixed_case_email
    @user.password = 'foobar'
    @user.save!
    assert_equal mixed_case_email.downcase, @user.email
  end
end
