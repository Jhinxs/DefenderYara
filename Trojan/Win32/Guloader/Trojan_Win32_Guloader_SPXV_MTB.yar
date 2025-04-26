
rule Trojan_Win32_Guloader_SPXV_MTB{
	meta:
		description = "Trojan:Win32/Guloader.SPXV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {44 00 79 00 72 00 65 00 68 00 6f 00 73 00 70 00 69 00 74 00 61 00 6c 00 73 00 5c 00 73 00 6c 00 69 00 62 00 65 00 6d 00 69 00 64 00 64 00 65 00 6c 00 2e 00 64 00 6c 00 6c 00 } //1 Dyrehospitals\slibemiddel.dll
		$a_01_1 = {6f 00 78 00 69 00 64 00 69 00 73 00 61 00 74 00 69 00 6f 00 6e 00 73 00 2e 00 70 00 72 00 6f 00 } //1 oxidisations.pro
		$a_01_2 = {46 00 72 00 75 00 63 00 68 00 74 00 73 00 63 00 68 00 69 00 65 00 66 00 65 00 72 00 32 00 30 00 37 00 5c 00 46 00 6e 00 6f 00 6b 00 75 00 72 00 74 00 65 00 6e 00 73 00 2e 00 69 00 6e 00 69 00 } //1 Fruchtschiefer207\Fnokurtens.ini
		$a_01_3 = {65 00 6d 00 61 00 72 00 6b 00 2e 00 4b 00 69 00 6e 00 } //1 emark.Kin
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}