Config = {

-- IMPORTANT! To configure report text navigate to /html/script.js and find the text you want to replace

EvidenceReportInformationBullet = "firstname, lastname, job, sex, nationality", -- The information displayd from users table in mysql in the evidence report (ONLY CHANGE IF YOU KNOW WHAT ARE YOU DOING)
EvidenceReportInformationFingerprint = "firstname, lastname, job, sex, nationality", -- The information displayd from users table in mysql in the evidence report (ONLY CHANGE IF YOU KNOW WHAT ARE YOU DOING)
EvidenceReportInformationBlood = "firstname, lastname, job, sex, nationality", -- The information displayd from users table in mysql in the evidence report (ONLY CHANGE IF YOU KNOW WHAT ARE YOU DOING)

ShowBloodSplatsOnGround = true, -- Show blood on the ground when player is shot
PlayClipboardAnimation = true, -- Play clipboard animation when reading report

JobRequired = 'police', -- The job needed to use evidence system
JobGradeRequired = 2, -- The MINIMUM job grade required to use evidence system (If you use 0 all job grades can use the system)

CloseReportKey = 'BACKSPACE', -- The key used to close the report
PickupEvidenceKey = 'E', -- The key used to pick up evidence

EvidenceAlanysisLocation = vector3(-1096.76, -826.92, 10.28), -- The place where the evidence will be analyzed and report generated
TimeToAnalyze = 10000, -- Time in miliseconds to analyze the given evidence
TimeToFindFingerprints = 3000, -- Time in miliseconds to find fingerprints in a car

--UPDATE V2
RainRemovesEvidence = true, -- Removes evidence when it starts raining!
TimeBeforeCrimsCanDestory = 300, -- Seconds before Criminals can destroy evidence (300 is the time when evidence coolsdown and shows up as WARM)
EvidenceStorageLocation = vector3(-1100.76, -833.76, 10.28), -- The place where all evidence are being archived! You can view old evidence or delete it
--

Text = {

    --UPDATE V2
    ['not_in_vehicle'] = 'Pour l\'utiliser, vous devez être dans un véhicule!',
    ['remove_evidence'] = 'Détruire la preuve [~r~E~w~]',
    ['cooldown_before_pickup'] = 'La preuve est trop fraîche ou chaude pour être prise',
    ['evidence_removed'] = 'La preuve est détruite!',
    ['open_evidence_archive'] = '[~b~E~w~] Regarder les archives des preuves',
    ['evidence_archive'] = 'Archive de preuves',
    ['view'] = 'Vue',
    ['delete'] = 'Effacer',
    ['report_list'] = 'Liste de rapports #',
    ['evidence_deleted_from_archive'] = 'La preuve a été effacée des archives!',
    --

    ['evidence_colleted'] = 'La preuve a été #{number} collectée!',
    ['no_more_space'] = 'Pas assez de places pour les preuves 3/3!',
    ['analyze_evidence'] = '[~b~E~w~] Analyse de la preuve',
    ['evidence_being_analyzed'] = 'La preuve est analysée par la médecine ! Un peu de patience svp',
    ['evidence_being_analyzed_hologram'] = '~b~ La preuve est analysée',
    ['read_evidence_report'] = '[~b~E~w~] Lire le rapport de la preuve',
    ['analyzing_car'] = 'La voiture est en train d\'être analysée! Un peu de patience svp',
    ['pick_up_evidence_text'] = 'Prendre la preuve [~r~E~w~]',
    ['no_fingerprints_found'] = 'Aucune empreinte trouvée!',
    ['no_evidence_to_analyze'] = " Aucune preuve à analyser!",
    ['shell_hologram'] = '~b~ {guncategory} ~w~ douille',
    ['blood_hologram'] = '~r~Sang',

    ['blood_after_0_minutes'] = 'Statut: ~r~FRAICHE',
    ['blood_after_5_minutes'] = 'Statut: ~y~AGE',
    ['blood_after_10_minutes'] = 'Statut: ~b~VIEUX',

    ['shell_after_0_minutes'] = 'Statut: ~r~CHAUD',
    ['shell_after_5_minutes'] = 'Statut: ~y~CHAUD',
    ['shell_after_10_minutes'] = 'Statut: ~b~FROID',

	['submachine_category'] = 'Semi automatique',
    ['pistol_category'] = 'Pistolet',
    ['shotgun_category'] = 'Shotgun',
    ['assault_category'] = 'Arme de guerre',
    ['lightmachine_category'] = 'Léger automatique',
    ['sniper_category'] = 'Sniper',
    ['heavy_category'] = 'Arme lourde'


}
	

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--EXAMPLE USED IN VIDEO
		--exports['mythic_notify']:SendAlert('inform', msg)

end
