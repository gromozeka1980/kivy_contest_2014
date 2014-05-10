_READ_ME {; Anthony Hanmer, set discovered 6/2000
  Angle 6 ; A set of "s-symmetrical" curves, with symmetries of 3, 4 or 6;
  Axiom f ; generally nc (non-crossing), though some are self-touching,
  f=f     ; all of which combine into (mostly the outlines of) tiles
          ; (or, in the case of 8-fold pieces, they interlock).
          ; Most of them are also nt (non-touching or self-avoiding).
          ; I have named them "S Tiles"(STs) for the symmetry
          ; of their component pieces, which is always 180-degree
          ; rotational symmetry, as in the letter S.
          ;
          ; The theory:  any nc s-symmetrical curve which remains
          ; nc in any of 3-, 4- or 6- fold symmetrical configurations
          ; (equilateral triangle, square or hexagon) will, in
          ; those configurations, form tiles.
          ; (Crossing is generally avoided by using angles not more acute than
          ; the symmetry Angle, when constructing the initial curve.)
          ; NB Those items marked with an *asterisk are the most convoluted.
          ; Length is calculated: (n of fs -1)^(Iteration n)x(n of axiom fs).
          ; N of "nodes" (line segment endpoints) is calculated:
          ; ((n of *groups* of fs)-1)^(Iteration n)x(n of axiom fs).

          ; NB some earlier examples of this infinite set of tiles are known -
          ; see The Fractal Geometry of Nature, by Mandelbrot, pp. 50-55; 
          ; but here it has been much more fully developed.
          ;
          ; Current total:  769 items, of which symmetries:
          ; 3-fold:  160
          ; 4-fold:  502
          ; 6-fold:  107
          ; (NB This is the final-stage ST L-system file, with ordering by symmetry -
          ; - ST30001 and upwards, ST40001, ST60001, etc.  Also,
          ; this file does not feature deviations from "orthodox" STs.)
  }

ST30001* { ; Anthony Hanmer 6/2002 (was adh8378, my 1st triangular ST)
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=f+ff-f
  }

ST30002 { ; Anthony Hanmer 6/2002
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=ff+f-ff
  }

ST30003 { ; Anthony Hanmer 6/2002
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=@2f@.5+f-@2f@.5
  }

ST30004* { ; Anthony Hanmer 6/2002
  Angle 3 ; 3 together make a tile
  Axiom c9f+c12f+c14f
  f=ff+ff-ff
  }

ST30005* { ; Anthony Hanmer 6/2002
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=f+fff-f
  }

ST30006 { ; Anthony Hanmer 6/2002
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=fff+fff-fff
  }

ST30007 { ; Anthony Hanmer 6/2002
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=fff+f-fff
  }

ST30008 { ; Anthony Hanmer 6/2002
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=@3f@i3+f-@3f@i3
  }

ST30009 { ; Anthony Hanmer 6/2002
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=fff+ff-fff
  }

ST30010 { ; Anthony Hanmer 6/2002
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=@3f@i3+@2f@.5-@3f@i3
  }

ST30011 { ; Anthony Hanmer 6/2002
  Angle 3; nc; and 3 together make a tile
  Axiom c9f+c10f+c12f
  f=fffff-ff-f+ff+fffff
  }

ST30012* { ; Anthony Hanmer 6/2002
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=f+@.5f@2-f
  }

ST30013* { ; Anthony Hanmer 6/2002
  Angle 3 ; nc; and 3 together make a tile
  Axiom c9f+c12f+c14f
  f=f+@.6180339887499f@1.6180339887499-f
  }

ST30014 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f-f-ff+f+f+ff-f-f-ff+f+f
  }

ST30015* { ; Anthony Hanmer 3/7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f--f++f+ff-f--f++f
  ; 1st conscious use of Angle 6 and ++/--
  }

ST30016* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5--f++f+@2f@.5-f--f++@2f@.5
  }

ST30017* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f--f++f+f-f--f++f
  }

ST30018* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff--ff++f+f--f++f+f-f--f++f-f--ff++ff
  }

ST30019* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-f--ff++f+f-f
  }

ST30020 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f-f--ff++f+f-ff
  }

ST30021* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f-f--@2f@.5++f+f-@2f@.5
  }

ST30022* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f+f--f-f-ff+f+f++f-f-ff
  }

ST30023* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f+f--f-f-f+f+f++f-f-ff
  }

ST30024* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f+f--f-f-f+f+f++f-f-@2f@.5
  }

ST30025 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff++f--ff--ff++ff++f--ff
  }

ST30026* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5++f--@2f--f++f@.5++f--@2f@.5
  }

ST30027* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff++f--f+f--f-ff+f++f-f++f--ff
  }

ST30028* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f++f--ff--ff++ff++f--f
  }

ST30029* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff++f--f+f--f-f+f++f-f++f--ff
  }

ST30030* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5++f--f+f--f-f+f++f-f++f--@2f@.5
  }

ST30031* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f++f--f-ff--f+f--f++f-f++ff+f++f--f-ff
  }

ST30032* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f++f--f-ff--fff++ff+f++f--f-ff
  }

ST30033 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f++f--f-ff--ff++ff+f++f--f-ff
  }

ST30034* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f++f--f-@2f--f++f@.5+f++f--f-@2f@.5
  }

ST30035* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f++f--f-f--f++f+f++f--f-f
  }

ST30036* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f++f--f-ff--f++ff+f++f--f-f
  }

ST30037* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f++f--f-@2f@.5--f++@2f@.5+f++f--f-f
  }

ST30038* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f++f--f-@2f@.5--f++@2f@.5+f++f--f-@2f@.5
  }

ST30039 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f++f--ff-ff--ff++ff+ff++f--f-ff
  }

ST30040* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f++f--@2f-f--f++f+f@.5++f--f-@2f@.5
  }

ST30041* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f++f--@2f-f@.5--f++@2f+f@.5++f--f-@2f@.5
  }

ST30042* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f++f--ff-ff--fff++ff+ff++f--f-ff
  }

ST30043* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f++f--@2f-f@.5--@1.5ff@i1.5++@2f+f@.5++f--f-@2f@.5
  }

ST30044* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f++f--f-f-f-ff+f+f+f++f--f-ff
  }

ST30045* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f++f--f-f-f-f+f+f+f++f--f-ff
  }

ST30046* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f++f--f-f-f-f+f+f+f++f--f-@2f@.5
  }

ST30047* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--ff++f-f
  }

ST30048* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--@2f@.5++f-f
  }

ST30049* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--@3f@i3++f-f
  }

ST30050* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--f++f-f
  }

ST30051* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--@1.6180339887499f@.6180339887499++f-f
  }

ST30052* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f+f--f-ffff+f++f-f-ff
  }

ST30053* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f+f--f-@2ff@.5+f++f-f-@2f@.5
  }

ST30054 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f+f--f-fff+f++f-f-ff
  }

ST30055* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f+f--f-@1.5ff@i1.5+f++f-f-@2f@.5
  }

ST30056* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-ff+f++f-f-f
  }

ST30057* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-@2f@.5+f++f-f-f
  }

ST30058* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f+f--f-f+f--ff++f-f+f++f-f-ff
  }

ST30059* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f+f--f-f+f--@2f@.5++f-f+f++f-f-@2f@.5
  }

ST30060* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-f+f--f++f-f+f++f-f-f
  }

ST30061 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-f+f-f+f-f+f++f-f-f
  }

ST30062* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-f+f-f+f++f-f-f
  }

ST30063* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-f++ff--f-f+f-f+f++ff--f+f++f-f-f
  }

ST30064* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f+f--f-f++f--f-f+f-f+f++f--f+f++f-f-ff
  }

ST30065* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f+f--f-f++f--f-f+f-f+f++f--f+f++f-f-@2f@.5
  }

ST30066* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-f++ff--f-ff+f++ff--f+f++f-f-f
  }

ST30067* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-f-f++f--f+f+f++f-f-f
  }

ST30068* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f+f--f-f-f++f--f+f+f++f-f-ff
  }

ST30069* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f+f--f-f-f++f--f+f+f++f-f-@2f@.5
  }

ST30070* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f+f--f-f-ff+f+f++f-f-ff
  }

ST30071* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f+f--f-f-@2f@.5+f+f++f-f-@2f@.5
  }

ST30072* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-f-f+f+f++f-f-f
  }

ST30073* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f++f--f+f--f-f+f++f-f++f--f
  }

ST30074* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff++f--f+f--f-ff+f++f-f++f--ff
  }

ST30075* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5++f--f+f--f-@2f@.5+f++f-f++f--@2f@.5
  }

ST30076* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f+f--f+f--f-ff+f++f-f++f-f-ff
  }

ST30077* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f+f--f+f--f-@2f@.5+f++f-f++f-f-@2f@.5
  }

ST30078* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f+f--f-f+f++f-f++f-f-f
  }

ST30079* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-f+f--f+f--f-ff+f++f-f++f-f+f-f
  }

ST30080* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f-f+f--f+f--f-ff+f++f-f++f-f+f-ff
  }

ST30081* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f-f+f--f+f--f-@2f@.5+f++f-f++f-f+f-@2f@.5
  }

ST30082* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-f+f--f+f--f-f+f++f-f++f-f+f-f
  }

ST30083* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-fff--f-ff+f++fff+f-f
  }

ST30084* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-fff--f-f+f++fff+f-f
  }

ST30085* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-ff--f-f+f++ff+f-f
  }

ST30086* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-@2f@.5--f-f+f++@2f@.5+f-f
  }

ST30087* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--f--@.5f@2++f++f-f
  }

ST30088* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile:  indeed,
  Axiom c9f++c12f++c14f; heading towards the most
  f=f+f--f--@.9f@i.9++f++f-f; convoluted possible nt 3-tile?
  ; 1st conscious use of >1 central f to -> nt line
  }

ST30089* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f-f--f++f+f
  }

ST30090* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f-f--@.9f@i.9++f+f
  }

ST30091* { ; Anthony Hanmer 4/7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f; is this new?
  f=ff--f--f++f++ff
  }

ST30092* { ; Anthony Hanmer 4/7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f; is this new?
  f=@.5f@2--f--f++f++@.5f@2
  }

ST30093* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f++@.6180339887499f@1.6180339887499--f--f++f++@.6180339887499f@1.6180339887499--f
  }

ST30094* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-f-f-f--f++f+f+f+f-f
  }

ST30095* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f-f-f-f--f++f+f+f+f-ff
  }

ST30096* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f-f-f-f--f++f+f+f+f-@2f@.5
  }

ST30097 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ffff-f-f-f--f++f+f+f+ffff
  }

ST30098* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2ff@.5-f-f-f--f++f+f+f+@2ff@.5
  }

ST30099* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-fff-f-f-f--f++f+f+f+fff+f-f
  }

ST30100* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-@1.5ff@i1.5-f-f-f--f++f+f+f+@1.5ff@i1.5+f-f
  }

ST30101* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-ff-f-f-f--f++f+f+f+ff+f-f
  }

ST30102* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f-f++f--f-f-f-f+f+f+f++f--f+f-ff
  }

ST30103* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-ff--f-f+f++ff+f-f
  }

ST30104* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+ff--f+f--f-f+f++f-f++ff-ff
  }

ST30105* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f+f@.5--f+f--f-f+f++f-f++@2f-f@.5
  }

ST30106* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+ff--f+f--f-f+f++f-f++ff-f
  }

