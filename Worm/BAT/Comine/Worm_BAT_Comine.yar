
rule Worm_BAT_Comine{
	meta:
		description = "Worm:BAT/Comine,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 62 00 6c 00 61 00 63 00 6b 00 43 00 6f 00 69 00 6e 00 2e 00 73 00 63 00 72 00 } //1 \blackCoin.scr
		$a_01_1 = {55 73 62 53 70 72 65 61 64 } //1 UsbSpread
		$a_01_2 = {5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //1 \autorun.inf
		$a_01_3 = {3b 00 61 00 76 00 34 00 74 00 74 00 63 00 67 00 72 00 37 00 74 00 36 00 67 00 6b 00 34 00 67 00 6b 00 77 00 7a 00 52 00 53 00 5a 00 25 00 } //1 ;av4ttcgr7t6gk4gkwzRSZ%
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}