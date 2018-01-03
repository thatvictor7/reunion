require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test

  # def test_it_exists
  #   activity = Activity.new
  #   assert_instance_of Activity, activity
  # end

  def test_it_activity_has_name
    activity = Activity.new("hiking")
    assert_equal "hiking", activity.name
  end

  def test_different_activity_name
    activity = Activity.new("volleyball")
    assert_equal "volleyball", activity.name
  end

  def test_a_participant
    person = Activity.new({participant: "Katt", spent: 30 })
    assert_equal "Katt", person.participant
  end

  def test_amount_spent_individually_on_activity
    person = Activity.new({participant: "Katt", spent: 30 })
    assert_equal 30, person.spent
  end

  def test_adding_participants_to_activities
    activity = Activity.new("volleyball")
    person = Activity.new({participant: "Katt", spent: 30 })
    assert_equal ["Katt"], person.add
  end

  def test_adding_multiple_participants

  end
end
