require_relative '../lib/jean_michel_trader'

# faire toutes les combinaisons de soustractions possibles / selectionner la plus grande qui respecte jour achat avant jour vente / sortir les jours
describe 'the day_trader method' do
    it 'takes an array of prices and returns the best days to buy and sell' do
        expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq("Holla Lehman Brother's! Vous avez intéret à acheter le jour 2 et à vendre le jour 5!")
        expect(day_trader([29, 3, 1, 9, 6, 8, 6, 1, 2])).to eq("Holla Lehman Brother's! Vous avez intéret à acheter le jour 3 et à vendre le jour 4!")
        expect(day_trader([2, 3, 6, 9, 15, 8, 28, 1, 10])).to eq("Holla Lehman Brother's! Vous avez intéret à acheter le jour 1 et à vendre le jour 7!")     
    end
end
        