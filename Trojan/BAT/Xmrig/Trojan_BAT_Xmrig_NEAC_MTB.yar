
rule Trojan_BAT_Xmrig_NEAC_MTB{
	meta:
		description = "Trojan:BAT/Xmrig.NEAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 06 00 00 "
		
	strings :
		$a_01_0 = {34 61 32 35 30 32 62 65 2d 39 30 63 64 2d 34 30 62 34 2d 61 38 37 37 2d 32 61 62 37 38 39 38 32 64 32 66 66 } //5 4a2502be-90cd-40b4-a877-2ab78982d2ff
		$a_01_1 = {4d 61 69 6e 50 61 72 74 2e 4d 61 69 6e 4c 2e 72 65 73 6f 75 72 63 65 73 } //3 MainPart.MainL.resources
		$a_01_2 = {4d 61 69 6e 50 61 72 74 2e 65 78 65 } //3 MainPart.exe
		$a_01_3 = {43 6f 6e 66 75 73 65 72 2e 43 6f 72 65 20 31 2e 32 2e 30 2b 34 31 31 30 66 61 65 65 39 64 } //2 Confuser.Core 1.2.0+4110faee9d
		$a_01_4 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //2 set_UseShellExecute
		$a_01_5 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //2 ProcessWindowStyle
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=17
 
}