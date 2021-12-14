class BudgetManager
  require 'json'

  def set_budget
    set_user
    user = get_user

    puts "*** Current balance: #{user[:balance]}$ ***"
    choice = display_menu

    if choice == "exit"
      puts "Good Bye"
    # elsif choice == 'menu'
    #   display_menu
    else
      balance_actions(choice.to_i)
    end
  end

  def set_user
    if File.file?("budget-management/user.json")
      file = File.read("budget-management/user.json")
      data_hash = JSON.parse(file, symbolize_names: true)
      puts "#{data_hash[:name]}, your balance is #{data_hash[:balance]}"
    else
      print "Enter your name: "
      name = gets.to_s.chomp
      print "Enter your budget: "
      budget = gets.to_f

      user = {
        "name": name,
        "balance": budget
      }
      File.write("budget-management/user.json", user.to_json) # mode: "a"

      puts "Hello, #{name}, your balance is #{budget}$"
    end
  end

  def read_file(file_name)
    file = File.read(file_name)
    JSON.parse(file, symbolize_names: true)
  end

  def get_user
    File.file?("budget-management/user.json") ? read_file("budget-management/user.json") : "unknown user"
  end

  def display_menu
    menu = " 1) New income\n 2) New expanse\n 3) Search a record\n 4) List all records"
    puts menu
    gets.chomp
  end

  def balance_actions(user_choice)
    case user_choice
    when 1
      record = get_record_input("income")
      save_record(record)
      update_balance(record[:type], record[:amount])
    when 2
      record = get_record_input("expense")
      save_record(record)
      update_balance(record[:type], record[:amount])
    when 3
      print "Enter search term: "
      term = gets.chomp
      search_records(term)
    when 4
      list_records
    else
      "Error: capacity has an invalid value (#{user_choice})"
    end
    set_budget
  end

  def calc_sign(type)
    type == "income" ? "+" : "-"
  end

  def search_records(term)
    if File.file?("budget-management/user.json")
      records = JSON.parse(File.read("budget-management/records.json"))
      selected = records.select { |record| record["note"].include?(term) }
      puts "Found #{selected.size} records for \"#{term}\":"
      puts "------------------------------"
      selected.each do |record|
        puts "#{record["note"].ljust(10)} | #{calc_sign(record["type"])}#{record["amount"]}$"
      end
    else
      puts "No records to search"
    end
  end

  def list_records
    records = JSON.parse(File.read("budget-management/records.json"))
    puts "Found #{records.size} records:"
    puts "---------------------"
    records.each do |record|
      puts "#{record["note"].ljust(10)} | #{calc_sign(record["type"])}#{record["amount"]}$"
    end
  end

  def update_balance(type, amount)
    puts "#{type} / #{amount}"
    user = get_user
    type == "income" ? balance = user[:balance].to_f + amount : balance = user[:balance].to_f - amount
    updated = {
      "name": user[:name],
      "balance": balance
    }
    File.write("budget-management/user.json", updated.to_json)
  end

  def get_record_input(record_type)
    puts "*** New #{record_type} ***"
    print "Enter an amount: "
    amount = gets.to_f
    print "Enter a note: "
    note = gets.chomp
    { type: record_type, amount: amount, note: note == "" ? "General" : note }
  end

  def save_record(record)
    if File.file?("budget-management/records.json")
      pp "records exist"
      records = JSON.parse(File.read("budget-management/records.json"))
      records.push(record)
      File.write("budget-management/records.json", records.to_json)
    else
      "creating records"
      records = [record]
      File.write("budget-management/records.json", records.to_json) # mode: "a"
      pp records
    end
  end

end

budget = BudgetManager.new
budget.set_budget