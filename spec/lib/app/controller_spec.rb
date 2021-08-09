# frozen_string_literal: true

require_relative '../../../lib/app/controller'

RSpec.describe App::Controller do
  subject { described_class.new(monads: monads) }

  context 'return params' do
    let(:params) { 'params_data' }
    let(:monads) { ->(*) { Success(['success', params]) } }

    it { expect(subject.show).to eq(params) }
  end

  context 'error' do
    let(:monads) { ->(*) { Failure(:invalid_data) } }

    it { expect(subject.show).to eq('error') }
  end
end
