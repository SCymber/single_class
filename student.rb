class Student
attr_accessor :name, :cohort

def initialize(name, cohort)
  @name = name
  @cohort = cohort
end

def talk
  return "I can talk"
end

  def say_favourite_language(language)
    # return language + " is my favourite language"
    return "#{language} is my favourite language"
  end
end
