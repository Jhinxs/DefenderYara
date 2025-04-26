
rule Trojan_Win32_Dridex_NB_MTB{
	meta:
		description = "Trojan:Win32/Dridex.NB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_81_0 = {62 6c 6f 6c 65 62 72 2e 70 64 62 } //3 blolebr.pdb
		$a_81_1 = {72 65 6d 6f 74 65 70 67 2e 64 6c 6c } //3 remotepg.dll
		$a_81_2 = {46 6f 72 6d 61 74 4d 65 73 73 61 67 65 41 } //3 FormatMessageA
		$a_81_3 = {4d 61 70 56 69 65 77 4f 66 46 69 6c 65 } //3 MapViewOfFile
		$a_81_4 = {49 6e 74 65 72 6c 6f 63 6b 65 64 43 6f 6d 70 61 72 65 45 78 63 68 61 6e 67 65 } //3 InterlockedCompareExchange
		$a_81_5 = {47 65 74 50 72 6f 63 65 73 73 48 65 61 70 } //3 GetProcessHeap
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3) >=18
 
}
rule Trojan_Win32_Dridex_NB_MTB_2{
	meta:
		description = "Trojan:Win32/Dridex.NB!MTB,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 06 00 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 5c 00 53 00 45 00 4c 00 46 00 2e 00 45 00 58 00 45 00 00 00 4c 00 46 00 2e 00 45 00 58 00 45 00 00 00 53 00 45 00 4c 00 46 00 2e 00 45 00 58 00 45 00 } //8
		$a_01_1 = {43 3a 5c 5c 53 45 4c 46 2e 45 58 45 00 4c 46 2e 45 58 45 00 53 45 4c 46 2e 45 58 45 } //8 㩃屜䕓䙌䔮䕘䰀⹆塅E䕓䙌䔮䕘
		$a_01_2 = {73 65 6c 66 2e 65 78 45 } //1 self.exE
		$a_01_3 = {65 00 73 00 74 00 61 00 70 00 70 00 } //1 estapp
		$a_01_4 = {67 00 65 00 72 00 6e 00 65 00 6c 00 33 00 2e 00 64 00 6c 00 6c 00 } //1 gernel3.dll
		$a_01_5 = {42 00 45 00 40 00 45 00 } //1 BE@E
	condition:
		((#a_01_0  & 1)*8+(#a_01_1  & 1)*8+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=11
 
}