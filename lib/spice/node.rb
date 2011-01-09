module Spice
  class Node < Spice::Chef
    def self.all(options={})
      connection.get("/nodes")
    end
    
    def self.[](name)
      connection.get("/nodes/#{name}")
    end
    
    def self.show(options={})
      name = options.delete(:name)
      connection.get("/nodes/#{name}")
    end
    
    def self.create(options={})
      connection.post("/nodes", options)
    end
    
    def self.update(options={})
      name = options.delete(:name)
      connection.put("/nodes/#{name}", options)
    end
    
    def self.delete(options={})
      name = options.delete(:name)
      connection.delete("/nodes/#{name}")
    end
  end
end