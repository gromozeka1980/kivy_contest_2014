Return-Path: <mcworter@midohio.net>
Received: from mail.midohio.net by REG.TRIUMF.CA (MX V4.0-1 VAX) with SMTP;
          Thu, 13 Feb 1997 09:25:14 PST
Received: from presario (modem16.midohio.net [206.31.169.115]) by
          mail.midohio.net (8.8.4/8.7.3) with SMTP id MAA11729 for
          <noel@triumf.ca>; Thu, 13 Feb 1997 12:24:42 -0500 (EST)
Message-ID: <33035CB1.2DF7@midohio.net>
Date: Thu, 13 Feb 1997 12:25:53 -0600
From: "William A McWorter Jr." <mcworter@midohio.net>
Reply-To: mcworter@midohio.net
X-Mailer: Mozilla 3.01Gold (Win95; I)
MIME-Version: 1.0
To: NOEL_GIFFIN <noel@triumf.ca>

Also, here are some lsystems stolen from the web.  Herb Savages of
Penrose tilings are improvements and may be more understandable than
those of others. (comments by Herb Savage's lsystems are his)

Schneider { ; Craig Schneider rendered for fractint
  Angle 12
  Axiom a
  a=f[-a][+a]fa
  f=ff
  }

Alfonseca { ; Manuel Alfonseca rendered for fractint
  Angle 16
  Axiom A
  A=f-[A+A]+f[+fA]-A
  f=ff
  }

Alfonseca1 { ;Manuel Alfonseca rendered for fractint
  Angle 12
  Axiom t
  f=ff
  l=[c48s+f-f-f+|+f-f-f]
  r=f[--l][++l]f
  t=r+[t]--[--l]r[++l]-[t]++t
  s=@.5s
  }

Penrose1Color { ; by Herb Savage
; based on Martin Gardner's "Penrose Tiles to Trapdoor Ciphers",
; Roger Penrose's rhombuses
; Uses color to show similar lines
  Angle 10
  Axiom +WC10F--XC12F---YC12F--ZC10F
  W=YC12F++ZC10F----XC12F[-YC12F----WC10F]++
  X=+YC12F--ZC10F[---WC10F--XC12F]+
  Y=-WC10F++XC12F[+++YC12F++ZC10F]-
  Z=--YC12F++++WC10F[+ZC10F++++XC12F]--XC12F
  F=
  }

; This tiling actually does what the old comment for ColorPenrose1 said
; it did.

Penrose1Forced { ; by Herb Savage
; based on Martin Gardner's "Penrose Tiles to Trapdoor Ciphers",
; Roger Penrose's rhombuses
; Uses color to show the edge matching rules to force nonperiodicy
  Angle 10
  Axiom +WC10FC12F--XC11FC10F---YC10FC11F--ZC12FC10F
  W=YC10FC11F++ZC12FC10F----XC11FC10F[-YC10FC11F----WC10FC12F]++
  X=+YC10FC11F--ZC12FC10F[---WC10FC12F--XC11FC10F]+
  Y=-WC10FC12F++XC11FC10F[+++YC10FC11F++ZC12FC10F]-
  Z=--YC10FC11F++++WC10FC12F[+ZC12FC10F++++XC11FC10F]--XC11FC10F
  F=
  }

KitesAndDarts { ; by Herb Savage
; based on Martin Gardner's "Penrose Tiles to Trapdoor Ciphers",
; Roger Penrose's kites and darts
  Angle 10
  Axiom WG+XG+WG+XG+WG+XG+WG+XG+WG+X
  W=[F][++@1.618033989F][++G---@.618033989G|X-Y|G|W]
  X=[F+++@1.618033989F][++@.618033989GZ|X|-G|W]
  Y=[+F][@1.618033989F][+G@.618033989|Y+X]
  Z=[-F][@1.618033989F][@.618033989G--WG|+Z]
  F=
  }

KitesAndDartsColor { ; by Herb Savage
; based on Martin Gardner's "Penrose Tiles to Trapdoor Ciphers",
; Roger Penrose's kites and darts
  Angle 10
  Axiom WG+XG+WG+XG+WG+XG+WG+XG+WG+X
  W=[C10F][++@1.618033989C12F][++G---@.618033989G|X-Y|G|W]
  X=[C10F+++@1.618033989C12F][++@.618033989GZ|X|-G|W]
  Y=[+C10F][@1.618033989C12F][+G@.618033989|Y+X]
  Z=[-C10F][@1.618033989C12F][@.618033989G--WG|+Z]
  F=
  }

William

