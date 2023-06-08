In the main view, we have three views:
* The purple view at the top has a constrained height of 200.
* The view in the middle is constrained to the other two views.
* The red view at the bottom has a minimum height of 200.

The middle view is a custom view that has a UIText. The text is of fixed with, but has a minimum height constraint.

What we would like is for the middle view to expand enough so that all the text is visible. 
This is theoretically possible with the constraints set, as the height of the screen is larger than 
    400 + the middle view safe area + two lines of text
However, Auto Layout only allows the text to be one line long.
