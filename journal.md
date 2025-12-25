

C’est la première fois que je commence à écrire dans mon journal de bord. Lors de la première séance, organisée pour la préinscription et l’installation de Linux et des logiciels nécessaires, j’ai réussi à suivre comme tout le monde. Mon PC personnel, un HP grand format, était très lourd et mettait environ 5 minutes à se rallumer en cas d’arrêt. J’en ai profité pour signaler au prof que je pourrais changer de PC, et j’ai fait une demande de prêt d’ordinateur à l’université. Le prof m’a rassuré en disant qu’on pourrait réinstaller tout pendant la séance, donc j’étais tranquille.

La séance suivante a été prolongée par le prof, qui m’a donné un nouveau rendez-vous fixé à la semaine prochaine. Pendant ce temps, j’ai essayé de suivre le cours, mais c’était un peu chaotique pour moi : tout le monde suivait et appliquait en même temps sur leur PC, et je me sentais perdue. Le jour du rendez-vous prolongé, le prof n’est pas venu, et je n’ai pas réussi à demander de l’aide à l’autre prof présent. Je voulais absolument ne pas interrompre le cours qu’il donnait seul.

J’ai compris que si je restais à attendre, je risquais de rater encore plus de cours et d’exercices. J’avais déjà raté les exercices demandés le 6 octobre à cause de cela. Malgré ce retard, j’ai essayé de suivre et de prendre des photos durant les cours, surtout pendant l’installation de Linux sur mon PC personnel. Cela m’a permis de refaire l’installation toute seule sur le PC de la fac.

Même si c’était difficile, grâce aux tutoriels sur YouTube et aux photos, j’ai finalement réussi à installer Linux de nouveau. Cela m’a permis de repartir à zéro, malgré un énorme retard par rapport au rythme du cours. Avec tous les autres modules à suivre, je ne peux pas me focaliser uniquement sur le PPE.

Je voulais expliquer ce retard, qui explique aussi pourquoi je commence seulement maintenant à écrire dans le journal. Tout était nouveau pour moi : GitHub, les dépôts, l’écriture dans le journal, les commandes terminal… Au début, j’ai essayé de comprendre, mais c’était beaucoup à assimiler. Même si certaines commandes sont simples, apprendre tout en même temps était difficile. Je me sens encore un peu perdue, mais j’essaie de me mettre à l’aise et de progresser petit à petit.


Même si le journal de bord est censé être rempli au fur et à mesure, j’ai eu beaucoup de mal à le tenir régulièrement. Entre les difficultés techniques, les installations, les erreurs Git, les changements de PC et la découverte de Linux, j’ai souvent été dépassée et je me suis focalisée sur les exercices au lieu d’écrire mes comptes-rendus. Résultat : j’ai accumulé du retard et j’ai dû remplir mon journal de bord plus tard que prévu. Ce n’est pas idéal, mais cela reflète réellement mon apprentissage : beaucoup d’essais, d’erreurs, de frustration parfois, mais aussi une progression constante au fil des semaines.

Les principales difficultés que j’ai rencontrées concernaient Linux, Bash, Git et GitHub. D’abord, j’avais du mal à m’organiser dans les dossiers, ce qui entraînait des erreurs comme'`No such file or directory' ou l’impossibilité de lancer mes scripts, car mes fichiers étaient dispersés entre plusieurs dossiers (PPE, mon-projet, git-along). Ensuite, Git me renvoyait des messages d’erreur tels que 'not a git repository', 'Failed to resolve HEAD' ou 'unable to auto-detect email address', car le dépôt n’était pas initialisé ou ma configuration Git (nom et email) n’était pas faite. J’ai également eu des problèmes avec GitHub et l’authentification : 'invalid username or token', 'remote already exists', push impossible, liés à l’utilisation du mauvais protocole (HTTPS au lieu de SSH) ou d’un token mal configuré. Enfin, mes scripts Bash ne fonctionnaient pas correctement au début, car les fichiers nécessaires n’étaient pas au bon emplacement ou dans le bon format, et je ne maîtrisais pas encore les commandes de base de "Nano". Toutes ces difficultés ont été résolues progressivement : j’ai réorganisé mes fichiers dans un seul dossier de projet, initialisé Git correctement et configuré mon nom et mon email, appris à utiliser SSH pour GitHub, corrigé les chemins de mes scripts et placé les fichiers nécessaires dans le bon répertoire, ce qui m’a permis de faire fonctionner mes scripts et de gérer mon dépôt proprement. Ces étapes m’ont permis de mieux comprendre l’organisation d’un projet, la gestion de version et l’utilisation de Linux et Bash.

