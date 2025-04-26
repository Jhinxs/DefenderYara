
rule Trojan_Win32_Cosmu_EM_MTB{
	meta:
		description = "Trojan:Win32/Cosmu.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 5c 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 5c 00 57 00 6f 00 72 00 6d 00 50 00 32 00 50 00 5f 00 53 00 65 00 6c 00 66 00 4d 00 6f 00 64 00 69 00 66 00 79 00 5f 00 69 00 6e 00 5f 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //1 Antivirus\Antivirus\WormP2P_SelfModify_in_Memory
		$a_01_1 = {56 42 2e 43 6c 69 70 62 6f 61 72 64 } //1 VB.Clipboard
		$a_01_2 = {56 42 2e 4d 44 49 46 6f 72 6d } //1 VB.MDIForm
		$a_01_3 = {6b 6f 55 64 70 5a 72 67 59 50 73 6a 69 } //1 koUdpZrgYPsji
		$a_01_4 = {62 6e 57 63 73 65 5a 72 69 66 } //1 bnWcseZrif
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}