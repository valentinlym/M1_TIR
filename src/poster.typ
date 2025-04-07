#let myfill = rgb("#DA4848")
#let primary = rgb("#C2302B")
#let success = rgb("#1c6a0b")
#let link = rgb("#4472C4")

#let team() = text(fill: white)[#v(-1.55em) #h(6.25em) #box(fill: myfill,inset: (x:6pt,y:6pt), radius: 4pt)[newSmile]]

#set rect(
  stroke:.03em,
  inset: 22pt,
  width: 100%,
  radius: 4pt,
)

#set text(font: "IBM Plex Sans", size: 28pt)

#show figure.where(kind: image): it => align(center)[
  #block(below: 0.65em, it.body)
  #align(left)[#it.caption.body]
]

#set page(
  height: 36in,
  width: 48in,
  margin: (left: 2in, right:2in, top: 2in, bottom: 3in),
  footer-descent: 0%,
  footer: align(center)[
    #set text(black)
    #rect(stroke: none)[
      #grid( columns: (1fr, 4fr, 1fr),
        align(left+horizon)[Équipe projet #team()],
        align(horizon+center)[Références, figures étendues et méthodologie peuvent être trouvéesà l'adresse suivante~: \
        https://github.com/valentinlym/M1_TIR],
        align(right+horizon)[//#image("assets/qrcode.png")
        _img.png_]
      )
    ]
  ]
)

#set par(justify: true, first-line-indent: 0em)
#set par(spacing: 0.65em)

#let panel(title, body, height: auto) = stack(
  rect(fill: myfill, width: 100%, text(white)[#title]),
  rect(width: 100%, height: height, body)
)

#let column(..panels) = {
  let pre-last-panels = panels.pos().slice(0, -1)
  let last-panel = panels.pos().last()
  grid(
    rows: (auto,) * (panels.pos().len() - 1) + (1fr,),
    gutter: 32pt,
    ..{
      pre-last-panels.map(x => panel(x.at(0), x.at(1)))
      (panel(..last-panel, height: 100% - 1.5in),)
    }
  )
}

#grid(
  columns: (1fr,) * 3,
  rows: (auto, 1fr),
  gutter: 32pt,
  // Header
  grid.cell(colspan: 3)[
    #rect(stroke: none)[
      #set text(black)
      #set align(center)
      #grid(
        columns: (1fr, 5fr, 1fr),
        [#align(left+horizon)[#image("assets/new_logo_UT.svg", height:5em)]], // Remplacez par le chemin de votre logo
        [
          #text(64pt)[La gamification dans l'apprentissage de langue étrangère] \
          // #v(.75em)
          // #text(38pt)[Les recommandations pour la gamification d'applications d'apprentissage d'une langue étrangère] \
          #v(1.5em)
          Hala~Alrifai#super[1], Lilian~Refour#super[1], Radhia~Lahmar#super[1], Valentin~Leclair#super[1] \
          En cadrés par Célia~Martinie#super[2] \

          #super[1]Master 1 IHM à l'Université de Toulouse, #super[2]IRIT résponsable de l'équipe ICS (Interactive Critical Systems)
        ],
        [#align(right+horizon)[#image("assets/new_logo_cys.svg", height: 5em)]],
      )
    ]
  ],
  // column01
  column(
    ([== {Introduction}], [
      // TODO:
    ]),
    ([== {Définition et Principes Fondamentaux}], [
      // TODO:
    ]),
    ([== {Impact sur l'engagement de l'utilisateur}], [
      // TODO:
    ])
  ),
  // column02
  column(
    ([== {Types d'Applications et leur Gamification}], [
      // TODO:
    ]),
    ([== {Recommandations Clés - Conception et Motivation}], [
      // TODO:
    ]),
    ([== {Recommandations Clés - Profils d'Utilisateurs}], [
      // TODO:
    ])
  ),
  // column03
  column(
    ([== {Recommandations Clés - Progression et Évaluation}], [
     // TODO:
    ]),
    ([== {Recommandations Clés - Gamification comme Marchepied}], [
      // TODO:
    ]),
    ([== {Conclusion}], [
      // TODO:
    ])
  )
)