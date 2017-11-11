require(library /home/comnetsii/elements/routerport.click);

rp :: RouterPort(DEV $dev, IN_MAC $in_mac , OUT_MAC $out_mac );
cl :: IPClient(MY_IP 4);
//pp :: PacketPrinter;

rp->cl->rp;