image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

cost=1;
cost*=ShopWheel.discount;
txt = "INVERTED WORLD#RADS: "+string(cost*100)+"%";

canspawn=true;