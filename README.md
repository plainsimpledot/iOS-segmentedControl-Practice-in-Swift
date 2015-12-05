# iOS segmentedControl Practice in Swift

This is practice project #1 that I am using to learn the art of swift coding and in this particular project I am looking at how I approached some control logic to replicate a segmented UI control.

In the project the UI is comprised of a 'display' head, a three ganged switch (three buttons) and an indicator element.

1. The display head is used to display a message that changes depending on the state of the three ganged switch.
2. The ganged switch comprises three buttons and will operate as either all off or only one switch in a pressed state at one time. When a button is in the pressed state the button will appear pressed and the button will be highlighted.
3. The indicator element will appear to have 4 states/colours: grey/white/green/red. The indicator will be 4 ImageViews.

The assets used in this project are in the pdf format and are of a size that can accomodate scaling to the iPhone 6s Plus and perhaps to an iPad.

The project has been built with the iPhone 4s size in mind (3.5").

No layout - auto or size has been used at this time.

The operation of the project goes something like this:

1. on start the Display will read No selection, the three ganged buttons will all be **not** pressed, the indicator will be **grey**
2. when the Home switch is selected the Display will read **Home**, the Home button will be in a pressed state and will be illuminated, the indicator will be **white**. *Note*: if any other button was in the pressed state that button will return to a **normal** state.
3. the operations described in 2. apply to the Blog and Project button.
4. if a **pressed** state button is deselected then the Display, ganged buttons and indicator revert back to the **start** condition

All code logic is represented in the single view controller.

###Questions:

1. what other ways can the control logic be represented i.e. switch statement, multiple simpler control structures?
2. should the control logic remain in the view controller or should the project be structured differently?
3. the @IBAction 'sender' code - what is exactly happening here?

###Next Practice Items 

Apply auto layout and size classes. In principle the controls should be centred on the y axis and the buttons/UIViews should scale proportionally to the iPhone width.
