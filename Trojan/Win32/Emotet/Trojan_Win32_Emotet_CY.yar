
rule Trojan_Win32_Emotet_CY{
	meta:
		description = "Trojan:Win32/Emotet.CY,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {01 fe 8b 7c 24 28 81 cf 03 a0 7b 6e 8b 5c 24 30 89 9c 24 cc 00 00 00 89 bc 24 c8 00 00 00 89 74 24 78 35 72 4c fc 17 09 c8 89 44 24 20 75 02 } //2
		$a_01_1 = {4b 6e 63 66 51 43 2e 70 64 62 } //2 KncfQC.pdb
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}