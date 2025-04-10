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

#set text(font: "IBM Plex Sans", size: 28pt, lang: "fr")

#show figure.where(kind: image): it => align(center)[
  #block(below: 0.65em, it.body)
  #align(left)[#it.caption.body]
]

#set page(
  height: 43in,
  width: 48in,
  margin: (left: 2in, right:2in, top: 2in, bottom: 3in),
  footer-descent: 0%,
  footer: align(center)[
    #set text(black)
    #rect(stroke: none)[
      #grid( columns: (1fr, 4fr, 1fr),
        align(left+horizon)[Équipe projet #team()],
        align(horizon+center)[Références, figures étendues et article peuvent être trouvées à l'adresse suivante~: \
        https://github.com/valentinlym/M1_TIR],
        align(right+horizon)[#image("assets/qrcode.svg", width: 25%)]
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
        [#align(left+horizon)[#image("assets/new_logo_UT.svg", height:5em)]],
        [
          #text(64pt)[La gamification dans l'apprentissage de langue étrangère] \
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
   ([== Introduction], [
    Dans un monde de plus en plus connecté, l'apprentissage des langues étrangères est devenu indispensable. Toutefois, les méthodes traditionnelles ne réussissent plus à captiver les apprenants d'aujourd'hui, natifs du numérique. C'est dans ce contexte que la gamification apparaît comme une approche innovante.  
    La gamification, malgré ses apports prometteurs, ne constitue pas une solution miracle, et son efficacité dépend des fondements scientifiques sur lesquels elle repose.
  
    Nous avons organisé notre analyse en quatre points~:
    + Tout d'abord, nous définissons les objectifs et les principes généraux de la gamification, ce qui nous permet d’analyser par la suite les applications d’apprentissage des langues étrangères qui l’utilisent.  
    + Cela nous conduit à l’étude des différents types d’outils gamifiés.  
    + Ensuite, nous détaillons les recommandations de ludification les plus efficaces dans ce domaine.  
    + Enfin, nous identifions les bénéfices ainsi que les limites de cette approche, afin de conclure le plus exhaustivement possible nos travaux de recherche.
    ]),
    ([== Figure 1 & 2~: Définition de la gamification], [
  #block(width: 100%)[#figure(image("assets/motivation.svg", width: 80%), caption: [
    Introduite dans les années 1980 par Richard Bartle, la gamification désignait un moyen de transformer une activité non ludique en jeu. Aujourd'hui, cette approche de conception consiste à utiliser les mécaniques de jeu pour favoriser la motivation intrinsèque, propre à l'utilisateur, afin d'augmenter son engagement personnel dans l'accomplissement de tâches. Dès lors, le terme *joueur* est également employé pour désigner les utilisateurs.
  ])]
  
  #block(width: 100%)[#figure(image("assets/def_gamification.svg", width: 80%), caption: [
    Une gamification efficace repose sur trois besoins clés~:
    / (a) Autonomie~: Donner aux joueurs la liberté de personnaliser leur apprentissage, le choix de leurs objectifs et de leurs méthodes.
    / (b) Compétence~: Offrir aux joueurs des défis adaptés et leur fournir des feedbacks de façon régulière.
    / (c) Relation sociale~: Encourager les interactions entre joueurs via des défis collaboratifs, des forums ou des classements.

    Ces trois principes sont essentiels pour renforcer la motivation intrinsèque, le facteur qui détermine l'efficacité des dispositifs gamifiés utilisés pour l'apprentissage des langues.
  ])]
  ]),
  ),
  // column02
  column(
    ([== Types d'applications linguistiques gamifiées], [
  L'adoption massive du numérique dans notre société a engendré la création d'une grande diversité d'applications pour l'apprentissage des langues, allant des plateformes mobiles accessibles à tous jusqu'aux environnements immersifs complexes~;~chacune exploitant la gamification à sa manière.

  #set par(justify: false)

  #figure(
    table(columns: (1fr,)*3, inset: .5em,
      table.cell(colspan: 3, fill: rgb("#ffb5b5"))[*Applications mobiles grand public (MALL)*],
      [_Exemples_], [_Mécanismes_], [_Objectif_],
      align(left)[
        - Duolingo
        - Quizlet
        - Busuu],
      align(left)[
        - Points d'expérience
        - Classement
        - Ligues hebdomadaires],
      align(left)[
        Favoriser la régularité, l'autonomie et l'engagement continu],
      
      table.cell(colspan: 3, fill: rgb("#ffb5b5"))[*Applications immersives et collaboratives*],
      [_Exemples_], [_Mécanismes_], [_Objectif_],
      align(left)[
        - Seppo
        - Second Life
        - GaMbAR],
      align(left)[
        - Jeux de rôle scénarisés
        - Avatars
        - Réalité augmentée
        - Défis en groupe],
      align(left)[
        Développer les compétences orales et culturelles, renforcer l'immersion et encourager la collaboration],
      
      table.cell(colspan: 3, fill: rgb("#ffb5b5"))[*Gamification en salle de classe et applications spécialisées*],
      [_Exemples_], [_Mécanismes_], [_Objectif_],
      align(left)[
        - Genially
        - ClassDojo
        - Classcraft],
      align(left)[
        - Quiz interactifs
        - Missions collaboratives
        - Classement Elo
        - Duels],
      align(left)[
        Favoriser à la fois la motivation extrinsèque et intrinsèque, et augmenter l’interaction sociale],
    )
  )
]),
   ([== Figure 3~: Stratégies pour optimiser l'apprentissage], figure(
  image("assets/methode_gamification.svg", width: 90%),
  caption: [
    Conjointement à une conception centrée sur l'utilisateur, l'un des objectifs sous-jacents de la gamification est la mise en place d'une boucle d'engagement. À l'instar des stratégies utilisées pour fidéliser les consommateurs, la ludification doit assurer un équilibre entre les différents besoins et préférences des joueurs afin qu'ils maintiennent leur intérêt dans les tâches souhaitées. 

    Comme l'explique _The Gamification User Types Hexad Scale (2016)_, différents profils d'utilisateurs ont des motivations variées (Achievers, Socialisers, Free Spirits, Philanthropists, Players, Disruptors). Il est donc essentiel d'adapter les éléments de gamification (badges, classements, feedbacks, etc.) à ces différents profils pour optimiser leur engagement et leur expérience d'apprentissage. 

    Une conception réfléchie et personnalisée, tenant compte de ces divers besoins psychologiques fondamentaux (autonomie, compétence, relation sociale), est cruciale pour une gamification efficace.
  ]
))
  ),
  // column03
  column(
([== Figure 4~: Typologies de joueurs, selon Marczewski], figure(
  image("assets/hexad_Scale.svg", width: 80%),
  caption: [
    Plus particulièrement, d'autres typologies de joueurs viennent compléter cette vision, à l'instar de celle proposée par Marczewski. On y retrouve~:
    / Les "Joueurs"~: attirés par les récompenses et les éléments compétitifs, ce qui fait écho au profil des *Players* de l'Hexad Scale, également sensibles aux systèmes de points.
    / Les "Réalisateurs"~: motivés par les défis et la progression, appréciant les niveaux et les badges, ils correspondent aux *Achievers* de l'Hexad.
    / Les "Philanthropes"~: mus par l'entraide et les systèmes de mentorat, ils se retrouvent dans la même catégorie de l'Hexad Scale.
    / Les "Pro-sociaux"~: recherchant l'interaction et bénéficiant des fonctionnalités collaboratives, ils sont similaires aux *Socialisers*.
    / Les "Esprits libres"~: en quête d'exploration et d'autonomie, préférant les parcours personnalisables, ils correspondent aux *Free Spirits* de l’échelle Hexad.

    Ces différentes catégorisations soulignent l'importance de *diversifier les mécanismes de gamification* pour répondre aux motivations intrinsèques variées des apprenants.
  ]
)),
    ([== 7 recommandations pour une gamification efficace], [
  Pour une intégration efficace de la gamification dans les applications d'apprentissage des langues, il semble recommandé de suivre plusieurs principes fondamentaux. *(1)* Premièrement, il faut *aligner la gamification sur les objectifs pédagogiques* en choisissant des éléments ludiques pertinents pour les compétences visées et les préférences des apprenants, sans se limiter à la compétition. *(2)* Deuxièmement, il est crucial *d'adapter la gamification aux divers profils d'utilisateurs*, en tenant compte de leurs différences culturelles et de leurs styles d'apprentissage. *(3)* Troisièmement, il convient de privilégier un *apprentissage multimodal* qui cible simultanément plusieurs compétences linguistiques. *(4)* Quatrièmement, il est important de fournir des *feedbacks fréquents, immédiats et constructifs* pour favoriser la rétention et la confiance. *(5)* Cinquièmement, il faut créer une *expérience immersive et contextualisée* en intégrant des contenus authentiques et des technologies immersives, avec une interface intuitive. *(6)* Sixièmement, *tenir compte des contraintes techniques* permet de garantir une expérience utilisateur fluide et de maintenir la motivation. *(7)* Enfin, *intégrer la gamification dans une stratégie pédagogique globale* permet d’encourager la répétition et l'engagement actif. 

  *$arrow$* En résumé, une gamification réussie repose sur une approche réfléchie, centrée sur l'apprenant, ses besoins et les objectifs d'apprentissage.
]),
    ([== Conclusion], [
  En conclusion, la gamification représente une opportunité prometteuse pour l'apprentissage des langues, mais elle exige une approche réfléchie, centrée sur l'apprenant. Une conception équilibrée entre motivation intrinsèque et extrinsèque, une personnalisation adaptée, une progression structurée accompagnée de feedbacks, ainsi qu’une évaluation régulière sont essentielles à son efficacité.
]))
)