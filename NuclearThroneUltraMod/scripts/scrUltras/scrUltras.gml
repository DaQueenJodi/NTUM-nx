function scrUltras() {
	// ULTRAS

	ultra_name[0] = "TOTAL FORECALL"
	ultra_text[0] = "CHOOSE AN ULTRA MUTATION#FROM ANOTHER CHARACTER NEXT LEVEL#DOESN'T INCLUDE THINGS YOU CAN'T USE#(such as plant's snare related ultras)#GET OFFERED PATIENCE WITH EVERY CHOICE"
	ultra_tips[0] = "adapting"

	//FISH
	ultra_name[1] = "CONFISCATE"
	ultra_text[1] = "ENEMIES SOMETIMES DROP CHESTS"
	ultra_tips[1] = "that's mine"

	ultra_name[2] = "GUN WARRANT"
	ultra_text[2] = "INFINITE AMMO THE FIRST 10 SECONDS#OF ENTERING A LEVEL"
	ultra_tips[2] = "bringer of order"

	ultra_name[3] = "BROTHERS IN ARMS"
	ultra_text[3] = "GET A COMPANION"
	ultra_tips[3] = choose("I missed you partner","partner stays close to you#when you reload#if not it'll go out aggro")

	ultra_name[4] = "FISH CAN ROLL"
	ultra_text[4] = "INCREASED FIRE RATE#DEPENDING ON YOUR SPEED#MUCH MORE EFFECTIVE WHEN ROLLING"
	ultra_tips[4] = "is waterboost a thing now?"

	    //CRYSTAL 
	    ultra_name[5] = "FORTRESS"
	    ultra_text[5] = "+6 HP"
	    ultra_tips[5] = "indestructable"
    
	    ultra_name[6] = "JUGGERNAUT"
	    ultra_text[6] = "MOVE WHILE SHIELDED"
	    ultra_tips[6] = "miss the crab legs"
    
	    ultra_name[7] = "BUNKER"
	    ultra_text[7] = "SHORTER SHIELD#SHOOT WHILE SHIELDED"
	    ultra_tips[7] = "the iron fist"
    
	    ultra_name[8] = "VENGEFUL"
	    ultra_text[8] = "REFLECTED PROJECTILES#HOME IN ON ENEMIES#PUSH AWAY ENEMIES HARDER#TAKE NO LASER DAMAGE WHILE SHIELDED"
	    ultra_tips[8] = "homing effects wear of#when you're not shielding"

	//EYES 
	ultra_name[9] = "PROJECTILE STYLE"
	ultra_text[9] = "HOLD YOUR PROJECTILES#STRONGER PROJECTILE PUSH"
	ultra_tips[9] = "need more cannons"

	ultra_name[10] = "MONSTER STYLE"
	ultra_text[10] = "WHEN NOT USING ACTIVE#PUSH ENEMIES AWAY"
	ultra_tips[10] = "repellent"

	ultra_name[11] = "BRAIN STYLE"
	ultra_text[11] = "SOME ENEMIES ATTACK OTHER ENEMIES#THRONEBUTT INCREASES BRAINWASH CHANCE"
	ultra_tips[11] = "brain style works on bosses!"

	ultra_name[12] = "PSYCHONAUT STYLE"//thats a refrence
	ultra_text[12] = "ACTIVE ABILITY ATTRACTS#ITEM DROPS, RADS & WEAPONS#THROUGH WALLS#INCREASED ITEM ATTRACTION SPEED"
	ultra_tips[12] = "never miss a drop"

	    //MELTING 
	    ultra_name[13] = "BRAIN CAPACITY"
	    ultra_text[13] = "BLOW UP LOW HP ENEMIES"// originally doesn't work with scarier face
	    ultra_tips[13] = "5hp == death"
    
	    ultra_name[14] = "DETACHMENT"
	    ultra_text[14] = "LOSE HALF YOUR HEALTH#GET 4 MORE MUTATIONS"//originally 3
	    ultra_tips[14] = "three is not enough"
    
	    ultra_name[15] = "POWER OVERWHELMING"
	    ultra_text[15] = "INCREASE LEVEL CAP BY 2#EVEN MORE RADS"
	    ultra_tips[15] = "ultra ultra ultra ultra"
    
	    ultra_name[16] = "DOOMED"
	    ultra_text[16] = "THE ENEMY THAT DIES LAST IN A LEVEL#IS DEAD IN THE NEXT LEVEL#MORE BLOOD DAMAGE"
	    ultra_tips[16] = "blood sweat and tears"
    
	//PLANT 
	ultra_name[17] = "TRAPPER"
	ultra_text[17] = "BIG SNARE#SNARE IS MORE EFFECTIVE"
	ultra_tips[17] = "nowhere to hide"

	ultra_name[18] = "KILLER"
	ultra_text[18] = "ENEMIES KILLED ON SNARE#SPAWN SAPLINGS"
	ultra_tips[18] = "aggression!"

	ultra_name[19] = "LEACHER"
	ultra_text[19] = "ENEMIES STUCK ON SNARE#SOMETIMES HEAL YOU#ENEMIES KILLED ON SNARE#HAVE A CHANCE TO DROP ADDITIONAL ITEMS"
	ultra_tips[19] = "nutritious"

	ultra_name[20] = "STEREO SNARES"
	ultra_text[20] = "SPAWN TWO SNARES#SNARES DESTROY PROJECTILES"
	ultra_tips[20] = "better then original stereo snares"

	    //Y.V. YUNG VENUZ YV
	    ultra_name[21] = "IM A GUN GOD"
	    ultra_text[21] = "HIGHER RATE OF FIRE"
	    ultra_tips[21] = "+40% higher rate of fire"
    
	    ultra_name[22] = "BACK 2 BIZNIZ"
	    ultra_text[22] = "FREE POP POP UPGRADE"
	    ultra_tips[22] = "more pop"
    
	    ultra_name[23] = "MAKE IT RAIN"
	    ultra_text[23] = "REALLY HIGH SHOTGUN FIRE RATE#USED SHOTGUN AMMO CONVERTS#TO BULLET AMMO"
	    ultra_tips[23] = "shells and bullets <3"
    
	    ultra_name[24] = "IT UR GOD: VEENY"
	    ultra_text[24] = "RIGHT CLICK SOMETIMES#ALSO FIRES YOUR SECONDARY WEAPON"
	    ultra_tips[24] = "blood gamble"
    
	//STEROIDS 
	ultra_name[25] = "AMBIDEXTUROUS"
	ultra_text[25] = "WEAPON CHESTS DROP#TWO OF THE SAME WEAPON#FIRING WHILE HAVING TWO#OF THE SAME WEAPONS#SLOWLY HEALS YOU"
	ultra_tips[25] = "big wep chests drop two duplicates"

	ultra_name[26] = "GET LOADED"
	ultra_text[26] = "AMMO CHESTS INCLUDE ALL AMMO TYPES#AMMO PICKUPS ALWAYS#GIVE YOU AMMO FOR YOUR PRIMARY"
	ultra_tips[26] = "you should really try open mind"

	ultra_name[27] = "MIRROR HANDS"
	ultra_text[27] = "RIGHT CLICK FIRES YOUR PRIMARY#SWAPPING RELOADS YOUR WEAPONS"
	ultra_tips[27] = "auto pop pop"

	ultra_name[28] = "STRONG FIRE"
	ultra_text[28] = "MORE BULLET DAMAGE"
	ultra_tips[28] = "<3 bullets"

	    //ROBOT 
	    if instance_exists(Player)
	    {
	    if Player.race=19||Player.race=20||Player.race=21{//skeleton hog and horror
	    ultra_name[29] = "REFINED TASTE"
	    ultra_text[29] = "ONLY HIGH TIER WEAPON DROPS"
	    ultra_tips[29] = "delicacy"
	    }
	    else{
	    ultra_name[29] = "REFINED TASTE"
	    ultra_text[29] = "ONLY HIGH TIER WEAPON DROPS##AUTO EAT WEAPONS LEFT IN THE LEVEL"
	    ultra_tips[29] = "delicacy"
	    }
	    }
	    else{
	    ultra_name[29] = "REFINED TASTE"
	    ultra_text[29] = "ONLY HIGH TIER WEAPON DROPS##AUTO EAT WEAPONS LEFT IN THE LEVEL"
	    ultra_tips[29] = "delicacy"
	    }
	    ultra_name[30] = "REGURGITATE"
	    ultra_text[30] = "EATING WEAPONS HAS A CHANCE#TO DROP CHESTS##AUTO EAT WEAPONS LEFT IN THE LEVEL"
	    ultra_tips[30] = "2% more chance for weapon chests"
    
	    ultra_name[31] = "EXTRA STORAGE"
	    ultra_text[31] = "YOU CAN CARRY THREE WEAPONS##AUTO EAT WEAPONS LEFT IN THE LEVEL"
	    ultra_tips[31] = "can't choose"
    
	    ultra_name[32] = "MULTI FUNCTIONAL"
	    ultra_text[32] = "EATING A WEAPON DROPS IT LIKE A TURRET#THE TURRET FIRES THE EATEN WEAPON##AUTO EAT WEAPONS LEFT IN THE LEVEL"//"OCCASIONALLY PRODUCE LIGHTNING#EATING WEAPONS CREATES RADS & LIGHTNING##AUTO EAT WEAPONS LEFT IN LEVEL"
	    ultra_tips[32] = "like a pocket knife"
    
	//CHICKEN 
	ultra_name[33] = "HARDER TO KILL"
	ultra_text[33] = "KILLS EXTEND BLEED TIME"
	ultra_tips[33] = "immortal"

	ultra_name[34] = "NINJA"
	ultra_text[34] = "MORE MELEE DAMAGE"
	ultra_tips[34] = "slice em'"

	ultra_name[35] = "FOCUS"
	ultra_text[35] = "NORMAL RATE OF FIRE DURING SLOWMOTION"
	ultra_tips[35] = "so fast"

	ultra_name[36] = "VANISH"
	ultra_text[36] = "WHEN IN SLOW MOTION#YOU VANISH AND DROP A DECOY#WHEN VANISHED ENEMIES WON'T TARGET YOU"
	ultra_tips[36] = "stealthy"

	    //REBEL 
	    ultra_name[37] = "PERSONAL GUARD"
	    ultra_text[37] = "START LEVEL WITH 2 ALLIES#ALLIES HAVE MORE HEALTH"
	    ultra_tips[37] = "increased health also#increases allies lifespan"
    
	    ultra_name[38] = "RIOT"
	    ultra_text[38] = "SPAWN TWO ALLIES INSTEAD OF ONE"
	    ultra_tips[38] = "more is better"
    
	    ultra_name[39] = "EVERONE GET IN HERE"
	    ultra_text[39] = "THE MORE ALLIES YOU HAVE#THE HIGHER YOUR DROP RATE IS#ALLIES HAVE A SIGNIFICANT#INCREASE IN DROPRATE"
	    ultra_tips[39] = "hurt stone"
    
	    ultra_name[40] = "DEFENSE"
	    ultra_text[40] = "PORTALS HEAL ALL YOUR HEALTH#WHENEVER YOU TAKE DAMAGE YOU#SPAWN DEFENSIVE BULLETS#MORE ALLY BULLET DAMAGE"
	    ultra_tips[40] = "two passives?"
    

	//HUNTER 
	ultra_name[41] = "SAFE DISTANCE"
	ultra_text[41] = "THE FURTHER AWAY YOU ARE FROM AN ENEMY#THE MORE DAMAGE YOU DO TO IT"
	ultra_tips[41] = "even if the indicator is not bright#you get a damage boost"

	ultra_name[42] = "NEVER MISS"
	ultra_text[42] = "YOUR PROJECTILES HOME IN ON ENEMIES"
	ultra_tips[42] = choose("eagle eyes improves#the homing strength","homing also works on lasers#and hyper slugger/launcher")

	ultra_name[43] = "FOCUSED FIRE"
	ultra_text[43] = "ENEMY AND YOUR PROJECTILES#HOME IN ON YOUR MARKER"
	ultra_tips[43] = "friendly fire?"

	ultra_name[44] = "CRACK SHOT"
	ultra_text[44] = "PLACE MULTIPLE MARKERS#USING MARKERS REDUCES RELOAD TIME"
	ultra_tips[44] = "gunslinger"

	    //YUNG CUZ 
	    ultra_name[45] = "GIT YER BAK"
	    ultra_text[45] = "SHOTS FIRED BY BUDDIES#DON'T COST AMMO/RADS#-2 BUDDY HP"//-2max hp??
	    ultra_tips[45] = "like one"
    
	    ultra_name[46] = "MLG SQUAD"
	    ultra_text[46] = "CREATE MAX 3 BUDDIES#BUDDIES DON'T DECREASE#YOUR MAX HP"
	    ultra_tips[46] = "teamwork"
    
	    ultra_name[47] = "SPAM"
	    ultra_text[47] = "BUDDIES COST 2 HP#INSTEAD OF MAX HP#PORTALS HEAL"
	    ultra_tips[47] = "anoying"
    
	    ultra_name[48] = "LAG"
	    ultra_text[48] = "FIRST THREE HITS#YOU TAKE IN A LEVEL WILL BE NEGLECTED"
	    ultra_tips[48] = "dead not dead"
    
	//SHEEP 
	ultra_name[49] = "UNSTOPPABLE"
	ultra_text[49] = "CHANGE CHARGE TO A POWERFULL HYPERDASH#THAT COSTS AMMO TO USE"
	ultra_tips[49] = "the fluffy blur"

	ultra_name[50] = "JUST A SHEEP"
	ultra_text[50] = "ENEMIES DONT ATTACK UNTILL#MULTIPLE ENEMIES HAVE DIED"
	ultra_tips[50] = "they're stoopid"

	ultra_name[51] = "IMPENETRABLE"
	ultra_text[51] = "BETTER CHARGE!#CHARGING REFLECTS ENEMY PROJECTILES"
	ultra_tips[51] = "what a beast"

	ultra_name[52] = "FLUFFY"//this is actually insane with impact wrists
	ultra_text[52] = "CORPSES FLOAT#CORPSE COLLISION#CAN CAUSES BLOOD EXPLOSIONS#EVERYTHING THAT DIES#TURNS INTO A SHEEP"
	ultra_tips[52] = "cannibalism"//morph gun creates two sheep cause logic (no balance)

	    //PANDA 
	    ultra_name[53] = "TURNING BADASS"
	    ultra_text[53] = "THROWS PIERCE AND DEFLECT PROJECTILES#MORE THROW DAMAGE#THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[53] = "strong arms!"
    
	    ultra_name[54] = "FUCK IT"//DELIBERATE REINCARNATION"
	    ultra_text[54] = "THROWN WEAPONS EXPLODE ON HIT#WHENEVER YOU THROW YOUR WEAPON#IT TRANSFORMS INTO A#RANDOM WEAPON OF THE SAME TIER#THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[54] = "rngezus"
    
	    ultra_name[55] = "DONE BEING EXTINCT"
	    ultra_text[55] = "WHENEVER YOU HIT AN ENEMY#WITH A THROWN WEAPON#THEY DROP EXTRA RESOURCES#WHEN A WEAPON RETURNS#IT FIRES A MASSIVE LASER##CHANCE PORTALS GIVE#YOU A HIGHER TIER WEAPON#THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[55] = "rise above"
    
	    ultra_name[56] = "BLASPHEMY"
	    ultra_text[56] = "MORE MELEE SWING SPEED#YOU NO LONGER#GET RANDOM WEAPONS#AFTER EXITING A PORTAL#THROWS BOUNCE TOWARDS ENEMIES"
	    ultra_tips[56] = "survival above pacifism"
    
	//ATOM 
	ultra_name[57] = "NEUTRON"
	ultra_text[57] = "BIGGER FIERY EXPLOSIONS#EXPLOSIONS DEAL MORE DAMAGE#AGAINST ENEMIES#EXPLOSIVE WEAPONS COST LESS AMMO"
	ultra_tips[57] = "NUCLEAR BOMB!"

	ultra_name[58] = "PROTON"
	ultra_text[58] = "YOU DEAL MORE CONTACT DAMAGE#DEAL DAMAGE TO ENEMIES NEAR YOU"
	ultra_tips[58] = "always positive"

	ultra_name[59] = "ELECTRON"
	ultra_text[59] = "ENERGY WEAPONS COST LESS AMMO#LIGHTNING DOES MORE DAMAGE#AND TRAVELS FURTHER"
	ultra_tips[59] = "that is electrifying!"

	ultra_name[60] = "ANTI MATTER"
	ultra_text[60] = "TELEPORT INTO WALLS"
	ultra_tips[60] = "who needs hammerhead"

	    //VIKING 
	    ultra_name[61] = "MEGA ARMOUR STRIKE"
	    ultra_text[61] = "TRIPLE ARMOUR STRIKE#ARMOUR STRIKE DESTROYS PROJECTILES"
	    ultra_tips[61] = "break down the walls!"
    
	    if instance_exists(Player)
	    {
	    if Player.race=19||Player.race=20||Player.race=21{//skeleton hog and horror
	    ultra_name[62] = "ARMOUR UP"
	    ultra_text[62] = "GAIN ONE ARMOUR EACH AREA#INCREASE ARMOUR MAX BY TWO"
	    ultra_tips[62] = "tank up"
	    }
	    else{
	    ultra_name[62] = "ARMOUR UP"
	    ultra_text[62] = "GAIN ONE EXTRA ARMOUR EACH AREA#INCREASE ARMOUR MAX BY TWO"
	    ultra_tips[62] = "tank up"
	    }
	    }
	    else{
	    ultra_name[62] = "ARMOUR UP"
	    ultra_text[62] = "GAIN ONE EXTRA ARMOUR EACH AREA#INCREASE ARMOUR MAX BY TWO"
	    ultra_tips[62] = "tank up"
	    }
    
	    ultra_name[63] = "COLD HEARTH"
	    ultra_text[63] = "ARMOUR STRIKE FREEZES ENEMIES#AND DEALS MORE DAMAGE#WHEN YOU HAVE NO MORE ARMOUR#YOU CAN USE 2HP TO USE AN ARMOUR STRIKE"
	    ultra_tips[63] = "hearth strike"
    
	    ultra_name[64] = "BLANK ARMOUR"
	    ultra_text[64] = "WHENEVER YOU LOSE A PIECE OF ARMOUR#YOU CLEAR ALL PROJECTILES#AND DEAL A MASSIVE AMOUNT OF DAMAGE#TO ALL ENEMIES ON SCREEN"
	    ultra_tips[64] = "rogue is jelous"
    
	//WEAPON SMITH 
	ultra_name[65] = "WEAPON MODDER"
	ultra_text[65] = "IN EVERY AREA#A WEAPON MOD SPAWNS#INCREASE HOW OFTEN MODS TRIGGER"
	ultra_tips[65] = "modder"

	ultra_name[66] = "ARMOUR SMITH"
	ultra_text[66] = "WHEN UPGRADING A WEAPON#YOU ALSO GAIN TWO ARMOUR#ARMOUR MAX IS 2"
	ultra_tips[66] = "craft changer"

	ultra_name[67] = "ONE WITH THE GUN"
	ultra_text[67] = "INCREASED FIRE RATE AND#REDUCED AMMO COST#FOR ALL WEAPONS EXCLUDING MELEE#DECREASED MELEE SWING RATE"
	ultra_tips[67] = "new meta"

	ultra_name[68] = "SCRAP FINDER"
	ultra_text[68] = "WEAPON DROPS GIVE YOU HEALTH, RADS#AND MORE AMMO FOR ALL TYPES#PICKING UP A WEAPON#SPAWNS A LIGHTNING"
	ultra_tips[68] = "recourseful"

	    //ANGEL 
	    ultra_name[69] = "PROTECTOR"
	    ultra_text[69] = "MOVING CAN SOMETIMES#DEFLECT PROJECTILES"
	    ultra_tips[69] = "guardian"
    
	    ultra_name[70] = "DESCENT"
	    ultra_text[70] = "YOUR ACTIVE CHANGES INTO#GET AMMO FOR YOUR PRIMARY#AT THE COST OF HEALTH#THRONEBUTT DOUBLES THE AMMO"
	    ultra_tips[70] = "emo style"
    
	    ultra_name[71] = "TRANQUILITY"
	    ultra_text[71] = "WHEN AT FULL HEALTH#YOU DEAL MORE DAMAGE"
	    ultra_tips[71] = "experience tranquility"
    
	    ultra_name[72] = "ASCENT"
	    ultra_text[72] = "YOU CAN FLY OVER WALLS FOREVER"
	    ultra_tips[72] = "all you need is air"
    
	//SKELETON 
	ultra_name[73] = "REDEMPTION"
	ultra_text[73] = "REROLL ALL YOUR MUTATIONS#GET PATIENCE AS AN EXTRA#CHOICE EVERY TIME.#WHEN YOU LOOP YOU#CAN GET AN ULTRA AGAIN"
	ultra_tips[73] = "specific taste in mutations"

	ultra_name[74] = "DAMNATION"
	ultra_text[74] = "FIRING A WEAPON WITH BLOOD GAMBLE#WILL REDUCE ITS RELOADING TIME"//by 80%
	ultra_tips[74] = "damn son!"

	ultra_name[75] = "THE BIG GAMBLE"
	ultra_text[75] = "GET A RANDOM ULTRA MUTATION#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(such as plant's snare related ultras)"
	ultra_tips[75] = "hybrid character"

	if instance_exists(Player)
	{
	    if Player.ultimategamble==true
	    {
	    ultra_name[76] = "THE ULTIMATE GAMBLE"
	    ultra_text[76] = "50% CHANCE TO DIE OR TO GET#THREE RANDOM ULTRA MUTATIONS#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(such as plant's snare related ultras)"
	    ultra_tips[76] = "that went well!"
	    }
	    else
	    {
	    ultra_name[76] = "UNSTOPPABLE"
	    ultra_text[76] = "GAIN THREE LIVES"
	    ultra_tips[76] = "never dead"
	    }
	}
	else
	{
	ultra_name[76] = "UNSTOPPABLE"
	ultra_text[76] = "GAIN THREE LIVES"
	ultra_tips[76] = "never dead"
	}



	    //BUSINESSHOG 
	    ultra_name[77] = "PROSPERITY"
	    ultra_text[77] = "ENEMIES DROP MORE RADS#HIGHER RAD MAXIMUM"
	    ultra_tips[77] = "money everywhere"
    
	    ultra_name[78] = "QUANTITY"
	    ultra_text[78] = "MORE SHOP ITEMS"
	    ultra_tips[78] = "options"
    
	    ultra_name[79] = "INVESTMENT"
	    ultra_text[79] = "GAIN NOTHING NOW#IF YOU REACH LOOP 2#YOU CAN CHOOSE TWO RANDOM ULTRAS#FROM ANOTHER CHARACTER#DOESN'T INCLUDE THINGS YOU CAN'T USE#(such as plant's snare related ultras)"
	    ultra_tips[79] = "are you that good?"
    
	    ultra_name[80] = "GOLD DIGGER"
	    ultra_text[80] = "SIGNIFICANTLY INCREASE#GOLDEN WEAPON FIRE RATE"
	    ultra_tips[80] = "she take my money!#when I'm in need!"
    
    
	//HORROR 
	ultra_name[81] = "STALKER"
	ultra_text[81] = "ENEMIES EXPLODE INTO RAD BULLETS#DEPENDING ON THE AMOUNT OF RADS THEY DROP"
	ultra_tips[81] = "stalking and walking"

	ultra_name[82] = "ANOMALY"
	ultra_text[82] = "PORTALS APPEAR EARLIER"
	ultra_tips[82] = "the anomaly meta"

	ultra_name[83] = "MELTDOWN"
	ultra_text[83] = "DOUBLE RADIATION CAPACITY"
	ultra_tips[83] = "freezeup"

	ultra_name[84] = "POWER"
	ultra_text[84] = "HOMING BEAM#BEAM GOES THROUGH WALLS#BEAM DESTROYS PROJECTILES BETTER"
	ultra_tips[84] = "thats a good beam"

	// ULTRA E IS ULTRA 0


	    //ROGUE 
	    ultra_name[85] = "SUPER PORTAL STRIKE"
	    ultra_text[85] = "MORE PORTAL AMMO#DOUBLE PORTAL STRIKE AMMO PER PICKUP#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
	    ultra_tips[85] = "money everywhere"
    
	    ultra_name[86] = "SUPER BLAST ARMOUR"
	    ultra_text[86] = "STRONGER BLAST ARMOUR#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
	    ultra_tips[86] = "options"
    
	    ultra_name[87] = "NEW CAPTAIN"
	    ultra_text[87] = "AT THE START OF A LEVEL#SUMMON A GROUP OF IDPD#THAT FIGHT FOR YOU#PICKING UP PORTAL STRIKE AMMO#TRIGGERS BLAST ARMOUR"
	    ultra_tips[87] = "rogue leader"
    
	    ultra_name[88] = "ULTRA POPO"
	    ultra_text[88] = "ULTRA WEAPONS COST LESS RADS#PORTAL STRIKE COSTS RADS INSTEAD#REPLACE PORTAL STRIKE AMMO CHESTS#WITH RAD CHESTS#BLAST ARMOUR PRODUCES RADS#RADS SPAWN ULTRA LIGHTNING"//This sucks lets change it
	    ultra_tips[88] = "I can do that better"
    
    
	//FROG 
	ultra_name[89] = "DISTANCE"
	ultra_text[89] = "RADS EMIT TOXIC GAS"
	ultra_tips[89] = "can't run from my gas"

	ultra_name[90] = "INTIMACY"
	ultra_text[90] = "CONTINUOUSLY EMIT GAS#EMIT GAS QUICKER USING YOUR ACTIVE"
	ultra_tips[90] = "come closer"

	ultra_name[91] = "MOMMA"
	ultra_text[91] = "ACTIVE CREATES FRIENDLY BALLGUYS"
	ultra_tips[91] = "I am the mother now"

	    if instance_exists(Player)
	    {
	    if Player.race=19||Player.race=20||Player.race=21{//skeleton hog and horror
	    ultra_name[92] = "POTENCY"
	    ultra_text[92] = "MORE GAS DAMAGE"
	    ultra_tips[92] = "why'd you want to be gassy?"
	    }
	    else{
	    ultra_name[92] = "POTENCY"
	    ultra_text[92] = "NORMAL CONTROLS#MORE GAS DAMAGE"
	    ultra_tips[92] = "you can gass while moving"
	    }
	    }
	    else{
	    ultra_name[92] = "POTENCY"
	    ultra_text[92] = "NORMAL CONTROLS#MORE GAS DAMAGE"
	    ultra_tips[92] = "you can gass while moving"
	    }


	    //Elementor 
	    ultra_name[93] = "EARTHBENDER"
	    ultra_text[93] = "YOUR PROJECTILES PHASE THROUGH#YOUR WALLS"
	    ultra_tips[93] = "get to cover!"
    
	    ultra_name[94] = "ICE COLD"
	    ultra_text[94] = "STRONGER & HOMING DEBRIS#DEBRIS FREEZES ENEMIES##YOUR WALLS CREATE#MORE DEBRIS WHEN DESTROYED"
	    ultra_tips[94] = "ice ice CHAINREACTION BABY!"
    
	    ultra_name[95] = "BURNING HOT"
	    ultra_text[95] = "MORE FLAME DAMAGE#FIRE HOMES#FIRE TRAIL"
	    ultra_tips[95] = "spicy"
    
	    ultra_name[96] = "THUNDER BOMB"
	    ultra_text[96] = "OCCASIONALLY PRODUCE LIGHTNING##WHEN USING LIGHTNING WEAPONS:#GAIN EXPLOSIVE AMMO##WHEN USING KRAKEN WEAPONS:#GAIN ENERGY AMMO"
	    ultra_tips[96] = "you gain explosive ammo#when using a lightning weapon#you gain energy ammo#when using a kraken weapon"
    

	//MUTATION SMITH 
	ultra_name[97] = "SURGEON"
	ultra_text[97] = "EVEN BETTER WEAPON#SPECIFIC MUTATIONS"
	ultra_tips[97] = "delicacy"
    
	ultra_name[98] = "PLAGUE DOCTOR"
	ultra_text[98] = "YOUR ACTIVE CHANGES INTO#INFEST ENEMIES USING RADS#THRONEBUTT DECREASES RAD COST"
	ultra_tips[98] = "I am here to heal you"
    
	ultra_name[99] = "NECROMANCER"
	ultra_text[99] = "YOUR ACTIVE CHANGES INTO#REVIVE CORPSES INTO ALLY FREAKS#THRONEBUTT INCREASES THE DAMAGE#THEY DEAL"
	ultra_tips[99] = "doctor necromancer"
    
	ultra_name[100] = "SEDATIVES"
	ultra_text[100] = "YOUR PROJECTILES PUT ENEMIES TO SLEEP#FOR A SHORT MOMENT#THRONEBUTT INCREASES THE SLEEP DURATION"
	ultra_tips[100] = "sleeping enemies don't react#for a moment"


	    //GOOD O'L HUMPHRY 
	    ultra_name[101] = "EXPERIENCED"
	    ultra_text[101] = "GAIN TWO SKILL INSTEAD OF ONE#PER HIT SHOT"
	    ultra_tips[101] = "learning quickly"
        
	    ultra_name[102] = "RAPID MUSTACHE GROWTH"
	    ultra_text[102] = "SKILL ALSO INCREASES FIRE RATE"
	    ultra_tips[102] = "quickdraw"
        
	    ultra_name[103] = "PROTECTIVE FACIAL HAIR"
	    ultra_text[103] = "WHEN YOU HAVE MORE THEN 50 SKILL#AND YOU DIE#YOUR DEATH WILL BE PREVENTED#AND YOUR SKILL WILL BE RESET"
	    ultra_tips[103] = "strong skillet"
        
		ultra_name[104] = "DISCIPLINE"
	    ultra_text[104] = "ACTIVE CAN SHRINK PROJECTILES#INTO NOTHINGNESS"
	    ultra_tips[104] = "discipline those projectiles!"
		/*
	    ultra_name[104] = "FRUITS OF LABOR"
	    ultra_text[104] = "INCREASED SPRINT SPEED#IMMUNE TO CONTACT DAMAGE#WHILE SPRINTING"
	    ultra_tips[104] = "fast old man"
		*/
	maxultra = 104;

	dir = 0
	repeat(maxultra+1)
	{ultra_got[dir] = 0
	dir += 1}



}
