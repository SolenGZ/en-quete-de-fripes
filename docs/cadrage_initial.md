# Cadrage initial du projet
## Voyage d’un vêtement : de la fast fashion aux fripes exportées

📌 Document rédigé en amont du projet dans le cadre du bootcamp
Data Analytics du Wagon.

Ce document vise à :
- définir la problématique,
- formuler les questions de recherche,
- identifier les sources de données.

Il ne constitue pas une analyse finale.

“Voyage d’un vêtement : de la fast fashion aux fripes exportées.”
Une analyse quantitative des échanges internationaux de textiles neufs et usagés.


PROBLÉMATIQUE
Comment circulent les vêtements neufs et usagés entre l’Europe et le monde, et que révèlent ces flux sur le modèle de consommation et de gestion des déchets textiles ?

QUESTIONS DE RECHERCHE
D’où viennent les vêtements neufs consommés en Europe ?
Où partent les vêtements usagés collectés en Europe ?
Le marché européen du textile est-il équilibré ?
L’Europe a-t-elle la capacité de gérer ses textiles usagés ?
Quel est l’impact carbone des flux internationaux ?

L’Union européenne est aujourd’hui l’un des plus grands importateurs mondiaux de vêtements neufs, avec une forte dépendance aux pays producteurs comme la Chine, le Bangladesh ou la Turquie.
Parallèlement, l’achat de vêtements de seconde main progresse rapidement en Europe, porté à la fois par des motivations économiques et environnementales.
Pourtant, une grande partie des textiles consommés en Europe ne reste pas sur le territoire. Une fois utilisés, ils sont massivement exportés sous forme de vêtements d’occasion ou de déchets textiles, principalement vers l’Afrique, l’Asie du Sud et l’Amérique latine.
Cette dynamique pose une question centrale : quel est réellement le rôle de la seconde main dans un système textile mondialisé ? Est-ce une solution, ou simplement le symptôme d’un marché saturé par la fast fashion ?

L’idée est de chercher à comprendre comment circulent les vêtements dans le monde, depuis leur production jusqu’à leur fin de vie.
En particulier, de comparer les flux de vêtements neufs (importés en Europe) et les flux de vêtements usagés (exportés par l’Europe vers d’autres régions du monde).

J’aimerai donc répondre à trois grandes questions :
D’où viennent les vêtements que nous consommons ?
→ Analyse des importations de vêtements neufs.
Où vont les vêtements que nous jetons ou donnons ?
→ Analyse des exportations de vêtements usagés.
Ces flux sont-ils durables ?
→ Etude de l’équilibre import / export.

Grâce aux bases de données listées ci-dessous, nous allons pouvoir cartographier les flux, quantifier les volumes et comparer ce que l’Europe importe vs ce qu’elle rejette.
Au final, on cherchera à montrer si le système textile européen fonctionne comme une “économie linéaire mondialisée”, où l’on achète des textiles bon marché venus d’Asie et où l’on exporte les textiles usagés vers des pays moins équipés. 

BASES DE DONNEES
Dépenses finales de consommation des ménages (“household final consumption expenditure”) classées par COICOP (Classification Of Individual Consumption According to Purpose). Le code “CO3” dans nama_10_co3_p3 indique ce classement par “purpose” (fonction de consommation) selon COICOP.
https://ec.europa.eu/eurostat/databrowser/view/nama_10_co3_p3/default/table?lang=en&category=na10.nama10.nama_10_hfc
Permet de répondre à la question : 
Combien les ménages européens dépensent en vêtements (“clothing and footwear”)?

“Sold production, exports and imports” d’Eurostat : production import et export des produits manufacturés. Le code “DS-056120” correspond à la production vendue (value + quantité) des biens. Permet d’identifier la production, l’import et l’export de textile : en utilisant les codes PRODCOM, on peut filtrer les produits textiles (vêtements, sacs, etc.) et voir la valeur + quantité produite, importée et exportée dans différents pays d’europe.
https://ec.europa.eu/eurostat/databrowser/view/ds-059358/legacyMultiFreq/table?lang=en
Liste des PRODCOM pour trouver les codes de chaque produit, pour les vêtements, on est dans les 14.XX.XX.XX : 
https://docs.google.com/spreadsheets/d/11zNNDsmJbNPjq6fzUfIqzlfrSf7PfrHOCu1kmAqSp-0/edit?gid=1827350761#gid=1827350761
Permet de répondre à la question : 
Qu’est-ce qu’on produit, importe et exporte en termes de produits textile en Europe?

