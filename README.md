TODO:
  * Add joycon support 
  * Add save file support
  * Add more controller support (maybe also merge that upstream)


Changes from upstream:
 * Fixed pause menu instantly unpausing (start/select used to both close and start the menu, causing it to instantly close)
 * Added a new room that houses the joycon handling object. shouldnt affect much
 * Made all gamepad_* calls use 'global.GP_ID' instead of '0' as the main controller
