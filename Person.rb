class Person
    attr_accessor :firstName, :lastName, :job, :children, :pets, :totalAssetWorth, :totalDebt

    def initialize(hash)
            self.firstName = hash[:firstName]
            self.lastName = hash[:lastName]
            self.job = hash[:job]
            self.totalAssetWorth = hash[:totalAssetWorth]
            self.totalDebt = hash[:totalDebt]
            self.children = hash[:children]
            self.pets = hash[:pets]
    end

   

    def networth
      # '%.2f' % (totalAssetWorth.to_f - totalDebt.to_f)
      sprintf("%.2f",(totalAssetWorth.to_f - totalDebt.to_f))
    end
        
    def b_bioreader
      puts "#{firstName} #{lastName} is a #{job} with a net worth of $#{networth}. #{firstName} has #{children.length} kids named #{children[0]} and #{children[1]}. #{firstName} also has a #{pets.keys[0]} named #{pets.values[0]} and a #{pets.keys[1]} named #{pets.values[1]}." 
    end

    def j_bioreader
      puts "#{firstName} #{lastName} is a #{job} with a net worth of $#{networth}. #{firstName} has #{children.length} kids. #{firstName} also has a #{pets.keys[0]} named #{pets.values[0]}." 
    end

    def n_bioreader
      puts "#{firstName} #{lastName} is a #{job} with a net worth of $#{networth}. #{firstName} has #{children.length} kid named #{children[0]}." 
    end

end


        
brenda = Person.new(firstName: 'Brenda', lastName: 'Park', job: 'software engineer', totalAssetWorth: '2000.00', totalDebt:'1500.00', children: ['Sally', 'Jane'], pets: {dog: 'Fido', hamster: 'Ziggy'})
john = Person.new(firstName: 'John', lastName: 'Miller', job: 'carpenter', totalAssetWorth: '3000.00', totalDebt:'4500.00', children: [], pets: {cat: 'Garfield'})
natasha = Person.new(firstName: 'Natasha', lastName: 'Smirnov', job: 'business analyst', totalAssetWorth: '41231.53', totalDebt:'1200.20', children: ['Madison'])


brenda.b_bioreader 
john.j_bioreader
natasha.n_bioreader