ST30107* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--f-f+f++f-f
  }

ST30108* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f--f-f+f++f-@2f@.5
  }

ST30109* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5++f--f-f+f++f--@2f@.5
  }

ST30110* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff++f-f--fff++f+f--ff
  }

ST30111* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5++f-f--fff++f+f--@2f@.5
  }

ST30112* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f-f+f--f-f-f+f+f++f-f+f-ff
  }

ST30113* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f-f+f--f-f-f+f+f++f-f+f-@2f@.5
  }

ST30114* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff++f--ff+f--f-f-f+f+f++f-ff++f--ff
  }

ST30115* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5++f--@2f@.5+f--f-f-f+f+f++f-@2f@.5++f--@2f@.5
  }

ST30116* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f+f--f-f++f--f-f-f+f+f++f--f+f++f-f-ff
  }

ST30117* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f+f--f-f++f--f-f-f+f+f++f--f+f++f-f-@2f@.5
  }

ST30118* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+ff--f++f--f-f-f+f+f++f--f++ff-ff
  }

ST30119* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f+f@.5--f++f--f-f-f+f+f++f--f++@2f-f@.5
  }

ST30120* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+f-f++f--f--f++f--f-f+f++f--f++f++f--f+f-ff
  }

ST30121* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5+f-f++f--f--f++f--f-f+f++f--f++f++f--f+f-@2f@.5
  }

ST30122* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--f++f-f++f--f--f++f--f-f+f++f--f++f++f--f+f--f++f-f
  }

ST30123* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+ff--ff--f++ff++ff-ff
  }

ST30124* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f+f--f@.5--f++@2f++f-f@.5
  }

ST30125 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--f++f-f
  }

ST30126 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+@2f@.5--f++@2f@.5-f
  }

ST30127* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+@2f--f++f@.5-f
  }

ST30128* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+ff--f--f++f++f--f--f++f++f--f--f++f++ff-ff
  }

ST30129* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-ff+f++f-f-f
  }

ST30130* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--f-@2f@.5+f++f-f-f
  }

ST30131* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--ff--ff++ff++f-f-f
  }

ST30132* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f--@2f--f++f@.5++f-f-f
  }

ST30133 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--ff++f-ff
  }

ST30134* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--@2f@.5++f-@2f@.5
  }

ST30135* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+ff--ff++ff-ff
  }

ST30136* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+@2f--f++f-f@.5
  }

ST30137* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--f--f++f++f-f
  }

ST30138* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--f--@.9f@i.9++f++f-f
  }

ST30139* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff++f--f--ff++f++f--ff
  }

ST30140* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff++f--@1.1f@i1.1--ff++@1.1f@i1.1++f--ff
  }

ST30141* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff++f--f--f++f++f--ff
  }

ST30142* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f++f--f--@.9f@i.9++f++f--f
  }

ST30143* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@1.1f@i1.1++f--f--f++f++f--@1.1f@i1.1
  }

ST30144* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@1.1f@i1.1++f--f--@.9f@i.9++f++f--@1.1f@i1.1
  }

ST30145* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=@2f@.5++f--f--f++f++f--@2f@.5
  }

ST30146 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+ff|f+f--f++f-f|ff-ff
  }

ST30147* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=ff+ff-f--ffff++f+ff-ff
  }

ST30148* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-f--ff++f+f-f
  }

ST30149* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+ff-f--fff++f+ff-f
  }

ST30150* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+ff-f--ff++f+ff-f
  }

ST30151* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+@2f@.5-f--@2f@.5++f+@2f@.5-f
  }

ST30152* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+@2.4f@i2.4-f--@2.4f@i2.4++f+@2.4f@i2.4-f
  }

ST30153* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--f+ff-f--ff++f+ff-f++f-f
  }

ST30154* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f--f+@2f@.5-f--@2f@.5++f+@2f@.5-f++f-f
  }

ST30155* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+ff--f+ff-f--ff++f+ff-f++ff-f
  }

ST30156* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+@2f@.5--f+@2f@.5-f--@2f@.5++f+@2f@.5-f++@2f@.5-f
  }

ST30157 { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-fff-f--ff++f+fff+f-f
  }

ST30158* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-@3f@i3-f--@2f@.5++f+@3f@i3+f-f
  }

ST30159* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-ff-f--ff++f+ff+f-f
  }

ST30160* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-@2f@.5-f--@2f@.5++f+@2f@.5+f-f
  }

ST40001* { ; Anthony Hanmer 2000 (was T105aa, my first ST and first square ST)
  Angle 4; non-crossing (nc); and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+fff+ff+f+f-f-ff-fff-ffff
  }

ST40002* { ; Anthony Hanmer 2000 (was T105c1, my 2nd ST)
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  ;f=+c32fff+c35ff+c42f+c47f-c42f-c35ff-c32fff-; colour 1
  f=+fff+ff+f+f-f-ff-fff-
  }

ST40003* {; Anthony Hanmer 2000 (was T107h3, my 3rd ST)
  Angle 8; nc ("Beetle Man"); 4 together make a tile -
  ; not non-touching, but non-crossing
  Axiom c9f++c10f++c12f++c14f
  f=f-f-f+f+f+f+f+f+f-f-f-f-f-f-f+f+f
  ;f=c32f-c34f-c36f+c38f+c40f+c42f+c44f+c46f+c48f-c46f-c44f-c42f-c40f-c38f-c36f+c34f+c32f; colour 1
  }

ST40004* {; Anthony Hanmer 2000 (was T107h3a, my 4th ST)
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=ff-f-f+f+f+f+f+f+f-f-f-f-f-f-f+f+ff
  }

ST40005 { ; Anthony Hanmer 2000 (was T107h4, my 5th ST)
  Angle 8; nc, interlocking
  Axiom c9f++c10f++c12f++c14f
  f=f-f+f+f+f+f+f-f-f-f-f-f+f
  ;f=c32f-c35f+c37f+c39f+c42f+c44f+c47f-c44f-c42f-c39f-c37f-c35f+c32f; colour 1
  }

ST40006 { ; Anthony Hanmer 2000 (was T107h5, my 6th ST)
  Angle 8; nc, interlocking
  Axiom c9f++c10f++c12f++c14f
  f=f+f+f+f+f+f-f-f-f-f-f
  ;f=c32f+c35f+c37f+c40f+c43f+c46f-c43f-c40f-c37f-c35f-c32f; colour 1
  }

ST40007* {; Anthony Hanmer 2001 (was T105aa03)
  Angle 4  ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@.6180339887499f+@.6180339887499f-@1.6180339887499f-@1.6180339887499f
  }

ST40008 {; Anthony Hanmer 6/2002 (was T105aa03a)
  Angle 4  ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@.5f+@.5f-@2f-@2f
  }

ST40009* {; Anthony Hanmer 6/2002 (was T105aa03b)
  Angle 4  ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@iq2f+@iq2f-@q2f-@q2f
  }

ST40010 { ; Anthony Hanmer 6/2002
  Angle 4 ; 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f-f+f+ff-f-f+f+f
  }

ST40011 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f+f+ff-f-f+f+f-f
  }

ST40012 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f+f+@2f@.5-f-f+f+f-f
  }

ST40013* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f+ff-f-f+f-f
  }

ST40014* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f+@2f@.5-f-f+f-f
  }

ST40015* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f+@1.6180339887499f@.6180339887499-f-f+f-f
  }

ST40016* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f; a little less than the max of GR+1
  f=f+f-f+f+@2.4f@i2.4-f-f+f-f
  }

ST40017 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f-f+f+ff-f-f+f-f+f
  }

ST40018 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f-f+f+@2f@.5-f-f+f-f+f
  }

ST40019 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff-ff+ff+f
  }

ST40020* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff-@2f@.5+ff+f
  }

ST40021 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff-f+ff+f
  }

ST40022 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f-f+f+ff
  }

ST40023 { ; Anthony Hanmer 6/2002
  Angle 4 ; 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-ff-ff+ff+ff
  }

ST40024 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-ff+f+f-ff
  }

ST40025 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-f-@2f@.5+f+f-@2f@.5
  }

ST40026 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-f-ff+f+ff-ff
  }

ST40027 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f+f@.5-f-@2f@.5+f+@2f-f@.5
  }

ST40028* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff-f-ff+f+ff-f
  }

ST40029 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-ff-ff+ff+f-ff
  }

ST40030 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-@2f-f+f@.5+f-@2f@.5
  }

ST40031 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-ff-ff+ff+ff-ff
  }

ST40032 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-f+f+f-ff
  }

ST40033 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-f-f+f+f-@2f@.5
  }

ST40034 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-f-f+f+ff-ff
  }

ST40035 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f+f@.5-f-f+f+@2f-f@.5
  }

ST40036 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff-f-f+f+ff-f
  }

ST40037 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@2f@.5-f-f+f+@2f@.5-f
  }

ST40038 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-ff-f+ff+f-ff
  }

ST40039 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-@2f@.5-f+@2f@.5+f-@2f@.5
  }

ST40040 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-ff-f+ff+ff-ff
  }

ST40041 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f+f-f@.5-f+@2f+f-f@.5
  }

ST40042* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+fff-f-ff+f+fff-f
  }

ST40043* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f; (marvellously convoluted,
  f=f+fff-f-fff+f+fff-f   ; but still a tile)
  }

ST40044 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-f-ff+f+f-fff
  }

ST40045 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@3f@i3+f-f-@2f@.5+f+f-@3f@i3
  }

ST40046* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f-f+ff+ff-ff-f+f+f
  }

ST40047 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff-f+f+ff-f-f+ff+f
  }

ST40048 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-@2f@.5-f+f+@2f@.5-f-f+@2f@.5+f
  }

ST40049* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f-f+f+ff-f-f+f+ff
  }

ST40050* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5-f-f+f+@2f@.5-f-f+f+@2f@.5
  }

ST40051 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff-f+ff+ff-ff-f+ff+f
  }

ST40052 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-@2f@.5-f+@2f+f-f@.5-f+@2f@.5+f
  }

ST40053 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f+ff+ff-ff-f+f+f-f
  }

ST40054 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f+@2f+f-f@.5-f+f+f-f
  }

ST40055* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-ff+f+ff-f-ff+f+f-f
  }

ST40056* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-@2f@.5+f+@2f@.5-f-@2f@.5+f+f-f
  }

ST40057 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-ff-f+f+ff-f-f+ff+f-f
  }

ST40058 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-@2f@.5-f+f+@2f@.5-f-f+@2f@.5+f-f
  }

ST40059 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff-f-f+f+ff-f-f+f+ff-f
  }

ST40060 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@2f@.5-f-f+f+@2f@.5-f-f+f+@2f@.5-f
  }

ST40061 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-f+f+ff-f-f+f+f-ff
  }

ST40062 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-f-f+f+@2f@.5-f-f+f+f-@2f@.5
  }

ST40063 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-ff-f+f+ff-f-f+ff+f-ff
  }

ST40064 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-@2f@.5-f+f+@2f@.5-f-f+@2f@.5+f-@2f@.5
  }

ST40065 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-f-f+f+ff-f-f+f+ff-ff
  }

ST40066 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f+f@.5-f-f+f+@2f@.5-f-f+f+@2f-f@.5
  }

ST40067 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-ff-f+ff+ff-ff-f+ff+f-ff
  }

ST40068 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-@2f@.5-f+@2f+f-f@.5-f+@2f@.5+f-@2f@.5
  }

