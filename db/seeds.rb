# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Actividad.delete_all
Actividad.create([
	{
		nombre: 'Actividad 1', 
		responsable: 'Juan Actividad1', 
		avance: rand(0..100),
		fecha_inicio: DateTime.strptime("01/#{DateTime.now.month}/2012", '%d/%m/%Y'),
		fecha_termino: DateTime.strptime("01/#{DateTime.now.next_month.month}/2012", '%d/%m/%Y')
	},
	{
		nombre: 'Actividad 2', 
		responsable: 'Juan Actividad2', 
		avance: rand(0..100),
		fecha_inicio: DateTime.strptime("01/#{DateTime.now.month}/2012", '%d/%m/%Y'),
		fecha_termino: DateTime.strptime("01/#{DateTime.now.next_month.month}/2012", '%d/%m/%Y')
	},
	{
		nombre: 'Actividad 3', 
		responsable: 'Juan Actividad3', 
		avance: rand(0..100),
		fecha_inicio: DateTime.strptime("15/#{DateTime.now.month}/2012", '%d/%m/%Y'),
		fecha_termino: DateTime.strptime("01/#{DateTime.now.next_month.month}/2012", '%d/%m/%Y')
	},
	{
		nombre: 'Actividad 4', 
		responsable: 'Juan Actividad4', 
		avance: rand(0..10),
		fecha_inicio: DateTime.strptime("01/#{DateTime.now.next_month.month}/2012", '%d/%m/%Y'),
		fecha_termino: DateTime.strptime("01/#{DateTime.now.next_month.next_month.month}/2012", '%d/%m/%Y')
	}	
])

Area.delete_all
areas = Area.create([
	{
		nombre: 'Mina',
		compromiso_reduccion: rand(100..200),
		compromiso_iniciativas: rand(20..35)
	},
	{
		nombre: 'Planta',
		compromiso_reduccion: rand(100..200),
		compromiso_iniciativas: rand(20..35)
	},
])

SupArea.delete_all
sup_areas = SupArea.create([
	{
		nombre: 'DRT'	
	}
])

sup_area = SupArea.first
RelacionSupAreaArea.delete_all
relacion_sup_area_areas = RelacionSupAreaArea.create(
	Area.all.map do |area|
		{
			area_id: area.id,
			sup_area_id: sup_area.id
		}
	end
)

Empresa.delete_all
empresas = Empresa.create([
	{
		nombre: 'Siemens',
		responsable: 'Pedro Siemens'
	},
	{
		nombre: 'Finning',
		responsable: 'Pedro Finning'
	},
	{
		nombre: 'SK',
		responsable: 'Pedro SK'
	},
	{
		nombre: 'TTF',
		responsable: 'Pedro TTF'
	}
])

Contrato.delete_all
contratos = Contrato.create([
	(0..9).map do |x|
		{
			empresa_id: Empresa.order("RANDOM()").first.id,
			area_id: Area.order("RANDOM()").first.id
		}
	end
])

Dotacion.delete_all
Dotacion.create([
	(Contrato.first.id..Contrato.last.id).map do |x|
		{
			contrato_id: x,
			fecha: DateTime.strptime("01/01/2012", '%d/%m/%Y'),
			empleados: rand(100..200),
			recategorizacion: 0,
			gestion_dotacional: 0,
			nuevos_ingresos_egresos: 0
		}
	end
])
dotaciones = Dotacion.all
dotaciones2 = (0...dotaciones.count).map do |x| 
	dotacion = dotaciones[x]
	{
		contrato_id: dotacion.contrato_id,
		fecha: DateTime.strptime("01/#{rand(2..DateTime.now.month)}/2012",'%d/%m/%Y'),
		recategorizacion: -rand(0..5),
		gestion_dotacional: -rand(0..5),
		nuevos_ingresos_egresos: -rand(0..5)
	}
end

dotaciones2 = dotaciones2.map do |dotacion|
	empleados = Dotacion.find_by_contrato_id(dotacion[:contrato_id]).empleados + dotacion[:recategorizacion] + dotacion[:gestion_dotacional] + dotacion[:nuevos_ingresos_egresos]
	dotacion.merge({empleados: empleados})
end
Dotacion.create(dotaciones2)

Iniciativa.delete_all
Iniciativa.create([
	(Contrato.first.id..Contrato.last.id).map do |x|
		{
			contrato_id: x,
			fecha: DateTime.strptime("01/01/2012", '%d/%m/%Y'),
			compromiso: rand(5..10)
		}
	end
])
Iniciativa.create([
	(Contrato.first.id..Contrato.last.id).map do |x|
		{
			contrato_id: x,
			fecha: DateTime.strptime("01/01/2012", '%d/%m/%Y'),
			compromiso: rand(5..10)
		}
	end
])

Iniciativa.all.each do |iniciativa|
	avance1 = rand(1..iniciativa.compromiso/2)
	fecha = []
	fecha[0] = DateTime.strptime("01/#{rand(2..6)}/2012", '%d/%m/%Y')
	avance2 = avance1 + rand(1..iniciativa.compromiso/2)
	fecha[1] =  fecha[0].next_month
	[avance1, avance2].each_with_index do |avance, index| 
		AvanceIniciativa.create({
			iniciativa_id: iniciativa.id,
			fecha: fecha[index],
			valor: avance
		})
	end
end

Riesgo.delete_all
Riesgo.create([
	(1..5).map do |v|
		{
			nemo: "R%03d" % v,
			probabilidad: rand(5..95),
			impacto: rand(5..95),
			descripcion: 'descripcion R%03d' % v
		}
	end
])

PlanContingencia.delete_all
Riesgo.all.each do |riesgo|
	PlanContingencia.create(
		(1..rand(2..4)).map do |x|
			{
				riesgo_id: riesgo.id,
				descripcion: 'descripcion plan contingencia %d' % x
			}
		end
	)
end

Reporte.delete_all
Reporte.create([
	{
		file_name: 'reporte_mensual_01-06-2012',
		tipo: false,
		fecha: DateTime.strptime("01/06/2012", '%d/%m/%Y'),
		fecha_actualizacion: DateTime.strptime("01/06/2012", '%d/%m/%Y'),
		url: 'http://protected-ocean-7054.herokuapp.com/reportes/1/download_pdf'
	},
	{
		file_name: 'reporte_mensual_01-07-2012',
		tipo: false,
		fecha: DateTime.strptime("01/07/2012", '%d/%m/%Y'),
		fecha_actualizacion: DateTime.strptime("01/07/2012", '%d/%m/%Y'),
		url: 'http://protected-ocean-7054.herokuapp.com/reportes/2/download_pdf'
	}
])

User.delete_all
User.create([
	{
		email: 'testuser',
		password: '1234',
		password_confirmation: '1234'
	}, 
	{
		email: 'juanpablo@axxonmining.com',
		password: 'DRT123',
		password_confirmation: 'DRT123'
	}
])
User.all.each {|user| user.ensure_authentication_token!}

Session.delete_all
Session.create([
	{
		user_id: User.first.id,
		token: User.first.authentication_token
	},
	{
		user_id: User.last.id,
		token: User.last.authentication_token
	}
])