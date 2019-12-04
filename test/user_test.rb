require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/joke'
require_relative '../lib/user'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")
    assert_instance_of User, sal
  end

  def test_user_has_a_name
    sal = User.new("Sal")
    assert_equal "Sal", sal.name
  end

  def test_user_has_no_jokes
    sal = User.new("Sal")
    assert_equal [], sal.jokes
  end

  def test_user_can_learn_jokes
    sal = User.new("Sal")
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")

    sal.learn(joke_1)
    sal.learn(joke_2)
    assert_equal [joke_1, joke_2], sal.jokes
  end




end