ST40069 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+ff+ff-ff-f+f-f
  }

ST40070 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+@2f+f-f@.5-f+f-f
  }

ST40071* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-ff+f+ff-f-ff+f-f
  }

ST40072 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff-f+f+ff-f-f+ff-f
  }

ST40073 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@2f@.5-f+f+@2f@.5-f-f+@2f@.5-f
  }

ST40074* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f+f+ff-f-f+f-ff
  }

ST40075* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-ff+f+ff-f-ff+f-ff
  }

ST40076* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-@2f@.5+f+@2f@.5-f-@2f@.5+f-@2f@.5
  }

ST40077 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f-f+ff+ff-ff-f+f-f+f
  }

ST40078 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f-f+@2f+f-f@.5-f+f-f+f
  }

ST40079* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f-ff+f+ff-f-ff+f-f+f
  }

ST40080* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f-@2f@.5+f+@2f@.5-f-@2f@.5+f-f+f
  }

ST40081* { ; Anthony Hanmer 20/6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff+f-f+f+ff-f-f+f-ff+f
  }

ST40082* { ; Anthony Hanmer 20/6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-@2f@.5+f-f+f+@2f@.5-f-f+f-@2f@.5+f
  }

ST40083 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+f-f+f+ff-f-f+f-f+ff
  }

ST40084 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5-f+f-f+f+@2f@.5-f-f+f-f+@2f@.5
  }

ST40085 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff+f-ff+f+ff-f-ff+f-ff+f
  }

ST40086 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-@2f@.5+f-@2f@.5+f+@2f@.5-f-@2f@.5+f-@2f@.5+f
  }

ST40087 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+ff-f+f+ff-f-f+ff-f+ff
  }

ST40088 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5-f+@2f@.5-f+f+@2f@.5-f-f+@2f@.5-f+@2f@.5
  }

ST40089 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+ff-f+ff+ff-ff-f+ff-f+ff
  }

ST40090 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5-f+@2f@.5-f+@2f+f-f@.5-f+@2f@.5-f+@2f@.5
  }

ST40091 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-ff
  }

ST40092 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@q2f@iq2+ff-@q2f@iq2
  }

ST40093 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-ff
  }

ST40094 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-@2f@.5
  }

ST40095 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+fff-fff
  }

ST40096 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+fff-ff-fff+ff+fff-f
  }

ST40097 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+fff-f-fff+f+fff-ff
  }

ST40098 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+fff-ff-fff+ff+fff-ff
  }

ST40099 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+@3f@i3-@2f@.5-@3f@i3+@2f@.5+@3f@i3-@2f@.5
  }

ST40100 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff-ff-fff+ff+ff-f
  }

ST40101* { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-f-fff+f+ff-ff
  }

ST40102 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-ff-fff+ff+ff-ff
  }

ST40103 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+@2f@.5-@2f@.5-@3f@i3+@2f@.5+@2f@.5-@2f@.5
  }

ST40104 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-ff-ff+ff+f-fff
  }

ST40105 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@3f@i3+f-@2f@.5-@2f@.5+@2f@.5+f-@3f@i3
  }

ST40106 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-f-ff+f+ff-fff
  }

ST40107 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@3f@i3+@2f@.5-f-@2f@.5+f+@2f@.5-@3f@i3
  }

ST40108 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-ff-ff+ff+ff-fff
  }

ST40109 { ; Anthony Hanmer 6/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@3f@i3+@2f-f-f+f+f@.5-@3f@i3
  }

ST40110 { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-f-ff
  }

ST40111 { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f+f-f-fff
  }

ST40112* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f+ff-f-fff
  }

ST40113* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff+ff-ff-fff
  }

ST40114* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  ; Axiom f; Also, 1 by itself is a tile.
  ; I include this item after numerous experimentations
  ; with its f lengths - there seem to be no variations leading
  ; to a nc ST.
  f=f+f+f-f-f
  }

ST40115* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f; Apparently this could continue
  f=fffff-ffff-fff-ff-f-f+f+ff+fff+ffff+fffff; growing indefinitely...
  }

ST40116* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9+c10f+c12f+c14f; Apparently this could continue growing
  f=ffffff-fffff-ffff-fff-ff-f-f+f+ff+fff+ffff+fffff+ffffff; indefinitely...
  }

ST40117* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+fff-f-ff+f+fff-f
  }

ST40118 { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+fff-f-f+f+fff-f
  }

ST40119 { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@3f@i3-f-f+f+@3f@i3-f
  }

ST40120* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+f+fff-f-ff+f+fff-f-fffff
  }

ST40121* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+fff-f-ff+f+fff-f+f
  }

ST40122* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+@3f@i3-f-@2f@.5+f+@3f@i3-f+f
  }

ST40123* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f+ff-f-ff+f+ff-f-fff
  }

ST40124* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@3f@i3+f+@2f@.5-f-@2f@.5+f+@2f@.5-f-@3f@i3
  }

ST40125* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+f+fff-ff-f-f+f+ff+fff-f-fffff
  }

ST40126* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+f+ffff-ff-ff-f+ff+ff+ffff-f-fffff
  }

ST40127* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f+ff-ff-f-f+f+ff+ff-f-fff
  }

ST40128* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+f+ff+f-ff-f-f+ff
  }

ST40129* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+ff+f+f-f+f-f-ff-f+ff
  }

ST40130* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5-f+@2f@.5+f+f-f+f-f-@2f@.5-f+@2f@.5
  }

ST40131* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+ff+f+f-ff+f-f-ff-f+ff
  }

ST40132* { ; Anthony Hanmer 6/2002
  Angle 3; nc; and 3 together make a tile
  Axiom c9f+c10f+c12f
  f=ffff-ff-f+ff+ffff
  }

ST40133* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-f-f+f+f-f-fff+f+f-f-f+f+fff
  }

ST40134* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f-f+f+f-f-ff+f+f-f-f+f+ff
  }

ST40135* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5-f-f+f+f-f-@2f@.5+f+f-f-f+f+@2f@.5
  }

ST40136* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f+ff+f+f-f-ff-f+f-ff
  }

ST40137* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-f+@2f@.5+f+f-f-@2f@.5-f+f-@2f@.5
  }

ST40138* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-f+ff+f+f-f-ff-f+f-fff
  }

ST40139* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-ff+f+f-f+f+f-f-f+f-f-ff+f-fff
  }

ST40140* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f+f+f-ff+f+f-f+f+f-f-f+f-f-ff+f-f-f+f+f-f
  }

ST40141* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f+f+f-@2f@.5+f+f-f+f+f-f-f+f-f-@2f@.5+f-f-f+f+f-f
  }

ST40142* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffffff+fff+f+ff-ff-f-f+f+ff+ff-f-fff-ffffff
  }

ST40143* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f+f+f-fff+fff+f+ff-ff-f-f+f+ff+ff-f-fff-fff+f-f-f+f+f-f
  }

ST40144* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f+f+f-f-F+F+Ff+f-f+f+f-f-f+f-fF-F-F+f+f-f-f+f+f-f
  }

ST40145* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f+f+f-f-F+F+@2f@.5+f-f+f+f-f-f+f-@2f@.5-F-F+f+f-f-f+f+f-f
  }

ST40146* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-ff+f+fff-f-ff+f+f-f
  }

ST40147* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-ff-f-f+f+f-f-ff-f+f+ff-f-f+ff+f+f-f-f+f+ff+f-f-ff
  }

ST40148* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-ff-f-f+f+f-f-ff-f+f+ff+fff-ff-f-f+ff+f+f-f-f+f+ff+f-f-ff
  }

ST40149* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f+f-@2f@.5-f-f+f+f-f-@2f@.5-f+f+@2f@.5+@3f@i3-@2f@.5-f-f+@2f@.5+f+f-f-f+f+@2f@.5+f-f-@2f@.5
  }

ST40150* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-fff-f-f+f+f-f-fff-f+f+ff+fff-ff-f-f+fff+f+f-f-f+f+fff+f-f-ff
  }

ST40151* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-ffff-f-f+f+f-f-ffff-f+f+ff+fff-ff-f-f+ffff+f+f-f-f+f+ffff+f-f-ff
  }

ST40152* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-ffff-f-f+f+ff-f-fffff-f+f+ff+fff-ff-f-f+fffff+f+ff-f-f+f+ffff+f-f-ff
  }

ST40153* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-ffff-f-fff+f+ffff-f-fffff-f+f+ff+fff-ff-f-f+fffff+f+ffff-f-fff+f+ffff+f-f-ff
  }

ST40154* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-ffff-f-fff+f+fff-f-ffff-f+f+ff+fff-ff-f-f+ffff+f+fff-f-fff+f+ffff+f-f-ff
  }

ST40155* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-fff-f+F-F+F-f-FFfff-f+f+ff+fff-ff-f-f+fffFF+f+f-F+F-f+fff+f-f-ff
  }

ST40156* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-fff-f+F-Ff-Ffff-f+f+ff+fff-ff-f-f+fffF+fF+F-f+fff+f-f-ff
  }

ST40157* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-fff+ffff+f+fff-fff+fff-f-ffff-fff+f+f-ff
  }

ST40158* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-fff+fff+f+ff-fff+ff-f-fff-fff+f+f-ff
  }

ST40159* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-fff+ff+f+f-fff+f-f-ff-fff+f+f-ff
  }

ST40160* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-ff+ff+f+f-ff+f-f-ff-ff+f+f-f
  }

ST40161 { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-f-fff-f-f+f+fff+f+f-f-ff
  }

ST40162* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f+f-f-@3f@i3-f-f+f+@3f@i3+f+f-f-@2f@.5
  }

ST40163* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+f-f-fff-f-f+f+fff+f+f-f-f+f
  }

ST40164* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-f-f+f-f-f+f-f-f+f+f-f+f+f-f+f+f-f-ff
  }

ST40165* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f+f-f-f+f-f-f+f-f-f+f+f-f+f+f-f+f+f-f-@2f@.5
  }

ST40166* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+f-ff-f-f+ff-f-f+f+ff-f+f+ff+f-f-f+f
  }

ST40167* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff+f+f-f-fff-f-f+f+fff+f+f-f-ff-fff
  }

ST40168* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffffffff+fff+ff+f+f-f-fff-f-f+f+fff+f+f-f-ff-fff-ffffffff
  }

ST40169* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff-f+f+f-fff+fff+ff+f+f-f-fff-f-f+f+fff+f+f-f-ff-fff-fff+f-f-f+fffff
  }

ST40170* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff-ff+f+ff-fff+fff+ff+f+f-f-fff-f-f+f+fff+f+f-f-ff-fff-fff+ff-f-ff+fffff
  }

ST40171* { ; Anthony Hanmer 21/6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff-fff+f+fff-fff+fff+ff+f+f-f-fff-f-f+f+fff+f+f-f-ff-fff-fff+fff-f-fff+fffff
  }

ST40172* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff-ffff+f+ffff-fff+fff+ff+f+f-f-fff-f-f+f+fff+f+f-f-ff-fff-fff+ffff-f-ffff+fffff
  }

ST40173* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+f+f-f+f+ff-f-f+f-f-f+ff
  }

ST40174* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5-f+f+f-f+f+@2f@.5-f-f+f-f-f+@2f@.5
  }

ST40175* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-f+f+f-f+f+ff-f-f+f-f-f+ff-fff
  }

