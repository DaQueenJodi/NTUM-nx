image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

cost=0.85;
cost*=ShopWheel.discount;
txt = "TEMPORARY BUFF#RADS: "+string(cost*100)+"%";