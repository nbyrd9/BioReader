require "./Person"

describe Person do 
    describe 'firstName' do
        it 'returns first part of the name' do
            person = Person.new(firstName: 'Brenda', lastName: 'Park')
            expect(person.firstName).to eq('Brenda')

            person = Person.new(firstName: 'John', lastName: 'Miller')
            expect(person.firstName).to eq('John')

            person = Person.new(firstName: 'Natasha', lastName: 'Smirnov')
            expect(person.firstName).to eq('Natasha')
        end
    end

    describe 'networth' do 
        it 'returns the difference between totalAssetWorth and totalDebt' do
            person = Person.new(totalAssetWorth: '2000.00', totalDebt: '1500.00')
            expect(person.networth).to eq("%.2f" % 500)
        end
    end
end