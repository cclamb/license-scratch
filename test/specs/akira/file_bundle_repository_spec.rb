require 'rspec'

require_relative '../../../lib/akira/file_bundle_repository'

module Akira

  describe FileBundleRepository do
  
    describe 'when creating it' do
      it 'should be creatable with a directory location'
      it 'should be creatable without a directory location'
    end

    describe 'when loading bundles it' do
      it 'should load R2 bundles'
      it 'should load C2 bundles'
      it 'should load RC bundles'
    end
    
    describe 'when adding bundles to the repo it' do
      it 'should accept R2 bundles'
      it 'should accept C2 bundles'
      it 'should accept RC bundles'
    end

    describe 'when finding bundles it' do
      it 'should find bundles by name'
    end

  end

end
