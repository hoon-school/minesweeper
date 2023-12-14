#   `%mines`

- [ ] basic agent w/ state & pokes
- [ ] display
- [ ] generators
- [ ] flood algorithm

To start a game:

```hoon
:mines &mines-action [%start [10 10] 5]
```

To flag a square:

```hoon
:mines &mines-action [%flag [5 5]]
```

To probe a square:

```hoon
:mines &mines-action [%test [7 3]]
```

---

```hoon
      ::  XX this is the list version
      :: =/  rng  ~(. og eny)
      :: =|  mines=(list coord)
      :: =.  mines
      ::   |-  ^-  (list coord)
      ::   ?:  =(0 n)  mines
      ::   =^  tx  rng  (rads:rng x.dims.field)
      ::   =^  ty  rng  (rads:rng y.dims.field)
      ::   $(mines [[tx ty] mines], n (dec n))
      ::  XX this is the set version
```