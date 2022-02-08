image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

cost=1;
cost*=ShopWheel.discount;
txt = "GIANT GOLDEN WEAPON CHEST#RADS: "+string(cost*100)+"%";
