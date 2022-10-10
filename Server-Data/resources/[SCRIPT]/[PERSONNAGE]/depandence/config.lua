Config              = {}
Config.Locale 		= 'fr' -- Language des traductions

Config.StatusColor  = '#e74c3c' -- Couleur de la barre d'addiction

Config.AddictRateRemove = 0.1 -- Taux de descente de la barre d'addiction (en %)
Config.MinRateToHaveEffect = 10 -- Taux minimum que le joueur doit avoir dans ça barre d'addiction pour avoir l'effet (en %)
Config.RateToRemoveEffect = 30 -- Taux pour que le joueur n'est plus l'effect (en %)


Config.AnimationEffect = {dict = "missfam5_blackout", name = "vomit"} -- Animation lorsque le joueur est en manque

Config.DrugsItem = { -- Liste des items
	meth1g = { -- Nom de litem
		removeItem = true, -- Si quand on utilise l'item on le supprime
		Shield = false, -- Activer / Désactiver un Shield
		ShieldData = {percent = 50, time = 20}, -- Percent en %, et time en seconde (mettre -1 si on souhaite pas avoir de temps)
		Addiction = true, -- Activer / Désactiver l'addiction
		AddictionData = {percentChance = 5, rate = 5}, -- percentChance: % de chance de devenir addict | rate: taux de régénération
		Animation = true ,-- Activer / Désactiver une animation lorsque le joueur prend un item
		AnimationData = {dict = "anim@safehouse@bong", name="bong_stage3"},
		Wait = true, -- Activer / Désactiver si le joueur doit attendre avant de réutiliser un item
		WaitData = {time = 15}, -- time en seconde
	},
	opium1g = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 10, rate = 5},
		Animation = true ,
		AnimationData = {dict = "anim@safehouse@bong", name="bong_stage3"},
		Wait = true,
		WaitData = {time = 15},
	},
	coke1g = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 15, rate = 5},
		Animation = true ,
		AnimationData = {dict = "missarmenian2", name="standing_idle_loop_drunk"},
		Wait = true,
		WaitData = {time = 15},
	},
	weed4g = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 50, rate = 5},
		Animation = true ,
		AnimationData = {dict = "MaleScenario", name="WORLD_HUMAN_DRUG_DEALER"},
		Wait = true,
		WaitData = {time = 15},
	},
	cannabis = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 50, rate = 5},
		Animation = true ,
		AnimationData = {dict = "MaleScenario", name="WORLD_HUMAN_DRUG_DEALER"},
		Wait = true,
		WaitData = {time = 15},
	},
	marijuana = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 20, rate = 5},
		Animation = true ,
		AnimationData = {dict = "MaleScenario", name="WORLD_HUMAN_DRUG_DEALER"},
		Wait = true,
		WaitData = {time = 15},
	},
	coke = { -- Nom de litem
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 15, rate = 5},
		Animation = true ,
		AnimationData = {dict = "missarmenian2", name="standing_idle_loop_drunk"},
		Wait = true,
		WaitData = {time = 15},
	},
	opium_pooch = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 10, rate = 5},
		Animation = true ,
		AnimationData = {dict = "anim@safehouse@bong", name="bong_stage3"},
		Wait = true,
		WaitData = {time = 15},
	},
	lsa = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 10, rate = 5},
		Animation = true ,
		AnimationData = {dict = "missarmenian2", name="standing_idle_loop_drunk"},
		Wait = true,
		WaitData = {time = 15},
	},
	lsd = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 10, rate = 5},
		Animation = true ,
		AnimationData = {dict = "missarmenian2", name="standing_idle_loop_drunk"},
		Wait = true,
		WaitData = {time = 15},
	},
	meth = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 5, rate = 5},
		Animation = true ,
		AnimationData = {dict = "anim@safehouse@bong", name="bong_stage3"},
		Wait = true,
		WaitData = {time = 15},
	},
	joint2g = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 20, rate = 5},
		Animation = true ,
		AnimationData = {dict = "MaleScenario", name="WORLD_HUMAN_DRUG_DEALER"},
		Wait = true,
		WaitData = {time = 15},
	},
	wine = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 50, rate = 5},
		Animation = true ,
		AnimationData = {dict = "missarmenian2", name="standing_idle_loop_drunk"},
		Wait = true,
		WaitData = {time = 15},
	},
	beer = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 50, rate = 5},
		Animation = true ,
		AnimationData = {dict = "missarmenian2", name="standing_idle_loop_drunk"},
		Wait = true,
		WaitData = {time = 15},
	},
	whiskey = {
		removeItem = true,
		Shield = false,
		ShieldData = {percent = 50, time = 20},
		Addiction = true,
		AddictionData = {percentChance = 50, rate = 5},
		Animation = true ,
		AnimationData = {dict = "missarmenian2", name="standing_idle_loop_drunk"},
		Wait = true,
		WaitData = {time = 15},
	}
}

Config.SafeItem = { -- Item qui permet de retirer l'addiction
	itemName = 'psychoactif',
	removeItem = true
}
-- Pour ne pas avoir d'item pour retirer l'addiction, metter Config.SafeItem = {}