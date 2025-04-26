
rule Backdoor_BAT_Remcos_SPQT_MTB{
	meta:
		description = "Backdoor:BAT/Remcos.SPQT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 05 11 06 9a 0c 08 6f ?? ?? ?? 0a 72 01 00 00 70 28 ?? ?? ?? 0a 2c 09 06 08 6f ?? ?? ?? 0a 2b 0e 11 06 17 58 13 06 11 06 11 05 8e 69 32 d1 } //6
		$a_01_1 = {6b 00 65 00 64 00 61 00 69 00 6f 00 72 00 61 00 6e 00 67 00 6d 00 65 00 6c 00 61 00 79 00 75 00 2e 00 78 00 79 00 7a 00 2f 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 77 00 69 00 74 00 68 00 6f 00 75 00 74 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 5f 00 4d 00 79 00 67 00 6e 00 68 00 63 00 76 00 64 00 2e 00 70 00 6e 00 67 00 } //1 kedaiorangmelayu.xyz/loader/uploads/withoutstartup_Mygnhcvd.png
	condition:
		((#a_03_0  & 1)*6+(#a_01_1  & 1)*1) >=7
 
}