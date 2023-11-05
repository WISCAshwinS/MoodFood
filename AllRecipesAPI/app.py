from flask import Flask
from allrecipes import AllRecipes
import json

app = Flask(__name__)


def recipe(search_string):
	# Search:
	# search_string = "pork curry"  # Query
	query_result = AllRecipes.search(search_string)

	# Get:
	main_recipe_url = query_result[0]['url']
	detailed_recipe = AllRecipes.get(main_recipe_url)  # Get the details of the first returned recipe (most relevant in our case)
	
	# Print URL
	print("Recipe URL: %s" %main_recipe_url)

	name = main_recipe_url[0:len(main_recipe_url)-1]
	name = name[name.rfind('/')+1:].capitalize().replace('-', ' ')
	name = " ".join(w.capitalize() for w in name.split())
	detailed_recipe['name'] = name

	# Display result:
	print("## Recipe Name: %s" % name)  # Name of the recipe
	print("## Total Time: %s" % detailed_recipe['total_time'])
   
	return json.dumps(detailed_recipe)

@app.route("/<search_string>")
def create_app(search_string):
	return recipe(search_string)