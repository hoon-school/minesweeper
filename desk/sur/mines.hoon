  ::  /sur/mines
::::  Version ~2023.12.14
::    ~lagrev-nocfep and ~tamlut-modnys
::
|%
+$  mine   ?(%mine %none)
+$  field  (list (list mine))
::
+$  tile
  $%  [%seen ?(%0 %1 %2 %3 %4 %5 %6 %7 %8 %mine)]
      [%hide flag=?]
  ==
+$  board  (list (list tile))
::
++  coord  [x=@ y=@]
::
+$  action
  $%  [%flag =coord]       :: toggle flag
      [%test =coord]       :: reveal mine
      [%view ~]            :: display board
      [%start =coord n=@]  :: start game
  ==
--
