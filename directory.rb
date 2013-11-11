# first, we print a list of all the students
students = [["Tom Groombridge",:november],
	["Tom Shacham", :november],
	["James Graham", :november],
	["Laura Young ", :november],
	["Nick  Keszler", :november],
	["Georgi Georgiev", :november],
	["Jean-Baptiste Blanc", :november],
	["Ken Scott", :november],
	["Anath Abensour", :november],
	["Erica Salvaneschi", :november],
	["Chris Hill", :november],
	["Asta Bevainyte", :november],
	["Hannah Knights", :november],
	["Simon Wolf", :november],
	["Gianni Guitteaud", :november],
	["James Brooke", :november],
	["Bruce Steedman", :november],
	["Jeremy Marer", :november],
	["Nisar Tahir", :november],
	["Giacomo Patella", :november],
	["Michael Fisher", :november],
	["Peter Kristo", :november],
	["Kumaran Veluppillai":november]





]
puts "Students from my Cohort"
puts "======================="
# then we print the overall number of students
students.each {	|student| 
	puts student
}
puts "Overall, we have #{students.length} great students"