require 'rspec'
require_relative './app'

describe 'App' do
  
  it 'provee la temperatura' do
    app = App.new('http://localhost:8080')
    temperatura = app.get_temperatura
    expect(temperatura).to eq 10
  end

end
