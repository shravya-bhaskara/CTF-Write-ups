import gmpy2
from Crypto.Util.number import * 
 
n = 86683300105327745365439507825347702001838360528840593828044782382505346188827666308497121206572195142485091411381691608302239467720308057846966586611038898446400292056901615985225826651071775239736355509302701234225559345175968513640372874437860580877571155199027883755959442408968543666251138423852242301639
e1 =  11048796690938982746152432997911442334648615616780223415034610235310401058533076125720945559697433984697892923155680783661955179131565701195219010273246901
e2 = 9324711814017970310132549903114153787960184299541815910528651555672096706340659762220635996774790303001176856753572297256560097670723015243180488972016453 
c1 = 84855521319828020020448068809384113135703375013574055636013459151984904926013060168559438932572351720988574536405041219757650609586761217385808427001020204262032305874206933548737826840501447182203920238204769775531537454607204301478815830436609423437869412027820433923450056939361510843151320837485348066171
c2 = 54197787252581595971205193568331257218605603041941882795362450109513512664722304194032130716452909927265994263753090021761991044436678485565631063700887091405932490789561882081600940995910094939803525325448032287989826156888870845730794445212288211194966299181587885508098448750830074946100105532032186340554

d,u,v = xgcd(e1,e2)           
c1_inv = gmpy2.invert(c1,n)   
c1_inv = int(c1_inv)          
c1 = pow(c1_inv,-u,n) 
c2 = pow(c2,v,n)
msg = long_to_bytes(c1*c2)  
print(msg)
