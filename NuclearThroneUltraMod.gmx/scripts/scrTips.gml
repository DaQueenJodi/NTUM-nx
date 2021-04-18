tiptype = choose(0,0,0,0,0,0,0,1,1,1,2,2,3,4,5,choose(0,6,0,0,1,1,2,2,3,4,5,6,6,6))

if !instance_exists(Player)
tiptype = 0

if tiptype = 0
{
//RANDOM
tip = choose(choose(
"HP will only drop when damaged",
"explosives can destroy walls",
"melee weapons can deflect bullets",
"shotguns are great for close combat",
"assassins can pretend they're dead",
"fish can roll",
"always keep one eye on your ammo",
"robots can digest anything",
"bandits like camping near explosives",
"not today",
"rosebud",
"it's not fair, it's not right",
"watch out for dehydration",
"crystal can shield",
"fear is the mindkiller",
/*these are rare*/ choose("no","bob and weave","airhorn.wav","danger zone","no sex jokes","in and about"
,"the purple dragon","golden frog anyone?","Y.V. mony rad","the flying cat head","myth of time","sheeps are a thing","feedback is much apreciated","follow @erdeppol","sorry bout bugs","I love you!")
),choose(
"the I.D.P.D. is looking for you",
"try hitting grenades for extra range",
"pick your mutations wisely",
"if only you could talk to the monsters",
"steroids can dual wield",
"always wear dry socks",
"energy weapons use lots of ammo",
"elite wep chests drop weps#depending on the ones you have",
"try not opening weapon chests",
"fire at things until they die",
"ammo drops depend on your weapons",
"war is hell",
"kraken pulls enemies towards you",
"doing alright",
"there are other worlds out there",
/*more rares*/choose("if you ever get stuck#outside a level#walk far away#from the level to get teleported back","use wasd to move","don't get baited by items","ask and ye shall receive","you smell that?","sick build bro","what does your gun tell you?","don't get baited by items"
,"thematically inconsistent!","if you reach loop 2#your level cap increases by 1","skeleton has#a fifth ultra mutation","don't be afraid to pick up new weapons",choose("","shit on my tits","stop whining about#offscreen bullets","","","")/*super rare*/
)
),choose(
"don't worry about-long term effects","when near a portal you#don't take damage","don't die","nice",
"yung cuz definatly exists","venuz patrol","boiling veins does#NOT protect against#blue fire","all mutations are#up to date",
"should not have done that","","thank you for playing","Some unused mutations are buffed","visit crownvaults twice#for weapon mods","death is near","good luck"
,"you can change the direction#of director projectiles#by clicking after firing")
,/*choose("try new weapons","this mod has been build up#from update 19","don't be a dirty casual")*/ )
}

if tiptype = 1
{
//AREA BASED

if Player.area = 0
tip = choose("it's dark here","your friends were here")
if Player.area = 1
tip = choose("welcome to the future","the wasteland calls you","scorching sun","watch out for maggots","let's do this","dust surrounds you","the wind hurts")
if Player.area = 2
tip = choose("don't drink the water","the sewers stink","don't touch the frogs","don't eat the rat meat","danger","water dripping","sludge everywhere")
if Player.area = 3
tip = choose("shoot robots on sight","there used to be trees here","look up","rust everywhere","the sound of birds","don't cross the streams","climb over cars")
if Player.area = 4
tip = choose("oh no","good luck","spiderwebs everywhere","reflections on the walls","skin is crawling","almost halfway there")
if Player.area = 5
tip = choose("wear a scarf","they used to have electricity","miss the sun","civilization","walk softly","there is no yeti")
if Player.area = 6
tip = choose("beep boop","nerds","don't push any buttons","randa")
if Player.area = 100
tip = choose("aw yes","time for some placeholder art","there is value here","visit this place atleast twice","let's hope its not toxic again",
"old torches","you can get 3 mods#on a single weapon","mods stack")
if Player.area = 102
tip = choose("hunger...","it smells nice here","wait for it....")
if Player.area = 103
tip = choose("space...","always wanted to go here","so much money","4 years later...")

if Player.area = 104
tip = choose("mony","home","where the guns at")
if Player.area = 105
tip = choose("inverted","another dimension","same world","mystery","blue","wormhole","what is this place","blueberry","im blue da ba dee!","interdimensional travel","this is not the wastelands?!","SHORTCUT!")
if Player.area = 7
tip = choose("inferno","hell","its getting hot in here", "vulcano", "hot", "heat", "lava", "magma","lava damages over time",
"lava kills you even if# you have boiling veins","don't stand#too long in lava","hot feet","tomato sauce","do not run away from a dragon fight!","do not flee from thy dragon")
if Player.area = 8
tip = choose("sweet","wonderland","evil cards","play your cards right","teapots of doom","cotton candy floors","do not eat the mushrooms","I'm not even a fan of#alice in wonderland")
if Player.area = 106
tip = choose("inverted darkness","back to the other dimension","pls explain","inverted world are a benefit","oh no, the question marks!","good luck getting through this"
,"white ravens")
if Player.area = 107
tip = choose("black snow?","looks like shit","mud?","explosions everywhere!","should not have come here","the greed is real","do you want to die?","inverted demons")
if Player.area = 101
tip = choose("water","hold your breath","big fish here","you should come here more often")
if Player.area = 108
tip = choose("true hell","frozen vulcano")
if Player.area = 109
tip = choose("this place is very deadly","don't get nuked","try not to burn","don't blow up","why are you here","your run ends now")
if Player.area = 110
tip = choose("not sure what the smell is","blue toxic?","glitchy","things are going wrong")
if Player.area = 111
tip = choose("not cursed caves","green & blue","caves part 2","weird","odd")
if Player.area = 112
tip = choose("buttons","balls","labs are now inverted")
}


