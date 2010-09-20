module MARC
  class Expression
    include FRBR::Expression
    attr_accessor :language, :format
    attr_reader :roles
    def add_realizer(realizer, role = :unknown)
      super(realizer)
      @roles ||= {}
      @roles[role] ||=[]
      @roles[role] << realizer
    end
  end
  
  class Book < Expression;end
  class Manuscript < Expression;end
  
  class Score < Expression;end
  class Recording < Expression;end
  
  class Map < Expression;end
  class Globe < Expression;end
  class Atlas < Expression;end
  
  class MotionPicture < Expression;end
  class Filmstrip < Expression;end
  
  class Periodical < Expression;end
  class Newspaper < Expression;end
  class Website < Expression;end
end