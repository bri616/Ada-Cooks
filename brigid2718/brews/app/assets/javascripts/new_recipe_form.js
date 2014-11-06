$(document).ready(function(){
  $("#addNewIngredient").click(function(){
    $("#recipe_form").append($("#new_ingredient_form").html());
  });
});
