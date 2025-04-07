#import "assets/template.typ": *

#let inst_princ = institute("Université de Toulouse", 
  addr: "Toulouse 31400, France",
  email: "exemple@univ-tlse3.fr",
  url: "univ-tlse3.fr"
)

#show: project.with(
  title: "Les recommandations pour la gamification d'applications d'apprentissage d'une langue étrangère",
  authors: (
    author("Hala Alrifai", insts: (inst_princ)),
    author("Lilian Refour", insts: (inst_princ)),
    author("Radhia Lahmar", insts: (inst_princ)),
    author("Valentin Leclair", insts: (inst_princ)),
    /*
    author("🁢🁢🁢", insts: (inst_princ)),
    author("🁢🁢🁢", insts: (inst_princ)),
    author("🁢🁢🁢", insts: (inst_princ)),
    author("🁢🁢🁢", insts: (inst_princ)),
    */
  ),
  abstract: [
Dans un contexte de mondialisation et d'avènement du numérique, l'apprentissage des langues est un enjeu important pour bon nombre d'individus. La gamification est une approche de plus en plus utilisée dans les applications d'apprentissage de langues dans le but d'améliorer l'engagement et la motivation des utilisateurs. Cependant, la gamification rencontre parfois des soucis d'efficacité ou pire encore des cas d'échecs notamment selon le contexte d'implémentation et d'utilisation. Cette étude vise à identifier les recommandations clés pour l'intégration de la gamification dans les applications d'apprentissage de langue. À travers une revue de littérature et en analysant plusieurs types d'applications disponibles sur le marché, nous avons pu définir l'impact des différents éléments de gamification. Nos résultats aboutissent à plusieurs recommandations concernant le design des applications tout en prenant en considération les aspects psychologiques majeurs sur lesquels reposent la gamification: les besoins des utilisateurs se reflètent en une autonomie pour apprendre, un sentiment de progression et de compétence via des récompenses puis des retours pertinent, et enfin une sensation de lien social avec d'autres apprenants, ainsi qu'une flexibilité et adaptabilité destiné à satisfaire les différents types d'utilisateurs. Ces recommandations permettent vraiment de guider la conception d'applications plus engageantes et adaptées aux besoins des apprenants.
    
    
  ],
  keywords: ("Gamification", "Expérience utilisateur", "Applications d'apprentissage de langue étrangère"),
  bibliography-file: "refs.bib"
)

#set par(spacing: 1em)
#set text(overhang: false)
#set list(marker: [—])

#pagebreak()
= Introduction

/*- *"Gamification-based learning as the future of Language Learning : An overview"@vanitha_thurairasu_gamification-based_2022:*Cet article explique les limites des méthodes traditionnelles d'enseignement et d'apprentissage des langues et souligne les bénéfices de la gamification pour améliorer l'engagement et la rétention des apprenants grâce à des approches plus stimulantes et interactives.

#v(2em)

- *"A review of gamified techniques for foreign language learning"@alomair_review_2019:* Cette étude analyse différentes approches de gamification dans l'apprentissage des langues et explique l'importance d'adapter les mécaniques de jeu aux besoins des apprenants.

#v(2em)

- *"Review of Gamification Platforms for Foreign Language Teaching"@penelope_krystalli_review_2024 :* Cet article compare quatre plateformes ludiques pour l'apprentissage des langues (Classcraft, ClassDojo, Kahoot!, Seppo). Il souligne leur impact sur la motivation et l'engagement des apprenants et aide à identifier les outils les plus pertinents.
*/
 
 De nos jours, l'apprentissage des langues étrangères est devenu essentiel dans un monde de plus en plus connecté. Cependant, cette démarche est souvent perçue comme une tâche ardue par les apprenants. Les méthodes d'enseignement traditionnelles et passives ne suffisent plus à répondre aux besoins changeants des apprenants de l'ère numérique @vanitha_thurairasu_gamification-based_2022. 

Face à ces défis, une nouvelle tendance a émergé : la gamification. Introduite par Richard Bartle, dans les années 80, comme un moyen de transformer une activité en jeu, la gamification est aujourd'hui définie comme l'intégration de dynamiques ludiques dans des contextes non ludiques. Son efficacité repose sur la stimulation de la motivation intrinsèque en répondant à trois besoins psychologiques fondamentaux : l'autonomie, la compétence et la relation sociale @aparicio_analysis_2012@alomair_review_2019 @penelope_krystalli_review_2024. 

Bien que la gamification apporte des concepts intéressants dans l'apprentissage, elle ne constitue pas une solution magique en elle-même. Elle doit être étudiée en profondeur, et surtout comprise jusqu'aux fondements scientifiques sur lesquels elle repose.

