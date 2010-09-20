module MARC
  class Work
    include FRBR::Work
    attr_accessor :title, :preferred_title, :variant_titles, :form
    attr_reader :roles
    
    def add_creator(creator, role = :unknown)
      super(creator)
      @roles ||= {}
      @roles[role] ||= []
      @roles[role] << creator
    end
  end
  
  class BookWork < Work
  end
  
  class MusicalWork < Work
  end
  
  class SerialWork < Work
  end
  
  class MapWork < Work
  end
  
  class NonMusicalSoundWork < Work
  end
  
  class ComputerWork < Work
  end
  
  class ArtWork < Work
  end
  
  class FilmWork < Work
  end
  
  class RealiaWork < Work
  end
end