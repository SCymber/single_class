require('minitest/autorun')
require('minitest/reporters')
require_relative('../student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test
  def setup
    @student = Student.new("Steven", "e37")
  end

  def test_can_get_name
    assert_equal("Steven", @student.name)
  end

  def test_can_set_name
    @student.name = "Bob"
    assert_equal("Bob", @student.name)
  end

  def test_can_get_cohort
    assert_equal("e37", @student.cohort)
  end

  def test_can_set_name
    @student.name = "Alan"
    assert_equal("Alan", @student.name)
  end

  def test_can_set_cohort
    @student.cohort = "e38"
    assert_equal("e38", @student.cohort)
  end

  def test_student_speech
    result = @student.talk()
    assert_equal("I can talk", result)
  end

  def test_student_language
    result = @student.say_favourite_language("Ruby") 
    assert_equal("Ruby is my favourite language", result)
  end

end
