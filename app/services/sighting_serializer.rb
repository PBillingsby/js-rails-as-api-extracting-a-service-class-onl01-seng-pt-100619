class SightingSerializer
  def initialize(sighting_object)
    @sighting = sighting_object
  end
  
  def to_serialized_json
    def to_serialized_json
      options = { # Creates options hash
        include: { # Including bird and location hash
          bird: {
            only: [:name, :species] # Only bird.name, bird.species
          },
          location: {
            only: [:latitude, :longitude] # Only location.latitude, location.longitude
          }
        },
        except: [:updated_at],
      }
      @sighting.to_json(options) 
    end
  end
end