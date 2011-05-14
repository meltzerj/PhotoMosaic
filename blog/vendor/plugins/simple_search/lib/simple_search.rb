# SimpleSearch

module BeginningRails
  module SimpleSearch
    def simple_search(*fields)
      class_inheritable_accessor :searchable_fields
      
      raise "Please specify the fields to search on" if fields.empty?
      self.searchable_fields = fields
    end
    
    def search(value)
      conditions = []
      self.searchable_fields.each do |field|
        conditions << "#{self.table_name}.#{field.to_s} LIKE '%#{value}%'"
      end
      return self.where(conditions.join(' OR '))
    end
  end
end