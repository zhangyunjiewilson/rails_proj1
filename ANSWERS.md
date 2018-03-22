# Q0: Why is this error being thrown?

No Pokemon model has been created.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Random Pokemon are generated.
They belong to the same trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This line creates the button.
The button enables the current trainer to capture the pokemon by invoking the capture method in the pokemon controller.

# Question 3: What would you name your own Pokemon?

HollowKnight

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

This is the path that directs to the trainer's page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

The user cannot the use the same name on the same pokemon multiple times.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
