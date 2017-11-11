require(library /home/comnetsii/elements/lossyrouterport.click);

rp :: LossyRouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac, LOSS 0.05 , DELAY 0.1);
cl :: IPClient(MY_IP 1);
//PacketGenerator()->rp->Discard();
rp->cl->rp;