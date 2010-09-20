module MARC
  class Manifestation
    attr_accessor :title, :publication_date, :copyright_date, :isbn, :issn, :lccn, :physical_description, :statement_of_responsibility, :reproduction, :edition, :publisher_number, :local_control_number, :oclc_number
    attr_reader :roles
    
    def add_producer(producer, role = :unknown)
      super(producer)
      @roles ||= {}
      @roles[role] ||= []
      @roles[role] << producer
    end
  end
  
  class Edition < Manifestation;end
  class Release < Manifestation;end
end