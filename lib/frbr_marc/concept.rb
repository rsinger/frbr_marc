module MARC
  class Concept
    include FRBR::Concept
    attr_accessor :vocabulary, :label, :main_term, :subdivisions
  end
end