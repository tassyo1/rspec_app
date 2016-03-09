require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validade de um Usuário' do

    it 'Usuário válido?' do
      user = User.new
      user.name = "Tássyo"
      user.email = "tassyo@example.com"

      expect(user.valid?).to be_truthy
    end
    
    it 'Email obrigatório' do
      user = User.new
      user.name = "Tássyo"
      user.email = "     "
      expect(user.valid?).to be_falsey 
    end

  end
    context 'Títulos válidos' do
      it 'Título completo' do
      user = User.new
      user.name = "Tássyo"
      user.email = "tassyo@example.com"

      expect(user.titulo_completo).to eql("Sr. Tássyo - Email: tassyo@example.com")
      end
    end
end
