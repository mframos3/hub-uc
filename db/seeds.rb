# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Creacion de Usuarios

# Administrador
admin = User.create(email: 'admin@admin.cl', password: '123456', name: 'Administrador',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
admin.add_role('admin')

# Moderadores
moderator_user1 = User.create(email: 'benjaminfarias@gmail.com', password: '123456', name: 'Benjamín Farías',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
moderator_user2 = User.create(email: 'valentinarojas@gmail.com', password: '123456', name: 'Valentina Rojas',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
moderator_user3 = User.create(email: 'sebastianurrutia@gmail.com', password: '123456', name: 'Sebastián Urrutia',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
moderator_user4 = User.create(email: 'juanaguillon@gmail.com', password: '123456', name: 'Juan Aguillon',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
moderator_user5 = User.create(email: 'hernanvaldivieso@gmail.com', password: '123456', name: 'Hernán Valdivieso',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))

moderator_user1.add_role('moderator')
moderator_user2.add_role('moderator')
moderator_user3.add_role('moderator')
moderator_user4.add_role('moderator')
moderator_user5.add_role('moderator')

# Usuarios Comunes
normal_user1 = User.create(email: 'juanromero@gmail.com', password: '123456', name: 'Juan Romero',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user2 = User.create(email: 'matiasramos@gmail.com', password: '123456', name: 'Matías Ramos',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user3 = User.create(email: 'bastiangalvez@gmail.com', password: '123456', name: 'Bastián Gálvez',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user4 = User.create(email: 'catalinaalvarez@gmail.com', password: '123456', name: 'Catalina Álvarez',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user5 = User.create(email: 'sebastianlopez@gmail.com', password: '123456', name: 'Sebastián López',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user6 = User.create(email: 'bastianbaez@gmail.com', password: '123456', name: 'Bastián Báez',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user7 = User.create(email: 'danielaalvarez@gmail.com', password: '123456', name: 'Daniela Álvarez',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user8 = User.create(email: 'belenramirez@gmail.com', password: '123456', name: 'Belén Ramírez',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user9 = User.create(email: 'rodrigoacuna@gmail.com', password: '123456', name: 'Rodrigo Acuña',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user10 = User.create(email: 'lesliesanchez@gmail.com', password: '123456', name: 'Leslie Sánchez',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user11 = User.create(email: 'hectorllanquileo@gmail.com', password: '123456', name: 'Héctor Llanquileo',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user12 = User.create(email: 'eduardoduran@gmail.com', password: '123456', name: 'Eduardo Durán',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user13 = User.create(email: 'alexacarrasco@gmail.com', password: '123456', name: 'Alexa Carrasco',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user14 = User.create(email: 'josesaavedra@gmail.com', password: '123456', name: 'José Saavedra',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
normal_user15 = User.create(email: 'valentinareyes@gmail.com', password: '123456', name: 'Valentina Reyes',
 last_seen_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))

# Creacion de Cursos
course1 = Course.create(name: 'Biología', initials: 'BIO143M',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course2 = Course.create(name: 'Cálculo I', initials: 'MAT1610',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course3 = Course.create(name: 'Cálculo II', initials: 'MAT1620',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course4 = Course.create(name: 'Cálculo III', initials: 'MAT1630',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course5 = Course.create(name: 'Física', initials: 'FIS1513',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course6 = Course.create(name: 'Física Avanzada', initials: 'FIS2233',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course7 = Course.create(name: 'Lengua Hispana', initials: 'LET1113',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course8 = Course.create(name: 'Lengua Catalana', initials: 'LET1114',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course9 = Course.create(name: 'Enfermería I', initials: 'MED144',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course10 = Course.create(name: 'Enfermería II', initials: 'MED244',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course11 = Course.create(name: 'Introducción a la Programación', initials: 'IIC1103',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course12 = Course.create(name: 'Programación Avanzada', initials: 'IIC2233',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course13 = Course.create(name: 'Estructuras de Datos y Algoritmos', initials: 'IIC2133',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course14 = Course.create(name: 'Matemáticas Discretas', initials: 'IIC1253',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course15 = Course.create(name: 'Ingeniería de Software', initials: 'IIC2143',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course16 = Course.create(name: 'Computación, Ciencia y Tecnología del Mundo Digital', initials: 'IIC1005',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course17 = Course.create(name: 'Bases de Datos', initials: 'IIC2413',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course18 = Course.create(name: 'Sistemas de Información', initials: 'IIC2713',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course19 = Course.create(name: 'Sistemas Operativos y Redes', initials: 'IIC2333',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))
course20 = Course.create(name: 'Inteligencia Artificial', initials: 'IIC2613',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"))

# Se inscriben usuarios a cursos

# Los moderadores se inscriben a su cursos
union1 = UserCourse.create(user_id: moderator_user1.id, course_id: course12.id, role: "Alumno")
union2 = UserCourse.create(user_id: moderator_user2.id, course_id: course12.id, role: "Profesor")
union3 = UserCourse.create(user_id: moderator_user2.id, course_id: course15.id, role: "Profesor")
union4 = UserCourse.create(user_id: moderator_user2.id, course_id: course11.id, role: "Alumno")
union5 = UserCourse.create(user_id: moderator_user2.id, course_id: course17.id, role: "Alumno")
union6 = UserCourse.create(user_id: moderator_user4.id, course_id: course12.id, role: "Profesor")
union7 = UserCourse.create(user_id: moderator_user4.id, course_id: course15.id, role: "Profesor")
union8 = UserCourse.create(user_id: moderator_user4.id, course_id: course13.id, role: "Profesor")
union9 = UserCourse.create(user_id: moderator_user4.id, course_id: course14.id, role: "Profesor")
union10 = UserCourse.create(user_id: moderator_user5.id, course_id: course16.id, role: "Alumno")
union11 = UserCourse.create(user_id: moderator_user5.id, course_id: course18.id, role: "Alumno")
union12 = UserCourse.create(user_id: moderator_user5.id, course_id: course19.id, role: "Alumno")
union13 = UserCourse.create(user_id: moderator_user5.id, course_id: course20.id, role: "Alumno")
union14 = UserCourse.create(user_id: moderator_user3.id, course_id: course1.id, role: "Profesor")
union15 = UserCourse.create(user_id: moderator_user3.id, course_id: course2.id, role: "Profesor")
union16 = UserCourse.create(user_id: moderator_user3.id, course_id: course3.id, role: "Profesor")
union17 = UserCourse.create(user_id: moderator_user3.id, course_id: course4.id, role: "Profesor")
union18 = UserCourse.create(user_id: moderator_user3.id, course_id: course5.id, role: "Profesor")
union19 = UserCourse.create(user_id: moderator_user3.id, course_id: course6.id, role: "Alumno")
union20 = UserCourse.create(user_id: moderator_user3.id, course_id: course7.id, role: "Alumno")
union21 = UserCourse.create(user_id: moderator_user3.id, course_id: course8.id, role: "Alumno")
union22 = UserCourse.create(user_id: moderator_user3.id, course_id: course9.id, role: "Alumno")
union23 = UserCourse.create(user_id: moderator_user3.id, course_id: course10.id, role: "Alumno")

# Los usuarios comunes
union24 = UserCourse.create(user_id: normal_user3.id, course_id: course1.id, role: "Alumno")
union25 = UserCourse.create(user_id: normal_user3.id, course_id: course2.id, role: "Alumno")
union26 = UserCourse.create(user_id: normal_user3.id, course_id: course3.id, role: "Alumno")
union27 = UserCourse.create(user_id: normal_user3.id, course_id: course4.id, role: "Alumno")
union28 = UserCourse.create(user_id: normal_user3.id, course_id: course5.id, role: "Alumno")
union29 = UserCourse.create(user_id: normal_user3.id, course_id: course6.id, role: "Alumno")
union30 = UserCourse.create(user_id: normal_user3.id, course_id: course7.id, role: "Alumno")
union31 = UserCourse.create(user_id: normal_user3.id, course_id: course8.id, role: "Alumno")
union32 = UserCourse.create(user_id: normal_user3.id, course_id: course8.id, role: "Alumno")
union33 = UserCourse.create(user_id: normal_user3.id, course_id: course10.id, role: "Alumno")

union34 = UserCourse.create(user_id: normal_user4.id, course_id: course1.id, role: "Alumno")
union35 = UserCourse.create(user_id: normal_user4.id, course_id: course2.id, role: "Alumno")
union36 = UserCourse.create(user_id: normal_user4.id, course_id: course3.id, role: "Alumno")
union37 = UserCourse.create(user_id: normal_user4.id, course_id: course4.id, role: "Alumno")
union38 = UserCourse.create(user_id: normal_user4.id, course_id: course5.id, role: "Alumno")
union39 = UserCourse.create(user_id: normal_user4.id, course_id: course6.id, role: "Alumno")
union40 = UserCourse.create(user_id: normal_user4.id, course_id: course7.id, role: "Alumno")
union41 = UserCourse.create(user_id: normal_user4.id, course_id: course8.id, role: "Alumno")
union42 = UserCourse.create(user_id: normal_user4.id, course_id: course8.id, role: "Alumno")
union43 = UserCourse.create(user_id: normal_user4.id, course_id: course10.id, role: "Alumno")

union54 = UserCourse.create(user_id: normal_user5.id, course_id: course1.id, role: "Alumno")
union55 = UserCourse.create(user_id: normal_user5.id, course_id: course2.id, role: "Alumno")
union56 = UserCourse.create(user_id: normal_user5.id, course_id: course3.id, role: "Alumno")
union57 = UserCourse.create(user_id: normal_user5.id, course_id: course4.id, role: "Alumno")
union58 = UserCourse.create(user_id: normal_user5.id, course_id: course5.id, role: "Alumno")
union59 = UserCourse.create(user_id: normal_user5.id, course_id: course6.id, role: "Alumno")
union60 = UserCourse.create(user_id: normal_user5.id, course_id: course7.id, role: "Alumno")
union61 = UserCourse.create(user_id: normal_user5.id, course_id: course8.id, role: "Alumno")
union62 = UserCourse.create(user_id: normal_user5.id, course_id: course8.id, role: "Alumno")
union63 = UserCourse.create(user_id: normal_user5.id, course_id: course10.id, role: "Alumno")

union64 = UserCourse.create(user_id: normal_user6.id, course_id: course1.id, role: "Alumno")
union65 = UserCourse.create(user_id: normal_user6.id, course_id: course2.id, role: "Alumno")
union66 = UserCourse.create(user_id: normal_user6.id, course_id: course3.id, role: "Alumno")
union67 = UserCourse.create(user_id: normal_user6.id, course_id: course4.id, role: "Alumno")
union68 = UserCourse.create(user_id: normal_user6.id, course_id: course5.id, role: "Alumno")
union69 = UserCourse.create(user_id: normal_user6.id, course_id: course6.id, role: "Alumno")
union70 = UserCourse.create(user_id: normal_user6.id, course_id: course7.id, role: "Alumno")
union71 = UserCourse.create(user_id: normal_user6.id, course_id: course8.id, role: "Alumno")
union72 = UserCourse.create(user_id: normal_user6.id, course_id: course8.id, role: "Alumno")
union73 = UserCourse.create(user_id: normal_user6.id, course_id: course10.id, role: "Alumno")

union74 = UserCourse.create(user_id: normal_user7.id, course_id: course1.id, role: "Alumno")
union75 = UserCourse.create(user_id: normal_user7.id, course_id: course2.id, role: "Alumno")
union76 = UserCourse.create(user_id: normal_user7.id, course_id: course3.id, role: "Alumno")
union77 = UserCourse.create(user_id: normal_user7.id, course_id: course4.id, role: "Alumno")
union78 = UserCourse.create(user_id: normal_user7.id, course_id: course5.id, role: "Alumno")
union79 = UserCourse.create(user_id: normal_user7.id, course_id: course6.id, role: "Alumno")
union80 = UserCourse.create(user_id: normal_user7.id, course_id: course7.id, role: "Alumno")
union81 = UserCourse.create(user_id: normal_user7.id, course_id: course8.id, role: "Alumno")
union82 = UserCourse.create(user_id: normal_user7.id, course_id: course8.id, role: "Alumno")
union83 = UserCourse.create(user_id: normal_user7.id, course_id: course10.id, role: "Alumno")

union84 = UserCourse.create(user_id: normal_user8.id, course_id: course1.id, role: "Alumno")
union85 = UserCourse.create(user_id: normal_user8.id, course_id: course2.id, role: "Alumno")
union86 = UserCourse.create(user_id: normal_user8.id, course_id: course3.id, role: "Alumno")
union87 = UserCourse.create(user_id: normal_user8.id, course_id: course4.id, role: "Alumno")
union88 = UserCourse.create(user_id: normal_user8.id, course_id: course5.id, role: "Alumno")
union89 = UserCourse.create(user_id: normal_user8.id, course_id: course6.id, role: "Alumno")
union90 = UserCourse.create(user_id: normal_user8.id, course_id: course7.id, role: "Alumno")
union91 = UserCourse.create(user_id: normal_user8.id, course_id: course8.id, role: "Alumno")
union92 = UserCourse.create(user_id: normal_user8.id, course_id: course8.id, role: "Alumno")
union93 = UserCourse.create(user_id: normal_user8.id, course_id: course10.id, role: "Alumno")

union94 = UserCourse.create(user_id: normal_user1.id, course_id: course11.id, role: "Alumno")
union95 = UserCourse.create(user_id: normal_user1.id, course_id: course12.id, role: "Alumno")
union96 = UserCourse.create(user_id: normal_user1.id, course_id: course2.id, role: "Alumno")
union97 = UserCourse.create(user_id: normal_user1.id, course_id: course14.id, role: "Alumno")
union98 = UserCourse.create(user_id: normal_user1.id, course_id: course15.id, role: "Alumno")
union99 = UserCourse.create(user_id: normal_user1.id, course_id: course17.id, role: "Alumno")
union100 = UserCourse.create(user_id: normal_user1.id, course_id: course18.id, role: "Alumno")
union101 = UserCourse.create(user_id: normal_user1.id, course_id: course5.id, role: "Alumno")
union102 = UserCourse.create(user_id: normal_user1.id, course_id: course16.id, role: "Alumno")
union103 = UserCourse.create(user_id: normal_user1.id, course_id: course19.id, role: "Alumno")

union104 = UserCourse.create(user_id: normal_user2.id, course_id: course11.id, role: "Alumno")
union105 = UserCourse.create(user_id: normal_user2.id, course_id: course12.id, role: "Alumno")
union106 = UserCourse.create(user_id: normal_user2.id, course_id: course2.id, role: "Alumno")
union107 = UserCourse.create(user_id: normal_user2.id, course_id: course14.id, role: "Alumno")
union108 = UserCourse.create(user_id: normal_user2.id, course_id: course15.id, role: "Alumno")
union109 = UserCourse.create(user_id: normal_user2.id, course_id: course17.id, role: "Alumno")
union110 = UserCourse.create(user_id: normal_user2.id, course_id: course18.id, role: "Alumno")
union111 = UserCourse.create(user_id: normal_user2.id, course_id: course5.id, role: "Alumno")
union112 = UserCourse.create(user_id: normal_user2.id, course_id: course16.id, role: "Alumno")
union113 = UserCourse.create(user_id: normal_user2.id, course_id: course19.id, role: "Alumno")

union114 = UserCourse.create(user_id: normal_user9.id, course_id: course11.id, role: "Alumno")
union115 = UserCourse.create(user_id: normal_user9.id, course_id: course12.id, role: "Alumno")
union116 = UserCourse.create(user_id: normal_user9.id, course_id: course13.id, role: "Alumno")
union117 = UserCourse.create(user_id: normal_user9.id, course_id: course14.id, role: "Alumno")
union118 = UserCourse.create(user_id: normal_user9.id, course_id: course15.id, role: "Alumno")
union119 = UserCourse.create(user_id: normal_user9.id, course_id: course16.id, role: "Alumno")
union120 = UserCourse.create(user_id: normal_user9.id, course_id: course17.id, role: "Alumno")
union121 = UserCourse.create(user_id: normal_user9.id, course_id: course18.id, role: "Alumno")
union122 = UserCourse.create(user_id: normal_user9.id, course_id: course19.id, role: "Alumno")
union123 = UserCourse.create(user_id: normal_user9.id, course_id: course20.id, role: "Alumno")

union124 = UserCourse.create(user_id: normal_user10.id, course_id: course11.id, role: "Alumno")
union125 = UserCourse.create(user_id: normal_user10.id, course_id: course12.id, role: "Alumno")
union126 = UserCourse.create(user_id: normal_user10.id, course_id: course13.id, role: "Profesor")
union127 = UserCourse.create(user_id: normal_user10.id, course_id: course14.id, role: "Alumno")
union128 = UserCourse.create(user_id: normal_user10.id, course_id: course15.id, role: "Alumno")
union129 = UserCourse.create(user_id: normal_user10.id, course_id: course16.id, role: "Alumno")
union130 = UserCourse.create(user_id: normal_user10.id, course_id: course17.id, role: "Alumno")
union131 = UserCourse.create(user_id: normal_user10.id, course_id: course18.id, role: "Alumno")
union132 = UserCourse.create(user_id: normal_user10.id, course_id: course19.id, role: "Profesor")
union133 = UserCourse.create(user_id: normal_user10.id, course_id: course20.id, role: "Alumno")

union134 = UserCourse.create(user_id: normal_user11.id, course_id: course11.id, role: "Profesor")
union135 = UserCourse.create(user_id: normal_user11.id, course_id: course12.id, role: "Profesor")
union136 = UserCourse.create(user_id: normal_user11.id, course_id: course13.id, role: "Alumno")
union137 = UserCourse.create(user_id: normal_user11.id, course_id: course14.id, role: "Profesor")
union138 = UserCourse.create(user_id: normal_user11.id, course_id: course15.id, role: "Alumno")
union139 = UserCourse.create(user_id: normal_user11.id, course_id: course16.id, role: "Profesor")
union140 = UserCourse.create(user_id: normal_user11.id, course_id: course17.id, role: "Profesor")
union141 = UserCourse.create(user_id: normal_user11.id, course_id: course18.id, role: "Profesor")
union142 = UserCourse.create(user_id: normal_user11.id, course_id: course19.id, role: "Alumno")
union143 = UserCourse.create(user_id: normal_user11.id, course_id: course20.id, role: "Profesor")

union144 = UserCourse.create(user_id: normal_user12.id, course_id: course11.id, role: "Alumno")
union145 = UserCourse.create(user_id: normal_user12.id, course_id: course12.id, role: "Alumno")
union146 = UserCourse.create(user_id: normal_user12.id, course_id: course13.id, role: "Alumno")
union147 = UserCourse.create(user_id: normal_user12.id, course_id: course14.id, role: "Alumno")
union148 = UserCourse.create(user_id: normal_user12.id, course_id: course15.id, role: "Alumno")
union149 = UserCourse.create(user_id: normal_user12.id, course_id: course16.id, role: "Alumno")
union150 = UserCourse.create(user_id: normal_user12.id, course_id: course17.id, role: "Alumno")
union151 = UserCourse.create(user_id: normal_user12.id, course_id: course18.id, role: "Alumno")
union152 = UserCourse.create(user_id: normal_user12.id, course_id: course19.id, role: "Alumno")
union153 = UserCourse.create(user_id: normal_user12.id, course_id: course20.id, role: "Alumno")

union154 = UserCourse.create(user_id: normal_user13.id, course_id: course11.id, role: "Alumno")
union155 = UserCourse.create(user_id: normal_user13.id, course_id: course12.id, role: "Alumno")
union156 = UserCourse.create(user_id: normal_user13.id, course_id: course13.id, role: "Alumno")
union157 = UserCourse.create(user_id: normal_user13.id, course_id: course14.id, role: "Alumno")
union158 = UserCourse.create(user_id: normal_user13.id, course_id: course15.id, role: "Profesor")
union159 = UserCourse.create(user_id: normal_user13.id, course_id: course16.id, role: "Alumno")
union160 = UserCourse.create(user_id: normal_user13.id, course_id: course17.id, role: "Alumno")
union161 = UserCourse.create(user_id: normal_user13.id, course_id: course18.id, role: "Alumno")
union162 = UserCourse.create(user_id: normal_user13.id, course_id: course19.id, role: "Alumno")
union163 = UserCourse.create(user_id: normal_user13.id, course_id: course20.id, role: "Alumno")

union164 = UserCourse.create(user_id: normal_user14.id, course_id: course11.id, role: "Alumno")
union165 = UserCourse.create(user_id: normal_user14.id, course_id: course12.id, role: "Alumno")
union166 = UserCourse.create(user_id: normal_user14.id, course_id: course13.id, role: "Alumno")
union167 = UserCourse.create(user_id: normal_user14.id, course_id: course14.id, role: "Alumno")
union168 = UserCourse.create(user_id: normal_user14.id, course_id: course15.id, role: "Profesor")
union169 = UserCourse.create(user_id: normal_user14.id, course_id: course16.id, role: "Alumno")
union170 = UserCourse.create(user_id: normal_user14.id, course_id: course17.id, role: "Alumno")
union171 = UserCourse.create(user_id: normal_user14.id, course_id: course18.id, role: "Alumno")
union172 = UserCourse.create(user_id: normal_user14.id, course_id: course19.id, role: "Alumno")
union173 = UserCourse.create(user_id: normal_user14.id, course_id: course20.id, role: "Alumno")

union184 = UserCourse.create(user_id: normal_user15.id, course_id: course11.id, role: "Profesor")
union185 = UserCourse.create(user_id: normal_user15.id, course_id: course12.id, role: "Profesor")
union186 = UserCourse.create(user_id: normal_user15.id, course_id: course13.id, role: "Profesor")
union187 = UserCourse.create(user_id: normal_user15.id, course_id: course14.id, role: "Profesor")
union188 = UserCourse.create(user_id: normal_user15.id, course_id: course15.id, role: "Profesor")
union189 = UserCourse.create(user_id: normal_user15.id, course_id: course16.id, role: "Profesor")
union190 = UserCourse.create(user_id: normal_user15.id, course_id: course17.id, role: "Profesor")
union191 = UserCourse.create(user_id: normal_user15.id, course_id: course18.id, role: "Profesor")
union192 = UserCourse.create(user_id: normal_user15.id, course_id: course19.id, role: "Profesor")
union193 = UserCourse.create(user_id: normal_user15.id, course_id: course20.id, role: "Profesor")

# Moderadores de cada curso

# Ramos externos a computacion
new_mod_role1 = ModeratorRole.create(user_id: moderator_user3.id, course_id: course1.id)
new_mod_role2 = ModeratorRole.create(user_id: moderator_user3.id, course_id: course2.id)
new_mod_role3 = ModeratorRole.create(user_id: moderator_user3.id, course_id: course3.id)
new_mod_role4 = ModeratorRole.create(user_id: moderator_user3.id, course_id: course4.id)
new_mod_role5 = ModeratorRole.create(user_id: moderator_user3.id, course_id: course5.id)
new_mod_role6 = ModeratorRole.create(user_id: moderator_user3.id, course_id: course6.id)
new_mod_role7 = ModeratorRole.create(user_id: moderator_user3.id, course_id: course7.id)
new_mod_role8 = ModeratorRole.create(user_id: moderator_user3.id, course_id: course8.id)
new_mod_role9 = ModeratorRole.create(user_id: moderator_user3.id, course_id: course9.id)
new_mod_role10 = ModeratorRole.create(user_id: moderator_user3.id, course_id: course10.id)

# Ramos de computacion
new_mod_role11 = ModeratorRole.create(user_id: moderator_user1.id, course_id: course12.id)
new_mod_role12 = ModeratorRole.create(user_id: moderator_user2.id, course_id: course12.id)
new_mod_role13 = ModeratorRole.create(user_id: moderator_user2.id, course_id: course15.id)
new_mod_role14 = ModeratorRole.create(user_id: moderator_user2.id, course_id: course17.id)
new_mod_role15 = ModeratorRole.create(user_id: moderator_user2.id, course_id: course11.id)
new_mod_role16 = ModeratorRole.create(user_id: moderator_user4.id, course_id: course12.id)
new_mod_role17 = ModeratorRole.create(user_id: moderator_user4.id, course_id: course15.id)
new_mod_role18 = ModeratorRole.create(user_id: moderator_user4.id, course_id: course13.id)
new_mod_role19 = ModeratorRole.create(user_id: moderator_user4.id, course_id: course14.id)
new_mod_role20 = ModeratorRole.create(user_id: moderator_user5.id, course_id: course16.id)
new_mod_role21 = ModeratorRole.create(user_id: moderator_user5.id, course_id: course18.id)
new_mod_role22 = ModeratorRole.create(user_id: moderator_user5.id, course_id: course19.id)
new_mod_role23 = ModeratorRole.create(user_id: moderator_user5.id, course_id: course20.id)

# Creacion de Campus
campus1 = Location.create(name: 'San Joaquín', ubication: 'Av. Vicuña Mackenna 4860, Macul, Región Metropolitana')
campus2 = Location.create(name: 'Lo Contador', ubication: 'El Comendador 1916, Providencia, Región Metropolitana')
campus3 = Location.create(name: 'Oriente', ubication: 'Jaime Guzmán Errázuriz 3300, Providencia, Región Metropolitana')

# Creacion de salas
room1 = Room.create(name: 'Sala 1 Biblioteca UC', created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
 updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"), availability: 3.5, noise: 5.0, sockets: 2,
  location_id: 1, ubication: 'Biblioteca Central')
room2 = Room.create(name: 'Sala de estudio del Cai',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"), availability: 3.0, noise: 4.0, sockets: 4.5,
   location_id: 1, ubication: 'Centro de Alumnos de Ingeniería')
room3 = Room.create(name: 'Sala de reunión de Hall de alumnos',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"), availability: 3.9, noise: 4.8, sockets: 4.6,
   location_id: 1, ubication: 'Hall de alumnos')
room4 = Room.create(name: 'Sala 1 biblioteca', created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
 updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"), availability: 3.5, noise: 5.0, sockets: 2,
  location_id: 2, ubication: 'Biblioteca Central')
room5 = Room.create(name: 'Sala de música', created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
 updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"), availability: 3.0, noise: 4.0, sockets: 4.5,
  location_id: 2, ubication: 'Biblioteca Central')
room6 = Room.create(name: 'Sala 1', created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
 updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"), availability: 3.9, noise: 4.8, sockets: 4.6,
  location_id: 2, ubication: 'Biblioteca Central')
room7 = Room.create(name: 'Sala de estudio 1', created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
 updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"), availability: 3.5, noise: 5.0, sockets: 2,
  location_id: 3, ubication: 'Biblioteca Central')
room8 = Room.create(name: 'Sala de centro de alumnos',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"), availability: 3.0, noise: 4.0, sockets: 4.5,
   location_id: 3, ubication: 'Centro de alumnos ')
room9 = Room.create(name: 'Sala de reuniones', created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
 updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"), availability: 3.9, noise: 4.8, sockets: 4.6,
  location_id: 3, ubication: 'Centro de Alumnos de Ingeniería')

# Creacion de publicaciones

# En cursos normales
pub1 = Post.create(title: 'Duda de Límites',
 created_at: DateTime.strptime("05/21/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/22/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user1.id,
   content: 'De lo visto en clases no me quedó claro en que casos uso regla de L´Hopital, alguien puede ayudarme?
    Gracias de antemano', description: "Duda de L´Hopital", score: 3.2, course_id: 2)
pub2 = Post.create(title: 'Duda de Conceptos', created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
 updated_at: DateTime.strptime("06/18/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user2.id, content:
  'De lo visto en clases no me quedó clara la diferencia entre derivar e integrar, alguien puede ayudarme?
   Gracias de antemano', description: "Duda de concepto", score: 2.2, course_id: 2)
pub3 = Post.create(title: 'Que entra para el examen?',
 created_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"),
   updated_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user1.id, content:
    'Tengo una duda, el examen será examen examen o será más como I4?
     Gracias de antemano', description: "Duda de examen", score: 4.2, course_id: course2.id)
pub5 = Post.create(title: 'Que entra para el examen?',
      created_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"),
        updated_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user6.id, content:
         'Tengo una duda, el examen será examen examen o será más como I4?
          Gracias de antemano', description: "Duda de examen", score: 4.2, course_id: course1.id)
pub6 = Post.create(title: 'Que vieron hoy en clases?',
            created_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"),
              updated_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user3.id, content:
               'No pude asistir hoy a clases, alguien me puede decir que vieron?
                Gracias de antemano', description: "Duda", score: 4.2, course_id: course2.id)
pub7 = Post.create(title: 'Ayudantia extra',
              created_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"),
              updated_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user4.id, content:
                'Les quería preguntar qué opinan de pedir una ayudantía extra para el examen', 
                   description: "Duda", score: 4.2, course_id: course4.id)
pub8 = Post.create(title: 'No entendí',
          created_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"),
          updated_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user5.id, content:
          'La verdad es que hoy después de la clase salí sin entender nada y creo que muchos están en las mismas, 
          alguno que haya entendido puede explicar?', 
          description: "Ayuda", score: 4.2, course_id: course5.id)
pub9 = Post.create(title: 'Último dia de clases',
            created_at: DateTime.strptime("06/21/2019 11:52", "%m/%d/%Y %H:%M"),
            updated_at: DateTime.strptime("06/21/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user6.id, content:
            'Cuándo es la última clase?', 
            description: "Duda", score: 4.2, course_id: course6.id)
pub10 = Post.create(title: 'Último dia de clases',
            created_at: DateTime.strptime("06/21/2019 11:52", "%m/%d/%Y %H:%M"),
            updated_at: DateTime.strptime("06/21/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user7.id, content:
            'Cuándo es la última clase?', 
            description: "Duda", score: 4.2, course_id: course7.id)
pub11 = Post.create(title: 'Último dia de clases',
              created_at: DateTime.strptime("06/21/2019 11:52", "%m/%d/%Y %H:%M"),
              updated_at: DateTime.strptime("06/21/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user8.id, content:
              'Cuándo es la última clase?', 
              description: "Duda", score: 4.2, course_id: course8.id)
pub12 = Post.create(title: 'Último dia de clases',
          created_at: DateTime.strptime("06/21/2019 11:52", "%m/%d/%Y %H:%M"),
          updated_at: DateTime.strptime("06/21/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user9.id, content:
          'Cuándo es la última clase?', 
          description: "Duda", score: 4.2, course_id: course9.id)
pub13 = Post.create(title: 'Último dia de clases',
            created_at: DateTime.strptime("06/23/2019 11:52", "%m/%d/%Y %H:%M"),
            updated_at: DateTime.strptime("06/23/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user10.id, content:
            'Cuándo es la última clase?', 
            description: "Duda", score: 4.2, course_id: course10.id)

# En ramos de computación
pub14 = Post.create(title: 'Recursión',
  created_at: DateTime.strptime("06/24/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("06/24/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user1.id, content:
  'Quién me puede explicar como es la recursión o recomendar un buen video?', 
  description: "Duda", score: 4.2, course_id: course11.id)

pub15 = Post.create(title: 'Herencia y polimorfismo',
    created_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"),
    updated_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user2.id, content:
    'Entendí qué es este contenido, pero no me queda claro cuando lo usaría, porque tendría que ser una situación
    muy particular', 
    description: "Duda", score: 4.2, course_id: course12.id)

pub16 = Post.create(title: 'Listas ligadas',
      created_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/19/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user9.id, content:
      'Qué ventajas me da usar esta lista a usar una de Python?', 
      description: "Duda", score: 4.2, course_id: course12.id)

pub17 = Post.create(title: 'Salas de la presentación final',
        created_at: DateTime.strptime("06/18/2019 11:52", "%m/%d/%Y %H:%M"),
        updated_at: DateTime.strptime("06/24/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user12.id, content:
        'Dónde son las salas para la presentación final?', 
        description: "Duda", score: 4.2, course_id: course15.id)
    
pub18 = Post.create(title: 'Error al iniciar la página',
          created_at: DateTime.strptime("06/24/2019 11:52", "%m/%d/%Y %H:%M"),
          updated_at: DateTime.strptime("06/24/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user11.id, content:
          'Cuando trato de ver la página para el proyecto me dice No Database Found, ¿Qué puede ser? ', 
          description: "Duda", score: 4.2, course_id: course15.id)

pub19 = Post.create(title: 'Heroku',
            created_at: DateTime.strptime("06/24/2019 11:52", "%m/%d/%Y %H:%M"),
            updated_at: DateTime.strptime("06/24/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user2.id, content:
            'Cuando faltaban 5 minutos para la entrega final, hicimos el deploy a heroku pero algo salió mal, a la hora
            después nos dimos cuenta que nos faltó hacer el rake db setup en heroku, hay alguna forma de que no nos descuenten?', 
            description: "Duda", score: 4.2, course_id: course15.id)

pub20 = Post.create(title: 'Transacciones',
              created_at: DateTime.strptime("06/24/2019 11:52", "%m/%d/%Y %H:%M"),
              updated_at: DateTime.strptime("06/24/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user14.id, content:
              'Alguien me puede explicar qué es una transacción?', 
              description: "Duda", score: 4.2, course_id: course17.id)

pub21 = Post.create(title: 'Ayudantía examen',
            created_at: DateTime.strptime("06/22/2019 11:52", "%m/%d/%Y %H:%M"),
            updated_at: DateTime.strptime("06/22/2019 11:52", "%m/%d/%Y %H:%M"), user_id: normal_user15.id, content:
            'Pienso hacer una ayudantía extra, quiero saber quienes estarían interesados en ir', 
            description: "Duda", score: 4.2, course_id: course15.id)


# Creacion de eventos
event1 = Event.create(name: 'Estudiatón I3', e_type: 'Study',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
   f_date:  DateTime.strptime("05/30/2019 11:30", "%m/%d/%Y %H:%M"), max_amount: 30, user_id: normal_user2.id, room_id: room1.id,
    course_id: course1.id)
event2 = Event.create(name: 'Repaso I3', e_type: 'Study',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
   f_date:  DateTime.strptime("05/30/2019 11:30", "%m/%d/%Y %H:%M"), max_amount: 30, user_id: 3, room_id: room1.id,
    course_id: course1.id)
event3 = Event.create(name: 'Ayudantía extra', e_type: 'Study',
 created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
   f_date:  DateTime.strptime("05/30/2019 11:30", "%m/%d/%Y %H:%M"), max_amount: 30, user_id: 3, room_id: room1.id,
    course_id: course2.id)
event4 = Event.create(name: 'Clases Biología', e_type: 'Offer',
created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  f_date:  DateTime.strptime("05/30/2019 11:30", "%m/%d/%Y %H:%M"), price: 1000, user_id: 3,
   room_id: room1.id, course_id: course1.id)
event5 = Event.create(name: 'Ayuda Cálculo', e_type: 'Search',
created_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  updated_at: DateTime.strptime("05/17/2019 11:52", "%m/%d/%Y %H:%M"),
  f_date:  DateTime.strptime("05/30/2019 11:30", "%m/%d/%Y %H:%M"), user_id: 3, room_id: room1.id,
   course_id: course2.id)
event6 = Event.create(name: 'Programatón Entrega final', e_type: 'Study',
  created_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"),
   updated_at: DateTime.strptime("06/20/2019 11:52", "%m/%d/%Y %H:%M"),
    f_date:  DateTime.strptime("06/24/2019 11:30", "%m/%d/%Y %H:%M"), max_amount: 30, user_id: moderator_user2.id, room_id: room1.id,
     course_id: course15.id)
 event7 = Event.create(name: 'Busco clases', e_type: 'Search',
  created_at: DateTime.strptime("06/21/2019 11:52", "%m/%d/%Y %H:%M"),
   updated_at: DateTime.strptime("05/21/2019 11:52", "%m/%d/%Y %H:%M"),
    f_date:  DateTime.strptime("05/25/2019 11:30", "%m/%d/%Y %H:%M"), max_amount: 30, user_id: normal_user13.id, room_id: room2.id,
     course_id: course1.id)
 event8 = Event.create(name: 'Ayudantía examen', e_type: 'Study',
  created_at: DateTime.strptime("06/22/2019 15:52", "%m/%d/%Y %H:%M"),
   updated_at: DateTime.strptime("06/22/2019 15:52", "%m/%d/%Y %H:%M"),
    f_date:  DateTime.strptime("06/30/2019 11:30", "%m/%d/%Y %H:%M"), max_amount: 30, user_id: normal_user15.id, room_id: room3.id,
     course_id: course2.id)
 event9 = Event.create(name: 'Clases Biología', e_type: 'Offer',
 created_at: DateTime.strptime("06/17/2019 11:52", "%m/%d/%Y %H:%M"),
   updated_at: DateTime.strptime("06/17/2019 11:52", "%m/%d/%Y %H:%M"),
   f_date:  DateTime.strptime("06/28/2019 11:30", "%m/%d/%Y %H:%M"), price: 1000, user_id: moderator_user3,
    room_id: room9.id, course_id: course1.id)

# Respuestas a las publicaciones
r1 = Comment.create(body: "Cuando tienes una fracción, y el numerador y denominador tienen a 0
     o a infinito (ambos)", user_id: normal_user2.id, commentable_id: pub1.id, commentable_type: "Post",
     created_at: DateTime.strptime("05/23/2019 11:52", "%m/%d/%Y %H:%M"),
     updated_at: DateTime.strptime("05/23/2019 11:52", "%m/%d/%Y %H:%M"))
r2 = Comment.create(body: "Cuando integras sacas una tasa instantanea, cuando derivas calculas un área bajo la curva", 
     user_id: normal_user3.id, commentable_id: pub2.id, commentable_type: "Post",
     created_at: DateTime.strptime("06/19/2019 11:52", "%m/%d/%Y %H:%M"),
     updated_at: DateTime.strptime("06/19/2019 11:52", "%m/%d/%Y %H:%M"))
r3 = Comment.create(body: "Estás mal, es al revés, la derivada es para tasa de cambio instantánea y la integral
                           es para el área bajo la curva", 
     user_id: normal_user2.id, commentable_id: pub2.id, commentable_type: "Post",
     created_at: DateTime.strptime("06/19/2019 12:52", "%m/%d/%Y %H:%M"),
     updated_at: DateTime.strptime("06/19/2019 12:52", "%m/%d/%Y %H:%M"))
r4 = Comment.create(body: "Todo", 
     user_id: normal_user3.id, commentable_id: pub3.id, commentable_type: "Post",
     created_at: DateTime.strptime("06/19/2019 12:52", "%m/%d/%Y %H:%M"),
     updated_at: DateTime.strptime("06/19/2019 12:52", "%m/%d/%Y %H:%M"))
r5 = Comment.create(body: "Ufff, por favor, si alguien puede hacer una ayudantía se agradecería", 
     user_id: normal_user8.id, commentable_id: pub14.id, commentable_type: "Post",
     created_at: DateTime.strptime("06/20/2019 13:52", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/20/2019 13:52", "%m/%d/%Y %H:%M"))
r6 = Comment.create(body: "Yo tampoco, aunque escuché que esta página usa polimorfismo", 
     user_id: normal_user13.id, commentable_id: pub15.id, commentable_type: "Post",
     created_at: DateTime.strptime("06/20/2019 12:52", "%m/%d/%Y %H:%M"),
     updated_at: DateTime.strptime("06/20/2019 12:52", "%m/%d/%Y %H:%M"))
r7 = Comment.create(body: "En sí las de Python son mejores, yo diría que la idea de ver
     listas ligadas es para saber como funcionan", 
    user_id: normal_user9.id, commentable_id: pub16.id, commentable_type: "Post",
    created_at: DateTime.strptime("06/19/2019 12:52", "%m/%d/%Y %H:%M"),
    updated_at: DateTime.strptime("06/19/2019 12:52", "%m/%d/%Y %H:%M"))
r8 = Comment.create(body: "Mandaron un correo", 
     user_id: normal_user14.id, commentable_id: pub17.id, commentable_type: "Post",
     created_at: DateTime.strptime("06/24/2019 12:52", "%m/%d/%Y %H:%M"),
     updated_at: DateTime.strptime("06/14/2019 12:52", "%m/%d/%Y %H:%M"))
r9 = Comment.create(body: "Tienes que hacer el db:create o db:setup con docker", 
     user_id: moderator_user2.id, commentable_id: pub17.id, commentable_type: "Post",
     created_at: DateTime.strptime("06/24/2019 12:52", "%m/%d/%Y %H:%M"),
     updated_at: DateTime.strptime("06/24/2019 12:52", "%m/%d/%Y %H:%M"))
r10 = Comment.create(body: "F", 
      user_id: normal_user13.id, commentable_id: pub18.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/24/2019 12:52", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/24/2019 12:52", "%m/%d/%Y %H:%M"))
r11 = Comment.create(body: "F", 
      user_id: normal_user14.id, commentable_id: pub18.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/24/2019 12:53", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/24/2019 12:53", "%m/%d/%Y %H:%M"))
r12 = Comment.create(body: "Por favor sean serios", 
      user_id: normal_user2.id, commentable_id: pub18.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/24/2019 12:58", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/24/2019 12:58", "%m/%d/%Y %H:%M")) 
r13 = Comment.create(body: "F", 
      user_id: normal_user1.id, commentable_id: pub18.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/24/2019 13:01", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/24/2019 13:01", "%m/%d/%Y %H:%M"))
r14 = Comment.create(body: "Lamento decirte que no hay nada que se pueda hacer.", 
      user_id: moderator_user2.id, commentable_id: pub18.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/24/2019 13:05", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/24/2019 13:05", "%m/%d/%Y %H:%M"))                       
r15 = Comment.create(body: "Avisaron que iban a hacer una ayudantía de eso", 
      user_id: normal_user5.id, commentable_id: pub19.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/24/2019 13:05", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/24/2019 13:05", "%m/%d/%Y %H:%M"))                  
r16 = Comment.create(body: "Yo pienso ir", 
      user_id: normal_user1.id, commentable_id: pub19.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/22/2019 12:05", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/22/2019 12:05", "%m/%d/%Y %H:%M"))
r17 = Comment.create(body: "Yo tmbn", 
      user_id: normal_user2.id, commentable_id: pub19.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/22/2019 13:05", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/22/2019 13:05", "%m/%d/%Y %H:%M"))            
r18 = Comment.create(body: "Voy si o si", 
      user_id: normal_user3.id, commentable_id: pub19.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/22/2019 13:15", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/22/2019 13:15", "%m/%d/%Y %H:%M"))
r19 = Comment.create(body: "Le caigo fijo", 
      user_id: normal_user4.id, commentable_id: pub19.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/22/2019 13:25", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/22/2019 13:25", "%m/%d/%Y %H:%M"))
r20 = Comment.create(body: "Dónde me anoto", 
      user_id: normal_user5.id, commentable_id: pub19.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/22/2019 13:35", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/22/2019 13:35", "%m/%d/%Y %H:%M"))
r21 = Comment.create(body: "Ok, entonces la haré, estén atentos al evento", 
      user_id: normal_user15.id, commentable_id: pub19.id, commentable_type: "Post",
      created_at: DateTime.strptime("06/22/2019 14:35", "%m/%d/%Y %H:%M"),
      updated_at: DateTime.strptime("06/22/2019 14:35", "%m/%d/%Y %H:%M"))

# Union de eventos
e1 = UserEvent.create(user_id: normal_user2.id, event_id: event8.id)
e2 = UserEvent.create(user_id: normal_user3.id, event_id: event8.id)
e3 = UserEvent.create(user_id: normal_user4.id, event_id: event8.id)
