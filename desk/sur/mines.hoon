  ::  /sur/mines
::::  Version ~2023.12.14
::    ~lagrev-nocfep and ~tamlut-modnys
::
|%
+$  mines  (set coord)
+$  tiles  (map coord tile)
+$  board  (list (list @tas))
::
+$  tile  ?(%0 %1 %2 %3 %4 %5 %6 %7 %8 %mine %flag)
::
+$  game-state
  $:  =mines
      =tiles
      dims=coord
  ==
::
+$  coord  [x=@ y=@]
::
+$  action
  $%  [%flag =coord]       :: toggle flag
      [%test =coord]       :: reveal mine
      [%view ~]            :: display board
      [%start =coord n=@]  :: start game
  ==
--
