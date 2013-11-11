# first :cohort  => we print a list of all the students
@students = [
	{:name =>"Tom Groombridge", :cohort  => :november},
	{:name =>"Tom Shacham", :cohort  => :november},
	{:name =>"James Graham", :cohort  => :november},
	{:name =>"Lara Young ", :cohort  => :november},
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
def menu_choice
	puts "Welcome to the November Cohort directory"
	puts "========================================"
	puts "type 'Add' to add a student"
	puts "type 'Del' to delete a student"
	puts "type 'List'to list all the students"
	puts "type 'Quit' to exit"
end
# gives user choice to manage the directory
def menu
	menu_choice
	choice = gets.chomp
	while choice != "Quit"
		case choice 
		when "Add"
				add_student
		when "Del"
			delete_student
		when "List"
			list_students
		else
			puts "wrong choice"
		end
		menu_choice
		choice = gets.chomp
	end	
end
# def to list the students
def list_students
	puts "Here are the Students from my Cohort at Makers Academy"
	puts "========================================="
	@students.each  { |name|
	 puts "#{name[:name]} (#{name[:cohort]} cohort)"
	 }
end	 
# def to add a student
def add_student
	puts "Let's add a student"
	puts "==================="
	puts "Please enter a student name"
	name = gets.chomp
	puts "please enter a student cohort name"
	cohort = gets.chomp
	@students << {:name =>name , :cohort => cohort}
	puts "the following student is added #{name} (#{cohort} cohort) "
	list_students
end
#def to delete a student
def delete_student
	puts " Let's delete a student"
	puts "======================="
	puts "Please enter a student name"
	name = gets.chomp
	@students.delete_if { |student| student[:name] == name }
 	puts " #{name} has been removed from the directory (if it existed)"
	list_students
end

menu
