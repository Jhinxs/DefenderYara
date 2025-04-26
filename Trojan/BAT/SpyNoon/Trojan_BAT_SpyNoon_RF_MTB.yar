
rule Trojan_BAT_SpyNoon_RF_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 07 00 00 "
		
	strings :
		$a_81_0 = {24 37 63 31 35 38 62 34 35 2d 39 64 63 34 2d 34 30 36 36 2d 38 63 64 61 2d 35 38 65 30 32 38 64 31 61 38 35 37 } //10 $7c158b45-9dc4-4066-8cda-58e028d1a857
		$a_81_1 = {3c 77 77 77 2e 6c 75 6d 69 78 73 6f 66 74 2e 63 6f 6d } //1 <www.lumixsoft.com
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_4 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_5 = {4d 75 6c 74 69 63 61 73 74 44 65 6c 65 67 61 74 65 } //1 MulticastDelegate
		$a_81_6 = {45 64 69 74 6f 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 EditorBrowsableState
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=14
 
}