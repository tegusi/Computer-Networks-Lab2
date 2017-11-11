require(library /home/comnetsii/elements/lossyrouterport.click);
require(library /home/comnetsii/elements/routerport.click);

rp1 :: LossyRouterPort(DEV $dev1, IN_MAC $in_mac1 , OUT_MAC $out_mac1, LOSS 0.05, DELAY 0.1);
rp2 :: LossyRouterPort(DEV $dev2, IN_MAC $in_mac2 , OUT_MAC $out_mac2, LOSS 0.05, DELAY 0.1);
ip :: IPClient(MY_IP 3);
rp3 :: RouterPort(DEV $dev3, IN_MAC $in_mac3 , OUT_MAC $out_mac3 );

rp1->ip->rp1;
rp2->[1]ip[1]->rp2;
rp3->[2]ip[2]->rp3;
//rp3->[2]IPClient[2]->rp3;