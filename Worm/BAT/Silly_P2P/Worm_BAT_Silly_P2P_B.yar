
rule Worm_BAT_Silly_P2P_B{
	meta:
		description = "Worm:BAT/Silly_P2P.B,SIGNATURE_TYPE_PEHSTR,07 00 07 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 00 72 00 65 00 64 00 6c 00 6f 00 66 00 20 00 64 00 65 00 72 00 61 00 68 00 73 00 20 00 79 00 6d 00 5c 00 2b 00 2b 00 6b 00 20 00 65 00 74 00 69 00 6c 00 20 00 61 00 61 00 7a 00 61 00 6b 00 5c 00 } //3 \redlof derahs ym\++k etil aazak\
		$a_01_1 = {5c 00 72 00 65 00 64 00 6c 00 6f 00 66 00 20 00 64 00 65 00 72 00 61 00 68 00 73 00 20 00 79 00 6d 00 5c 00 73 00 75 00 65 00 68 00 70 00 72 00 6f 00 6d 00 5c 00 } //3 \redlof derahs ym\suehprom\
		$a_01_2 = {53 00 74 00 65 00 61 00 6d 00 48 00 61 00 63 00 6b 00 2e 00 65 00 78 00 65 00 } //1 SteamHack.exe
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*1) >=7
 
}