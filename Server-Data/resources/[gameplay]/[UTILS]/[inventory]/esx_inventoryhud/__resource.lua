resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

description "ESX Inventory HUD"

version "1.1"

ui_page "html/ui.html"

client_scripts {
  "@es_extended/locale.lua",
  "client/main.lua",
  "client/property.lua",
  "client/vault.lua",
  "locales/en.lua",
  "config.lua"
}

server_scripts {
  "@es_extended/locale.lua",
  "server/main.lua",
  "locales/en.lua",
  "config.lua"
}

files {
  "html/ui.html",
  "html/css/ui.css",
  "html/css/jquery-ui.css",
  "html/js/inventory.js",
  "html/js/config.js",
  -- JS LOCALES
  "html/locales/cs.js",
  "html/locales/en.js",
  "html/locales/fr.js",
  -- IMAGES
  "html/img/bullet.png",
  "html/img/logo.png",
  'html/img/items/*.png',
  'html/img/items/*.jpg',
  
--[[
  'html/img/items/ambcard.png',
  'html/img/items/sim.png',
  'html/img/items/blindfold.png',
  'html/img/items/bottle.png',
  'html/img/items/carcard.png',
  'html/img/items/creditcard.png',
  'html/img/items/dmv.png',
  'html/img/items/drive.png',
  'html/img/items/drive_bike.png',
  'html/img/items/drive_truck.png',
  'html/img/items/komradio.png',
  'html/img/items/marijuana.png',
  'html/img/items/mekcard.png',
  'html/img/items/plongee1.png',
  'html/img/items/plongee2.png',
  'html/img/items/policecard.png',
  'html/img/items/procentkort.png',
  'html/img/items/snus.png',
  'html/img/items/snusdosa.png',
  'html/img/items/tidning.png',
  'html/img/items/book.png',
  'html/img/items/pants.png',
  'html/img/items/hat.png',
  'html/img/items/speaker.png',
  'html/img/items/coupon.png',
  'html/img/items/laptop.png',
  'html/img/items/shirt.png',
  'html/img/items/shoes.png',
  'html/img/items/lotteryticket.png',
  'html/img/items/toothpaste.png',
  'html/img/items/teddybear.png',
  'html/img/items/Pike.png',
  'html/img/items/BigPike.png',
  'html/img/items/Smallpike.png',
  'html/img/items/Bass.png',
  'html/img/items/BigBass.png',
  'html/img/items/SmallBass.png',
  'html/img/items/airbag.png',
  'html/img/items/battery.png',
  'html/img/items/highradio.png',
  'html/img/items/highrim.png',
  'html/img/items/lights.png',
  'html/img/items/lowradio.png',
  'html/img/items/ratt.png',
  'html/img/items/seed_weed.png',
  'html/img/items/stockrim.png',
  'html/img/items/potatis.png',
  'html/img/items/socker.png',
  'html/img/items/meth_ingredients.png',
  'html/img/items/coke_ingredients.png',
  'html/img/items/radio.png',
  'html/img/items/pAmmo.png',
  'html/img/items/arAmmo.png',
  'html/img/items/mgAmmo.png',
  'html/img/items/sgAmmo.png',
  'html/img/items/dildo.png',
  'html/img/items/dildo2.png',
  'html/img/items/korv.png',
  'html/img/items/carcleankit.png',
  'html/img/items/cigarettes.png',
  'html/img/items/licenseplate.png',
  'html/img/items/notepad.png',
  "html/img/items/absolut-vodka.png",
  "html/img/items/alarm1.png",
  "html/img/items/alarm2.png",
  "html/img/items/alarm3.png",
  "html/img/items/alarminterface.png",
  "html/img/items/alive_chicken.png",
  "html/img/items/anti.png",
  "html/img/items/armor.png",
  "html/img/items/bait.png",
  "html/img/items/bandage.png",
  "html/img/items/beer.png",
  "html/img/items/binoculars.png",
  "html/img/items/black_chip.png",
  "html/img/items/black_money.png",
  "html/img/items/blowpipe.png",
  "html/img/items/blowtorch.png",
  "html/img/items/bolcacahuetes.png",
  "html/img/items/bolchips.png",
  "html/img/items/bolnoixcajou.png",
  "html/img/items/bolpistache.png",
  "html/img/items/bread.png",
  "html/img/items/burger.png",
  "html/img/items/c4_bank.png",
  "html/img/items/grainecoka.jpg",
  
  
  
  "html/img/items/cannabis.png",
  "html/img/items/Capture.png",
  "html/img/items/carokit.png",
  "html/img/items/carotool.png",
  "html/img/items/cash.png",
  "html/img/items/chocolate.png",
  "html/img/items/cigarette.png",
  "html/img/items/citzencard.png",
  "html/img/items/clip.png",
  "html/img/items/clothe.png",
  "html/img/items/cocacola.png",
  "html/img/items/coffee.png",
  "html/img/items/coke.png",
  "html/img/items/coke_pooch.png",
  "html/img/items/contract.png",
  "html/img/items/contrat.png",
  "html/img/items/coyotte.png",
  "html/img/items/croquettes.png",
  "html/img/items/cupcake.png",
  "html/img/items/cutted_wood.png",
  "html/img/items/cutting_pliers.png",
  "html/img/items/diamond.png",
  "html/img/items/drill.png",
  "html/img/items/drpepper.png",
  "html/img/items/energy.png",
  "html/img/items/essence.png",
  "html/img/items/fabric.png",
  "html/img/items/fish.png",
  "html/img/items/fishingrod.png",
  "html/img/items/fixkit.png",
  "html/img/items/fixtool.png",
  "html/img/items/gazbottle.png",
  "html/img/items/gold.png",
  "html/img/items/grand_cru.png",
  "html/img/items/grip.png",
  "html/img/items/gym_membership.png",
  "html/img/items/hamburger.png",
  "html/img/items/hammerwirecutter.png",
  "html/img/items/handcuff.png",
  "html/img/items/handcuffs.png",
  "html/img/items/headbag.png",
  "html/img/items/highrim.png",
  "html/img/items/hollow.png",
  "html/img/items/icetea.png",
  "html/img/items/iron.png",
  "html/img/items/jammer.png",
  "html/img/items/jewels.png",
  "html/img/items/jumelles.png",
  "html/img/items/jus_raisin.png",
  "html/img/items/justfruit.png",
  "html/img/items/key.png",
  "html/img/items/latest.png",
  
  "html/img/items/lazer_scope.png",
  "html/img/items/leiteg.png",
  "html/img/items/leitep.png",
  "html/img/items/limonade.png",
  "html/img/items/marijuana.png",
  "html/img/items/martini.png",
  "html/img/items/mask.png",
  "html/img/items/medikit.png",
  "html/img/items/medkit.png",
  "html/img/items/meth.png",
  "html/img/items/meth_pooch.png",
  "html/img/items/milkbucket.png",
  "html/img/items/milkpet.png",
  "html/img/items/nightvision_scope.png",
  "html/img/items/nurek.png",
  "html/img/items/opium.png",
  "html/img/items/opium_pooch.png",
  "html/img/items/packaged_chicken.png",
  "html/img/items/packaged_plank.png",
  "html/img/items/papers.png",
  "html/img/items/petrol.png",
  "html/img/items/petrol_raffin.png",
  "html/img/items/phone.png",
  "html/img/items/poolreceipt.png",
  "html/img/items/raisin.png",
  "html/img/items/rasperry.png",
  "html/img/items/rope.png",
  "html/img/items/sandwich.png",
  "html/img/items/scope.png",
  "html/img/items/silent.png",
  "html/img/items/slaughtered_chicken.png",
  "html/img/items/soda.png",
  "html/img/items/stockrim.png",
  "html/img/items/stone.png",
  "html/img/items/tel.png",
  "html/img/items/tequila.png",
  "html/img/items/thermal_scope.png",
  "html/img/items/tracer_clip.png",
  "html/img/items/unlockingtool.png",
  "html/img/items/very_extended_magazine.png",
  "html/img/items/vine.png",
  "html/img/items/vodka.png",
  "html/img/items/water.png",
  "html/img/items/weed.png",
  "html/img/items/weed_pooch.png",
  "html/img/items/whisky.png",
  "html/img/items/wine.png",
  "html/img/items/wood.png",
  "html/img/items/wool.png",
  "html/img/items/yusuf.png",
  "html/img/items/vine.png",
  "html/img/items/alcool.png",
  "html/img/items/alcool_cargo.png",
  "html/img/items/jus_raisin.png",
  "html/img/items/jusfruit.png",
  "html/img/items/lsd.png",
  "html/img/items/lsd_pooch.png",
  "html/img/items/malbora.png",
  "html/img/items/martini.png",
  "html/img/items/meat.png",
  "html/img/items/menthe.png",
  "html/img/items/metreshooter.png",
  "html/img/items/mixapero.png",
  "html/img/items/bag.png",
  "html/img/items/mask.png",
  "html/img/items/myrte.png",
  "html/img/items/myrte_cargo.png",
  "html/img/items/nouille.png",
  "html/img/items/packaged_chicken.png",
  "html/img/items/packaged_plank.png",
  "html/img/items/picnic.png",
  "html/img/items/powerade.png",
  "html/img/items/protein_shake.png",
  "html/img/items/redbull.png",
  "html/img/items/redbull_cargo.png",
  "html/img/items/rhum.png",
  "html/img/items/rhumcoca.png",
  "html/img/items/rhumfruit.png",
  "html/img/items/rose.png",
  "html/img/items/saucisson.png",
  "html/img/items/silencieux.png",
  "html/img/items/slaughtered_chicken.png",
  "html/img/items/sportlunch.png",
  "html/img/items/stone.png",
  "html/img/items/tabacbrun.png",
  "html/img/items/tabacblond.png",
  "html/img/items/tabacblondsec.png",
  "html/img/items/tabacbrunsec.png",
  "html/img/items/tacos.png",
  "html/img/items/teqpaf.png",
  "html/img/items/umbrella.png",
  "html/img/items/vegetables.png",
  "html/img/items/viande.png",
  "html/img/items/bait.png",
  "html/img/items/grand_cru.png",
  "html/img/items/raisin.png",
  "html/img/items/fish.png",
  "html/img/items/fishingrod.png",
  "html/img/items/fixkit.png",
  "html/img/items/fixtools.png",
  "html/img/items/bandage.png",
  "html/img/items/beer.png",
  "html/img/items/bigmac.png",
  "html/img/items/blowpipe.png",
  "html/img/items/binoculars.png",
  "html/img/items/bread.png",
  "html/img/items/cannabis.png",
  "html/img/items/cigarett.png",
  "html/img/items/clip.png",
  "html/img/items/clothe.png",
  "html/img/items/cagoule.png",
  "html/img/items/cocacola.png",
  "html/img/items/coffee.png",
  "html/img/items/coke.png",
  "html/img/items/coke_pooch.png",
  "html/img/items/contrat.png",
  "html/img/items/meth.png",
  "html/img/items/meth_pooch.png",
  "html/img/items/opium.png",
  "html/img/items/opium_pooch.png",
  "html/img/items/weed.png",
  "html/img/items/gold.png",
  "html/img/items/icetea.png",
  "html/img/items/sandwich.png",
  "html/img/items/papers.png",
  "html/img/items/burger.png",
  "html/img/items/cash.png",
  "html/img/items/chocolate.png",
  "html/img/items/iron.png",
  "html/img/items/jewels.png",
  "html/img/items/medikit.png",
  "html/img/items/tequila.png",
  "html/img/items/whisky.png",
  "html/img/items/whiskycoc.png",
  "html/img/items/whiskycoca.png",
  "html/img/items/whiskyrb.png",
  "html/img/items/wood.png",
  "html/img/items/wool.png",
  "html/img/items/yusuf.png",
  "html/img/items/limonade.png",
  "html/img/items/phone.png",
  "html/img/items/vodka.png",
  "html/img/items/vodkaenergy.png",
  "html/img/items/vodkafruit.png",
  "html/img/items/vodkarb.png",
  "html/img/items/washed_stone.png",
  "html/img/items/water.png",  
  "html/img/items/cupcake.png",
  "html/img/items/drpepper.png",
  "html/img/items/energy.png",
  "html/img/items/croquettes.png",
  "html/img/items/bolpistache.png",
  "html/img/items/bolnoixcajou.png",
  "html/img/items/bolcacahuetes.png",
  "html/img/items/carotools.png",
  "html/img/items/carokit.png",
  "html/img/items/energydrink.png",
  "html/img/items/bolchips.png",
  "html/img/items/essence.png",
  "html/img/items/fabric.png",
  "html/img/items/black_chip.png",
  "html/img/items/diamond.png",
  "html/img/items/black_money.png",
  "html/img/items/flashlight.png",
  "html/img/items/gazbottle.png",
  "html/img/items/gitanes.png",
  "html/img/items/golem.png",
  "html/img/items/grapperaisin.png",
  "html/img/items/grip.png",
  "html/img/items/ice.png",
  "html/img/items/jackda.png",
  "html/img/items/jager.png",
  "html/img/items/jagerbomb.png",
  "html/img/items/jagercerbere.png",
  "html/img/items/donut",
  "html/img/items/cutted_wood.png",
  "html/img/items/drill.png",
  "html/img/items/gym_membership.png",
  "html/img/items/absinthe.png",
  "html/img/items/acier.png",
  "html/img/items/armor.png",
  "html/img/items/bag.png",
  "html/img/items/hamburger.png",
  "html/img/items/raspberry.png",
  "html/img/items/chips.png",
  "html/img/items/copper.png",
  "html/img/items/defibrillateur.png",
  "html/img/items/donuts.png",
  "html/img/items/douille.png",
  "html/img/items/fanta.png",
  "html/img/items/firstaidkit.png",
  "html/img/items/GADGET_PARACHUTE.png",
  "html/img/items/gintonic.png",
  "html/img/items/grandcru.png",
  "html/img/items/handcuffs.png",
  "html/img/items/lingot.png",
  "html/img/items/lockpick.png",
  "html/img/items/milk.png",
  "html/img/items/nouille.png",
  "html/img/items/nurek.png",
  "html/img/items/oxygen_mask.png",
  "html/img/items/pepite.png",
  "html/img/items/petrol.png",
  "html/img/items/petrol_raffin.png",
  "html/img/items/piluleoubli.png",
  "html/img/items/pizza.png",
  "html/img/items/pork.png",
  "html/img/items/repairkit.png",
  "html/img/items/rope.png",
  "html/img/items/run_avocat_final.png",
  "html/img/items/run_avocat_item.png",
  "html/img/items/sac.png",
  "html/img/items/souptomate.png",
  "html/img/items/tomate.png",
  "html/img/items/tunerchip.png",
  "html/img/items/blowtorch.png",
  "html/img/items/cigarett.png",
  "html/img/items/pepite_raffin.png", 
  "html/img/items/champagne.png",
  "html/img/items/sacbillets.png",
  "html/img/items/orge.png",
  "html/img/items/mait.png",
  "html/img/items/houblon.png",
  "html/img/items/mojito.png",
  "html/img/items/jumelles.png",
  "html/img/items/ble.png",
  "html/img/items/cchip.png",
  "html/img/items/patate.png",
  "html/img/items/sacpatate.png",
  "html/img/items/lighter.png",
  "html/img/items/morfin.png",
  "html/img/items/morfin_pooch.png",
  "html/img/items/baguette.png",
  "html/img/items/soda.png",
  "html/img/items/wine.png",
  "html/img/items/c4_bank.png",
  "html/img/items/bierebrune.png",
  "html/img/items/biereblonde.png",
  "html/img/items/bierenoel.png",
  "html/img/items/weed_pooch.png",
  "html/img/items/crevette.png",
  "html/img/items/boite_thon.png",
  "html/img/items/carbon.png",
  "html/img/items/poudre.png",
  "html/img/items/fly-ticket.png",
  "html/img/items/samoussa_crevette.png",
  "html/img/items/saumon.png",
  "html/img/items/saumon_fume.png",
  "html/img/items/thon.png",
  "html/img/items/batonnets_de_mozzarella.png",
  "html/img/items/oignon_rings.png",
  "html/img/items/mais_grille.png",
  "html/img/items/chiken_wings.png",
  "html/img/items/sunny_cheese_fries.png",
  "html/img/items/salade_de_tomates.png",
  "html/img/items/salade_cobb.png",
  "html/img/items/salade_cesar.png",
  "html/img/items/salade_marilyn.png",
  "html/img/items/jambon_grille.png",
  "html/img/items/chief_steak.png",
  "html/img/items/chiken_delight.png",
  "html/img/items/brochette.png",
  "html/img/items/ribs.png",
  "html/img/items/toasty_cheese.png",
  "html/img/items/cheese.png",
  "html/img/items/fish.png",
  "html/img/items/new_sunny.png",
  "html/img/items/mountain.png",
  "html/img/items/fish_and_chips.png",
  "html/img/items/americain_eggs.png",
  "html/img/items/delicious_chiken.png",
  "html/img/items/americain_hot_dog.png",
  "html/img/items/macaroni_cheese.png",
  "html/img/items/chicken_wrap.png",
  "html/img/items/patty_melt.png",
  "html/img/items/blue_beef_wrap.png",
  "html/img/items/milkshake.png",
  "html/img/items/smoothie.png",
  "html/img/items/sundae.png",
  "html/img/items/cookie.png",
  "html/img/items/brownie.png",
  "html/img/items/pancakes.png",
  "html/img/items/churros.png",
  "html/img/items/tutti_frutti.png",
  "html/img/items/cheesecake.png",
  "html/img/items/milk.png",
  "html/img/items/donuts.png",
  "html/img/items/sucre.png",
  "html/img/items/farine.png",
  "html/img/items/patate.png",
  "html/img/items/sel.png",
  "html/img/items/merguez.png",
  "html/img/items/cheval.png",
  "html/img/items/poulet.png",
  "html/img/items/agneau.png",
  "html/img/items/boule_menthe.png",
  "html/img/items/sauce_chocolat.png",
  "html/img/items/chantilly.png",
  "html/img/items/banane.png",
  "html/img/items/boule_chocolat.png",
  "html/img/items/boule_fraise.png",
  "html/img/items/boule_vanille.png",
  "html/img/items/yaourt.png",
  "html/img/items/poivron.png",
  "html/img/items/crevette.png",
  "html/img/items/courgette.png",
  "html/img/items/oignon.png",
  "html/img/items/oignon.png",
  "html/img/items/persil.png",
  "html/img/items/tomate.png",
  "html/img/items/carotte.png",
  "html/img/items/concombre.png",
  "html/img/items/burger.png",
  "html/img/items/tacos.png",
  "html/img/items/meat.png",
  "html/img/items/vegetables.png",
  "html/img/items/coupe_anglaise.png",
  "html/img/items/banana_split.png",
  "html/img/items/dame_blanche.png",
  "html/img/items/iskender.png",
  "html/img/items/tajine.png",
  "html/img/items/couscous1.png",
  "html/img/items/couscousm.png",
  "html/img/items/couscousp.png",
  "html/img/items/couscousa.png",
  "html/img/items/karides.png",
  "html/img/items/cacik.png",
  "html/img/items/haydari.png",
  "html/img/items/pizza.png",
  "html/img/items/sauce.png",
  "html/img/items/oeuf.png",
  "html/img/items/mozzarella.png",
  "html/img/items/mais.png",
  "html/img/items/fromage.png",
  "html/img/items/salade.png",
  "html/img/items/avocat.png",
  "html/img/items/poisson.png",
  "html/img/items/boeuf.png",
  "html/img/items/bacon.png",
  "html/img/items/pates.png",
  "html/img/items/frites.png",
  "html/img/items/fruits.png",
  "html/img/items/purifiedwater.png",


  "html/img/items/WEAPON_APPISTOL.png",
  "html/img/items/WEAPON_ADVANCEDRIFLE.png",
  "html/img/items/WEAPON_BULLPUPSHOTGUN.png",
  "html/img/items/WEAPON_BZGAS.png",
  "html/img/items/WEAPON_ASSAULTRIFLE.png",
  "html/img/items/WEAPON_COMBATPDW.png",
  "html/img/items/WEAPON_COMPACTRIFLE.png",
  "html/img/items/WEAPON_FIREEXTINGUISHER.png",
  "html/img/items/WEAPON_FIREWORK.png",
  "html/img/items/WEAPON_FLARE.png",
  "html/img/items/WEAPON_FLAREGUN.png",
  "html/img/items/WEAPON_GUSENBERG.png",
  "html/img/items/WEAPON_HEAVYPISTOL.png",
  "html/img/items/WEAPON_HEAVYSHOTGUN.png",
  "html/img/items/WEAPON_HEAVYSNIPER.png",
  "html/img/items/WEAPON_MACHINEPISTOL.png",
  "html/img/items/WEAPON_MARKSMANPISTOL.png",
  "html/img/items/WEAPON_MARKSMANRIFLE.png",
  "html/img/items/WEAPON_MG.png",
  "html/img/items/WEAPON_MOLOTOV.png",
  "html/img/items/WEAPON_MUSKET.png",
  "html/img/items/WEAPON_PARACHUTE.png",
  "html/img/items/WEAPON_PROXIMITYMINE.png",
  "html/img/items/WEAPON_SMOKEGRENADE.png",
  "html/img/items/WEAPON_SNIPERRIFLE.png",
  "html/img/items/WEAPON_SNOWBALL.png",
  "html/img/items/WEAPON_SNSPISTOL.png",
  "html/img/items/WEAPON_STICKYBOMB.png",
  "html/img/items/WEAPON_VINTAGEPISTOL.png",
  "html/img/items/WEAPON_ASSAULTSHOTGUN.png",
  "html/img/items/WEAPON_BOTTLE.png",
  "html/img/items/WEAPON_BULLPUPRIFLE.png",
  "html/img/items/WEAPON_CARBINERIFLE.png",
  "html/img/items/WEAPON_COMBATMG.png",
  "html/img/items/WEAPON_BAT.png",
  "html/img/items/WEAPON_COMBATPISTOL.png",
  "html/img/items/WEAPON_CROWBAR.png",
  "html/img/items/WEAPON_GOLFCLUB.png",
  "html/img/items/WEAPON_KNIFE.png",
  "html/img/items/WEAPON_MICROSMG.png",
  "html/img/items/WEAPON_NIGHTSTICK.png",
  "html/img/items/WEAPON_HAMMER.png",
  "html/img/items/WEAPON_PISTOL.png",
  "html/img/items/WEAPON_PUMPSHOTGUN.png",
  "html/img/items/WEAPON_SAWNOFFSHOTGUN.png",
  "html/img/items/WEAPON_SMG.png",
  "html/img/items/WEAPON_STUNGUN.png",
  "html/img/items/WEAPON_SPECIALCARBINE.png",
  "html/img/items/WEAPON_KNUCKLE.png",
  "html/img/items/WEAPON_FLASHLIGHT.png",
  "html/img/items/WEAPON_REVOLVER.png",
  "html/img/items/WEAPON_DAGGER.png",
  "html/img/items/WEAPON_PETROLCAN.png",
  "html/img/items/WEAPON_PISTOL50.png",
  "html/img/items/WEAPON_DBSHOTGUN.png",
  "html/img/items/WEAPON_SWITCHBLADE.png",
  "html/img/items/WEAPON_POOLCUE.png"]]
}
