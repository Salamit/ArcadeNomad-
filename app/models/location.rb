class Location < ActiveRecord::Base

	def to_s
    "#{id} - Created: #{created_at} - Updated: #{updated_at}"

    end
    
    def telephone=(value)
    	write_attribute(:telephone, value.gsub(/[^0-9]/i, ''))
    
    end

    def address
    	street + ' ' + city + ', ' + state + ' ' + zip
    
    end

end