Dans le contexte spécifique de l'apprentissage des langues étrangères, l'application de la gamification aux applications mobiles et plateformes en ligne présente un intérêt particulier, surtout que les apprenants d'aujourd'hui sont des natifs du numérique@alomair_review_2019@vanitha_thurairasu_gamification-based_2022.

Afin de mieux comprendre son rôle et ses implications dans le domaine des applications d'apprentissage des langues étrangères, nous commencerons par explorer la gamification des applications logicielles, en nous appuyant sur des recherches mettant en évidence ses mécanismes fondamentaux et son impact sur l'engagement des utilisateurs @aparicio_analysis_2012. Nous nous intéresserons ensuite aux différents types d'applications dédiées à l'apprentissage des langues étrangères, afin d'identifier les caractéristiques spécifiques de ce domaine et les défis auxquels ces applications doivent répondre.

Sur la base de ces analyses, nous proposerons une synthèse des recommandations pour une gamification efficace des applications d'apprentissage des langues, en nous appuyant sur des études empiriques et des bonnes pratiques observées dans la littérature scientifique @hamari_does_2014. Enfin, nous conclurons en mettant en perspective les bénéfices et les limites de la gamification dans ce contexte, ainsi que les pistes d'amélioration possibles.

// - *"Analysis and application of gamification"@aparicio_analysis_2012:* Cette ressource définit la gamification en tant que concept et présente son objectif général d'améliorer la motivation et l'engagement dans des contextes non-ludiques. Elle décrit la gamification comme un outil de motivation comportementale applicable à diverses tâches et activités.

// - *"Does Gamification Work? — A Literature Review of Empirical Studies on Gamification"@hamari_does_2014:* Cette revue souligne la popularité croissante de la gamification et examine son efficacité de manière empirique. Elle explore les résultats obtenus, les facteurs influençant le succès et les conditions nécessaires à son fonctionnement, renforçant ainsi la pertinence du sujet.


  /*
- *"Why Gamification Fails in Education - And How to Make it Successful" @rob_van_roy_why_2017* Cet article nous introduit à des notions beaucoup plus poussées quant aux mécanismes derrière la gamification. Il pose la question de l'utilisation de la gamification avec une question très simple qui est la véritable compréhension du sujet. Enfin, il nous donne les neuves heuristiques sur la gamification qui amélioreraient le succès de son utilisation.
*/

= Gamification des applications logicielles

La gamification des applications logicielles consiste à intégrer des mécanismes de jeu dans des environnements non ludiques afin d'améliorer l'engagement et la motivation des utilisateurs. Dans cette section, nous allons établir une vue d'ensemble de la gamification des solutions numérique.

== Définition et principes fondamentaux
 Aparicio et al. définissent cette approche comme une méthode exploitant des principes issus de la psychologie motivationnelle, notamment la théorie de l'auto-détermination @aparicio_analysis_2012. Celle-ci identifie trois besoins psychologiques fondamentaux favorisant la motivation intrinsèque :

- *L'autonomie* : capacité d'un utilisateur à faire des choix significatifs et à influencer sa propre progression au sein du système. Une application gamifiée doit offrir une liberté dans les interactions, comme des parcours d'apprentissage personnalisables.
- *La compétence* : besoin de relever des défis adaptés et de constater une progression accessible, souvent satisfait par des feedbacks immédiats, des niveaux de difficulté graduels et des récompenses adaptées.
- *La relation sociale* : importance des interactions avec d'autres utilisateurs, renforcée par des classements, des défis collaboratifs ou des systèmes de mentorat.

Ces éléments expliquent l'adoption croissante de la gamification dans l'éducation et la formation, en rendant l'apprentissage plus interactif et motivant.

== Impact de la gamification sur l'engagement utilisateur
La gamification est une tendance en forte croissance dans l'apprentissage des langues étrangères @penelope_krystalli_review_2024@vanitha_thurairasu_gamification-based_2022. Elle vise à transformer l'apprentissage passif en une expérience active et personnalisée @vanitha_thurairasu_gamification-based_2022.

Les mécanismes les plus efficaces incluent :
- *Points et récompenses* : encouragent une interaction régulière avec l'application.
- *Badges et trophées* : matérialisent la progression et renforcent le sentiment d'accomplissement.
- *Classements et défis* : introduisent une dimension sociale et compétitive, augmentant la motivation extrinsèque.
- *Scénarios interactifs* : permettent une immersion accrue dans l'apprentissage.

L'étude de Hamari et al. @hamari_does_2014 souligne que l'impact positif de la gamification dépend du contexte et des éléments spécifiques intégrés. Une conception adaptative, prenant en compte le profil des utilisateurs, est essentielle pour maximiser son efficacité.