if tiptype = 2
{
//CHARACTER BASED

if Player.race = 0
tip = choose("random shifts shapes","clearly the most powerful","never the same","shapeless","passive: anything","active: anything","noone compares")

if Player.race = 1
tip = choose("last day before retirement","duty calls","it's ok to eat","gills on your neck","like kevin costner")

if Player.race = 2
tip = choose("crystal can handle this","family","crystal does not like cheese")

if Player.race = 3
tip = choose("eyes sees everything","don't blink","all these thoughts","eyes can't speak","telekinesis pushes bullets away")

if Player.race = 4
tip = choose("it's so cold out here","melting is tired","everything hurts","cough")

if Player.race = 5
tip = choose("kill kill kill","death death death","blood blood blood","no mercy","photosynthesizing...","plant can hold RMB to see further")

if Player.race = 6
tip = choose("yung venuz is so cool",
"yung venuz is the best",
"so cool",
"thanks gun god",
"\#verifyvenuz",
"\#yv",
"guns for fake necklace",
"guns that send textses",
"guns that make breakfast?",
"guns that sign breastses",
"guns that straight festive",
"guns with 6 senses",
"guns that hate texas",
"guns that wear vests it",
"no popo",
"pop pop")

if Player.race = 7
tip = choose("time to flex","steroids could do pushups forever","steroids used to be a scientist","appreciate revolvers","get shots","get strong"
,"eat 14 eggs in the morning")

if Player.race = 8
tip = choose("6b 69 6c 6c#61 6c 6c#68 75 6d 61 6e 73","72 6f 62 6f 74","3c 33","74 61 73 74 79","guns for breakfast","I'm afraid I can't let you do that","don't forget to eat weapons")

if Player.race = 9
tip = choose("remember the training","focus","go","never surrender","amateur hour is over","again")

if Player.race = 10
tip = choose("forget the old days","change is coming","a new generation","it will get better","spawning new allies heals old ones","allies take damage over time")

if Player.race = 11//hunter
tip = choose("never miss",
"ranged assassin",
"never see you coming",
"robot's best buddy",
"can't escape",
"want out",
"miss life","after marking#you can unmark#by right clicking again",
"pellets move faster with hunter",
"shotguns shoot further as hunter"
)

if Player.race = 12//yung cuz
tip = choose("always in the shadow","yung cuz is so cool","the better shape",
"not immortal","how to kill a god","waka waka","buddies cost#half your MAX HP","noscope","golden tv"
,"mlg","prodigy","up n cmin","buddies return to you#when you stand still","\#yc",
"buddies originally spawn with 4 HP","Buddies copy most mutations")

if Player.race = 13//sheep
tip = choose("BAAHHH","farmville","don't mess with me"
,"BAAAA","BAHHH","moo?","silence of the lamb","just a sheep","peacefull"
,"shaun the sheep","sheeps don't harm people","shawarma","tackle allows you#to move through#some projectiles",
"tackle increases damage#the longer you charge it","you stop tackling#once you hit an enemy","Hold the button#to tackle longer and stronger"
)

if Player.race = 14//panda
tip = choose("never let go of your bamboo","kawaii as fuck","rng","portal magic","what is a panda doing here",
"don't want to be here","help me","if only hotline miami had a panda","panda used to be a pacifist"
,"fight to survive","you are fighting to survive#right?","killing is no fun","panda is unpredictable with weapons"
,"you can see your new weapons#while a level is generating"
)

if Player.race = 15//Atom
tip = choose("molecules","don't touch each other","elite being","not an accurate#representation of reality","science bitch!","balance of the universe"
,"from the other side","inverted mutant","higher chance for inverted worlds","purple balls","split the atom","atoms for peace")

if Player.race = 16//Viking
tip = choose("the ship that brought you here","the sea","ocean fire","hate pirates","you've come from far","water dragon","though!"
,"rock hard","plunder","time travel?","armour strike damage scales#depending on your level","armour strike damage is more#when you are a higher level")

if Player.race = 17//WEAPONSMITH
tip = choose("anvil","you keep the weapon mods#of the weapon you area holding#when upgrading","you upgrade one of your#two weapons at random",
"the weapon that gets upgraded#is chosen randomly","weaponsmith is a smoker","hide your face","liver damage","no trousers","fat and strong","weaponsmith is a metalhead")

if Player.race = 18//ANGEL
tip = choose("ascend","the wall is not the enemy","fly over cars","you fly normally over all terrains","rogue guardian","you don't get pushed off of props",
"I believe I can fly","don't serve gorillaman","angel can fly over lava")

if Player.race = 19//SKELETON
tip = choose("hard","dusty","dry","nothing...","bones","blood gamble chance#depends on ammo cost")

if Player.race = 20//BUSINESS HOG
tip = choose("post apocalyptic capitalism","delusional capitalist","mutated money")

if Player.race = 21//HORROR
tip = choose("Enemies absord the beam's rads",
"Horror's beam destroyss projectiles","Horror's beam powers up over time","Power","The horror","In the zone",
"Radiation is everywhere","Green puppy","The beam homes in on your crosshair")

if Player.race = 22//ROGUE
tip = choose("Keep moving","Never look back","Never slow down","They're getting closer","Never stop","Another world lost")

if Player.race = 23//FROG
tip = choose("Wait for me","Don't hold it up","Keep going","Let it all out","Gass is good","Bloated","Restless","Let's go","Can't wait")

if Player.race = 24//ELEMENTOR
tip = choose("The elements will destroy you","The avatar","Meditating","Floaty","Very down to earth","SOLID! play!",
"You can only place walls#against other walls","Create walls from other walls","Floating guns","No hands required")

if Player.race = 25//MUTATION SMITH
tip = choose("Weapon Smith's brother","The Smith family","Efficient rad intake","Underleveled?")

if Player.race = 26//GOOD OL' HUMPHRY
tip = choose("Rusty old soldier","Grandpa","When Humphry pulls out a gun","The real deal","Old and experienced","Vietnam"
,"RUN! HUMPHRY RUN!","Thats a good sprint#for an old man","Every projectile in one shot#counts as one hit","When one of multiple projectiles#fire in one shot/burst#hits an enemy it counts as a hit")
}

//WEAPONS
if tiptype = 3
tip = Player.wep_text[Player.wep]

//MUTATIONS
if tiptype = 4
{
if Player.level = 1
tip = ""
else
{
dir = 0
    do dir = round(random(Player.maxskill))
    until Player.skill_got[dir] = 1
    tip = Player.skill_tips[dir]
    
}
}

//CROWNS
if tiptype = 5
tip = Player.crown_tips[Player.crown]

//ULTRAS
if tiptype = 6 
{
if Player.level>=10
    {
dir=0
do dir = round(random(Player.maxultra))
    until Player.ultra_got[dir] = 1
    tip = Player.ultra_tips[dir]
    
    }
    else 
    tip=""
}

if tip = ""
scrTips()
