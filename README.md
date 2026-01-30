# 📊 En quête de fripes  
**Analyse des flux internationaux de vêtements usagés et neufs (2014–2024)**

Projet de data analyse réalisé dans le cadre du **bootcamp Data Analytics – Le Wagon**.  
Ce dépôt documente la démarche analytique, les sources de données et les traitements ayant conduit à la restitution finale du projet.

---

## 📌 Contexte

L’essor de la fast fashion et le développement de la seconde main soulèvent des questions majeures sur la durabilité du modèle textile européen.  
Si le don et l’achat de vêtements d’occasion sont souvent perçus comme des pratiques locales et responsables, la réalité des flux internationaux reste peu visible.

Ce projet vise à analyser, à partir de **données officielles et vérifiables**, la circulation des vêtements neufs et usagés entre l’Europe et le reste du monde, afin d’évaluer la soutenabilité réelle du système textile actuel.

---

## 🎯 Objectifs du projet

- Analyser les **flux d’importation et d’exportation de vêtements usagés (fripes)**  
- Mettre en regard ces flux avec ceux des **vêtements neufs**
- Identifier les **principaux pays partenaires et routes commerciales**
- Questionner les idées reçues sur la seconde main et la durabilité
- Produire des indicateurs clairs et une restitution accessible à un public non technique

---

## ❓ Problématique

**Comment circulent les vêtements neufs et usagés entre l’Europe et le monde, et que révèlent ces flux sur notre modèle de consommation et de gestion des déchets textiles ?**

---

## 🧠 Hypothèses de départ

Le travail est volontairement parti de préjugés courants afin de les confronter aux données :

- Les vêtements donnés restent localement
- La seconde main est forcément durable
- Tous les vêtements donnés trouvent une seconde vie
- Les textiles usagés sont majoritairement recyclés

L’objectif était de **ne pas orienter l’analyse par la littérature existante**, mais de laisser les données guider les conclusions.

---

## 🔍 Démarche analytique

1. **Cadrage du projet**  
   - Définition des questions de recherche  
   - Sélection de sources officielles et publiques  
   - Identification des indicateurs pertinents  
   👉 Voir : `docs/cadrage_initial.md`

2. **Collecte des données**  
   - Extraction des données de commerce international sur 10 ans (2014–2024)
   - Sélection des codes produits :
     - HS 6309 : vêtements usagés / friperie
     - HS62 :  vêtements neufs
   - Données en **poids (kg)** et **valeur (USD)**  
   - Données par pays, par flux (import / export)

3. **Traitement et analyse**
   - Nettoyage et structuration des données (Python, SQL)
   - Agrégation par pays, par année, par type de flux
   - Analyses descriptives et comparatives
   - Prédictions de tendances (Prophet)

4. **Visualisation et exploration**
   - Premiers graphiques exploratoires sur Looker Studio (travail collaboratif)
   - Identification de pays récurrents dans les échanges
   - Approfondissement des analyses par itérations successives

5. **Synthèse et restitution**
   - Structuration des résultats
   - Mise en perspective des limites et biais des données
   - Construction d’un discours nuancé (ni alarmiste, ni simpliste)

---

## 📊 Sources de données principales

- **ONU – UN Comtrade**  
  Données officielles de commerce international (imports / exports, par produit et pays)  
  https://comtradeplus.un.org  

- **ADEME – Points d’apport textile (Refashion)**  
  Géolocalisation des points de collecte textile en France  
  https://data.pointsapport.ademe.fr/datasets/donnees-eo-refashion  

*(Toutes les sources utilisées sont publiques, officielles et vérifiables.)*

---

## 🗂️ Contenu du dépôt

├── README.md
├── docs/
│ └── cadrage_initial.md
├── notebooks/
│ └── en_quete_de_fripes_analysis.ipynb
├── presentation/
│ └── en_quete_de_fripes.pdf


---

## 📄 Livrable principal

👉 **Présentation finale du projet (Canva)**  
[En quête de fripes – Présentation](https://www.canva.com/design/DAG6o3WUdlE/abEEfK2YlPwsXOYzMc6tTQ/view)

Cette présentation constitue la restitution finale du projet.  
Le présent dépôt GitHub vise à documenter **la démarche data complète** ayant conduit à ces résultats.

---

## 👤 Contribution personnelle

Dans le cadre de ce projet de groupe, ma contribution a porté principalement sur :

- l’initiation et le cadrage du projet,
- la collecte et le nettoyage des données,
- l’extraction des données ONU (Python / SQL),
- la structuration des indicateurs,
- la réalisation de visualisations et l’analyse des résultats.

Cette section est précisée dans un souci de **transparence vis-à-vis du travail collaboratif**.

---

## ⚠️ Limites de l’analyse

- Manque de traçabilité complète des flux (pays de transit, doubles déclarations)
- Données parfois partielles ou incohérentes selon les pays déclarants
- Sensibilité des flux aux contextes géopolitiques (Brexit, guerre en Ukraine, routes maritimes)
- Impacts indirects non mesurés :
  - conditions sociales,
  - consommation d’eau et d’énergie,
  - pollution à long terme.

Ces limites sont intégrées à l’interprétation des résultats.

---

## 🚀 Objectif du dépôt

Ce projet s’inscrit dans mon **portfolio de Data Analyst junior**.  
Il a pour objectif de démontrer :

- une capacité à formuler une problématique data,
- une maîtrise des étapes clés d’une analyse de données,
- un esprit critique face aux données,
- une capacité de restitution claire et argumentée.

---

## 📬 Contact

N’hésitez pas à me contacter via LinkedIn pour échanger autour de ce projet ou de mon parcours en data analyse.
https://www.linkedin.com/in/solen-grozel/


