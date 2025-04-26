
rule Trojan_Win32_DllInject_BN_MTB{
	meta:
		description = "Trojan:Win32/DllInject.BN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 63 74 66 76 79 67 46 63 67 68 } //2 SctfvygFcgh
		$a_01_1 = {52 66 76 67 62 68 53 66 63 76 67 62 68 } //2 RfvgbhSfcvgbh
		$a_01_2 = {53 63 66 76 67 4a 75 69 6d } //2 ScfvgJuim
		$a_01_3 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 } //1 WaitForSingleObject
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1) >=7
 
}