class ContatosController < ApplicationController
  def new 
  end
  def create
    @contato = Contato.new(params.require(:contato).permit(:nome, :numero))
    @contato.save #salva no banco a tarefa que criamos
    redirect_to root_path
  end
  def edit
    # Novamente utilizamos o params, dando uma olhada no routes
    # vemos o nome do parâmetro na rota de edit.
   @contato = Contato.find(params[:id])
  end
  def update
    @contato = Contato.find(params[:id])
    @contato.update(params.require(:contato).permit(:nome, :numero))
    redirect_to root_path
  end
  def destroy
   contato = Contato.find(params[:id]) # não precisamos de @ pois não temos view que usará esse objeto
   contato.destroy #destrói a tarefa encontrada
   redirect_to root_path
  end
end
