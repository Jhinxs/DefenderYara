
rule Trojan_Win32_Injector_MZ_MTB{
	meta:
		description = "Trojan:Win32/Injector.MZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {47 78 6b 65 6f 78 6b 7a 73 } //1 Gxkeoxkzs
		$a_81_1 = {50 72 6f 6a 65 63 74 35 31 2e 64 6c 6c } //1 Project51.dll
		$a_81_2 = {6d 69 64 69 49 6e 53 74 6f 70 } //1 midiInStop
		$a_81_3 = {6d 69 64 69 4f 75 74 47 65 74 56 6f 6c 75 6d 65 } //1 midiOutGetVolume
		$a_81_4 = {6d 69 78 65 72 47 65 74 49 44 } //1 mixerGetID
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}