ST40176* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-f+f+f-f+f+ff-f-f+f-f-f+fff
  }

ST40177* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@3f@i3-f+f+f-f+f+@2f@.5-f-f+f-f-f+@3f@i3
  }

ST40178* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff+f-f+f+f-f+f+ff-f-f+f-f-f+f-ff+f
  }

ST40179* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-@2f@.5+f-f+f+f-f+f+@2f@.5-f-f+f-f-f+f-@2f@.5+f
  }

ST40180* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+f+f-f+f+ff-f-f+f-f-f+ff
  }

ST40181* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5-f+f+f-f+f+@2f@.5-f-f+f-f-f+@2f@.5
  }

ST40182* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+fff+f+ff-f-fff-f+f
  }

ST40183* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+ff+f+f-f-ff-f+f
  }

ST40184* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+@2f@.5+f+f-f-@2f@.5-f+f
  }

ST40185* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f-f+ff+f+f-f-ff-f+f+ff
  }

ST40186* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5-f-f+@2f@.5+f+f-f-@2f@.5-f+f+@2f@.5
  }

ST40187* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f+ff+f+f-f-ff-f+f-ff
  }

ST40188* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffffff+ff+f-f+ff+f+f-f-ff-f+f-ff-ffffff
  }

ST40189* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-ff+ff+f+f-f-f+f+f-f-ff-ff+f-fff
  }

ST40190* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@3f@i3+f-@2f+f@.5+f+f-f-f+f+f-f-@2f-f@.5+f-@3f@i3
  }

ST40191* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-f-ff+ff+f+f-f-f+f+f-f-ff-ff+f+fff
  }

ST40192* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-f-ff+ffff+f+fff-f-f+f+fff-f-ffff-ff+f+fff
  }

ST40193* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-f-f+f-f-f+f-f-f+f+f-f-f+f+f-f+f+f-f+f+f-f-ff
  }

ST40194* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f+f-f-f+f-f-f+f-f-f+f+f-f-f+f+f-f+f+f-f+f+f-f-fff
  }

ST40195* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@3f@i3+f+f-f-f+f-f-f+f-f-f+f+f-f-f+f+f-f+f+f-f+f+f-f-@3f@i3
  }

ST40196* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+fff+f+f-f-f+f-f-f+f-f-f+f+f-f-f+f+f-f+f+f-f+f+f-f-fff-ffff
  }

ST40197* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+ff+f+f-f-f+f-f-f+f-f-f+f+f-f-f+f+f-f+f+f-f+f+f-f-ff-ffff
  }

ST40198* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffffffff+ffff+ff+f+f-f-f+f-f-f+f-f-f+f+f-f-f+f+f-f+f+f-f+f+f-f-ff-ffff-ffffffff
  }

ST40199* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff-f-f+f+f-f+f+f-f-ff+f+ff-f-f+f+f-f+f+f-f-ff+f+fffffffff-f-ff+f+f-f-f+f-f-f+f+ff-f-ff+f+f-f-f+f-f-f+f+fffff
  }

ST40200* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff-f-f+f+f-f+f+f-f+f+f-f-fff-f-f+f+f-f+f+f-f+f+f-f-ff+f+fffffffff-f-ff+f+f-f-f+f-f-f+f-f-f+f+fff+f+f-f-f+f-f-f+f-f-f+f+fffff
  }

ST40201* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+ff-fff-ff-f-f+f+fff-f-f+f+ff+fff+ff-ffff
  }

ST40202* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff+ff-fff-ff-f-f+f+fff-f-f+f+ff+fff+ff-ff-fff
  }

ST40203* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-f+f+ff+ff-fff-ff-f-f+f+fff-f-f+f+ff+fff+ff-ff-f-f+fff
  }

ST40204* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-f-ffff+f+ff-ff
  }

ST40205* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-ff-f-f+ff-f+f+ff+ff-ff
  }

ST40206* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-ff-f-f+ff-f+f+ff+ff-fff
  }

ST40207* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@3f@i3+@2f-f@.5-f-f+@2f@.5-f+f+@2f+f@.5-@3f@i3
  }

ST40208* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-fff-f-ff+ff-ff+f+fff+ff-fff
  }

ST40209* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-ffff-f-fff+ff-fff+f+ffff+ff-fff
  }

ST40210* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-f+f-f-f+ff-f-fff+ff-fff+f+ff-f+f+f-f+ff-fff
  }

ST40211* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-f-ff-ffff+ff+f+f-f-ff
  }

ST40212* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+ff-f-fff+f+ffff-f-fffff+f+ffff-f-fff+f+ff-f-f+f
  }

ST40213* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+ff-f-fff+f+ffff-f-fffffff+f+ffff-f-fff+f+ff-f-f+f
  }

ST40214* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+ff-f-fff+f+ffff-f-fffffffff+f+ffff-f-fff+f+ff-f-f+f
  }

ST40215* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+ff-f-fff+f+ffff-fff-f-ff+fffffff-ff+f+fff+ffff-f-fff+f+ff-f-f+f
  }

ST40216* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+ff-f-fff+f+ffff-fff-ffff-f-fff+f+fffffff-f-fff+f+ffff+fff+ffff-f-fff+f+ff-f-f+f
  }

ST40217* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-ff+f+fffff-f-ff+f+f-f
  }

ST40218* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-ff+ff+f+f-ffff+f-f-ff-ff+f+f-f
  }

ST40219* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-ff+ff+f+f-f-f+f+ff-f-f+f+f-f-ff-ff+f+f-f
  }

ST40220* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+f+fff-f-ff+f+f-f+f-f-ff+f+fff-f-ffff
  }

ST40221* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+f+ffff-f-ff+f+f-f+f-f-ff+f+ffff-f-fffff
  }

ST40222* { ; Anthony Hanmer 2000
  Angle 4; an experiment with g - still a tile
  Axiom c9f+c10f+c12f+c14f
  f=fgfg+fgf+gf+g+f-g-fg-fgf-gfgf
  }

ST40223* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f
  }

ST40224* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@2f@.5-f
  }

ST40225* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@q2f@iq2-f
  }

ST40226* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@1.6180339887499f@.6180339887499-f
  }

ST40227* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@2.5f@i2.5-f; still nc at order 12...
  }

ST40228* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@2.6f@i2.6-f; GR+1 seems to be the limit for nc...
  ; so this is just less than that.
  }

ST40229* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-f+f-f-ff+f+f-f+f+f-ff
  }

ST40230* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-f-f+f-f-@2f@.5+f+f-f+f+f-@2f@.5
  }

ST40231* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff-ff+f-ff-ff-ff+ff+ff+f-ff+ffff
  }

ST40232* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff-ff+f-fff-ff-fff+ff+fff+f-ff+ffff
  }

ST40233* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff-f+f-ff-ff-ff+ff+ff+f-f+ffff
  }

ST40234* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff-f+f-f-f+f-f-ff+f+f-f+f+f-f+ffff
  }

ST40235* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-fff-f+f-f-f+f-f-ff+f+f-f+f+f-f+fff+f-ff
  }

ST40236* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-ff+f-f-ff+f-f-f+f-f-ff+f+f-f+f+f-ff+f+f-ff+f-ff
  }

ST40237* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-@2f@.5+f-f-@2f@.5+f-f-f+f-f-@2f@.5+f+f-f+f+f-@2f@.5+f+f-@2f@.5+f-@2f@.5
  }

ST40238* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+f-ff+f-f-ff+f-f-f+f-f-ff+f+f-f+f+f-ff+f+f-ff+f-f-f+f
  }

ST40239* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+f-@2f@.5+f-f-@2f@.5+f-f-f+f-f-@2f@.5+f+f-f+f+f-@2f@.5+f+f-@2f@.5+f-f-f+f
  }

ST40240* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+f+ff-f-fffff-f-ff+f+ff-f-fffff+f+ff-f-ff+f+fffff+f+ff-f-fffff
  }

ST40241* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+f+ff-f-fffff-f-ff+f+fff-f-fffffff+f+fff-f-ff+f+fffff+f+ff-f-fffff
  }

ST40242* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+f+ffff-f-ffff+ff-f-ff+ff-f-ff+f+ff-f-fffff+f+ff-f-ff+f+ff-ff+f+ff-ffff+f+ffff-f-fffff
  }

ST40243* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-f+f+ff-f+f+ff+f-ff-f-f+ff-f-f+fff
  }

ST40244* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-f+fff+fff-f+f+ff-f+f+ff+f-ff-f-f+ff-f-f+fff-fff-f+fff
  }

ST40245* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-fff+f+f-f+f-f+f-f-fff+f
  }

ST40246* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-fff+f+f-f+f+f-f-f+f-f-fff+f
  }

ST40247* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-fff+f+f-f+f+f-f-f+f-f-fff+ff
  }

ST40248* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5-@3f@i3+f+f-f+f+f-f-f+f-f-@3f@i3+@2f@.5
  }

ST40249* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-f-ff+ff+f+f-f-ff-ff+f+fff
  }

ST40250* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-f-ff+f+f-f-f+f+ff-f-fff-fffff+fff+f+ff-f-f+f+f-f-ff+f+ff-fff
  }

ST40251* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-f-ff+f+f-f-f+f+ffff-f-ffff+ff-f-fffffffff+f+ff-ffff+f+ffff-f-f+f+f-f-ff+f+ff-fff
  }

ST40252* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-f-ff+f+f-f-f+f+ffff-ff-f-f+fff+ff-f-fffffffff+f+ff-fff-f+f+ff+ffff-f-f+f+f-f-ff+f+ff-fff
  }

ST40253* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff-fffff-ff-fff+ff+fffff+ff-f
  }

ST40254* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-fff-f-f+f+fff+f-f
  }

ST40255* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-@3f@i3-f-f+f+@3f@i3+f-f
  }

ST40256* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-ff-f-f+f+ff+f-f
  }

ST40257* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-@2f@.5-f-f+f+@2f@.5+f-f
  }

ST40258* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff-f+f-f-ff-f+ff+f+f-f+ffff
  }

ST40259* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-ff+f-f-fff-f-f+f+ff-f-f+f+fff+f+f-ff+f-fff
  }

ST40260* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-ff+f-f-ff+f-f-ff-f+f+ff-f-f+ff+f+f-ff+f+f-ff+f-fff
  }

ST40261* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f-f-f+f+f+f+f-f-f-f-f+f+f-f-f
  }

ST40262* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f+f-ff-f-f+f-f+f-f+f+ff+f-f-f+f+f-f+f-f
  }

ST40263* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f+f-@2f@.5-f-f+f-f+f-f+f+@2f@.5+f-f-f+f+f-f+f-f
  }

ST40264* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f+f-f+ff-f-fff-f+f-f+f-f+fff+f+ff-f+f-f-f+f+f-f+f-f
  }

ST40265* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffffff+f+ff-f+f+f-ff-f-f+ff+f-f-ff-ff+f+ff-f-fff+f+f-f-fff+f+ff-f-ff+ff+f+f-ff-f+f+ff+f-f-f+ff-f-ffffff
  }

ST40266* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffffff+f+ff-f+f+f-ff-f-f+ff+f-f-ff-ff+f+fffff-f-ffffff+f+f-f-ffffff+f+fffff-f-ff+ff+f+f-ff-f+f+ff+f-f-f+ff-f-ffffff
  }

ST40267* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff-f-f+f-f+ff+f+f-f+f-f+ffff-f+f-f+f-f-ff-f+f-f+f+ffff
  }