== Limites et défis de la gamification

Un des principaux écueils de la gamification est la négligence de son élément clé : la motivation @rob_van_roy_why_2017. Apprendre une langue nécessite des centaines d'heures d'effort, ce qui implique de trouver les bons leviers motivationnels. Les types de motivation sont :
- *Motivation intrinsèque* : provient du plaisir personnel d'apprendre.
- *Motivation extrinsèque* : liée à des éléments externes (récompenses, punitions).
- *Démotivation* : absence totale d'engagement.

Les systèmes de badges et récompenses fonctionnent comme des moteurs extrinsèques, mais ne suffisent pas. Il est crucial d'intégrer des éléments stimulant la motivation intrinsèque, pour que l'utilisateur ait envie d'apprendre même sans récompense immédiate.

== Application de la gamification dans l'apprentissage des langues
L'intégration des avatars, des points, des badges et des feedbacks dans des plateformes comme Kahoot! ou Seppo améliore l'engagement et la rétention des apprenants @penelope_krystalli_review_2024. Ces éléments aident à structurer la progression et favorisent l'immersion par des scénarios interactifs.

Toutefois, pour être efficace, la gamification ne doit pas se limiter à un habillage ludique. Elle doit être associée à une approche pédagogique claire et adaptée aux profils des apprenants @vanitha_thurairasu_gamification-based_2022@penelope_krystalli_review_2024. Son succès repose sur un équilibre entre motivation extrinsèque et intrinsèque, garantissant une participation soutenue et une meilleure rétention des connaissances.

Ainsi, la gamification n'est pas qu'un simple ajout esthétique aux logiciels éducatifs. Elle transforme l'apprentissage en mettant l'utilisateur au cœur de l'expérience et en rendant l'acquisition des langues plus motivante, accessible et efficace, notamment pour les jeunes générations.

= Types d'applications d'apprentissage des langues étrangères

L'essor des technologies numériques a permis le développement d'un large éventail d'applications dédiées à l'apprentissage des langues étrangères. Leur point commun réside dans l'intégration de mécanismes de gamification, visant à motiver les apprenants, faciliter la mémorisation et rendre l'apprentissage plus dynamique. Ces applications se déclinent selon différents formats, allant des plateformes mobiles accessibles à tous, aux environnements immersifs complexes, en passant par des outils spécialisés pour l'enseignement en classe ou l'apprentissage à long terme.

== Applications mobiles et MALL

Les applications mobiles constituent le format le plus répandu et accessible. Des outils comme Duolingo, Busuu, Babbel ou Quizlet proposent des parcours d'apprentissage structurés et ludiques. On y retrouve des mécanismes variés : points d'expérience (XP), badges, niveaux, feedbacks immédiats, objectifs quotidiens et systèmes de classement. Ces éléments favorisent la régularité dans l'apprentissage, l'autonomie de l'utilisateur et un engagement continu dans la durée. Ces éléments simples sont particulièrement efficaces lorsqu'ils sont combinés à une pédagogie claire et à des objectifs progressifs@vanitha_thurairasu_gamification-based_2022.

Ces applications relèvent du cadre du Mobile-Assisted Language Learning (MALL), qui privilégie des interactions courtes mais répétées, un apprentissage en contexte mobile et une personnalisation adaptative. L'utilisateur peut s'exercer partout et à tout moment, ce qui correspond aux modes de vie actuels des apprenants. De plus, les contenus s'ajustent souvent automatiquement selon le niveau et la progression de chacun, ce qui améliore l'efficacité de l'apprentissage.

Des études empiriques menées en Chine et en Indonésie ont mis en évidence les bénéfices concrets de ces outils : Quizlet a notamment amélioré la mémorisation du vocabulaire académique et la précision des productions écrites@f_yang_digital_2023, tandis que Duolingo et Busuu ont renforcé la motivation, la confiance et l'intention de poursuivre l'apprentissage chez leurs utilisateurs@t_n_tiffany_determinants_2024.

Parmi toutes, Duolingo est sans doute l'exemple le plus emblématique. Son système repose sur une combinaison de « streaks » quotidiens (séries d'utilisation sans interruption), de points XP, de ligues hebdomadaires, de défis et de niveaux progressifs. Ces éléments créent une dynamique de jeu compétitive et gratifiante, maintenant l'attention et la motivation. Toutefois, une revue systématique @shortt_gamification_2023 rappelle que cet engagement est surtout extrinsèque, et que certains utilisateurs se focalisent plus sur les récompenses que sur la véritable maîtrise linguistique.

