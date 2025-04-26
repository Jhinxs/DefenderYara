
rule Misleading_MacOS_BlueBlood_B_xp{
	meta:
		description = "Misleading:MacOS/BlueBlood.B!xp,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {62 6c 62 6c 61 20 6c 61 75 6e 63 68 69 6e 67 20 61 72 67 73 20 3a 20 25 40 } //2 blbla launching args : %@
		$a_00_1 = {6d 61 6b 61 72 61 40 64 69 67 69 74 61 6c 65 6e 64 70 6f 69 6e 74 2e 63 6f 6d } //1 makara@digitalendpoint.com
		$a_00_2 = {63 6f 6d 2e 61 70 70 6c 6c 65 2e 62 6c 62 6c 61 } //1 com.applle.blbla
		$a_00_3 = {42 6c 75 65 42 6c 6f 6f 64 2f 62 6c 62 6c 61 2f } //1 BlueBlood/blbla/
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}