ST40268* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f-f+f-f+f-f-f+f-f+ff+f+f-f+f-f+ffff-f+f-f+f-f-ff-f+f-f+f+f-f+f-f+f-f+f
  }

ST40269* { ; Anthony Hanmer 25/6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f; Variation:  varying f sizes (1st)
  f=@3f@i3-@2f+f@.5+f+f-@2f@.5+f-f-@2f-f@.5+@3f@i3
  }

ST40270* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+f+f-f+f+fff-f-f+f-f-f+ff
  }

ST40271* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-f+f+f-f+f+fff-f-f+f-f-f+fff
  }

ST40272* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@3f@i3-f+f+f-f+f+@3f@i3-f-f+f-f-f+@3f@i3
  }

ST40273* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-ff+f+ff-f+f+fff-f-f+ff-f-ff+fff
  }

ST40274* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f+f-ff-f+f-f+ff+f+f-f+f-f+ffff-f+f-f+f-f-ff-f+f-f+ff+f-f+f-f+f-f
  }

ST40275 { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+f--f++f-f
  }

ST40276 { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+f---f+++f-f
  }

ST40277 { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f; (Sierpinski variation)
  f=f+++@iq2f@q2---f---@iq2f@q2+++f
  }

ST40278* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff-f-fff+f+ff-f-fff+f+fffff
  }

ST40279* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-ffff-f-fff+f+ff-f-fff+f+ffff+ff-fff
  }

ST40280* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-ffffff-f-fffff+f+ff-f-fffff+f+ffffff+ff-fff
  }

ST40281* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-fff+ff-f-ff+ff-f-fffff+f+ff-f-fffff+f+ff-ff+f+ff-fff+ff-fff
  }

ST40282* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-fff+fff-f-fff+ff-f-fffff+f+ff-f-fffff+f+ff-fff+f+fff-fff+ff-fff
  }

ST40283* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f-@q2ff++f@iq2+f++ff--f-@q2f--ff@iq2+f
  }

ST40284* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f@q2ff+@iq2f+@q2ff++f@iq2+f++ff--f-@q2f--ff@iq2-f-@q2ff@iq2f
  }

ST40285* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=@q2f--f+@iq2f+@q2ff++f@iq2+f++ff--f-@q2f--ff@iq2-f-@q2f++f@iq2
  }

ST40286* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=ff+f++f++f--f--f-ff
  }

ST40287* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+ff+f++f++f--f--f-ff-f
  }

ST40288* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f--f+f+f+ff+f++f++f--f--f-ff-f-f-f++f
  }

ST40289* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f--f+f+f+@q2f@iq2+f++f++f--f--f-@q2f@iq2-f-f-f++f
  }

ST40290* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f--f+f+ff+f++f++f--f--f-ff-f-f++f
  }

ST40291* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f; ... and so on...
  f=@q2f@iq2ff+f+f+@q2f@iq2+f++f++f--f--f-@q2f@iq2-f-f-ff@q2f@iq2
  }

ST40292* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f--f+f+f++f+f-f--f-f-f++f
  }

ST40293* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f-f+f+f++f+f-f--f-f-f+f
  }

ST40294* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=fff-f--f++ff+f++f++f--f+f-f++f--f--f-ff--f++f+fff
  }

ST40295* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=ff-f--f++ff+@q2f@iq2++f++f--f+f-f++f--f--@q2f@iq2-ff--f++f+ff
  }

ST40296* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=@2f@.5-f--f++@2f+f@.5++f++f--f+f-f++f--f--@2f-f@.5--f++f+@2f@.5
  }

ST40297* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=@2.4f@i2.4-f--f++@2f@.5+f++f++f--f+f-f++f--f--f-@2f@.5--f++f+@2.4f@i2.4
  }

ST40298* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f; seems to be the best nc compromise
  f=@2.25f@i2.25-f--@iq2f@q2++@2f@.5+f++f++f--f+f-f++f--f--f-@2f@.5--@iq2f@q2++f+@2.25f@i2.25
  }

ST40299* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=fff++f+f-f-f-f-f-f-f++f--f+f+f+f+f+f+f-f--fff
  }

ST40300* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=fff++ff++f--f--f++f--f--f++f--f--f++f+f-f--f++f++f--f++f++f--f++f++f--ff--fff
  }

ST40301* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=fff--f-f++f++ff++f-f+f--ff--f--f+f++fff
  }

ST40302* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=fff--@iq2f@q2-f++f++f--f++f++ff-f+ff--f--f++f--f--f+@iq2f@q2++fff
  }

ST40303* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f-f-f-f-f++f++ff++f-f+f--ff--f--f+f+f+f+f
  }

ST40304* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f-f-f-f-f++f++@2f@.5++f-f+f--@2f@.5--f--f+f+f+f+f
  }

ST40305* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=ff+ff--f--f+f--ff++f++fff--f--ff++f-f++f++ff-ff
  }

ST40306* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=fff++f+f--f--f-f++f++f-f--f--fffff++f++f+f--f--f+f++f++f-f--fff
  }

ST40307* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=fff++f+f--f--f+f+f--f--fffff++f++f-f-f++f++f-f--fff
  }

ST40308* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+ff+f+f--f--f-f++f++f-f--f--fffff++f++f+f--f--f+f++f++f-f-ff-f
  }

ST40309* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+ff+f+f--f--f+f+f--f--fffff++f++f-f-f++f++f-f-ff-f
  }

ST40310* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+ff+f+f--f--f+f+f--f--f-f++ff--f+f++f++f-f-f++f++f-f-ff-f
  }

ST40311* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+f-f-f+f
  }

ST40312* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+@2f+f-f-@.5f+f
  }

ST40313* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+ff-f-f+f
  }

ST40314* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-@1.6180339887499f@.6180339887499+f+@1.6180339887499f@.6180339887499-f-@1.6180339887499f@.6180339887499+f
  }

ST40315 { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-@i1.5ff@1.5+f+@i1.5ff@1.5-f-@i1.5ff@1.5+f
  }

ST40316* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+fff-ff-f-f+f+ff-f-f+f+ff+fff-f
  }

ST40317* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+fff-ff-f-f+f+fff-f-f+f+ff+fff-f
  }

ST40318* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f; A mistake, but cool
  f=f+ffff+f-f-ff-f-f+f+fff-f-f+f+ff+f+f-ffff-f
  }

ST40319* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff+f-f-fff-f-f+f+fff-f-f+f+fff+f+f-ff-f
  }

ST40320* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@q2f@iq2+ff+f-f-ff+f-f-ff-f+f+fff-f-f+ff+f+f-ff+f+f-ff-@q2f@iq2
  }

ST40321* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=fff--f--f+f+f++f--f-f-f++f++fff
  }

ST40322 { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+ff--f--f+f+f++f--f-f-f++f++ff-f
  }

ST40323 { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+@2f@.5--f--f+f+f++f--f-f-f++f++@2f@.5-f
  }

ST40324* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+ff--f--ff+f+f++f--f-f-ff++f++ff-f
  }

ST40325* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=@q2f@iq2+fff--f--fff+f+f++f--f-f-fff++f++fff-@q2f@iq2
  }

ST40326* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=ff++fff--@q2f@iq2+fff--f--fff+f+f++f--f-f-fff++f++fff-@q2f@iq2++fff--ff
  }

ST40327* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f-f++f++ff--f--f+f
  }

ST40328* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f-f++f++@2f@.5--f--f+f
  }

ST40329* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f-ff++ff++fff--ff--ff+f
  }

ST40330 { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f-ff++ff++ff--ff--ff+f
  }

ST40331* { ; Anthony Hanmer 6/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f-@2f++f++f--f--f@.5+f
  }

ST40332* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffffff+ff+f+f-f-ff-fff-ffff-fff+ffff+fff+ff+f+f-f-ff-ffffff
  }

ST40333* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+ffff-fff-ff+ff-f-fff-ff+f+fff+ffff-f-ffffffff+f+ffff-fff-f-ff+fff+f+ff-ff+fff+ffff-fffff
  }

ST40334* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffffff+ffff-fff-ff+ff-f-fff-ff+f+fff+ffff-f-ffffffff+f+ffff-fff-f-ff+fff+f+ff-ff+fff+ffff-ffffff
  }

ST40335* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+ff--f--ff++f++ff-f
  }

ST40336* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+ffff-fff-ff+ffff-f-fffff-ff+f+fff+ffffff-f-ffffffffff+f+ffffff-fff-f-ff+fffff+f+ffff-ff+fff+ffff-fffff
  }

ST40337* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffffff+ff+f+f-f-ff-fff-ff+ff+f-f-fff-f-f+ff+f-fff+f-ff-f+f+fff+f+f-ff-ff+fff+ff+f+f-f-ff-fffffff
  }

ST40338* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffffff+ff+f+f-f-ff-f+ff-f-ff+f-ff+ff+f-f-f+f-f-f+f-f-f+ff+f-fff+f-ff-f+f+f-f+f+f-f+f+f-ff-ff+f-ff+f+ff-f+ff+f+f-f-ff-fffffff
  }

ST40339* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffffff+ff+f+f-f-ff-f+ff-f-ff+f-ff+ff+f-ff-f-f+f+f-f-ff-f+ff+f-fff+f-ff-f+ff+f+f-f-f+f+ff+f-ff-ff+f-ff+f+ff-f+ff+f+f-f-ff-fffffff
  }

ST40340 { ; Anthony Hanmer 7/2002
  Angle 8; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=fffffff+f+f+f+f+f-f-f--@q2ff-ff-ff@iq2-ff-ff-ff+ff+ff+@q2ff+ff+ff@iq2++f+f+f-f-f-f-f-fffffff
  }

ST40341* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-fff+fff+f+ff-f-ff+f+ff-f-ff+f+ff-f-fff-fff+fff
  }

ST40342* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff+f+f-ff+f+ff-f-ff+f-f-ff+f
  }

ST40343* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-ff+f+f-ff+f+ff-f-ff+f-f-ff+ff
  }

ST40344* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f-f@.5+f+f-@2f@.5+f+@2f@.5-f-@2f@.5+f-f-@2f+f@.5
  }

ST40345* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+f-ff+f+ff-f-ff+f-f-f+f
  }

ST40346* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+f-f-f+f+ff+ff-ff-f-f+f+f-f-f+f
  }

ST40347* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+f-f-f+f+@2f+f-f@.5-f-f+f+f-f-f+f
  }

ST40348* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+ff-f-fff-ff+f+fff+ffffff-fff-f-ff+fff+f+ff-f-f+f
  }

ST40349* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+ff-f-fff-ff+f+fff+fffff-fff-f-ff+fff+f+ff-f-f+f
  }

ST40350* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+f+ff-f-fff-ff+f+fff+ffffff-fff-f-ff+fff+f+ff-f-f+ff
  }

ST40351* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-f+f+ff-f-fff-ff+f+fff-f+f+f-f+f+f-ffff+f-f-f+f-f-f+fff-f-ff+fff+f+ff-f-f+ff
  }

ST40352* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-ff+f+ff-f-fff-ff+f+ff-f+f+f-f+f+f-ffff+f-f-f+f-f-f+ff-f-ff+fff+f+ff-f-ff+f+f-f
  }

ST40353 { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff-f-ff+f+fff+ff-f-fff+f+ff-fff-f-ff+f+ff-f
  }

