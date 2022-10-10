Config = {}

Config.MenuKey 			= 182 -- "L" button, change to whatever you want
Config.UseCustomFonts 	= false -- Leave this as is if you don't know how to or haven't loaded custom fonts.
Config.CustomFontFile 	= "greek" -- change only if you turn custom fonts on.
Config.CustomFontId 	= "OpenSans" -- change only if you turn custom fonts ok.
Config.Locale 			= "fr" -- gr / en / br

Config.Documents = {

["police"] ={
        {
          headerTitle = "PROCES VERBAL DE TEMOIGNAGE",
          headerSubtitle = "B11-CERFA001",
          elements = {
            { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
			{ label = "DATE / HEURE", type = "input", value = "xx/xx/xxxx - xxhxx", can_be_emtpy = false },
            { label = "TEMOIGNAGE", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
		{
          headerTitle = "RAPPORT D INTERVENTION",
          headerSubtitle = "B11-CERFA003.",
          elements = {
			{ label = "MATRICULE DES AGENTS PRESENTS", type = "input", value = "", can_be_emtpy = false },
			{ label = "DATE / HEURE ", type = "input", value = "xx/xx/xxxx - xxhxx", can_be_empty = false },
			{ label = "INFORMATION", type = "textarea", value = "", can_be_emtpy = false },
          }       
        },
		{
        headerTitle = "MANDAT D ARRET",
        headerSubtitle = "Le mandat d'arret permet d'arreter un citoyen pour les motifs .",
        elements = {
			{ label = "N° DU MANDAT", type = "input", value = "N° xxxxx", can_be_empty = false },
			{ label = "DATE DU MANDAT", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
			{ label = "NOM DU COMMANDANT DE POLICE", type = "input", value = "", can_be_emtpy = false },
			{ label = "MATRICULE DU COMMANDANT DE POLICE", type = "input", value = "", can_be_emtpy = false },
			{ label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
			{ label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
			{ label = "MOTIF D ARRESTATION", type = "input", value = "", can_be_emtpy = false },
			{ label = "DATE DE L ARRESTATION", type = "input", value = "", can_be_emtpy = false, can_be_edited = true },
			{ label = "INFORMATIONS", type = "textarea", value = "LE MANDAT D ARRET EST EMIS PAR LE SERVICE JUDICIAIRE DE LOS SANTOS POUR LES MOTFIS CI DESSUS POUR L ARRESTATION ET LA MISE EN GARDE A VUE DU CITOYEN.", can_be_emtpy = false },
		  }
		},
		{
          headerTitle = "ETAT DE L HABILITATION DE PORT D ARME",
          headerSubtitle = "B11-CERFA002-a.",
          elements = {
            { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
			{ label = "DATE D EXAMIN", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
			{ label = "AVIS DE L INSTRUCTEUR", type = "input", value = "Validé", can_be_empty = false },
			{ label = "GRADE AGENT INSTRUCTEUR", type = "input", value = "", can_be_empty = false },
			{ label = "MATRICULE AGENT INSTRUCTEUR", type = "input", value = "xx", can_be_empty = false },
			{ label = "CONTENU DE LA FORMATION ACQUISE", type = "input", value = "xx", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "LE DEPARTEMENT DE LOS SANTOS CONFIRME QUE LE CITOYEN A SUIVI UNE FORMATION ELEMENTAIRE AU SEIN DU DEPARTEMENT ET PEUT PRETENDRE A UNE LICENCE D ARME A FEU DE CATEGORIE A1 SAUF AVIS CONTRAIRE MEDICAL.", can_be_emtpy = false },
          }       
        },
		{
          headerTitle = "BREVET DE PILOTAGE ULM",
          headerSubtitle = "B10-CERFA001.",
          elements = {
            { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
			{ label = "DATE D EXAMIN", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "LE DEPARTEMENT DE LOS SANTOS ACCREDITE LE CITOYEN A POUVOIR UTILISER UN ULM DANS LE RESPECT DES REGLEMENTATIONS AERIENNES.", can_be_emtpy = false },
          }       
        },
        {
          headerTitle = "BREVET DE PILOTAGE HELICOPTERE",
          headerSubtitle = "B10-CERFA002.",
          elements = {
            { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE ", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
			{ label = "DATE D EXAMIN", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
            { label = "Informatie", type = "textarea", value = "LE DEPARTEMENT DE LOS SANTOS ACCREDITE LE CITOYEN A POUVOIR UTILISER UN HELICOPTERE DANS LE RESPECT DES REGLEMENTATIONS AERIENNES.", can_be_emtpy = false },
          }       
        },
        {
          headerTitle = "BREVET DE PILOTAGE AVION COMMERCIAL",
          headerSubtitle = "B10-CERFA003.",
          elements = {
            { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE ", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
			{ label = "DATE D EXAMIN", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
            { label = "Informatie", type = "textarea", value = "LE DEPARTEMENT DE LOS SANTOS ACCREDITE LE CITOYEN A POUVOIR UTILISER UN AVION COMMERCIAL DANS LE RESPECT DES REGLEMENTATIONS AERIENNES.", can_be_emtpy = false },
          }       
        },
		{
          headerTitle = "PERMIS SPECIAL DE PARKING",
          headerSubtitle = "Permis autorisant le citoyen à garer son véhicule n'importe où.",
          elements = {
            { label = "PRENOM", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE DE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "LE CITOYEN CI NOMMER A ETE AUTORISER A STATIONNE DANS N'IMPORTE QUELLE ZONE DE LA VILLE A N'IMPORTE QUELLE JUSQU'A LA DATE DE FIN MENTIONNER SUR LE PRESENT DOCUMENT.", can_be_emtpy = false },
          }
        },
		{
          headerTitle = "SUPPRESSION DU CASIER JUDICIAIRE",
          headerSubtitle = "La suppression totale du casier judiciaire du citoyen agrée par les autoritées fédérales.",
          elements = {
            { label = "PRENOM", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "PEINES SUPPRIMEES", type = "textarea", value = "LA POLICE FEDERALE DECLARE SOLENNELLEMENT SUPPRIMER LES PEINES CI DESSOUS DU CASIER JUDICIAIRE DE L'INDIVIDU NOMME. LE RESULTAT PROVIENT DES DONNEES ENTREES PAR LES AUTORITEES FEDERALES DU PAYS.", can_be_emtpy = false, can_be_edited = false },
          } 
		}
	},
["public"] = {
		{
          headerTitle = "FORMULAIRE DE CITOYENNETE",
          headerSubtitle = "Formulaire de citoyenneté pour les citoyens.",
          elements = {
            { label = "CONTENU DU FORMULAIRE", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
		{
          headerTitle = "FORMULAIRE DE CESSION DE VEHICULE",
          headerSubtitle = "Cession d'un véhicule entre citoyens.",
          elements = {
            { label = "PLATE D'IMMATRICULATION", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU NOUVEAU PROPRIETAIRE", type = "input", value = "", can_be_emtpy = false },
            { label = "PRIX DE VENTE", type = "input", value = "", can_be_empty = false },
            { label = "AUTRE INFORMATIONS", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
		{
          headerTitle = "FORMULAIRE DE DECLARATION",
          headerSubtitle = "B45-CERFA475.",
          elements = {
            { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
			{ label = "CONTENU DE LA DECLARATION", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
		{
          headerTitle = "DECLARATION DE RECONNAISSANCE DE DETTES ENTRE COTOYEN",
          headerSubtitle = "B25-CERFA484.",
          elements = {
            { label = "PRENOM DU PRETEUR", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PRETEUR", type = "input", value = "", can_be_emtpy = false },
            { label = "MONTANT DUE", type = "input", value = "xxxxxx $", can_be_empty = false },
            { label = "DATE DU PAIEMENT COMPLET", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
           { label = "AUTRES INFORMATIONS", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "DECLARATION DE RECOUVREMENT DES DETTES",
          headerSubtitle = "B25-CERFA485.",
          elements = {
            { label = "PRENOM DU DEBITEUR", type = "input", value = "", can_be_emtpy = false },
           { label = "NOM DU DEBITEUR", type = "input", value = "", can_be_emtpy = false },
            { label = "MONTANT DES DETTES", type = "input", value = "xxxxxx $", can_be_empty = false },
           { label = "AUTRES INFORMATIONS", type = "textarea", value = "JE RECONNAIS EXPRESSEMENT ET CONFIRME QUE LE CITOYEN DEBITEUR M A TRANSMIS L'INTEGRALITE DE LA SOMME DUE A L'ECHEANCE DE CE JOUR", can_be_emtpy = false, can_be_edited = false },
         }
		},
		{
          headerTitle = "ETAT DE L HABILITATION DE PORT D ARME",
          headerSubtitle = "B11-CERFA002-b.",
          elements = {
            { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
			{ label = "DATE D EXAMIN", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
			{ label = "AVIS A LA SUITE DE L EXAMIN", type = "input", value = "Validé", can_be_empty = false },
			{ label = "NOM / PRENOM DU PERSONNEL MEDICAL", type = "input", value = "", can_be_empty = false },
			{ label = "SPECIALITE DU PROFESSIONEL DE SANTE", type = "input", value = "", can_be_empty = false },
			{ label = "NOTES MEDICALES DU CITOYEN", type = "input", value = "", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "LE SERVICE MEDICAL DE LOS SANTOS CONFIRME QUE LE CITOYEN A SUIVI UNE ETUDE PSYCHOLOGIQUE AU SEIN DE L HOPITAL ET PEUT PRETENDRE A UNE LICENCE D ARME A FEU DE CATEGORIE A1 SAUF REFUS LORS DE LA FORMATION AU DEPARTEMENT DE POLICE.", can_be_emtpy = false },
          }       
        },
	},
["ambulance"] ={
        {
          headerTitle = "RAPPORT MEDICAL - REFUS DU TRAITEMENT",
          headerSubtitle = "Rapport Officiel pour la notification d'un refus de traitement pour des raisons personnels.",
          elements = {
            { label = "PRENOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE / HEURE DU REFUS", type = "input", value = "xx/xx/xxxx - xxhxx", can_be_empty = false },
            { label = "NOTES MEDICAL", type = "textarea", value = "LE CITOYEN A SIGNIFIé SON REFUS POUR UN MOTIF DE TYPE RAISON PERSONNEL.", can_be_emtpy = false },
          } 
        },
        {
          headerTitle = "RAPPORT MEDICAL - CERTIFICAT MEDICAL",
          headerSubtitle = "B65-CERFA012.",
          elements = {
            { label = "PRENOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE", type = "input", value = "xx/xx/xxxx - xxhxx", can_be_empty = false },
			{ label = "DATE DE LA REPRISE DU TRAVAIL", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
			{ label = "CONSTATATIONS MEDICALES", type = "textarea", value = "", can_be_empty = false },
            { label = "FAITS MEDICAUX & DECLARATIONS DU PATIENT", type = "textarea", value = "", can_be_emtpy = false },
          } 
        },
		{
          headerTitle = "RAPPORT MEDICAL - PSYCHOLOGIE",
          headerSubtitle = "Rapport médical officiel remplis par un psychologue ou psychiatre agréer.",
          elements = {
            { label = "PRENOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE DE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "NOTES MEDICALES", type = "textarea", value = "LE PRESENT CITOYEN A ETE EXAMINER ET DIAGNOSTIQUER PAR UN MEDECIN AGREER PAR LE SERVICE DE L'ORDRE DES MEDECINS DE LOS SANTOS. CE RAPPORT EST VALIDE JUSQU'A LA DATE DE FIN DE VALIDITE.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "RAPPORT MEDICAL - OPHTALMOLOGIE",
          headerSubtitle = "Rapport médical officiel remplis par un ophtalmologiste agréer.",
          elements = {
            { label = "PRENOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE DE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "NOTES MEDICALES", type = "textarea", value = "LE PRESENT CITOYEN A ETE EXAMINER ET DIAGNOSTIQUER PAR UN MEDECIN AGREER PAR LE SERVICE DE L'ORDRE DES MEDECINS DE LOS SANTOS. CE RAPPORT EST VALIDE JUSQU'A LA DATE DE FIN DE VALIDITE.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "AUTORISATION DE CONSOMMATION DE MARIJUANA",
          headerSubtitle = "Permis médical officiel de consommation de marijuana rédiger par un médecin agréer.",
          elements = {
            { label = "PRENOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE DE FIN DE VALIDITE", type = "input", value = "", can_be_empty = false },
            { label = "NOTES MEDICALES", type = "textarea", value = "LE PRESENT CITOYEN EST AUTORISER APRES EXAMIN MEDICAL REALISER PAR UN MEDECIN AGREER PAR LE SERVICE DE L'ORDRE DES MEDECINS QUE POUR DES RAISONS MEDICAL, CET INDIVIDU EST AUTORISER A CONSOMMER LEGALEMENT DU CANNABIS.", can_be_emtpy = false, can_be_edited = false },
          }
        },
		{
          headerTitle = "RAPPORT MEDICAL - CERTIFICAT DECES",
          headerSubtitle = "B65-CERFA013.",
          elements = {
            { label = "PRENOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "NOM DU PATIENT", type = "input", value = "", can_be_emtpy = false },
            { label = "DATE / HEURE DU DECES", type = "input", value = "xx/xx/xxxx - xxhxx", can_be_empty = false },
			{ label = "DATE DE LA REPRISE DU TRAVAIL", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
			{ label = "CONSTATATIONS MEDICALES", type = "textarea", value = "", can_be_empty = false },
            { label = "FAITS MEDICAUX & DECLARATIONS DU PATIENT", type = "textarea", value = "", can_be_emtpy = false },
		  }
		},
	},	  
["avocat1"] = {
		  {
			headerTitle = "CONTRAT DE SERVICES LEGAL",
			headerSubtitle = "Contrat de protection du citoyen.",
			elements = {
			  { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
			  { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
			  { label = "VALIDE JUSQU A", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
			  { label = "N° DU CONTRAT", type = "input", value = "N° xxxxx", can_be_empty = false },
			  { label = "INFORMATION", type = "textarea", value = "CE DOCUMENT EST UNE PREUVE LEGALE DE LA REPRESENTATION DU DIS AVOCAT POUR LE CITOYEN MENTIONNE. SES SERVICES SERONT LEGALS JUSQU'A LA DATE DE FIN DE VALIDITE DU CONTRAT.", can_be_emtpy = false },
			}
		  }
	},
["avocat2"] = {
      {
        headerTitle = "CONTRAT DE SERVICES LEGAL",
        headerSubtitle = "Contrat de protection du citoyen.",
        elements = {
          { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
          { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
          { label = "VALIDE JUSQU A", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
		  { label = "N° DU CONTRAT", type = "input", value = "N° xxxxx", can_be_empty = false },
          { label = "INFORMATION", type = "textarea", value = "CE DOCUMENT EST UNE PREUVE LEGALE DE LA REPRESENTATION DU DIS AVOCAT POUR LE CITOYEN MENTIONNE. SES SERVICES SERONT LEGALS JUSQU'A LA DATE DE FIN DE VALIDITE DU CONTRAT.", can_be_emtpy = false },
        }
      }
	},
["justice"] = {
      {
        headerTitle = "MANDAT D ARRET",
        headerSubtitle = "Le mandat d'arret permet d'arreter un citoyen pour les motifs .",
        elements = {
          { label = "N° DU MANDAT", type = "input", value = "N° xxxxx", can_be_empty = false },
		  { label = "DATE DU MANDAT", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
		  { label = "NOM DU REPRESENTANT JUDICIAIRE", type = "input", value = "", can_be_emtpy = false },
		  { label = "GRADE DU REPRESENTANT JUDICIAIRE", type = "input", value = "", can_be_emtpy = false },
		  { label = "PRENOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
          { label = "NOM DU CITOYEN", type = "input", value = "", can_be_emtpy = false },
		  { label = "MOTIF D ARRESTATION", type = "input", value = "", can_be_emtpy = false },
		  { label = "DATE DE L ARRESTATION", type = "input", value = "", can_be_emtpy = false, can_be_edited = true },
		  { label = "INFORMATIONS", type = "textarea", value = "LE MANDAT D ARRET EST EMIS PAR LE SERVICE JUDICIAIRE DE LOS SANTOS POUR LES MOTFIS CI DESSUS POUR L ARRESTATION ET LA MISE EN GARDE A VUE DU CITOYEN.", can_be_emtpy = false },
        }
      },
      {
        headerTitle = "ENQUETE SPECIALE",
        headerSubtitle = "Le document permet de délivrer une mission de sureté publique.",
        elements = {
          { label = "N° ENQUETE", type = "input", value = "N° xxxxx", can_be_empty = false },
		  { label = "DATE D EDITION", type = "input", value = "xx/xx/xxxx", can_be_empty = false },
		  { label = "NOM DU REPRESENTANT JUDICIAIRE", type = "input", value = "", can_be_emtpy = false },
		  { label = "GRADE DU REPRESENTANT JUDICIAIRE", type = "input", value = "", can_be_emtpy = false },
		  { label = "PRENOM DE L ENQUETEUR", type = "input", value = "", can_be_emtpy = false },
          { label = "NOM DE L ENQUETEUR", type = "input", value = "", can_be_emtpy = false },
		  { label = "MOTIF MOTIVANT L ENQUETE", type = "input", value = "", can_be_emtpy = false },
          { label = "INFORMATIONS", type = "textarea", value = "", can_be_emtpy = false },
        }
      }
	}  
	  
},
