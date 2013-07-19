README
==

RAILS_VERSION: 4.0.0


####Some Useful Command for Beginners


- Create rails application
	
	`$ rails new app`
	
- Use Scaffold to generate MVC code

	`$ rails g scaffold model_name attrbute:type [attr:type]`

- Use rake db:migrate to generate migration

	`$ rake db:migrate`
	
- Run rails server

	`$ rails s`

- Add new feature for model

	`$ rails g migration AddAttrbuteToModel attr:type`

- Use gemfile to add new gems

	`$ vi Gemfile`
	`gem 'rspec', '~> 2.14.1'`

- Use rspec to write unit tests

	Read more of [rspec] (https://github.com/rspec/rspec-rails).
	
	
####Some Tools

* For Management

	[rvm](https://rvm.io/): Ruby Version Manager   
	[gem](http://guides.rubygems.org/what-is-a-gem/): RubyGem - packaged Ruby application or library   
	[rake](http://rake.rubyforge.org/): Ruby Make   
	[bundler](http://bundler.io/): Manage application dependencies and maintain the application environment   

* Develop Environment

	[Irb](http://www.tutorialspoint.com/ruby/interactive_ruby.htm ): Interactive Ruby  
	[Rubymine](http://www.jetbrains.com/ruby/): RoR IDE


* Gems

	**debug**: pry, ruby-debug   
	**test**: rspec, cucumber, capybara, jesmine, factory_girl  
	**authorization**: cancan