ST40354* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff-f-ff+ff+f+f-f-fff+f+fffff-f-fff+f+fffff-f-fff+f+f-f-ff-ff+f+ff-f
  }

ST40355* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-fff+f+f-f-fff+f+f-ff+f+ff-f-fffff+f+fffffff-f-ffff+f+fffffff-f-fffff+f+ff-f-ff+f-f-fff+f+f-f-fff+fff
  }

ST40356* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-fff+f+f-f-fff+f+f-f+f+f-f-ffff+f+ffffff-f-fff+f+ffffff-f-ffff+f+f-f-f+f-f-fff+f+f-f-fff+fff
  }

ST40357* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-fff+f+f-f-ff+ff+f+f-f-fffff+f+fffffff-f-fffff+f+fffffff-f-fffff+f+f-f-ff-ff+f+f-f-fff+fff
  }

ST40358* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-fff+f+f-f-ff+ff+f+f-f-fffff+f+fffffff-f-ffff+f+fffffff-f-fffff+f+f-f-ff-ff+f+f-f-fff+fff
  }

ST40359* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff-fff+f+f-f-ff+fff+f+ff-f-fffff+f+fffffff-f-ffff+f+fffffff-f-fffff+f+ff-f-fff-ff+f+f-f-fff+fff
  }

ST40360* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-f-ff-fff+ff+f+f-f-ff
  }

ST40361 { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff+f+f-f-ff-ffff+ff+f+f-f-ff-fff
  }

ST40362* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+f+ff-f+f+f-f-ff-ffff+ff+f+f-f-f+ff-f-fffff
  }

ST40363* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+f+ff-f+f+f-f-fff-f-f+ff-f+f+fff+f+f-f-f+ff-f-fffff
  }

ST40364* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-ffff+fff+ff+f+f-f-ff-ffff+ff+f+f-f-ff-fff-ffff+ff
  }

ST40365* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-ffff+ff-f+f+fff+f+f-f-ff-ffff+ff+f+f-f-fff-f-f+ff-ffff+ff
  }

ST40366* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff-ffff+ff-f+f+fff+f+f-f-ffff-f-ff+ff-ff+f+ffff+f+f-f-fff-f-f+ff-ffff+ff
  }

ST40367* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-fffff+ff-f+f+fff+f+f-f-ffff-f-ff+ff-ff+f+ffff+f+f-f-fff-f-f+ff-fffff+f+f-f
  }

ST40368 { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff-f-f+f+f-f+f+ff-f+ff+fff-ff-f+ff-f-f+f-f-f+f+ffff
  }

ST40369* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff-f-f+f+f-f+f+ff-f+f-ff+f+fffffff-f-ff+f-f+ff-f-f+f-f-f+f+ffff
  }

ST40370* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff-f-fff+f+fff-f+f+ff-f+ff+fff-ff-f+ff-f-f+fff-f-fff+f+ffff
  }

ST40371 { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+f+f-ff-f-f+f+f-f-ff-f+ff-f+ff+f+f-f-f+f+ff+f-f-ffff
  }

ST40372* { ; Anthony Hanmer 7/2000
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+fff-f-fff+ff+f+f-ff-f-f+f+ff-f-fff-f+ff-f+fff+f+ff-f-f+f+ff+f-f-ff-fff+f+fff-f  
  }

ST40373* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ffff-f-ffff+f+ffff-f-ffff+f+ffff-f
  }

ST40374* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f-ff+f+ffff-f-ff+f-f+f
  }

ST40375* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f-fff+f+fffff-f-fff+f-f+f
  }

ST40376* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff+f-f-ff-ffffff+ff+f+f-ff-fff
  }

ST40377* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+fff-f-ff+f-f+f+ff+f-f-ff-ffffff+ff+f+f-ff-f-f+f-ff+f+fff-f
  }

ST40378* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ffff-f-fff+f-f+f+fff+f-f-ff-ffffffff+ff+f+f-fff-f-f+f-fff+f+ffff-f
  }

ST40379* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f-@.5f@2+f+f+f-f
  ; following on from 8761a
  }

ST40380* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f-@.6180339887499f@1.6180339887499+f+f+f-f
  ; following on from 8761a
  }

ST40381* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f-@.8f@1.25+f+f+f-f
  ; following on from 8761a:
  ; definitely moving towards max Hausdorff
  }

ST40382* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f-@.9f@i.9+f+f+f-f
  ; following on from 8761a:
  ; definitely moving towards max Hausdorff
  ; (and, unfortunately, towards a swastika)
  }

ST40383* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffffff+fffff+ffff+fff+ff+f+f-f-ff-fff-ffff-fffff-ffffff-ffffffffffff+ffffff+fffff+ffff+fff+ff+f+f-f-ff-fff-ffff-fffff-ffffff
  }

ST40384* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ffff-f-ff+ff-f-ff+f+ffff+f+f-f-f+fff+f+ff-ff-f-f+f+fff-f-ffffff-ffffffffffff+ffffff+f+fff-f-f+f+ff+ff-f-fff-f+f+f-f-ffff-f-ff+f+ff-ff+f+ffff-f
  }

ST40385* { ; Anthony Hanmer 6/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f; My logo (H), 1st try...
  f=fff+ff-ff-ff+f+fffff+f+ff-ff-ff+f+ffff-f-fffff-ffffff-ffffffffffff+ffffff+fffff+f+ffff-f-ff+ff+ff-f-fffff-f-ff+ff+ff-fff
  }

ST40386* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=@1.6180339887499f@.6180339887499+f--f--f--@.6180339887499f@1.6180339887499++f++f++f-@1.6180339887499f@.6180339887499
  }

ST40387* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=@q2f@iq2+f--f--f--@iq2f@q2++f++f++f-@q2f@iq2
  }

ST40388* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f-@.9f@i.9+f+f+f-ff
  }

ST40389* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+@1.6180339887499f-f-f@.6180339887499-@.9f@i.9+@1.6180339887499f+f+f@.6180339887499-ff
  }

ST40390* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+ff-f+f+f-f+f+f-f+f+f-f-ff-ffff-fffff-ffffffffff+fffff+ffff+ff+f+f-f-f+f-f-f+f-f-f+ff-ffff
  }

ST40391* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+ff-f+f+f-f+f+f-f+f+f-f-ff-fff-f+f-fff-f+f-fff-f+f+ff-f-f+fff+f-f+fff+f-f+fff+ff+f+f-f-f+f-f-f+f-f-f+ff-ffff
  }

ST40392* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+f-f--f--f++f++f+f-f
  }

ST40393* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=@q2f@iq2+f-f--f--@q2f@iq2++f++f+f-@q2f@iq2
  }

ST40394* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=@.75f@i.75+f-f--f--@i.75f@.75++f++f+f-@.75f@i.75
  }

ST40395* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=@.725f@i.725+f-f--f--@i.725f@.725++f++f+f-@.725f@i.725
  ; A mysterious limit for this shape to be nc
  ; Unfortunately, still too swastika-like
  }

ST40396* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+fff-fff-ff-f-f+f+ff+f-ff-f-f+f+ff+fff+fff-fff
  }

ST40397* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-f+f+fff-f-fff+f+fffff-f-f+ff-f-ff+f+ffff-f-ffff+ff-ffff+f+ffff-f-ff+f+ff-f+f+fffff-f-fff+f+fff-f-f+f+f-ff
  }

ST40398* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+fff-f-fff+f+fffff-f-fffff+f+fffffff-f-fff+ff-f-ff+f+ffff-f-ffff+ff-ffff+f+ffff-f-ff+f+ff-fff+f+fffffff-f-fffff+f+fffff-f-fff+f+fff-f-f+f
  }

ST40399* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+ff-f-@2f@.5+f+ffff-f-ffff+f+ffffff-f-ff+@2f@.5-f-ff+f+ffff-f-ffff+@2f@.5-ffff+f+ffff-f-ff+f+@2f@.5-ff+f+ffffff-f-ffff+f+ffff-f-@2f@.5+f+ff-@2f@.5
  }

ST40400* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-f-ff+f+ffff-f-ffff+f+ffffff-f-ff+ff-f-ff+f+ffff-f-ffff+ff-ffff+f+ffff-f-ff+f+ff-ff+f+ffffff-f-ffff+f+ffff-f-ff+f+ff-ff
  }

ST40401* { ; Anthony Hanmer 7/2002
  Angle 4; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-f+f+fff-f-fff+f+f-f-f+f+fffffff-f-fff+ffffff-f-ffffff+f+ffff-f-ffff+ff-ffff+f+ffff-f-ffffff+f+ffffff-fff+f+fffffff-f-f+f+f-f-fff+f+fff-f-f+f
  }

ST40402* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-f+f+ff-f-ff+f-f-fffff+f+f-ff+f+ff-f-f+f+f-ff
  }

ST40403* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-f+f+ff-f-fff-fff+fff+f+ff-f-f+f+f-ff
  }

ST40404* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-f-f+f+ff-f-ff+ff-f-fffffff+f+ff-ff+f+ff-f-f+f+f-fff
  }

ST40405* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-f+f+f-f-ff-fff+ff+f+f-f-f+f+f-ff
  }

ST40406* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-ff+f+ff-f-fff-fff+fff+f+ff-f-ff+f+f-ff
  }

ST40407* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff-f-ff+f+ff-f-ff+ff-f-fffffff+f+ff-ff+f+ff-f-ff+f+ff-fff
  }

ST40408* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-f+f+f-f-f+f-f-fffff+f+f-f+f+f-f-f+f+f-ff
  }

ST40409* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-f+f+ff-f-ff+f-f-fffff+f+f-ff+f+ff-f-f+f+f-ff
  }

ST40410* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+ff-f-fff-ff+fff+f+ff-ffff
  }

ST40411* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-f-ff-ff+ff+f+f-fff
  }

ST40412* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-f-@2f-f+f@.5+f+f-fff
  }

ST40413* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff-f-f+f-f+f+ff-f-fff-ff+fff+f+ff-f-f+f-f+f+ff-f
  }

ST40414* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f-ff-f+ff+f+f-ff
  }

ST40415* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-f-ff-f+ff+f+f-@2f@.5
  }

ST40416* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f|f+f+ff|ff+f|ff+ff|ff-f-f|f-f
  ; also known as 
  }

ST40417* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+@q2f@iq2-f--f-ff+f++f+@q2f@iq2-f
  }

ST40418* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+@q2f@iq2-f--f-@q2f@iq2+f++f+@q2f@iq2-f
  }

ST40419* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+@q2f@iq2-f--f-@2f@.5+f++f+@q2f@iq2-f
  }

ST40420* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f++@q2f@iq2-f--f-ff+f++f+@q2f@iq2--f
  }

ST40421* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f++@q2f@iq2-f--f-@q2f@iq2+f++f+@q2f@iq2--f
  }

ST40422* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f++@q2f@iq2-f--f-@2f@.5+f++f+@q2f@iq2--f
  }

ST40423* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+ff-f--f-ff+f++f+ff-f
  }

ST40424* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-ffffff+f+ffff-ff+f-fff-ff-f-f+f+f-ff+fffff+f-f-ff-ff+ff-fffFff+ff-ff+ff+f+f-fffff-ff+f-f-f+f+ff+fff+f-ff+ffff-f-ffffff+f-fff
  }

ST40425 { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+ff-f--f-@q2f@iq2+f++f+ff-f
  }

