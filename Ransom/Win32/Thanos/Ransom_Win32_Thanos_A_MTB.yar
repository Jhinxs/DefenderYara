
rule Ransom_Win32_Thanos_A_MTB{
	meta:
		description = "Ransom:Win32/Thanos.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //1 .encrypted
		$a_01_1 = {2e 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 } //1 .locked
		$a_01_2 = {59 00 6f 00 75 00 20 00 73 00 68 00 6f 00 75 00 6c 00 64 00 20 00 72 00 65 00 63 00 65 00 69 00 76 00 65 00 20 00 61 00 20 00 6c 00 69 00 74 00 74 00 6c 00 65 00 20 00 70 00 75 00 6e 00 69 00 73 00 68 00 6d 00 65 00 6e 00 74 00 } //1 You should receive a little punishment
		$a_01_3 = {45 6e 63 72 79 70 74 46 69 6c 65 } //2 EncryptFile
		$a_01_4 = {43 79 62 65 72 54 68 61 6e 6f 73 2e 70 64 62 } //2 CyberThanos.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=5
 
}