REP - Tonnages des mises sur le marché des filières REP (Tonnages de vêtements neufs mis sur le marché français, par année, par type (TLC)) : 
Depuis le 1er janvier 2007, la Responsabilité Élargie du Producteur (REP) est une obligation réglementaire imposée par le code de l'environnement. Elle repose sur un principe simple : celui du pollueur-payeur. Si vous mettez sur le marché français des Textiles d’habillement, Linge de maison et Chaussures (TLC) neufs à destination du consommateur final, vous êtes tenu de contribuer à la prévention et à la gestion de la fin de vie de vos produits : éco-conception, réparation, collecte, tri, réemploi, recyclage...
https://data.ademe.fr/datasets/rep-tonnages-des-mises-sur-le-marche-des-filieres-rep
Permet de répondre à la question : 
Le volume de vêtements neufs vendus chaque année augmente-t-il encore ?
	Peut-on comparer les tonnages mis en marché vs tonnages collectés (taux de collecte) ?
	Le marché français produit-il beaucoup plus qu’il ne réemploie ?

Données de géolocalisation des points d'apport - Filières REP : Position exacte des conteneurs de collecte textile (Refashion), capacité, opérateurs.
https://data.pointsapport.ademe.fr/datasets/donnees-eo-refashion
	Permet de répondre à la question : 
		La collecte textile est-elle bien répartie sur le territoire ?
		Certaines régions sont-elles sous-équipées en points de collecte ?

Base carbone ADEME, utilisée pour calculer l’empreinte carbone de chaque produit.
https://data.ademe.fr/datasets/base-carboner

Fashion Dataset UK-US. Reproduit le processus de vente réel, y compris les achats des clients, les détails des transactions et les caractéristiques des produits, offrant ainsi une compréhension complète de la dynamique du marché de la mode.
https://www.kaggle.com/datasets/a23bisola/fashion-dataset-uk-us
Permet de répondre à la question : 
	A quoi ressemble le marché du textile neuf?

SheIn E-Commerce Dataset - 109,000 products. Catalogue Shein : prix, matériaux, description produit.
https://www.kaggle.com/datasets/trainingdatapro/shein-e-commerce-dataset
Permet de répondre à la question : 
	A quoi ressemble le marché du textile neuf de fast fashion?

ONU Base de données Comtrade - La plateforme de données sur le commerce mondial la plus complète au monde. La base de données Comtrade des Nations Unies regroupe des statistiques détaillées annuelles et mensuelles sur le commerce mondial par produit et par partenaire commercial à l'usage des gouvernements, des universités, des instituts de recherche et des entreprises. Les données compilées par la Division de statistique des Nations Unies couvrent environ 200 pays et représentent plus de 99 % du commerce mondial des marchandises. Les informations peuvent être extraites dans une variété de formats, y compris les outils de développement d'API pour l'intégration dans les applications et les flux de travail de l'entreprise. Cartographier les flux mondiaux de vêtements usagés : D'où viennent les balles de textiles ? Où sont-elles envoyées ? Quelles quantités ? Comparer les flux de neuf vs seconde main. Combien de T-shirts neufs importés vs combien de fripes exportées. Identifier les chaînes globales de la fast fashion
https://comtradeplus.un.org 

Bases de données des douanes import / export de marchandises. Permet d’étudier l’import et l’export de balles de vêtements usagés et l’import / export de vêtements neufs.
NC8 :  HS 6309 00 00 — “Articles de friperie / vêtements usagés”
Permet d’étudier les quantités importées de vêtements neufs, les destinations / origines, les tendances sur plusieurs années, de les comparer avec :les tonnages de vêtements neufs mis sur le marché (dataset REP), les exportations de fripes (6309).
https://lekiosque.finances.gouv.fr/site_fr/telechargement/telechargement_SGBD.asp

Sustainable Fashion: Eco-Friendly Trends. Indicateurs environnementaux de différentes fibres, marques, pratiques RSE.
https://www.kaggle.com/datasets/waqi786/sustainable-fashion-eco-friendly-trends/data
Permet de répondre à la question : 
	Quels matériaux ont la plus grande empreinte carbone ?
		Quelle est l'empreinte des vêtements dits “durables”?
