class Shelter

attr_accessor :name, :location, :available_rooms, :cats

def initialize(name, location, available_rooms, cats)    
    @name = name
    @location = location
    @available_rooms = available_rooms
    @cats = cats
end

end
