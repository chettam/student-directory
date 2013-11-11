# first :cohort  => we print a list of all the students
students = [
	{:name =>"Tom Groombridge", :cohort  => :november},
	{:name =>"Tom Shacham", :cohort  => :november},
	{:name =>"James Graham", :cohort  => :november},
	{:name =>"Laura Young ", :cohort  => :november},
	{:name =>"Nick  Keszler", :cohort  => :november},
	{:name =>"Georgi Georgiev", :cohort  => :november},
	{:name =>"Jean-Baptiste Blanc", :cohort  => :november},
	{:name =>"Ken Scott", :cohort  => :november},
	{:name =>"Anath Abensour", :cohort  => :november},
	{:name =>"Erica Salvaneschi", :cohort  => :november},
	{:name =>"Chris Hill", :cohort  => :november},
	{:name =>"Asta Bevainyte", :cohort  => :november},
	{:name =>"Hannah Knights", :cohort  => :november},
	{:name =>"Simon Wolf", :cohort  => :november},
	{:name =>"Gianni Guitteaud", :cohort  => :november},
	{:name =>"James Brooke", :cohort  => :november},
	{:name =>"Bruce Steedman", :cohort  => :november},
	{:name =>"Jeremy Marer", :cohort  => :november},
	{:name =>"Nisar Tahir", :cohort  => :november},
	{:name =>"Giacomo Patella", :cohort  => :november},
	{:name =>"Michael Fisher", :cohort  => :november},
	{:name =>"Peter Kristo", :cohort  => :november},
	{:name =>"Kumaran Veluppillai", :cohort  => :november}
]
# definition to display the header 
def print_header
	puts "Students from my Cohort at Makers Academy"
	puts "========================================="

end

# definition to print name
def display(names)
	names.each  { |name|
	 puts "#{name[:name]} (#{name[:cohort]} cohort)"	 
	}
end

# definition to  print footer
def  footer(names)
	puts "Overall, we have #{names.length} great students"
end

print_header
display(students)
footer(students)