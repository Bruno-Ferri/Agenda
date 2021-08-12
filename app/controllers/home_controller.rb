class HomeController < ApplicationController
  def welcome
     @contatos = Contato.all
    # @contatos << Contato.new(nome: 'Contato1', numero: '(11)11111-1111')
    # @contatos << Contato.new(nome: 'Contato2', numero: '(11)22222-2222')
  end
end
