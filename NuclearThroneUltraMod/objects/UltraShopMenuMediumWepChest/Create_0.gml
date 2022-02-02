image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

cost=0.5;
cost*=ShopWheel.discount;
txt = "MEDIUM WEAPON CHEST#RADS: "+string(cost*100)+"%";