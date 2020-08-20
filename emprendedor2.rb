precio_unitario = ARGV[0].to_i
num_usuarios = ARGV[1].to_i
num_usuarios_premium = ARGV[2].to_i #Pagan el doble
num_usuarios_gratis = ARGV[3].to_i #Pagan 0
gastos_anuales = ARGV[4].to_i
#Utilidad: precio*usuarios-gastos
#impuestos: 35%Utilidad Sólo si Utilidad>0

utilidad = precio_unitario*(num_usuarios+2*num_usuarios_premium)-gastos_anuales
if utilidad >= 0
    impuestos = 0.35*utilidad
    utilidad -= impuestos
end
puts "Utilidad anual: #{utilidad} sobre #{impuestos} en impuestos"