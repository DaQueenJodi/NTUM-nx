skill_name[0] = "HEAVY HEART"
skill_text[0] = "MORE WEAPON DROPS"
skill_msnd[0] = sndMutHeavyHeart
skill_tips[0] = ""

skill_name[1] = "RHINO SKIN"
skill_text[1] = "+4 MAX HP"
skill_tips[1] = "thick skin"
skill_msnd[1] =  sndMutRhinoSkin

if instance_exists(Player)
{
if Player.race=18
{
skill_name[2] = "EXTRA WINGS"
skill_text[2] = "MORE SPEED#CLOSE DODGES SOMETIMES DROP ITEMS"
skill_tips[2] = "fly forever"
skill_msnd[2] =  sndMutExtraFeet
}
else
{
skill_name[2] = "EXTRA FEET"
skill_text[2] = "MORE SPEED,#WALK NORMAL ON ALL TERRAIN#CLOSE DODGES SOMETIMES DROP ITEMS"
skill_tips[2] = "run forever"
skill_msnd[2] =  sndMutExtraFeet
}
}
else
{
skill_name[2] = "EXTRA FEET"
skill_text[2] = "MORE SPEED,#WALK NORMAL ON ALL TERRAIN#CLOSE DODGES SOMETIMES DROP ITEMS"
skill_tips[2] = "run forever"
skill_msnd[2] =  sndMutExtraFeet}

if random(500)<1
{
skill_name[3] = "URANUS HUNGER"
skill_text[3] = "STRONGER ATTRACT POWER"
skill_tips[3] = "I need uranus!"
skill_msnd[3] =  sndMutPluto
}
else
{
skill_name[3] = "PLUTONIUM HUNGER"
skill_text[3] = "STRONGER ATTRACT POWER"
skill_tips[3] = "need those rads"
skill_msnd[3] =  sndMutPluto
}

skill_name[4] = "RABBIT PAW"
skill_text[4] = "MORE AMMO AND HEALTH DROPS"
skill_tips[4] = "feeling lucky"
skill_msnd[4] =  sndMutRabbitPaw

skill_name[5] = "THRONE BUTT"
skill_text[5] = "UPGRADES YOUR SPECIAL ABILITY"
if instance_exists(Player)
skill_text[5] = string(Player.race_name[Player.race])+" "+string(Player.race_butt[Player.race])
if Player.race=1{
skill_tips[5] = "Fish's throne butt is good now!"}
else{
skill_tips[5] = "sit on the throne"}
skill_msnd[5] =  sndMutThronebutt

skill_name[6] = "LUCKY SHOT"
skill_text[6] = "SOME KILLS REGENERATE AMMO"
skill_tips[6] = "ammo everywhere"
skill_msnd[6] =  sndMutLuckyShot

skill_name[7] = "BLOODLUST"
skill_text[7] = "SOME KILLS REGENERATE HP"
skill_tips[7] = "drink blood"
skill_msnd[7] =  sndMutBloodlust

skill_name[8] = "GAMMA GUTS"
skill_text[8] = "ENEMIES TOUCHING YOU TAKE DAMAGE#DONT TAKE DAMAGE FROM#ENEMIES THAT YOU KILL USING GAMMA GUTS"
skill_tips[8] = "skin glows"
skill_msnd[8] =  sndMutGammaGuts

skill_name[9] = "SECOND STOMACH"
skill_text[9] = "MORE HP FROM MEDKITS"
skill_tips[9] = "stomach rumbles"
skill_msnd[9] =  sndMutSecondStomache

skill_name[10] = "BACK MUSCLE"
skill_text[10] = "HIGHER AMMO MAX"
skill_tips[10] = "great strength"
skill_msnd[10] =  sndMutBackMuscle

skill_name[11] = "SCARIER FACE"
skill_text[11] = "LESS ENEMY HP"
skill_tips[11] = "mirrors will break"
skill_msnd[11] =  sndMutScarierFace

skill_name[12] = "EUPHORIA"
skill_text[12] = "SLOWER ENEMY BULLETS#WHEN YOU GET HIT YOU GAIN#INVINCIBILITY FOR A SHORT MOMENT"
skill_tips[12] = "time passes slowly"
skill_msnd[12] =  sndMutEuphoria

skill_name[13] = "LONG ARMS"
skill_text[13] = "+MELEE RANGE"
skill_tips[13] = "more reach"
skill_msnd[13] =  sndMutLongArms

skill_name[14] = "BOILING VEINS"
skill_text[14] = "NO DAMAGE FROM#EXPLOSIONS, FIRE AND LAVA#WHEN UNDER 50% HEALTH#EXCLUDING! BLUE FIRE"
skill_tips[14] = choose("temperature is rising","boiling veins does not#protect against#blue fire");
skill_msnd[14] =  sndMutBoilingVeins

