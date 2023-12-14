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
      =field
      =board
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
  ?>  ?=(%charlie-action mark)
  =/  act  !<(action vase)
  ?-    -.act
      %push
    ::  if targeting me, make the change
    ?:  =(our.bowl target.act)
      :-  ^-  (list card)
          ~
      %=  this
        values  [value.act values]
      ==
    ::  if not targeting me, then send elsewhere
    :-  ^-  (list card)
        :~  [%pass /pokes %agent [target.act %charlie] %poke mark vase]
        ==
    this
  ::
      %pop
    ::  if targeting me, make the change
    ?:  =(our.bowl target.act)
      :-  ^-  (list card)
          ~
      %=  this
        values  ?~(values ~ t.values)
      ==
    ::  if not targeting me, then send elsewhere
    :-  ^-  (list card)
        :~  [%pass /pokes %agent [target.act %charlie] %poke mark vase]
        ==
    this
  ==
::
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  ?+  path  (on-peek:default path)
    [%x %values ~]  [~ ~ [%noun !>(values)]]
  ==
++  on-arvo   on-arvo:default
++  on-watch  on-watch:default
++  on-leave  on-leave:default
++  on-agent  on-agent:default
++  on-fail   on-fail:default
--
