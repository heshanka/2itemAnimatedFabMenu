# 2itemAnimatedFabMenu | In Progress.

An easy implementation of animated FAB menu with 2 FAB descendants using AnimatedAlign widget.

## Usage

#### Case 1: Screens that do not require keyboard input

  Works with code as it is. 

#### Case 2: Screens with keyboard input

  Wrapping the FABs with `Visibility` widget with `visible:false` when user opens keyboard
  
   If keyboard is hidden `MediaQuery.of(context).viewInsets.bottom==0`


![](crFab.gif)