skill_name[15] = "SHOTGUN SHOULDERS"
skill_text[15] = "SHELLS BOUNCE FURTHER"
skill_tips[15] = "shells are friends"
skill_msnd[15] =  sndMutShotGunShoulders

skill_name[16] = "RECYCLE GLAND"
skill_text[16] = "MOST HIT BULLETS BECOME AMMO"
skill_tips[16] = "no need to aim"
skill_msnd[16] =  sndMutRecycleGland

skill_name[17] = "LASER BRAIN"
skill_text[17] = "ENERGY WEAPONS DEAL MORE DAMAGE"
skill_tips[17] = "neurons everywhere"
skill_msnd[17] =  sndMutLaserBrain

skill_name[18] = "LAST WISH"
skill_text[18] = "GET FULL HEALTH AND SOME AMMO#GAIN ONE LIFE"
skill_tips[18] = "listen"
skill_msnd[18] =  sndMutLastWish

skill_name[19] = "EAGLE EYES"
skill_text[19] = "BETTER ACCURACY#SEE CONTENT OF WEAPON CHESTS#SEE FURTHER#SHOW WEAPON TIER"
skill_tips[19] = "every shot connects"
skill_msnd[19] =  sndMutEagleEyes

skill_name[20] = "IMPACT WRISTS"
skill_text[20] = "CORPSES FLY & HIT HARDER"
skill_tips[20] = "see them fly"
skill_msnd[20] =  sndMutImpactWrists

skill_name[21] = "BOLT MARROW"
skill_text[21] = "HOMING BOLTS"
skill_tips[21] = "bolts everywhere"
skill_msnd[21] =  sndMutBoltMarrow

skill_name[22] = "SHARP STRESS"
skill_text[22] = "WHENEVER YOU TAKE DAMAGE#DEAL DAMAGE TO ALL ENEMIES ON SCREEN#HIGHER RATE OF FIRE#AS HP GETS LOWER"
skill_tips[22] = "ultimate low health hybrid"
skill_msnd[22] =  sndMutSharpStress

skill_name[23] = "OPEN MIND"
skill_text[23] = "EXTRA CHESTS SPAWN"
skill_tips[23] = "open Mind also includes rad cannisters"
skill_msnd[23] =  sndMutOpenMind

skill_name[24] = "TRIGGER FINGERS"
skill_text[24] = "KILLS LOWER YOUR RELOAD TIME"
skill_tips[24] = "keep killing"
skill_msnd[24] =  sndMutTriggerfingers

skill_name[25] = "STRONG SPIRIT"
skill_text[25] = "DENIES LETHAL BLOWS ONCE PER AREA#RECHARGES WHEN AT FULL HEALTH"
skill_tips[25] = "denied"
skill_msnd[25] =  sndMutStrongSpirit

skill_name[26] = "HAMMER HEAD"
skill_text[26] = "BREAK THROUGH SOME WALLS#AMOUNT RESETS EACH LEVEL"
skill_tips[26] = "break 30 walls instead of 20"
skill_msnd[26] =  sndMutHammerHead

skill_name[27] = "PATIENCE"
skill_text[27] = "CHOOSE A MUTATION NEXT AREA"
skill_tips[27] = "wait for it..."
skill_msnd[27] =  sndMutPatience

skill_name[28] = "RAGE"
skill_text[28] = "EACH KILL INCREASES YOUR#FIRE RATE, DROPRATE#AND DECREASES ACCURACY SLIGHTLY#RESETS EACH TIME YOU GET HIT"
skill_tips[28] = "dodge to kill"
skill_msnd[28] =  sndMutRage

skill_name[29] = "INSOMNIA"
skill_text[29] = "ENEMIES DON'T ATTACK YOU#FOR A COUPLE OF SECONDS#AT THE START OF EACH LEVEL"
skill_tips[29] = "sleep"
skill_msnd[29] =  sndMut

skill_name[30] = "POWER CRAVING"
skill_text[30] = "EVERY WEAPON HAS ONE RANDOM WEAPON MOD#INCREASE MOD MAX BY ONE#INCREASE THE AMOUNT OF MOD ACTIVATIONS"
skill_tips[30] = "maximum power"
skill_msnd[30] =  sndMut

skill_name[31] = "TOUGH SHELL"
skill_text[31] = "EVERYTHING THAT DEALS#MORE THAN 2 DAMAGE#DEALS ONE LESS DAMAGE"
skill_tips[31] = "damage reduction!"
skill_msnd[31] =  sndMut
/*
skill_name[29] = "SHARP TEETH"
skill_text[29] = "WHENEVER YOU GET HIT DEAL DAMAGE TO EVERYTHING ON THE SCREEN, AND REDUCE DAMAGE TAKEN IN A SHORT PERIOD AFTER BEING HIT TO 1  
skill_tips[29] = "bite"*/

maxskill = 31;


dir = 0
repeat(maxskill+1)
{skill_got[dir] = 0
dir += 1}
