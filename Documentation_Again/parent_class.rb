s = 'abc'
puts s.public_methods(false).inspect

# when set to false the object's ancestor methods are not included.
