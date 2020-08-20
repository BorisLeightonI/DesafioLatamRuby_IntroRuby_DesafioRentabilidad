precio_unitario = ARGV[0].to_i
num_usuarios = ARGV[1].to_i
gastos_anuales = ARGV[2].to_i
#Utilidad: precio*usuarios-gastos
#impuestos: 35%Utilidad Sólo si Utilidad>0

utilidad = precio_unitario*num_usuarios-gastos_anuales
if utilidad >= 0
    impuestos = 0.35*utilidad
    utilidad -= impuestos
end
puts "Utilidad anual: #{utilidad} sobre #{impuestos} en impuestos"