/*- *"Gamification-based learning as the future of Language Learning : An overview"@vanitha_thurairasu_gamification-based_2022:* L'auteur évoque des différents formats de jeux utilisés dans l'apprentissage des langues tels que les quiz et les jeux de rôles pour renforcer l'apprentissage de la grammaire, et développer des compétences en expression orale et améliorer la compréhension linguistique.

#v(2em)

- *"Review of Gamification Platforms for Foreign Language Teaching"@penelope_krystalli_review_2024 :* Cette ressource présente quatre platformes d'apprentissage gamifiées chacune reposant sur des types d'interaction variés : activités collaboratives (Classcraft), suivies du comportement (ClassDojo), quiz dynamiques (Kahoot!) et des projets géolocalisés (Seppo).
- *"A review of gamified techniques for foreign language 
learning"@alomair_review_2019 :*
*/

//- *"Gamification in mobile-assisted language learning- a systematic review of Duolingo literature from public release of 2012 to early 2020"@shortt_gamification_2023:* Cette ressource se concentre sur l'apprentissage des langues assisté par mobile (MALL), avec un focus particulier sur Duolingo. Elle fournit des informations sur les caractéristiques clé et les tendances des applications d'apprentissage de langues utilisant la gamification, notamment les récompenses, les niveaux ou les défis présents dans ces outils (+ outil référent dans ce domaine ; + recule sur plusieurs années).


==  Approches immersives et collaboratives 


Certaines applications adoptent une approche plus immersive, en recréant des situations proches de la réalité. Par exemple, Explorez ou Second Life proposent des jeux de rôle scénarisés dans des univers virtuels où les apprenants doivent accomplir des missions, résoudre des énigmes et interagir en langue cible. Ces environnements favorisent l'apprentissage expérientiel et développent particulièrement les compétences orales et culturelles. Les formats comme les jeux de rôle ou les quiz dynamiques permettent de renforcer la compréhension linguistique, la grammaire et la fluidité de l'expression orale dans des contextes ludiques@vanitha_thurairasu_gamification-based_2022.

La réalité augmentée est aussi utilisée dans certaines applications comme GaMbAR, conçue pour l'apprentissage du français. Cette application projette du contenu linguistique directement dans le monde réel grâce à la reconnaissance d'images. L'aspect visuel et interactif améliore l'attention, la mémorisation et rend l'apprentissage plus engageant, en particulier pour les apprenants visuels@alomair_review_2019.

D'autres plateformes misent sur la dimension collaborative. Kahoot!, ClassDojo, Classcraft ou Seppo encouragent l'apprentissage par le jeu en groupe. Quiz interactifs, défis en équipe et récompenses collectives y sont utilisés pour stimuler l'interaction sociale, la motivation et la coopération entre les élèves. Ces outils sont particulièrement efficaces dans les contextes scolaires ou universitaires, où ils viennent enrichir les cours traditionnels@penelope_krystalli_review_2024


== Gamification en salle de classe et applications spécialisées

La gamification ne se limite pas aux applications autonomes : elle peut aussi être intégrée directement en salle de classe. Des plateformes comme Genially et ClassDojo permettent aux enseignants de concevoir leurs propres activités ludiques, comme des escape games éducatifs. Dans ce type de jeu, les élèves doivent résoudre des énigmes, accomplir des tâches ou coopérer pour « s'échapper », ce qui encourage une participation active et collective.

Une étude menée auprès de 40 étudiants a révélé que la gamification en classe améliore fortement l'envie d'apprendre, la motivation et l'engagement. Tous les participants ont déclaré que les activités gamifiées augmentaient leur plaisir d'apprendre, leur curiosité, et leur sentiment de connexion avec leurs camarades et leurs enseignants@syazrin_syimee_sharifuddin_effectiveness_2023 Ces résultats illustrent l'impact émotionnel et social positif que peut avoir une gamification bien pensée dans le contexte éducatif.

Enfin, certaines applications s'adressent à des apprenants plus avancés et investis. Revita, par exemple, est conçue pour les utilisateurs souhaitant apprendre sur le long terme, dans le cadre d'objectifs professionnels ou académiques. Elle intègre des jeux comme des flashcards ou des mots croisés, mais ce qui la distingue, c'est son moteur d'intelligence artificielle qui génère automatiquement des exercices personnalisés selon les intérêts de l'utilisateur. Elle utilise aussi un système de classement Elo (inspiré des échecs), des duels contre d'autres utilisateurs ou des bots, et un espace de partage de contenu. Ce modèle hybride combine progression visible, plaisir, personnalisation et compétition amicale, favorisant une motivation à la fois extrinsèque et intrinsèque@jue_hou_applying_2022.


