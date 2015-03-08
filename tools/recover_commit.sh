#!/bin/bash
#
#
#	Recovers contents of the cars_bridge on different commits to respective directories
#
#

#  NOTE:  a18128f73d5e20cf052baadf34cb21697b9c4936 - redo 4.24 !


while read COMMIT DIR
do
	echo $COMMIT -\> $DIR
	
	#cleanup source dir
	rm cars_bridge/*
	git checkout $COMMIT cars_bridge
	cp cars_bridge/* "$DIR"

done<<END
2f1666b2b170f4d2df323a85e82fc7f4f518bf10 cars_4.02
5174b01300f508ea8035c0e620ae364c299d101b cars_4.03
85484fae178222e8621364784c1b8e4b9e2404ee cars_4.13
470a92f9c78778ec3186571158b8ea482974b960 cars_4.22
4c4bc1311689a12c43c129dcf368dfbbe64294bc cars_4.24
6a360af7a4023411b2156bb54062b3711489d33c cars_5.02
b2cef2ceee3ada423e94c2b44c6ae930d0a9d1ce cars_5.03
bd4960b7fb340ca32f036e68415d4710ce98ccd7 cars_5.08
2cb8b477fd1ae0b1f79a551919af3876b7afa43d cars_5.11
5e1526f7142a58d21b1e09b75e33e0168896dad5 cars_5.15
ba450822674613d8826023af212c639b32039c47 cars_5.17
118b0556851bbbf455117b420afeffa42c53b7f5 cars_5.18
891db75204f1c3167bccb4778e88e220067b1d6b cars_6.01
d530b9114efc0244e48cb543202517849fdd8738 cars_6.02
c0db7a9ffc6dfc32fc1454dbdfa4875274af2b79 cars_6.03
END


