
rule Trojan_Win32_Neoreblamy_AD_MTB{
	meta:
		description = "Trojan:Win32/Neoreblamy.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 04 00 00 "
		
	strings :
		$a_02_0 = {23 ca 2b c1 8b 4d ?? 0f b6 4c 0d ?? 8b 55 ?? 2b 55 ?? 0f b6 54 15 ?? 0f b7 54 55 ?? 23 ca 2b c1 8b 4d ?? 0f b6 4c 0d ?? 66 89 44 4d } //10
		$a_80_1 = {46 72 65 65 4c 69 62 72 61 72 79 57 68 65 6e 43 61 6c 6c 62 61 63 6b 52 65 74 75 72 6e 73 } //FreeLibraryWhenCallbackReturns  3
		$a_80_2 = {47 65 74 4c 6f 67 69 63 61 6c 50 72 6f 63 65 73 73 6f 72 49 6e 66 6f 72 6d 61 74 69 6f 6e } //GetLogicalProcessorInformation  3
		$a_80_3 = {53 65 74 54 68 72 65 61 64 53 74 61 63 6b 47 75 61 72 61 6e 74 65 65 } //SetThreadStackGuarantee  3
	condition:
		((#a_02_0  & 1)*10+(#a_80_1  & 1)*3+(#a_80_2  & 1)*3+(#a_80_3  & 1)*3) >=19
 
}