module MARC
  class Place
    include FRBR::Place
    attr_accessor :location_of
  end
end