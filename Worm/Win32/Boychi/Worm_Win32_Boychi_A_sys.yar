
rule Worm_Win32_Boychi_A_sys{
	meta:
		description = "Worm:Win32/Boychi.A!sys,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 4d 00 53 00 48 00 34 00 44 00 45 00 56 00 32 00 } //1 \Device\MSH4DEV2
		$a_01_1 = {5c 00 44 00 72 00 69 00 76 00 65 00 72 00 5c 00 44 00 65 00 65 00 70 00 46 00 72 00 7a 00 } //1 \Driver\DeepFrz
		$a_01_2 = {68 76 72 44 4d bb 80 00 00 00 53 57 89 41 0c ff d6 } //2
		$a_01_3 = {68 6c 61 67 61 bb a0 0f 00 00 53 57 ff d6 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=5
 
}