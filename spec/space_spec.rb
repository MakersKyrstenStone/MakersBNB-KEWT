require 'space'

describe Space do

  describe '.all' do
    it 'returns a list of spaces' do
      
      spaces = Space.all

      expect(spaces).to include "Beautiful Country Estate"

    end
  end

end
