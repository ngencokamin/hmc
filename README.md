# Help Me Choose

## CLI utility to help decide between multiple choices

Making decisions is difficult, and I'm very bad at it. This gem is a tool to help decide between any number of options. Returns one or more options out of a provided list of choices. Supports picking entirely at random, or weighting decisions if you're kinda leaning towards one or more options but you're not sure.

## Installation

Install the gem by executing:

    $ gem install hmc

## Usage

### Running

Open a new terminal window and run `hmc`

### Options

#### Decision Weighting

By default, the final option(s) is picked entirely at random out of the options provided. However, if you're leaning towards some options but just aren't positive, you can adjust the likelihood of a given option being selected. By selecting `y` when asked if you're leaning towards any of the options, it will allow you to weigh each option on a scale of 1 to 10 to increase or decrease likelihood of a given option being chosen. 

### Number of decisions

By default, output will only include one option out of the list. By entering a number greater than one, you can increase the number of options to be returned. This is to accommodate for usecases such as deciding what three things to order from a restaurant out of five potential options.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ngencokamin/hmc.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
