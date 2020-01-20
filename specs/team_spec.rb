require('minitest/autorun')
require('minitest/reporters')
require_relative('../team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Jossies_Giants", ["Jimmy", "Stan", "Mike"], "Smithy")
  end

  def test_team_name
    assert_equal("Jossies_Giants", @team.name)
  end

  def test_players
    assert_equal(["Jimmy", "Stan", "Mike"], @team.players)
  end

  def test_team_coach
    assert_equal("Smithy", @team.coach)
  end

  def test_can_set_name
    @team.name = "Jossies Giants"
    assert_equal("Jossies Giants", @team.name)
  end
  def test_can_set_players
    @team.players = []
    assert_equal([], @team.players)
  end

  def test_can_set_coach
    @team.coach = "Jack"
    assert_equal("Jack", @team.coach)
  end

  def test_add_player
    @team.add_player("Tom")
    assert_equal(4, @team.players.count)
end
  end
