module PacientesHelper
  
 def exibir_ultima_consulta(paciente)
    if paciente.consultas.empty?
    "Nunca foi consultado"
  else
   consulta = paciente.consultas.find(:last)
   consulta.data

 end
end
end
