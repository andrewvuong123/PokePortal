# Q0: Why are these two errors being thrown?
A: Migration error is thrown because migrations have not been run yet and the Name Error is thrown because the Pokemon model has not been created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
A: The Pokemon are appearing because the instance variable for pokemon is being assigned to random pokemon when the trainer is nil so all possible Pokemon that appear will not have a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
A: It creates a button that Throws a Pokeball and creates the path for the pokemon when it is captured and calls the patch method.

# Question 3: What would you name your own Pokemon?
A: I would name my Pokemon Rockeon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
A: In the redirect_to I just passed in pokemon.trainer which is redirecting to the GET path for the prefix trainer and is accessing the pokemon trainer's id to redirect to the correct trainer's profile.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
A: The line takes the error message from the validation and uses data from the form to render it in the view.

REPO: https://github.com/andrewvuong123/proj1

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
