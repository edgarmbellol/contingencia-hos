select Pacientes.Documento,Pacientes.Nombre1,Pacientes.Nombre2,Pacientes.Apellido1,Pacientes.Apellido2,Pacientes.TipoDoc,
	TipoUsuario.Descripcion as 'Tipo Usuario',Pacientes.Sexo,Pacientes.FNac,Paises.NombrePais,Departamentos.Nombre,
	Ciudades.DesCiudad as 'Municipio',Pacientes.Direccion,Pacientes.GrSanguineo,Pacientes.FactorRH,Pacientes.Tel as 'Telefono',
	Pacientes.Telefono2,TipoGrupoEtnico.DesGrupoEtnico as 'Grupo etnico',TipoDiscapacidad.DesTipoDiscapacidad
from Pacientes
join TipoUsuario on Pacientes.TU = TipoUsuario.TipoUsuario
join Paises on Pacientes.CPais = Paises.CodPais
join Departamentos on Pacientes.CDepto = Departamentos.CodDepar
join Ciudades on Pacientes.CCiudad = Ciudades.CodCiudad
join TipoGrupoEtnico on Pacientes.CGrupoEtnico = TipoGrupoEtnico.CodGrupoEtnico
join Ocupaciones on Pacientes.CodOcup = Ocupaciones.CodOcup
join TipoDiscapacidad on Pacientes.CTipoDiscapacidad = TipoDiscapacidad.CodTipodiscapacidad