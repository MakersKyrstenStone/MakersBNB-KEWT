require 'space'

describe Space do

  describe '.all' do
    it 'returns a list of spaces' do
      
      spaces = Space.all

      expect(spaces).to include "Beautiful Country Estate"
      expect(spaces).to include "Desert Island"
      expect(spaces).to include "standard flat"
      expect(spaces).to include "Palace"

    end
  end

end
