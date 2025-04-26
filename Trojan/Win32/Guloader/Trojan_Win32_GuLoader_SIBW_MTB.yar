
rule Trojan_Win32_GuLoader_SIBW_MTB{
	meta:
		description = "Trojan:Win32/GuLoader.SIBW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {62 00 61 00 6b 00 74 00 65 00 72 00 69 00 6f 00 6c 00 6f 00 67 00 69 00 65 00 72 00 6e 00 65 00 } //1 bakteriologierne
		$a_00_1 = {5c 00 54 00 77 00 69 00 63 00 68 00 69 00 6c 00 64 00 31 00 37 00 32 00 5c 00 54 00 65 00 6c 00 65 00 67 00 72 00 61 00 66 00 65 00 72 00 73 00 36 00 37 00 } //1 \Twichild172\Telegrafers67
		$a_00_2 = {6f 00 63 00 63 00 74 00 61 00 75 00 78 00 2e 00 64 00 6c 00 6c 00 } //1 occtaux.dll
		$a_00_3 = {5c 00 74 00 65 00 72 00 70 00 2e 00 64 00 61 00 74 00 } //1 \terp.dat
		$a_03_4 = {1b 7a a2 e2 ?? b9 ?? ?? ?? ?? 29 f0 1f 72 ?? 5f 9f ee 38 b3 ?? ?? ?? ?? 65 c3 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}