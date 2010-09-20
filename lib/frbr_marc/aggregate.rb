module MARC
  class Aggregate
    attr_accessor :work, :expressions, :manifestations, :items, :agents, :subjects
    
    def initialize
      @expressions = []
      @manifestations = []
      @items = []
      @agents = []
      @subjects = []
    end
  end
  
  class Collection
    attr_reader :records, :works, :expression, :manifestations, :items, :people, :corporate_bodies, :families, :concepts, :places, :events, :objects
    
  end
    
end