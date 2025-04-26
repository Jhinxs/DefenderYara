
rule Backdoor_BAT_Nanocore_ABK_MTB{
	meta:
		description = "Backdoor:BAT/Nanocore.ABK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_1 = {47 65 74 43 75 72 72 65 6e 74 44 69 72 65 63 74 6f 72 79 } //1 GetCurrentDirectory
		$a_01_2 = {62 36 63 61 39 61 38 34 34 35 2e 72 65 73 } //1 b6ca9a8445.res
		$a_01_3 = {31 37 66 61 63 34 66 63 32 65 31 39 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 17fac4fc2e19.Resources.resources
		$a_01_4 = {24 36 66 65 30 37 33 35 33 2d 32 34 33 61 2d 34 31 35 62 2d 39 63 63 61 2d 32 32 38 30 38 39 63 32 37 31 62 65 } //1 $6fe07353-243a-415b-9cca-228089c271be
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}