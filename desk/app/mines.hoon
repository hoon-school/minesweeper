  ::  /app/mines
::::  Version ~2023.12.14
::    ~lagrev-nocfep and ~tamlut-modnys
::
/-  *mines
/+  dbug,
    default-agent
::
|%
+$  versioned-state
  $%  state-zero
  ==
+$  state-zero
  $:  %zero
      game-state
  ==
+$  card  card:agent:gall
--
%-  agent:dbug
=|  state-zero
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this     .
    default  ~(. (default-agent this %|) bowl)
++  on-init   on-init:default
++  on-save   !>(state)
++  on-load
  |=  old=vase
  ^-  [(list card) _this]
  :-  ^-  (list card)
      ~
  %=  this
    state  !<(state-zero old)
  ==
++  on-poke
  |=  [=mark =vase]
  ^-  [(list card) _this]
  ?>  ?=(%mines-action mark)
  =/  act  !<(action vase)
  ?+    -.act  `this
      %start
    |^
    :-  ~
    %=  this
      mines  (lay-mines coord.act n.act)
      dims   coord.act
    ==
    ::  Generate random coordinate pairs
    ++  lay-mines
      |=  [dims=coord n=@]
      ^-  ^mines
      =/  rng  ~(. og eny.bowl)
      =|  mines=(set coord)
      |-  ^-  (set coord)
      ?:  =(n ~(wyt in mines))  mines
      =^  tx  rng  (rads:rng x.dims)
      =^  ty  rng  (rads:rng y.dims)
      $(mines (~(put in mines) [tx ty]))
    --
  ==
::
++  on-peek   on-peek:default
++  on-arvo   on-arvo:default
++  on-watch  on-watch:default
++  on-leave  on-leave:default
++  on-agent  on-agent:default
++  on-fail   on-fail:default
--
