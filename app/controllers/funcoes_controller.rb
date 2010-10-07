require 'brazilian-rails'
class FuncoesController < ApplicationController
   def busca_por_cep
  render :json => BuscaEndereco.por_cep(params[:cep])
 rescue RuntimeError
     render :json => ["", "cep nao encontrado", "", "", ""].to_json
 end

end
