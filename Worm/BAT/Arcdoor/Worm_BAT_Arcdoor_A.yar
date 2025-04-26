
rule Worm_BAT_Arcdoor_A{
	meta:
		description = "Worm:BAT/Arcdoor.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 07 00 06 00 00 "
		
	strings :
		$a_00_0 = {26 00 62 00 6f 00 74 00 76 00 65 00 72 00 3d 00 } //1 &botver=
		$a_00_1 = {69 00 63 00 6d 00 70 00 66 00 6c 00 6f 00 6f 00 64 00 } //2 icmpflood
		$a_00_2 = {45 00 6e 00 61 00 62 00 6c 00 65 00 4c 00 55 00 41 00 } //1 EnableLUA
		$a_01_3 = {62 41 6e 74 69 50 61 72 61 6c 6c 65 6c 73 44 65 73 6b 74 6f 70 } //2 bAntiParallelsDesktop
		$a_00_4 = {6e 00 65 00 63 00 72 00 6f 00 62 00 6f 00 74 00 69 00 63 00 } //3 necrobotic
		$a_01_5 = {62 52 41 52 53 70 72 65 61 64 } //3 bRARSpread
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*2+(#a_00_2  & 1)*1+(#a_01_3  & 1)*2+(#a_00_4  & 1)*3+(#a_01_5  & 1)*3) >=7
 
}