ST40426* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+f@q2f@iq2-f--f-@2f@.5+f++f+@q2f@iq2f-f
  }

ST40427* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+@2f@.5-f--f-@q2f@iq2+f++f+@2f@.5-f
  }

ST40428* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f++ff-f--f-ff+f++f+ff--f
  }

ST40429* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f++ff-f--f-@q2f@iq2+f++f+ff--f
  }

ST40430* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f++f@q2f@iq2-f--f-@2f@.5+f++f+@q2f@iq2f--f
  }

ST40431* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f++@2f@.5-f--f-@q2f@iq2+f++f+@2f@.5--f
  }

ST40432* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f+f-f-@2f@.5-f+@2f@.5+f+f-f-@2f@.5
  }

ST40433* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f-f-f+f+f-f-f+f+f+f-f
  ; a new Escher's Dragon tile...
  }

ST40434* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f+f-f-f+ff-f-fffff+f+ff-f+f+f-f-ff
  }

ST40435* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-ff-f-ff+f+ff+f-f
  }

ST40436* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-@2f@.5-f-@2f@.5+f+@2f@.5+f-f
  }

ST40437* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-@q2f@iq2-f-@q2f@iq2+f+@q2f@iq2+f-f
  }

ST40438* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-@1.6180339887499f@.6180339887499-f-@1.6180339887499f@.6180339887499+f+@1.6180339887499f@.6180339887499+f-f
  }

ST40439* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+ff-ff-f-f+f+ff-f-f+f+ff+ff-f
  }

ST40440* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f+f-f@.5-f-f+f+@2f@.5-f-f+f+@2f+f-f@.5
  }

ST40441* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-ff-f-f+ff-f+f+ff+ff-ff
  }

ST40442* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f+f-f@.5-f-f+@2f@.5-f+f+@2f+f-f@.5
  }

ST40443* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-ff-f-f+f-f+f+ff+ff-ff
  }

ST40444* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f+f-f@.5-f-f+f-f+f+@2f+f-f@.5
  }

ST40445* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@q2ff@iq2+ff-ff-f-f+f-f+f-f+f+ff+ff-@q2ff@iq2
  }

ST40446* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+f+f-f-f-f+f+f-f-f-f+f-f+f-f+f-f+f+f+f-f-f+f+f+f-f-ffff
  }

ST40447* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffff+f+f-f-f-f+f+f-f-f-f+f-ff+f-f+f+f+f-f-f+f+f+f-f-ffff
  }

ST40448* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f+f-f-f-f+f+f-f-f-f+f-f+f-f+f+f+f-f-f+f+f+f-f-fff
  }

ST40449* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f+f-f-f-f+f-f-f+f-f+f+f-f+f+f+f-f-fff
  }

ST40450* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+f-f+f-f-f-f+f+f+f-f-ff-ffff+ff+f+f-f-f-f+f+f+f-f+f-fff
  }

ST40451* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f+f-f-f-f+f+f+f-f-ff-fff+ff+f+f-f-f-f+f+f+f-f+f-ff
  }

ST40452* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f+f-f-f-f+f+f+f-f-ff-ff+ff+f+f-f-f-f+f+f+f-f+f-ff
  }

ST40453* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+f-f+f-f-f-f+f+f+f-f-@2f-f+f@.5+f+f-f-f-f+f+f+f-f+f-@2f@.5
  }

ST40454* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f-f+f+f+f-f-f-ff+f+f+f-f-f-f+f+f+f-f+f-f
  }

ST40455* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f-f+f+f+f-f-f-@2f@.5+f+f+f-f-f-f+f+f+f-f+f-f
  }

ST40456* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=ff++f-f-f--f-ff+f++f+f+f--ff
  }

ST40457* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=@2f@.5++f-f-f--f-@2f@.5+f++f+f+f--@2f@.5
  }

ST40458* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fff+ff+f+f+f-f-f+ff+f+f+f-f-fff
  ; same as 8865 but fs relpacing gs
  }

ST40459* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=fffff+f+ff-f-fff+fff-f-ffff-f+f+ff+ffffff-f-fffff+ff+f+f-f-ff-ffff-f-f+ff+f-fF+f-ff-f+f+ffff+ff+f+f-f-ff-fffff+f+ffffff-ff-f-f+ffff+f+fff-fff+f+ff-f-fffff
  ; max line length:  159/160 characters!
  }

ST40460* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f+f-f-f+f+fff-f-fff+f-f-ffff+f+f-fff+f+fff-f-f+f+f-f+f-ff
  }

ST40461* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+f-f+ff-f-ff+f+fff-f-fff+f-f-ffff+f+f-fff+f+fff-f-ff+f+ff-f+f-ff
  }

ST40462* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff+f+f-f+ff-f-ff+f+fff-f-fff+f-f-ffff+f+f-fff+f+fff-f-ff+f+ff-f+f-f-ff+f
  }

ST40463* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f-ff+f+f-f+fff-f-fff+f+ffff-f-ffff+f-f-ffff+f+f-ffff+f+ffff-f-fff+f+fff-f+f-f-ff+f
  }

ST40464* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-f-ff+f+f-f+f+f-f+f-f
  }

ST40465* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-f-@2f@.5+f+f-f+f+f-f+f-f
  }

ST40466* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-f-f+f+f-f+f+f-f+f-f
  }

ST40467 { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-ff+f-f+f+f-f+f-f
  }

ST40468 { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-@2f@.5+f-f+f+f-f+f-f
  }

ST40469* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-f-fff+f+f-f+f+f-f+f-f
  }

ST40470* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-f-@3f@i3+f+f-f+f+f-f+f-f
  ; nc max:  @3 - nc here, but not nt
  }

ST40471* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-f-@1.5ff@i1.5+f+f-f+f+f-f+f-f
  }

ST40472* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-f-@1.25ff@.8+f+f-f+f+f-f+f-f
  }

ST40473* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-f-@2.5f@.4+f+f-f+f+f-f+f-f
  }

ST40474* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-f-@2.6180339887499f@i2.6180339887499+f+f-f+f+f-f+f-f
  }

ST40475* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=f+f-f+f-f-f+f-f-@2.9f@i2.9+f+f-f+f+f-f+f-f
  ; approaching the nc max of @3
  }

ST40476* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+@2f@.5--f--ff++f++@2f@.5-f
  }

ST40477* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+@q2ff--f--ff++f++ff@iq2-f
  }

ST40478* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+ff--f--@2f@.5++f++ff-f
  }

ST40479* { ; Anthony Hanmer 7/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+@q2ff--f--@2f@.5++f++ff@iq2-f
  }

ST40480* { ; Anthony Hanmer 7/2002
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ffffffff+f+ff-ff-f-f+ff-fff-fffffff+f+fffffffff-f-fffffff+fff+ff-f+f+ff+ff-f-ffffffff
  }

ST40481* { ; Anthony Hanmer 9/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+f--f--@.6180339887499f--@.6180339887499f++@1.6180339887499f++@1.6180339887499f++f-f
  }

ST40482* { ; Anthony Hanmer 9/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+f--f--@iq2f--@iq2f++@q2f++@q2f++f-f
  }

ST40483* { ; Anthony Hanmer 9/2002
  Angle 8 ; nc; and 4 together make a tile
  Axiom c9f++c10f++c12f++c14f
  f=f+f--f--@.8f--@.8f++@1.25f++@1.25f++f-f
  }

ST40484 { ; Anthony Hanmer 3/2003
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=@2f@.5+ff-f-ff-f+ff+f+ff-@2f@.5
  }

ST40485 { ; Anthony Hanmer 3/2003
  Angle 4 ; nc; and 4 together make a tile
  Axiom c9f+c10f+c12f+c14f
  f=ff+ff-f-ff-f+ff+f+ff-ff
  }

ST40486 { ; Anthony Hanmer 5/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f++f--f--@iq2f@q2-f+@iq2f@q2++f++f--f
  }

ST40487 { ; Anthony Hanmer 13/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f++f--f--@iq2f-f+f@q2++f++f--f
  }

ST40488 { ; Anthony Hanmer 13/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f++f--f--@.75f-f+f@i.75++f++f--f
  }

ST40489 { ; Anthony Hanmer 13/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f++f--f--@.65f@i.65-f+@.65f@i.65++f++f--f
  }

ST40490 { ; Anthony Hanmer 13/10/2003
  Angle 4 ; Cesaro variation, ST
  Axiom f
  f=f+f-f-f+f+f-f
  }

ST40491 { ; Anthony Hanmer 13/10/2003
  Angle 4 ; Cesaro variation, ST
  Axiom f
  f=f+f-f-@2.6180339887499f@i2.6180339887499+f+f-f
  }

ST40492 { ; Anthony Hanmer 13/10/2003
  Angle 4 ; Cesaro variation, ST
  Axiom f
  f=f+@2.6180339887499f@i2.6180339887499-f
  }

ST40493 {; Anthony Hanmer 13/10/2003
  Angle 4 ; Cesaro variation, ST
  Axiom f
  f=f+@3f@i3-f
  }

ST40494 {; Anthony Hanmer 14/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f+f+f--f--f-@iq2ff@q2+f++f++f-f-f
  }

ST40495 {; Anthony Hanmer 14/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f+@iq2f@q2+f--f--f-@iq2ff@q2+f++f++f-@iq2f@q2-f
  }

ST40496 {; Anthony Hanmer 14/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f+f++f--f--f-ff+f++f++f--f-f
  }

ST40497 {; Anthony Hanmer 14/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f+f++f--f--f-f+f++f++f--f-f
  }

ST40498 {; Anthony Hanmer 14/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f+f++f--f--f-@q2f@iq2+f++f++f--f-f
  }

ST40499 {; Anthony Hanmer 14/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f+f++f--f--f-@iq2ff@q2+f++f++f--f-f
  }

ST40500 {; Anthony Hanmer 14/10/2003
  Angle 8 ; Cesaro variation, ST
  Axiom f
  f=f+f++f--f--f-@1.2ff@i1.2+f++f++f--f-f
  }

ST40501 { ; Anthony Hanmer 19/01/2004
  Angle 4 ; nc; and 4 together make a tile
  Axiom f ; Previously too long, but with the new LS line limit
          ; of 255 characters in Fractint 20.4, it now fits
  f=fffff+f+f-f-ff-ff+f+ffff-f+f+fff+f+f-f-ff-ff+f+ffff-f-fffff-fffffff-fff-f+ffffff-f+fff+fffffff+fffff+f+ffff-f-ff+ff+f+f-f-fff-f-f+ffff-f-ff+ff+f+f-f-fffff
  }

ST40502 { ; Anthony Hanmer 19/01/2004
  Angle 4 ; nc; and 4 together make a tile
  Axiom f ; Previously too long, but with the new LS line limit
          ; of 255 characters in Fractint 20.4, it now fits
  f=ffff+f+f-f-ff-ff+f+fff+f-f-ff-ffff+f+fffff+f-f-f+f-f-ff+f+f-f-ff-ff+f+fff+f-f-ff-ffff+f+fffff+f-f-ff-ffffff+f-ffffff+ff+f+f-fffff-f-ffff+ff+f+f-fff-f-ff+ff+f+f-f-ff+f+f-f+f+f-fffff-f-ffff+ff+f+f-fff-f-ff+ff+f+f-f-ffff
  }

ST60001 { ; Anthony Hanmer 13/12/2001 (was adh7202, my 1st hexagonal ST)
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+f+f+f-f-f-f-f+f
  }

