module MARC
  class Analyzer
    
    
    def analyze_record(record)
      case record.class.name
      when "BookRecord" then analyze_book(record)
      when "SerialRecord" then analyze_serial(record)
      when "ScoreRecord" then analyze_music(record)
      when "SoundRecord" then analyze_music(record)
      when "MapRecord" then analyze_music(record)
      end
    end
    
    def analyze_book(record)
      work = BookWork.new
      if record.is_manuscript?
        expression = Manuscript.new
      else
        expression = Book.new
      end
      expression.is_realization_of(work)      
      manifestation = Edition.new
      manifestation.is_embodiment_of(expression)
      if record['240']
        work.title = format_field(record['240'], ' ', ['a','d','k','m','n','p','r'])
      elsif record['243']
        work.title = format_field(record['243'], ' ', ['a','d','m','n','p','r'])
      elsif record['245']
        work.title = format_field(record['245'], ' ', ['a','g','k','n','p'])
        manifestation.title = format_field(record['245'], ' ', ['a','g','k','n','p'])
      else
        work.title = "**NO TITLE IDENTIFIED IN MARC**"
      end
    end
    
    def format_field(field, separator=' ', include_codes=[]) 
      return nil unless field

      parts = []
      field.each do |subfield|
        if include_codes.empty? or include_codes.index(subfield.code)
          parts << subfield.value
        end
      end
      parts.join(separator).strip_trailing_punctuation
    end    
  end
end