/*
- *"The Effectiveness of Gamification In Teaching and Learning English as a Second Language"@syazrin_syimee_sharifuddin_effectiveness_2023* 
Cet article démontre l'efficacité de la gamification dans l'apprentissage de l'anglais et notamment par le biais d'applications comme _Class Dojo_ et _Genially_. Il est d'autant plus intéressant qu'il prend en compte un aspect peu souligné dans d'autres articles qui est le désengagement des élèves dans l'apprentissage de la langue lié à de la timidité, la peur du ridicule, que l'on peut observer en classe de langue ainsi que le fait qu'un petit groupe d'élève monopolisent la participation en cours : ce phénomène est très vrai et nous en sommes nous-même témoins en classe d'anglais.
*/
  
= Synthèse des recommandations pour la gamification des applications d'apprentissage des langues étrangères

/*- *"Gamification-based learning as the future of Language Learning : An overview"@vanitha_thurairasu_gamification-based_2022:* Cette étude recommande d'exploiter pleinement le potentiel des différents éléments gamifiés pour renforcer l'efficacité de l'apprentissage des langues et l'implication des apprenants et insiste sur l'importance d'une conception qui tienne en compte à la fois les besoins, le niveau et les préférences des utilisateurs afin d'optimiser l'impact des outils gamifiés sur l'expérience de l'apprentissage.

#v(2em)

- *"Review of Gamification Platforms for Foreign Language Teaching"@penelope_krystalli_review_2024 :* Cette recherche souligne l'importance d'adapter le choix de la plateforme gamifiée aux profils des apprenants et leurs objectifs pédagogiques. Elle décrit aussi les limites pratiques de chaque outil.*/

Les recherches menées sur la gamification dans les applications d'apprentissage des langues étrangères permettent d'identifier des bonnes pratiques et des recommandations essentielles pour optimiser leur efficacité. En s'appuyant encore une fois sur les études de Shortt et al. (_Gamification in Mobile-Assisted Language Learning_, 2023) @shortt_gamification_2023 et de Hamari et al. (_Does Gamification Work?_, 2014) @hamari_does_2014, cette section propose une synthèse des éléments à considérer pour améliorer l'engagement et la rétention des apprenants dans ces environnements numériques.

== Concevoir une gamification équilibrée et motivante

Nous avons vu précédemment l'importance des aspects psychologiques de la gamification. Elle aide à apporter des solutions quant à la motivation et aux performances dans l'apprentissage de langues. Cependant,
les études empiriques menées par Hamari et al. (2014) montrent que l'impact de la gamification varie fortement en fonction du contexte d'application et des éléments de jeu intégrés. Pour être efficace, la gamification dans les applications d'apprentissage des langues doit répondre aux besoins psychologiques fondamentaux des utilisateurs :

- *Autonomie* : permettre aux apprenants de personnaliser leur parcours et de choisir leur rythme d'apprentissage.
  
Nous avons mentionné plus tôt, qu'un élève apprend plus efficacement lorsque sa motivation est intrinsèque, c'est à dire qu'il a l'envie d'apprendre de sa propre initiative. 
Cela reflète un besoin d'autonomie chez l'utilisateur, lorsqu'il ne ressent pas de pression exterieur. Ce faisant, l'utilisateur ne doit pas ressentir d'obligation à utiliser ce système, par exemple lors d'un cours. Il doit toujours éprouver le sentiment d'avoir le choix. @rob_van_roy_why_2017

- *Compétence* : proposer des défis progressifs et des retours immédiats sur les performances pour renforcer le sentiment de maîtrise.

Lors de l'apprentissage, l'utilisateur a également besoin de voir ses compétences évoluer, un besoin de retour sur investissement, il a besoin de savoir que l'application lui permet d'atteindre ses objectifs, car cela peut lui donner la motivation de continuer et nous renvoie également au besoin d'autonomie.   

- *Relation sociale* : encourager l'interaction entre utilisateurs via des classements, des défis collaboratifs ou des communautés d'apprentissage.

La gamification peut également permettre de connecter socialement les individus entre eux, par des systèmes de rang, de classement ou de partage entre amis. Cette connexion sociale est source de motivation, montrant également de meilleurs performances contrairement aux applications qui n'en possède pas @rob_van_roy_why_2017. Une application d'apprentissage de langue doit donc faciliter l'intéraction entre les utilisateurs et implémenter les fonctionnalités qui pourront encourager les échanges sociaux afin d'augmenter ce sentiment d'appartenance.

