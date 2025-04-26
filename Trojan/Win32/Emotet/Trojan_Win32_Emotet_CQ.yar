
rule Trojan_Win32_Emotet_CQ{
	meta:
		description = "Trojan:Win32/Emotet.CQ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {57 73 37 65 37 59 33 3d 73 35 5f 6e 51 78 2e 70 64 62 } //1 Ws7e7Y3=s5_nQx.pdb
		$a_00_1 = {73 00 6c 00 63 00 6f 00 69 00 6e 00 73 00 74 00 2e 00 64 00 6c 00 6c 00 } //1 slcoinst.dll
		$a_00_2 = {53 00 6f 00 66 00 74 00 20 00 4d 00 6f 00 64 00 65 00 6d 00 } //1 Soft Modem
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}