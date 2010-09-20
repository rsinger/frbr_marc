module MARC
  class Family
    include FRBR::Family
    attr_accessor :name, :numeration, :date, :title
  end
end