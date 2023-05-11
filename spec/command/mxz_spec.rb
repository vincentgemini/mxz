require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Mxz do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ mxz }).should.be.instance_of Command::Mxz
      end
    end
  end
end

