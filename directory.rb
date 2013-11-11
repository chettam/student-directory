# first, we print a list of all the students
students = ["Tom Groombridge",
	"Tom Shacham",
	"James Graham",
	"Laura Young ",
	"Nick  Keszler",
	"Georgi Georgiev",
	"Jean-Baptiste Blanc",
	"Ken Scott",
	"Anath Abensour",
	"Erica Salvaneschi",
	"Chris Hill",
	"Asta Bevainyte",
	"Hannah Knights",
	"Simon Wolf",
	"Gianni Guitteaud",
	"James Brooke",
	"Bruce Steedman",
	"Jeremy Marer",
	"Nisar Tahir",
	"Giacomo Patella",
	"Michael Fisher",
	"Peter Kristo",
	"Kumaran Veluppillai"





]
puts "Students from my Cohort"
puts "======================="
# then we print the overall number of students
students.each {	|student| 
	puts student
}
puts "Overall, we have #{students.length} great students"