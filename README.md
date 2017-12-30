test-with **watches your current directory and runs the command you specify every time something is changed. I find it valuable because...**

`test-with truffle test` will run the test suite of your Ethereum app and update the results after every file change

`test-with rails test` will run the test suite of your Rails app and update the results after every file change

`test-with rails test test/controllers/charges_controller.rb` will run the specified Rails test and update the results after every file change

`test-with ruby letter_test.rb` will run the specified Ruby file and update the results after every file change

`test-with git status` will show you list of changes in the directory, updated in real time

## Installation

Run in your terminal

    gem install test_with
    
## Usage

See above, the very top.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
