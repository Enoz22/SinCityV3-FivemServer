local labels = {
  ['en'] = {
    ['Entry']       = "Entrer",
    ['Exit']        = "Sortir",
    ['Garage']      = "Garage",
    ['Wardrobe']    = "Garde-robe",
    ['Inventory']   = "Coffre-fort",
    ['InventoryLocation']   = "Emplacement coffre-fort",

    ['LeavingHouse']      = "Sortir de la maison",

    ['AccessHouseMenu']   = "Accéder au menu maison",

    ['InteractDrawText']  = "["..Config.TextColors[Config.MarkerSelection].."E~s~] ",
    ['InteractHelpText']  = "~INPUT_PICKUP~ ",

    ['AcceptDrawText']    = "["..Config.TextColors[Config.MarkerSelection].."G~s~] ",
    ['AcceptHelpText']    = "~INPUT_DETONATE~ ",

    ['FurniDrawText']     = "["..Config.TextColors[Config.MarkerSelection].."F~s~] ",
    ['CancelDrawText']    = "["..Config.TextColors[Config.MarkerSelection].."F~s~] ",

    ['VehicleStored']     = "Véhicule garé",
    ['CantStoreVehicle']  = "Le véhicule ne peut-être garé ",

    ['HouseNotOwned']     = "Vous n'êtes pas le propriétaire de cette maison",
    ['InvitedInside']     = "Accepter l'invitation à rentrer dans la maison",
    ['MovedTooFar']       = "Vous êtes trop loin de la porte",
    ['KnockAtDoor']       = "Quelqu'un a sonné à votre porte",

    ['TrackMessage']      = "Track message",

    ['Unlocked']          = "Maison dévérouillée",
    ['Locked']            = "Maison vérouillée",

    ['WardrobeSet']       = "Position de la garde-robe",
    ['InventorySet']      = "Position du coffre-fort",

    ['ToggleFurni']       = "Afficher le menu des meubles",

    ['GivingKeys']        = "Vous donnez les clés à",
    ['TakingKeys']        = "Vous prenez les clés de",

    ['GarageSet']         = "Position du garage",
    ['GarageTooFar']      = "Le garage est trop loin",

    ['PurchasedHouse']    = "Vous avez acheté la maison pour $%d",
    ['CantAffordHouse']   = "Vous ne pouvez pas vous acheter cette maison",

    ['MortgagedHouse']    = "vous avez hypothéqué votre maison pour $%d",

    ['NoLockpick']        = "Vous n'avez pas de crochet",
    ['LockpickFailed']    = "Vous avez manqué de crocheter la serrure",
    ['LockpickSuccess']   = "Vous avez réussi à crocheter la serrure",

    ['NotifyRobbery']     = "Quelqu'un essaye de voler dans votre maison %s",

    ['ProgressLockpicking'] = "Crochetage de la serrure en cours",

    ['InvalidShell']        = "L'intérieur n'est pas conforme: %s, svp reporter le problème au gouvernement.",
    ['ShellNotLoaded']      = "L'intérieur ne veut pas se charger: %s, svp reporter le problème au gouvernement.",
    ['BrokenOffset']        = "Offset is messed up for house with ID %s, please report to your server owner.",

    ['UpgradeHouse']        = "Amelioration de la maison pour : %s",
    ['CantAffordUpgrade']   = "Vous ne pouvez pas réaliser cette amélioration",

    ['SetSalePrice']        = "Déterminer le prix de vente",
    ['InvalidAmount']       = "Le montant est invalide",
    ['InvalidSale']         = "Vous ne pouvez pas vendre cette maison car vous devez toujours de l'argent",
    ['InvalidMoney']        = "Vous n'avez pas assez d'argent",

    ['EvictingTenants']     = "Expulser les locataires",

    ['NoOutfits']           = "Vous n'avez aucun vêtement entreposés",

    ['EnterHouse']          = "Entrer dans la maison",
    ['KnockHouse']          = "Frapper à la porte",
    ['RaidHouse']           = "Attaquer la maison",
    ['BreakIn']             = "Roder",
    ['InviteInside']        = "Inviter à l'intérieur",
    ['HouseKeys']           = "Les clés de la maison",
    ['UpgradeHouse2']       = "Améliorer la maison",
    ['UpgradeShell']        = "Améliorer l'intérieur",
    ['SellHouse']           = "Vendre la maison",
    ['FurniUI']             = "HUD des fournitures",
    ['SetWardrobe']         = "Position de la garde-robe",
    ['SetInventory']        = "Position du coffre",
    ['SetGarage']           = "Position du garage",
    ['LockDoor']            = "Fermer la maison",
    ['UnlockDoor']          = "dévérouillée la porte",
    ['LeaveHouse']          = "quitter la maison",
    ['Mortgage']            = "Hypothèque",
    ['Buy']                 = "Acheter",
    ['View']                = "Vues",
    ['Upgrades']            = "Amélioration",
    ['MoveGarage']          = "Déplacer le garage",

    ['GiveKeys']            = "Donner les clés",
    ['TakeKeys']            = "Prendre les clés",

    ['MyHouse']             = "Ma maison",
    ['PlayerHouse']         = "Maison d'un citoyen",
    ['EmptyHouse']          = "La maison est vide",

    ['NoUpgrades']          = "Aucune amélioration possible",
    ['NoVehicles']          = "Il n'y a pas de véhicule",
    ['NothingToDisplay']    = "Rien à afficher",

    ['ConfirmSale']         = "Oui, vendre ma maison",
    ['CancelSale']          = "Non, ne pas vendre ma maison",
    ['SellingHouse']        = "Vendre la maison ($%d)",

    ['MoneyOwed']           = "L'argent due: $%s",
    ['LastRepayment']       = "Dernier remboursement: %s",
    ['PayMortgage']         = "Payer L'hypothèque",
    ['MortgageInfo']        = "Informations sur l'hypothèque",

    ['SetEntry']            = "Position de l'entrée",
    ['CancelGarage']        = "Annuler le garage",
    ['UseInterior']         = "Utiliser l'intérieur",
    ['UseShell']            = "Use Shell",
    ['InteriorType']        = "Choisir le type d'intérieur",
    ['SetInterior']         = "Choisir l'intérieur",
    ['SelectDefaultShell']  = "Sélectionner l'intérieur par défaut",
    ['ToggleShells']        = "Afficher les interieurs dispos pour cette propriété",
    ['AvailableShells']     = "Intérieurs disponibles",
    ['Enabled']             = "~g~Activé~s~",
    ['Disabled']            = "~r~Désactivé~s~",
    ['NewDoor']             = "Ajouter une nouvelle porte",
    ['Done']                = "C'est fait",
    ['Doors']               = "Portes",
    ['Interior']            = "Intérieurs",

    ['CreationComplete']    = "La création de maison est complête",

    ['HousePurchased'] = "Votre maison a été achetée $%d",
    ['HouseEarning']   = ", Vous avez gagné $%d de la vente."
  }
}

Labels = setmetatable({},{
  __index = function(self,k)
    if Config and Config.Locale and labels[Config.Locale] then
      if labels[Config.Locale][k] then
        return labels[Config.Locale][k]
      else
        return string.format("UNKNOWN LABEL: %s",tostring(k))
      end
    elseif labels['en'] then
      if labels[Config.Locale][k] then
        return labels[Config.Locale][k]
      else
        return string.format("UNKNOWN LABEL: %s",tostring(k))
      end
    else
      return string.format("UNKNOWN LABEL: %s",tostring(k))
    end
  end
})

