# frozen_string_literal: true

require_relative "hmc/version"
require "tty-prompt"

module Hmc
  class Error < StandardError; end
  prompt = TTY::Prompt.new

  puts "Hello! Welcome to Help Me Choose! :D"
  prefs = prompt.no?("Are you already leaning towards any of the options?")

  opt_num = prompt.ask("How many options do you want it narrowed down to?", default: "1").to_i

  puts "\nPlease enter the options you're considering: "

  options = []
  index = 1

  while true
    if !prefs
      weight = 0
      option = prompt.ask("Please enter option #{index}:")
      weight = prompt.ask("How strongly are you leaning towards #{option}? (1-10):").to_i do |q|
        q.in "1-10"
      end
      options.fill(option, options.size, weight)
      index += 1
    else
      option = prompt.ask("Please enter option #{index}:")
      options << option
      index += 1
    end

    printed = []

    puts "\nCurrent options:\n"
    options.each do |option|
      unless printed.include?(option)
        puts option
        printed << option
      end
    end
    puts
    break unless prompt.yes?("Do you have more options to add?")
  end

  final_options = []

  while final_options.length < (opt_num < options.length ? opt_num : options.length)
    option = options.sample
    final_options << option unless final_options.include?(option)
  end

  puts "\nFinal decision(s): \n"
  final_options.each { |opt| puts "- #{opt}" }
end