Par conséquent, lors de l'intégration de fonctionnalité répondant à un de ces besoins, il est aussi essentiel de penser si elle est compatible avec les autres besoins, dans le pire des cas, elle peut être en conflit direct entre deux besoins. Dans cette optique, les applications doivent éviter une gamification superficielle, où les récompenses extrinsèques (points, badges) prennent le pas sur la motivation intrinsèque à apprendre. La méta-analyse de Duolingo @shortt_gamification_2023 soulignent que si les éléments ludiques sont trop artificiels, les utilisateurs risquent de se focaliser sur l'accumulation de récompenses plutôt que sur l'amélioration de leurs compétences linguistiques.
La gamification s'applique aux jeux sérieux dont l'objectif premier est d'apprendre. Et il ne faut pas non plus l'oublier lors du design d'application. Il faut toujours prendre en compte l'objectif d'apprentissage en travaillant les compétences recherchés, évidemment en y associant les bienfaits de la gamification comme la motivation.

L'experience de chaque individu peut-être différente, il existe plusieurs types d'utilisateurs définies @rob_van_roy_why_2017 et pour répondre aux besoins et objectifs du plus grand nombre, l'application doit être flexible, pour s'adapter aux besoins et préférences de chaque utilisateurs.

== Adapter la gamification aux différents profils d'utilisateurs

Une approche standardisée de la gamification ne convient pas à tous les utilisateurs.
#highlight(fill: purple.transparentize(100%))[ Les éléments de gamification tels que les badges, les tableaux de classement, les feedbacks, et le storytelling ont des effets variés en fonction des profils. La réussite d'une approche gamifiée repose sur un design réfléchi, adapté aux besoins spécifiques des utilisateurs. Il est essentiel que les éléments de jeu utilisés dans les applications d'apprentissage des langues correspondent aux préférences et aux motivations individuelles de chacun, afin d'optimiser leur expérience d'apprentissage. Une telle personnalisation permet de maximiser l'engagement et l'efficacité des outils gamifiés, tout en répondant aux divers objectifs pédagogiques des utilisateurs.@g_k_zamahsari_review_2023 ]. Comme l'explique _The Gamification User Types Hexad Scale_ (2016) @f_gamification_2016, il existe différents profils d'utilisateurs, chacun ayant des préférences spécifiques en matière de gamification :

- *Les Achievers* : motivés par les défis et la progression, ils apprécient les niveaux, les classements et les badges.
    
- *Les Socialisers* : attirés par l'interaction avec d'autres utilisateurs, ils bénéficient des fonctionnalités collaboratives comme les forums et les défis en équipe.
    
- *Les Free Spirits* : recherchent l'exploration et l'autonomie, ils préfèrent les parcours personnalisables et les contenus adaptatifs.
    
- *Les Philanthropists* : motivés par l'entraide, ils sont sensibles aux systèmes de mentorat ou d'aide entre utilisateurs.
    
- *Les Players* : attirés par les récompenses, ils répondent bien aux systèmes de points et aux éléments compétitifs.
    
- *Les Disruptors* : cherchent à modifier l'environnement d'apprentissage, ils pourraient bénéficier de mécanismes favorisant l'expérimentation et la créativité.

L'intégration de ces profils dans la conception des applications permettrait d'offrir une expérience plus engageante et adaptée à chaque utilisateur. Une piste d'amélioration pourrait être la mise en place d'un questionnaire standardisé au début de l'utilisation, permettant de classifier les joueurs et de leur proposer une expérience personnalisée en fonction de leur style d'apprentissage et de motivation.

== Structurer la progression pour maintenir l'engagement à long terme

Un défi majeur des applications d'apprentissage des langues est de maintenir l'engagement des utilisateurs sur le long terme. Shortt et al. (2023) @shortt_gamification_2023 soulignent que la gamification doit être conçue pour favoriser une progression continue, sans tomber dans la monotonie. Les recommandations incluent :

- *Un système de progression clair et adaptatif* : des niveaux bien définis avec une difficulté croissante, combinés à des exercices adaptés aux performances de l'utilisateur.

On peut imaginer voir s'intégrer des systèmes d'Élo et de rangs inspirés des jeux vidéos comme le fait Revita @jue_hou_applying_2022. Qui fonctionnent sur une base de points à accumuler et reflétant le niveau du joueur.

- *Des objectifs à court et long terme* : introduire des mini-défis quotidiens ainsi que des objectifs plus ambitieux pour motiver l'utilisateur à poursuivre son apprentissage.

La difficulté de mini-défis quotidiens est le risque de redondance, mais plusieurs applications ou jeux ont remédiés à ce problème en instaurant des rotations par le biais d'évènements temporelles calqués sur notre calendrier comme _Le nouvel an lunaire_ ou _Pâques_ qui sont plutôt appréciés par les joueurs. On peut également appliquer une temporalité pour les objectifs plus ambitieux et long terme.

- *Un équilibre entre défi et accessibilité* : les tâches trop simples risquent d'ennuyer l'utilisateur, tandis que des défis trop difficiles peuvent le décourager. Une bonne conception adapte la difficulté en fonction du niveau et des progrès.

