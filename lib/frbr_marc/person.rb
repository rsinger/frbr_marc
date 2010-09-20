module MARC
  class Person
    include FRBR::Person
    attr_accessor :name, :title, :date, :affiliation, :numeration, :display_form, :fuller_form_of_name
  end
end