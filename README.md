#   `%mines`

- [ ] basic agent w/ state & pokes
- [ ] display
- [ ] generators
- [ ] flood algorithm

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