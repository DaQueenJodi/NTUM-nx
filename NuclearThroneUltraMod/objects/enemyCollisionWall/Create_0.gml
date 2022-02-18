/// @description Init

// Inherit the parent event
event_inherited();

//List of move through wall enemies or collision disablers
if object_index!=HotDrake && object_index!=ChesireCat  && object_index!=InvertedHotDrake && object_index!=InvertedChesireCat && object_index != GhostGuardian && object_index != NuclearThrone1Side
alarm[10]=500;