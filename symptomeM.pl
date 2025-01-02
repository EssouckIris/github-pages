symptomes_maladie(hypertension,[maux_de_tete,vertiges,palpitations_cardiaques,essouflement,fatigue,douleur_thoracique , vision_floue]).

symptomes_maladie(diabeteType2,[soif_excessive,envie_frequente_uriner,perte_de_poids_inexpliquee,cicatriation_lente,fatigue]).

symptomes_maladie(allergieRespiratoire,[eternuement_frequents,rhinorrhee,toux_persistante,sensation_de_poids_dans_la_poitrine]).

symptomes_maladie(asthme,[essouflement,respiration_sifflante,toux_persistante,sensation_de_poids_dans_la_poitrine]).

symptomes_maladie(reflux_gastro_oesophagien,[brulure_estomac,toux_chronique,sensation_de_poids_dans_la_poitrine,nausees,difficulte_a_avaler]).

symptomes_maladie(anemie_ferriprive,[fatigue_excessive,paleur_de_la_peau,essouflement , palpitation,vertiges,langue_douloureuse,crampes_musculaire]).

symptomes_maladie(hyperchlolesterolemie,[fatigue_excessive,essouflement,douleur_thoracique]).

symptomes_maladie(lombalgie,[douleur_dans_le_bas_du_dos,raideur_dans_le_bas_du_dos,dou,pertes_de_mobilite,sensibilite_accrue]).

symptomes_maladie(migraine,[douleur_intense,nausees,vomissements,trouble_visuels,fatigue_extreme,douleur_pulsative]).

symptomes_maladie(lombalgie,[douleur,crampe_abdominale,ballonnements,distension_abdominale,trouble_du_transit_intestinal,selles_anormales,nausees]).

symptome_associe_maladie(Symptome,Maladie):-
    symptomes_maladie(Maladie,Symptomes),
    member(Symptome, Symptomes).
demander_symptome:-
   write('entrez un symptome:'),
   read(Symptome),
   (    symptome_associe_maladie(Symptome, Maladie)
   ->  write('la maladie est:'), write(Maladie),nl;
   write('aucune maladie trouvee pour ce symptome.'),nl).

