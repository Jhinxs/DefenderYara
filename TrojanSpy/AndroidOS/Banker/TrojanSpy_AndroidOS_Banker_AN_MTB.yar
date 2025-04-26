
rule TrojanSpy_AndroidOS_Banker_AN_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Banker.AN!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 44 75 6d 6d 79 41 63 63 65 73 73 69 62 69 6c 69 74 79 3b } //1 /DummyAccessibility;
		$a_01_1 = {2f 4c 6f 61 64 65 72 3b } //1 /Loader;
		$a_01_2 = {63 6f 6d 2e 72 61 63 63 6f 6f 6e 2e 41 63 63 65 73 73 69 62 69 6c 69 74 79 } //1 com.raccoon.Accessibility
		$a_01_3 = {2f 44 45 58 5f 41 50 49 2e 61 70 6b } //1 /DEX_API.apk
		$a_01_4 = {4c 6f 61 64 46 69 6c 65 } //1 LoadFile
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}