image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

cost=0.15;
cost*=ShopWheel.discount;
txt = "AMMO PICKUP#RADS: "+string(cost*100)+"%";