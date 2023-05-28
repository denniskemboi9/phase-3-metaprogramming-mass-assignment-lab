class Person
  
  attr_accessor(:name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width)
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=",  value)
    end
  end
end

bob_attributes = { name: "Bob", hair_color: "Brown" }

bob = Person.new(bob_attributes)
puts bob.name       
puts bob.hair_color 