# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.create(name: "ไปรษณีย์ด่วนพิเศษ")
Department.create(name: "ไปรษณียภัณฑ์ลงทะเบียน")
Department.create(name: "ไปรษณียภัณฑ์ธรรมดา")
Department.create(name: "พัสดุไปรษณีย์")
Department.create(name: "โลจิสโพสต์")
Department.create(name: "ลำเลียงและขนส่ง")

Gender.create(name: "ชาย")
Gender.create(name: "หญิง")

Mistake_type.create("พลัด")
Mistake_type.create("ขาด")
Mistake_type.create("เกิน")
Mistake_type.create("ขาด/เกิน")
Mistake_type.create("ชำรุด")
Mistake_type.create("อื่นๆ")

Operation.create("ดำเนินการแล้ว")
Operation.create("รอดำเนินการ")

Source.create(code: 64000 , name: 'สุโขทัย')
Source.create(code: 60010 , name: 'ศป.นว')
Source.create(code: 65000 , name: 'พิษณุโลก')
