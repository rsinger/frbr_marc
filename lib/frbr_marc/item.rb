module MARC
  class Item
    include FRBR::Item
    
    attr_accessor :barcode, :call_number, :notes
  end
end