ST60002 {; Anthony Hanmer 6/2002 (was adh7104b, the 2nd hexagnoal ST)
  Angle 6 ; 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f+f-f
  }

ST60003 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; & 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+f+f-f-f-f
  }

ST60004 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 3 together make a tile
  Axiom c9f++c12f++c14f
  f=f-f-f+f+f+f-f-f-f+f+f
  }

ST60005 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+f-f-f
  }

ST60006 {; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5+f+@2f@.5-f-@2f@.5
  }

ST60007 {; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 3 together also make a tile
  Axiom c9f++c12f++c14f
  f=f+f+f-f-f
  }

ST60008 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+f+f-f-f-f+f
  }

ST60009 {; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 3 together also make a tile
  Axiom c9f++c12f++c14f
  f=f-f+f+f+f-f-f-f+f
  }

ST60010 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+ff+f-ff-f-f
  }

ST60011 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+@2f@.5+f-@2f@.5-f-f
  }

ST60012 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+ff+f+f-f-ff-f
  }

ST60013 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+@2f@.5+f+f-f-@2f@.5-f
  }

ST60014 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff+f+f+f-f-f-ff
  }

ST60015* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5+f+f+f-f-f-@2f@.5
  }

ST60016 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+ff+ff-ff-f-f
  }

ST60017* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+@2f+f-f@.5-f-f
  }

ST60018 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+ff+f+ff-f-ff-f
  }

ST60019* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+@2f@.5+f+@2f@.5-f-@2f@.5-f
  }

ST60020* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff+f+f+ff-f-f-ff
  }

ST60021 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+ff+ff+f-ff-ff-f
  }

ST60022 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+@2f+f@.5+f-@2f-f@.5-f
  }

ST60023 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff+f+ff+f-ff-f-ff
  }

ST60024 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5+f+@2f@.5+f-@2f@.5-f-@2f@.5
  }

ST60025 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff+ff+ff+f-ff-ff-ff
  }

ST60026 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff+ff+ff+ff-ff-ff-ff
  }

ST60027 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+ff-f-f
  }

ST60028 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+@2f@.5-f-f
  }

ST60029 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+ff+f-ff-f
  }

ST60030 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+@2f@.5+f-@2f@.5-f
  }

ST60031 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff+f+f-f-ff
  }

ST60032 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5+f+f-f-@2f@.5
  }

ST60033 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+ff+ff-ff-f
  }

ST60034 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+@2f+f-f@.5-f
  }

ST60035 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff+f+ff-f-ff
  }

ST60036 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5+f+@2f@.5-f-@2f@.5
  }

ST60037 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff+ff+ff-ff-ff
  }

ST60038 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+f+ff-f-f-f+f
  }

ST60039* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+f+@2f@.5-f-f-f+f
  }

ST60040 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+ff+f-ff-f-f+f
  }

ST60041 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+@2f@.5+f-@2f@.5-f-f+f
  }

ST60042 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+ff+f+f-f-ff-f+f
  }

ST60043 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+@2f@.5+f+f-f-@2f@.5-f+f
  }

ST60044 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-ff+f+f+f-f-f-ff+f
  }

ST60045 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-@2f@.5+f+f+f-f-f-@2f@.5+f
  }

ST60046 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff-f+f+f+f-f-f-f+ff
  }

ST60047 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5-f+f+f+f-f-f-f+@2f@.5
  }

ST60048 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+ff+ff-ff-f-f+f
  }

ST60049 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+@2f+f-f@.5-f-f+f
  }

ST60050 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+ff+f+ff-f-ff-f+f
  }

ST60051 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+@2f@.5+f+@2f@.5-f-@2f@.5-f+f
  }

ST60052* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-ff+f+f+ff-f-f-ff+f
  }

ST60053* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-@2f@.5+f+f+@2f@.5-f-f-@2f@.5+f
  }

ST60054 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff-f+f+f+ff-f-f-f+ff
  }

ST60055 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5-f+f+f+@2f@.5-f-f-f+@2f@.5
  }

ST60056 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff-f+ff+f+ff-f-ff-f+ff
  }

ST60057 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5-f+@2f@.5+f+@2f@.5-f-@2f@.5-f+@2f@.5
  }

ST60058* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+ff+f+f-f-ff-f-f+f
  }

ST60059* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+@2f@.5+f+f-f-@2f@.5-f-f+f
  }

ST60060* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+ff+f+f+f-f-f-ff-f+f
  }

ST60061* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+@2f@.5+f+f+f-f-f-@2f@.5-f+f
  }

ST60062* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-ff+f+f+f+f-f-f-f-ff+f
  }

ST60063* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-@2f@.5+f+f+f+f-f-f-f-@2f@.5+f
  }

ST60064* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff-f+f+f+f+f-f-f-f-f+ff
  }

ST60065* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5-f+f+f+f+f-f-f-f-f+@2f@.5
  }

ST60066 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+ff+f+f+ff-f-f-ff-f+f
  }

ST60067 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+@2f@.5+f+f+@2f@.5-f-f-@2f@.5-f+f
  }

ST60068* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff-f+f+f+f+ff-f-f-f-f+ff
  }

ST60069* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5-f+f+f+f+@2f@.5-f-f-f-f+@2f@.5
  }

ST60070 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff-f+ff+f+f+ff-f-f-ff-f+ff
  }

ST60071 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff-f+f+ff+f+ff-f-ff-f-f+ff
  }

ST60072 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5-f+f+@2f@.5+f+@2f@.5-f-@2f@.5-f-f+@2f@.5
  }

ST60073 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+fff-f-f
  }

ST60074 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+@3f@i3-f-f
  }

ST60075 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+ff+fff-ff-f
  }

ST60076 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+@2f@.5+@3f@i3-@2f@.5-f
  }

ST60077* { ; Anthony Hanmer 6/2002
  Angle 6; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f; Apparently this could continue
  f=fffff-ffff-fff-ff-f-f+f+ff+fff+ffff+fffff; growing indefinitely...
  }

ST60078 { ; Anthony Hanmer 6/2002
  Angle 6; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f; Apparently this could continue
  f=ffff-fff-ff-f-f+f+ff+fff+ffff; growing indefinitely...
  }

ST60079 { ; Anthony Hanmer 6/2002
  Angle 6; nc; and 6 together make a tile
  Axiom c1f;+c2f+c3f+c4f+c5f+c6f; Apparently this could
  f=fff-ff-f-f+f+ff+fff; continue growing indefinitely...
  }

ST60080* { ; Anthony Hanmer 6/2002
  Angle 6; nc; and 6 together make a tile
  Axiom c1f;+c2f+c3f+c4f+c5f+c6f; Apparently this could continue
  f=fffff-ffff-fff-ff-f-f-f+f+f+ff+fff+ffff+fffff; growing indefinitely...
  }

ST60081* { ; Anthony Hanmer 6/2002
  Angle 6; nc; and 6 together make a tile
  Axiom c1f;+c2f+c3f+c4f+c5f+c6f; Apparently this could continue
  f=fffff-fff-fff-ff-f-f-f+f+f+ff+fff+fff+fffff; growing indefinitely...
  }

ST60082* { ; Anthony Hanmer 6/2002
  Angle 6; nc; and 6 together make a tile
  Axiom c1f;+c2f+c3f+c4f+c5f+c6f; Apparently this could continue
  f=ffff-fff-fff-ff-f-f-f+f+f+ff+fff+fff+ffff; growing indefinitely...
  }

ST60083* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=fff+f+f+f+f-f-f-f-fff
  }

ST60084 { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f-f+f+f+f+f-f-f-f-f+f+f
  }

ST60085* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=fff-ff-f-f-f+f+f+f+f-f-f-f-f+f+f+ff+fff
  }

ST60086* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@3f@i3-@2f@.5-f-f-f+f+f+f+f-f-f-f-f+f+f+@2f@.5+@3f@i3
  }

ST60087* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=fffff-ffff-ff-f-f-f+f+f+f+f-f-f-f-f+f+f+ff+ffff+fffff
  }

ST60088* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ffffff-fff-fff-f-f-f+f+f+f+f-f-f-f-f+f+f+fff+fff+ffffff
  }

ST60089* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f-f-f+f-f-f-f-f+f+f+f+f-f+f+f-f
  }

ST60090* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+f+f-f-f-f-f+f-f+f+f+f+f-f+f-f+f-f-f-f-f+f-f+f+f+f+f-f-f-f+f
  }

ST60091* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+f+f-f-f-f-f+f-f+f+f+f+f-f+f-f+f-f+f-f-f-f-f+f-f+f+f+f+f-f-f-f+f
  }

ST60092* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+f-f-f+f-f-f-f-f+f+f+f+f-f-f-f-f+f+f+f+f-f+f+f-f-f
  }

ST60093* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f-f+f-f-f+f-f-f-f-f+f+f+f+f-f-f-f-f+f+f+f+f-f+f+f-f+f-f
  }

ST60094* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f+f+f-f-f+f+f+f+f-f-f-f-f+f+f-f-f-f
  }

ST60095* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f-f-f+f+f+f+f-f-f+f+f+f+f-f-f-f-f+f+f-f-f-f-f+f+f-f
  }

ST60096* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+f-f-f+f+f+f+f-f-f+f+f+f+f-f-f-f-f+f+f-f-f-f-f+f+f-f-f+f
  }

ST60097* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f-f-f-f-f+f+f-f+f+f-f-f+f+f+f+f-f-f+f+f+f+f-f-f-f-f+f+f-f-f-f-f+f+f-f-f+f-f-f+f+f+f+f-f
  }

ST60098* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff-ff+f+f+f+f-f-f+f+f-f-f-f-ff+ff
  }

ST60099* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f+f+f+f+f-f-f+f+f-f-f-f-f+f
  }

ST60100* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ff-f-f+f+f-ff+f+f+f+f-f-f+f+f-f-f-f-ff+f-f-f+f+ff
  }

ST60101* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=@2f@.5-f-f+f+f-@2f@.5+f+f+f+f-f-f+f+f-f-f-f-@2f@.5+f-f-f+f+@2f@.5
  }

ST60102* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f-f+f+f-ff+f+f+f+f-f-f+f+f-f-f-f-ff+f-f-f+f+f
  }

ST60103* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f-f+f+f-@2f@.5+f+f+f+f-f-f+f+f-f-f-f-@2f@.5+f-f-f+f+f
  }

ST60104* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f-f-f+ff+fff+f+f+f+f-f-f-f-ff+f+f+f+f-f-f-f-fff-ff-f+f+f
  }

ST60105* { ; Anthony Hanmer 25/6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=f+f-ff+f-f-f+f+f+f-f-f-f-f+f-f-f+f-f-f+f+f+f+F-f-f-f-f+f+f-f+f+f-f+f+f+f+f-f-f-f+f+f-ff+f-f
  }

ST60106* { ; Anthony Hanmer 6/2002
  Angle 6 ; nc; and 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=ffff-f+f+f+f-f-f-f-f+f-f-f+f-f-f+f+f+f+F-f-f-f-f+f+f-f+f+f-f+f+f+f+f-f-f-f+ffff
  }

ST60107* { ; Anthony Hanmer 7/2002
  Angle 6 ; nc; & 6 together make a tile
  Axiom c1f+c2f+c3f+c4f+c5f+c6f
  f=fff+f+f+fff-f-f-fff
  }