Au cours des mini-projets, j'ai commencé à mettre en place les premières étapes de la chaîne de traitement du projet. Dans le mini-projet 1, l’objectif était de débuter la récolte de données à partir d’une liste d’URL fournie (fichier fr.txt) et d’écrire un script capable de lire ces URL, d’aspirer le contenu des pages web et d’en extraire des informations textuelles. Le script devait afficher les résultats sous forme de tableau, d’abord au format texte avec des tabulations (TSV), ce qui m’a permis de comprendre l’importance des arguments passés au script, de la lecture de fichiers et de l’écriture d’une sortie structurée dans le terminal. Ce mini-projet m’a permis de travailler individuellement sur des étapes qui seront ensuite reprises dans le projet de groupe. Dans le mini-projet 2, il nous a été demandé de conserver le même script, mais de transformer la sortie tabulaire en page web HTML. J’ai donc créé une page contenant un tableau HTML reprenant les données issues des URL, mise en ligne sur GitHub Pages. Lors de cette étape, j’ai été confuse entre les dépôts git-along et PPE, pensant que le professeur voyait mon travail dans git-along, avant de comprendre que ce dépôt servait uniquement de dépôt local d’entraînement. J’ai alors corrigé cette erreur en poussant correctement mon site dans le dépôt PPE destiné à être évalué.

Je souhaite apporter une clarification détaillée concernant les difficultés techniques rencontrées cette année, ainsi que leurs conséquences sur l’organisation de mon travail, la tenue du journal de bord et l’utilisation de GitHub.
Les problèmes rencontrés ne concernaient le pc de la fac (INALCO). Après l’installation de Linux (Kubuntu), le système présentait de nombreux dysfonctionnements : demandes de stockage impossibles à satisfaire, impossibilité d’installer des logiciels essentiels, absence d’accès à Firefox et à d’autres outils de base, ce qui rendait le travail presque impossible. J’ai signalé ces problèmes au professeur.

Face à ces blocages, j’ai été contrainte de réinstaller Windows pour au moins essayer de réviser d'autres cours, mais par la suite, il m’a été impossible de retourner correctement sous Linux. Une séance entière a été consacrée à tenter de résoudre ce problème en présence du professeur, pendant environ trois heures, sans succès immédiat. Dans le BIOS, l’entrée correspondant à Kubuntu apparaissait avec la mention « disabled », sans que nous comprenions la cause de ce blocage. Nous avons effectué plusieurs redémarrages, tenté des réinstallations complètes et modifié les paramètres du BIOS, sans résultat concluant dans un premier temps.

Finalement, après être retournée dans le BIOS et avoir appuyé sur F5, la mention « disabled » a disparu. Au redémarrage suivant, l’ordinateur a pu démarrer sur le système Ubuntu. Cette résolution a cependant impliqué de tout réinstaller intégralement : environnement Linux, logiciels, commandes, configuration Git, organisation des dossiers, ce qui a représenté un temps de travail important.

Cette situation est survenue durant une période particulièrement chargée du semestre, avec neuf partiels répartis sur cinq jours, ainsi que du travail universitaire à rendre sur l’ensemble du week-end, sans journée de repos. J’ai donc dû consacrer mon temps disponible à la remise en état complète de mon environnement de travail, ce qui explique le retard accumulé dans la rédaction du journal de bord.

Par ailleurs, lors du mini-projet HTML, j’ai initialement poussé mon site dans le dépôt git-along, qui servait de dépôt de test, au lieu du dépôt officiel PPE1-2025. Cette erreur est liée à mes difficultés techniques et à la confusion entre les différents dépôts pendant cette période instable. Une fois l’erreur identifiée, j’ai corrigé la situation en mettant correctement le site dans le dépôt PPE destiné à l’évaluation.

Le journal de bord n’a donc pas été rempli de manière parfaitement régulière, mais il a été complété a posteriori afin de refléter fidèlement mon parcours réel dans ce cours : de nombreuses difficultés techniques indépendantes de ma volonté, des phases de blocage, mais aussi une progression concrète dans la compréhension de Linux, Bash, Git, GitHub et de la mise en ligne de pages web avec GitHub Pages.

Et enfin là je vais parler sur le projet final,
Le projet final sera réalisé à trois : moi, Maryam et Emilie. Nous avons choisi de travailler chacune sur une langue différente : arabe (moi), français (Maryam) et anglais (Emilie).
Choix du mot clé
Nous avons d’abord pensé au mot œil, car il est polysémique et pourrait donner lieu à plusieurs expressions dans les trois langues. Après avis du professeur, nous avons compris que ce mot évoquait trop l’aspect médical/ophtalmologique. Nous avons donc choisi le mot regard, qui est plus approprié et reste riche en significations dans chaque langue.

Travail réalisé
Pour ma part, je suis en train de collecter 50 liens en arabe contenant ou expliquant le mot regard. Emilie et Maryam travaillent de leur côté sur les liens en anglais et en français. Ces liens serviront ensuite à analyser l’usage du mot regard dans les trois langues et à construire la base de données pour notre projet de groupe.

Prochaines étapes

Terminer la collecte des liens pour chaque langue.

Comparer les usages et expressions liées au mot regard.

Préparer l’intégration des données dans le projet commun.



















