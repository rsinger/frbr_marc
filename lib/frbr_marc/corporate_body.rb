module MARC
  class CorporateBody
    include FRBR::CorporateBody
    attr_reader :name, :subordinate_unit, :location, :date
  end
end