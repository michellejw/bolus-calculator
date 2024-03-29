# Bolus Calculator

**Please note that this is only a demo! Please do not use this calculator for diabetes management. Always consult your doctor about insulin dosing.**

This app is a very simple insulin dosing calculator. The user can input nutritional information about the carbohydrate content and serving size, the amount being consumed, and the relevant carbohydrate to insulin ratio. When the user clicks on the "Calculate" button, the input values are used to compute the appropriate insulin dose, along with a positive message. 

<div style="display: flex; justify-content: space-around;">
  <img alt="'App Input Screen'" src="assets/bolus_calculator_app-input-screen.png" width="200"/>
  <img alt="'App Results Screen'" src="assets/bolus_calculator_app-results-screen.png" width="200"/>
</div>

## Caveats

This app was created as a learning project for me. It is absolutely not intended for use by diabetics in calculating insulin doses. In fact, it only computes a part of what's required to properly dose insulin. The final amount will also depend on other factors like blood glucose at the time of the meal and also on insulin sensitivity. 

## Sources and extra information

The design and over-arching functionality of this app is based on a module in the ['Flutter bootcamp with Dart'](https://www.udemy.com/course/flutter-bootcamp-with-dart) Udemy course. This learning module was in turn based on a ['BMI calculator design by Ruben Vaalt'](https://dribbble.com/shots/4585382-Simple-BMI-Calculator). I didn't want to make a BMI calculator, so instead I chose to do this module as an insulin dosing calculator. While it's nearly exactly the same, I did make some slight changes:

- Adjusted the layout
- (obviously!) Adjusted the calculation done in the application
- Made sure that no matter what the insulin dose is, the user gets a positive message. 
- Made slight changes to how the code was refactored, which necessitated the use of callbacks between parent and child widgets. 


