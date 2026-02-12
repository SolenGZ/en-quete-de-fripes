## Extraction des données pour les vêtements neufs pour l'export et l'import en France entres 2014 et 2024

# Source : https://comtradeplus.un.org (ONU echanges internationaux)
# Nous avons un fichier par année, pour réaliser notre analyse sur 10 ans (de 2014 à 2024) il faut joindre tout les csv téléchargés en une seule table.

WITH
  tables AS (
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2014
    UNION ALL
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2015
    UNION ALL
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2016
    UNION ALL
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2017
    UNION ALL
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2018
    UNION ALL
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2019
    UNION ALL
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2020
    UNION ALL
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2021
    UNION ALL
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2022
    UNION ALL
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2023
    UNION ALL
    SELECT *
    FROM projet-fripes.Data_set_version_origine.onu_france_neuf_2024
  )

# Nous devons maintenant séléctionner les colonnes qui nous interessent pour notre étude et nous les renomons pour plus de clarté.

SELECT 
  refYear AS year,
  period AS date_date,
  flowCode AS flux,
  partnerDesc AS partenaire,
  primaryValue AS valeur_USD
  FROM tables



