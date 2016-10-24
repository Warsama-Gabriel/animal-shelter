# require the local files where the classes are defined
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

# Instantiate a Shelter
$shelter = Shelter.new('HappiTails', '10 east 21st Street')

# Instantiate clients.  Insert them into the shelter's clients hash
$shelter.clients['Bob'] = Client.new('Bob', 22, 'male', 0)
$shelter.clients['Sue'] = Client.new('Sue', 31, 'female', 2)

# Instantiate animals.  Insert them into the shelter's animals hash
$shelter.animals['Spot'] = Animal.new('Spot', 3, 'male', 'Dog')
$shelter.animals['Spot'].toys << 'Bone'
$shelter.animals['Lassy'] = Animal.new('Lassy', 2, 'female', 'Dog')
$shelter.animals['Lassy'].toys << 'Frisbee'
$shelter.animals['Molly'] = Animal.new('Molly', 5, 'female', 'Cat')
$shelter.animals['Molly'].toys << 'Rope'
$shelter.animals['Fido'] = Animal.new('Fido', 8, 'male', 'Dog')
$shelter.animals['Fido'].toys << 'Chew Toy'
$shelter.animals['Sport'] = Animal.new('Sport', 1, 'male', 'Dog')
$shelter.animals['Sport'].toys << 'Treats'