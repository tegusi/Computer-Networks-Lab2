require(library /home/comnetsii/elements/routerport.click);

rp :: RouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac);

cl :: IPClient(MY_IP 1);
tcp :: TCPhost(MY_IP 1);
//PacketGenerator()->rp->Discard();

RatedSource(DATA "hello", RATE 2, LIMIT -1) -> [0]tcp[0] -> Discard
rp->[1]cl[0]->[1]tcp[1]->[0]cl[1]->rp;