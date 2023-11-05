from allrecipes import AllRecipes

# Search:
search_string = "pork curry"  # Query
query_result = AllRecipes.search(search_string)

# Get:
main_recipe_url = query_result[0]['url']
detailed_recipe = AllRecipes.get(main_recipe_url)  # Get the details of the first returned recipe (most relevant in our case)
simple_recipe = AllRecipes.search(main_recipe_url)

# Print URL
print("Recipe URL: %s" %main_recipe_url)

name = main_recipe_url[0:len(main_recipe_url)-1]
name = name[name.rfind('/')+1:].capitalize().replace('-', ' ')
name = " ".join(w.capitalize() for w in name.split())
# Display result:
print("## Recipe Name: %s" % name)  # Name of the recipe
print("## Total Time: %s" % detailed_recipe['total_time'])

# print("### For %s servings:" % detailed_recipe['nb_servings'])
# for ingredient in detailed_recipe['ingredients']:  # List of ingredients
#     print("- %s" % ingredient)

# for step in detailed_recipe['steps']:  # List of cooking steps
#     print("# %s" % step)