Souvent, on remarque une différence de motivation selon la confiance en soi des utilisateurs pouvant causer de la frustration et de la démotivation, ce que l'on veut absolument éviter. Il faut donc designer des jeux représentant un certain défi aux joueurs mais perçu comme réalisable, afin de renforcer le sentiment de progression.

- *Une variété d'activités* : alterner entre exercices de compréhension, jeux interactifs et défis d'expression orale pour éviter la lassitude. 

Paradoxalement, donner trop de choix est également contre-productif @rob_van_roy_why_2017, il faut donc trouver le juste milieu en proposant suffisament de d'activités mais pas trop au point où l'utilisateur puisse avoir un sentiment de perte en choisissant une option A plutôt que l'option B et vice-versa.

- *Un feedback continue*: intégrer des éléments de jeux donnant un retour sur les performances ou un gain de compétences.

Les feedbacks jouent aussi un rôle dans la motivation. Les badges sont un bon moyen de motiver l'utilisateur tout en lui donnant un retour sur ses performances ou un gain de compétences. Cependant, ils ne doivent ni se concentrer uniquement sur la performance, par exemple:_ "Terminer 10 parties"_, qui empiète sur le besoin autonomie de l'utilisateurni être négatifs car cela impacte fortement la confiance en soi des utilisateurs et ainsi leur motivation.

== Évaluer l'impact de la gamification et ajuster les mécanismes en fonction des retours

L'efficacité d'une application gamifiée ne peut être garantie sans une évaluation régulière de son impact sur l'apprentissage et l'engagement des utilisateurs. Hamari et al. (2014) insistent sur l'importance des études empiriques pour mesurer l'influence des différents éléments de gamification sur la motivation et la rétention des apprenants. Les méthodes d'évaluation recommandées incluent :

- *L'analyse des données d'usage* : taux de rétention, durée des sessions, progression dans les exercices, etc.
    
- *Des enquêtes utilisateurs* : recueillir les impressions des apprenants sur les éléments de gamification qu'ils jugent les plus efficaces.
    
- *Des expérimentations contrôlées* : comparer différentes approches de gamification pour identifier celles qui améliorent réellement la motivation et l'apprentissage.
    

En intégrant ces mécanismes d'évaluation, les concepteurs peuvent ajuster leur approche et affiner les stratégies de gamification pour maximiser leur impact.

Les études menées sur l'application Duolingo entre 2012 et 2020 @shortt_gamification_2023 ainsi que les travaux d'Hamari et al. @hamari_does_2014 mettent en évidence l'importance d'une gamification bien pensée et adaptée aux besoins des apprenants. Une approche efficace repose sur un équilibre entre motivation extrinsèque et intrinsèque, une personnalisation des expériences en fonction des profils d'utilisateurs et une progression engageante sur le long terme.

Enfin, l'utilisation de méthodologies d'évaluation comme l'analyse des comportements des utilisateurs et les enquêtes peu permettre d'ajuster les stratégies de gamification pour optimiser l'apprentissage des langues. Une piste complémentaire serait d'explorer comment des outils de classification des joueurs, comme l'échelle Hexad @f_gamification_2016, pourraient améliorer la personnalisation des applications et renforcer leur efficacité pédagogique.
  
/*- *"Gamification in mobile-assisted language learning- a systematic review of Duolingo literature from public release of 2012 to early 2020"@shortt_gamification_2023:* Cette revue met en lumière les tendances en matière de conception et les résultats obtenus grâce à la gamification dans le domaine de l'apprentissage des langues. Elle propose également des pistes pour améliorer ces applications et orienter les recommandations.

- *"Does Gamification Work? — A Literature Review of Empirical Studies on Gamification"
@hamari_does_2014:* Les conclusions sur les facteurs influençant l'efficacité de la gamification peuvent être adaptées pour formuler des recommandations spécifiques aux applications d'apprentissage des langues. Ces observations permettent d'inclure des suggestions pratiques basées sur ces analyses.

- *"The Gamification User Types Hexad Scale"
@f_gamification_2016:* Comprendre les différents profils d'utilisateurs et leurs préférences en matière de gamification est essentiel pour concevoir des applications plus efficaces. L'échelle Hexad propose des stratégies adaptées aux motivations variées des apprenants.*/

/*
- *"Development of a Gamification Based English Vocabulary Mobile Learning System"@olutayo_boyinbode_development_2018* Ces travaux nous expliquent en détails toutes les étapes de développement d'une application mobile ayant pour objectif l'apprentissage de langues. Pour cela, l'auteur prend en exemple le Nigéria, où l'enseignement de l'anglais démontre des signes de régression ces dernières années. Pour y remédier, il suggère dans la solution, l'utilisation de méthodes de gamification pour améliorer l'apprentissage de la langue par les élèves du pays.
  */
  
