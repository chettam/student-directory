# first :cohort  => we print a list of all the students
@students = [
	{:name =>"Tom Groombridge", :cohort  => "November"},
	{:name =>"Tom Shacham", :cohort  => "November"},
	{:name =>"James Graham", :cohort  => "November"},
	{:name =>"Lara Young ", :cohort  => "November"},
	{:name =>"Nick  Keszler", :cohort  => "November"},
	{:name =>"Georgi Georgiev", :cohort  => "November"},
	{:name =>"Jean-Baptiste Blanc", :cohort  => "November"},
	{:name =>"Ken Scott", :cohort  => "November"},
	{:name =>"Anath Abensour", :cohort  => "November"},
	{:name =>"Erica Salvaneschi", :cohort  => "November"},
	{:name =>"Chris Hill", :cohort  => "November"},
	{:name =>"Asta Bevainyte", :cohort  => "November"},
	{:name =>"Hannah Knights", :cohort  => "November"},
	{:name =>"Simon Wolf", :cohort  => "November"},
	{:name =>"Gianni Guitteaud", :cohort  => "November"},
	{:name =>"James Brooke", :cohort  => "November"},
	{:name =>"Bruce Steedman", :cohort  => "November"},
	{:name =>"Jeremy Marer", :cohort  => "November"},
	{:name =>"Nisar Tahir", :cohort  => "November"},
	{:name =>"Giacomo Patella", :cohort  => "November"},
	{:name =>"Michael Fisher", :cohort  => "November"},
	{:name =>"Peter Kristo", :cohort  => "November"},
	{:name =>"Kumaran Veluppillai", :cohort  => "November"}
]
def menu_choice
	puts "Welcome to the November Cohort directory"
	puts "========================================"
	puts "\n\t * type '1' to add a student"
	puts "\t * type '2' to modify a student"
	puts "\t * type '3' to delete a student"
	puts "\t * type '4' to list all the students"
	puts "\t * type '5' to list all the students in a cohort"
	puts "\t * type '6' to list all names starting with 'A'"	
	puts "\t * type '7' to list all names shorter than 12 characters"
	puts "\t * type 'Quit' to exit"
end
# gives user choice to manage the directory
def menu
	menu_choice
	choice = prompt
	while choice != "Quit"
		case choice 
		when "1"
				add_student
		when "2"
				modify_student
		when "3"
			delete_student
		when "4"
			list_students
		when "5"
			list_by_cohort
		when "6"
			list_users_a
		when "7"
			list_users_12characters
		else
			puts "wrong choice"
		end
		menu_choice
		choice = prompt
	end	
end
# def to list the students
def list_students
	puts "\nHere are the Students from my Cohort at Makers Academy"
	puts "========================================================\n"
	@students.each_with_index { |name,i| puts "#{i+1} : #{name[:name]} (#{name[:cohort]} cohort)"}
	puts "\n========================================\n"
	if @students.length <2
		puts "we have #{@students.length} student in the cohort"
	else
		puts "we have #{@students.length} students in the cohort"
	end
	puts "\n========================================\n"
end	 
# def to add a student
def add_student
	puts "\nLet's add a student"
	puts "====================="
	puts "Please enter a student name"
	name = prompt
	puts "Please enter a student cohort name"
	cohort = prompt
	update_directory(name,cohort)
	puts "the following student is added #{name} (#{cohort} cohort) "

	list_students
end
def modify_student
	puts "\nLet's modify a student"
	puts "====================="
	puts "Please enter a student name"
	name = prompt
	selected_student = @students.select {|student| student[:name] == name}.first
	puts selected_student
	if (!selected_student.nil?)
		puts "Current data : #{selected_student[:name]} (#{selected_student[:cohort]} cohort)"
		@students.delete_if { |student| student[:name] == selected_student[:name] }
		puts "Do you want to modify the Name of the user ? y / n"
		answer_name = prompt
		puts "Do you want to modify the Name of the user ? y / n"
		answer_cohort = prompt
	 	if (answer_name == "y" && answer_cohort =="n")
			puts "\nEnter a new student name:"
			new_name =prompt
			update_directory(new_name,selected_student[:cohort])
		elsif (answer_name == "n" && answer_cohort =="y")
			puts "\nEnter a new cohort name:"
			new_cohort=prompt
			udate_directory(selected_student[:name],new_cohort)
		elsif (answer_name == "y" && answer_cohort == "y")
			puts "\nEnter a new student name:"
			new_name =prompt
			puts "\nEnter a new cohort name:"
			new_cohort=prompt
			update_directory(new_name,new_cohort)
		else
			puts "\nWrong Answer\n"
		end
		list_students
	else
		puts "This Student doesn't exist"
	end
end
#update directory
def update_directory(name,cohort)
		@students << {:name =>name , :cohort => cohort}
		puts "\n #{name} is now updated"
end		
# display prompt
def prompt
	print ">"
	return gets.chomp
end
def list_by_cohort
	puts "Please enter a student cohort name"
	cohort = prompt
	list =@students.delete_if{|student| student[:cohort] != cohort}
	puts "\nHere are the Students of #{cohort} cohort at Makers Academy"
	puts "========================================================\n"
	puts list.map { |name| name[:cohort] + " Cohort : " + name[:name]}
	puts "\n========================================\n"
end
def list_users_a
	list =@students.select{|student| student[:name] =~ /^A/ }
	puts "\nHere are the Students starting with A"
	puts "========================================================\n"
	list.each_with_index { |name,i| puts "#{i+1} : #{name[:name]} (#{name[:cohort]} cohort)"}
	puts "\n========================================\n"
end
def list_users_12characters
	list =@students.select{|student| student[:name].length <= 12 }
	puts "\nHere are the Students with 12 characters names or less"
	puts "========================================================\n"
	list.each_with_index { |name,i| puts "#{i+1} : #{name[:name]} (#{name[:cohort]} cohort)"}
	puts "\n========================================\n"
end

#def to delete a student
def delete_student
	puts "\nLet's delete a student"
	puts "======================="
	puts "Please enter a student name"
	name = gets.chomp
	@students.delete_if { |student| student[:name] == name }
 	puts " #{name} has been removed from the directory (if it existed)"
	list_students
end

menu
