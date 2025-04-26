
rule Trojan_BAT_SpyNoon_RTH_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.RTH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_1 = {73 65 74 5f 4b 65 65 70 50 72 65 73 73 65 64 } //1 set_KeepPressed
		$a_81_2 = {24 64 65 63 39 65 66 65 66 2d 64 66 61 64 2d 34 39 65 30 2d 61 61 65 66 2d 33 33 32 32 63 39 38 33 61 32 35 36 } //1 $dec9efef-dfad-49e0-aaef-3322c983a256
		$a_81_3 = {50 61 73 73 77 6f 72 64 20 3a } //1 Password :
		$a_81_4 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_5 = {48 69 64 65 4d 6f 64 75 6c 65 4e 61 6d 65 41 74 74 72 69 62 75 74 65 } //1 HideModuleNameAttribute
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}