/*- *"A review of gamified techniques for foreign language learning"@alomair_review_2019:* Il faut adapter chaque technique aux besoins, contextes et profils des apprenants. Cette synthèse est nécessaire pour une conception des applications gamifiées efficace pour l'apprentissage linguistique.*/

/*
- *"Why Gamification Fails in Education - And How to Make it Successful" @rob_van_roy_why_2017* Cet article nous donne neuve heuristique sur la gamification qui amélioreraient le succès de son utilisation. Par des recommandations éclairées, le développeur est guidé par rapport à l'aspect psychologique de différentes fonctionnalités populaire tel que les badges et sur les bonnes pratiques à adopter.
*/

== Utiliser la gamification comme marchepied de l'apprentissage

 Plusieurs recommandations clés se portant sur la conception pédagogique, la sélection des éléments ludiques et l'expérience utilisateur émergent dans le but d'optimiser l'intégration de la gamification dans les applications d'apprentissage des langues étrangères.
Il est important de sélectionner les éléments de jeu tels que les points, les badges, les classements, les avatars selon les objectifs d'apprentissage et les préférences des apprenants. Il est toutefois recommandé de ne pas se limiter à des mécanismes purement compétitifs, mais d'encourager aussi la coopération entre utilisateurs@penelope_krystalli_review_2024@vanitha_thurairasu_gamification-based_2022. La gamification doit également s'adapter aux profils des apprenants en considérant que les apprenants ont des cultures, des capacités et des styles d'apprentissage différents,  Les techniques de gamification doivent donc être adaptables pour répondre à cette diversité@alomair_review_2019.

Par ailleurs, les outils gamifiés doivent cibler diverses compétences linguistiques, l'idéal est donc de concevoir des parcours ludiques multimodaux, capables de développer simultanément plusieurs compétences linguistiques: vocabulaire, de la grammaire, de la communication, de l'écriture…@vanitha_thurairasu_gamification-based_2022
Il est nécessaire aussi de fournir des retours fréquents, immédiats et constructifs afin d'assurer la rétention de l'information et le développement de la confiance en soi de l'apprenant@vanitha_thurairasu_gamification-based_2022@penelope_krystalli_review_2024.  Et pour qu'une gamification réussisse elle doit dépasser la simple intégration de points, elle doit créer une expérience engageante et contextualisée . Cela implique l'intégration des contenus authentiques, l'utilisation des technologies immersives comme l'AR et concevoir une interface intuitive et attrayante@alomair_review_2019@penelope_krystalli_review_2024.  
En parallèle, il faut tenir compte des contraintes techniques comme les temps de chargement et la taille de l'écran, pour cela l'interface utilisateur doit être intuitive, accessible, et compatible avec différents supports afin de ne pas freiner la motivation@alomair_review_2019.

Enfin, la gamification doit s'intégrer dans une démarche pédagogique cohérente, il est conseillé de ne pas utiliser la gamification de manière isolée mais plutôt intégrée dans une stratégie pédagogique globale pour favoriser la répétition des contenus, et stimuler la participation active des apprenants @vanitha_thurairasu_gamification-based_2022.
En somme, la conception d'applications gamifiées pour l'apprentissage des langues étrangères doit aller bien au-delà de l'ajout de simples éléments ludiques. Elle exige une approche réfléchie, centrée sur les besoins, les motivations, les compétences linguistiques ciblées, et les préférences d'apprentissage de l'apprenant. Les recommandations issues des travaux analysés mettent en avant l'importance de combiner immersion narrative, personnalisation, feedback pertinent, collaboration sociale et diversité des activités pour créer une expérience d'apprentissage riche, engageante et efficace.

= Conclusion

En conclusion, la gamification pour l'apprentissage des langues étrangères est une opportunité prometteuse mais qui ne doit pas etre  limitée à l'ajout d'éléments ludiques, elle exige une approche réflichie, qui se concentrer sur les besoins, les motivations, les compétences linguistiques ciblées, et les préférences d'apprentissage de l'apprenant.
Les recommendations issues des travaux d'analyse met en avant l'importance d'une conception équilibrée entre motivation intrinsèque et extrinsèque, d'une personnalisation adaptée aux profils des utilisateurs, et d'une progression structurée, soutenue par des feedbacks pertinents.
Enfin, l'évaluation régulière des impacts de la gamification,ainsi que la bonne sélection des éléments ludiques sont essentielles pour garantir l'efficacité de ces dispositifs et rendre réellement l'apprentissage des langues une expérience engageante, personnalisée et enrichissante.

#pagebreak()