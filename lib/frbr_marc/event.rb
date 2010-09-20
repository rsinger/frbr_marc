module MARC
  class Event
    include FRBR::Event
    attr_accessor :name, :date, :location
  end
  
  class Meeting < Event
    attr_accessor :display_form, :subordinate_unit
  end
end