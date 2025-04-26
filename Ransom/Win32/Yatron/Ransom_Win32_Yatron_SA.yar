
rule Ransom_Win32_Yatron_SA{
	meta:
		description = "Ransom:Win32/Yatron.SA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {73 74 75 62 20 6a 32 2e 65 78 65 } //1 stub j2.exe
		$a_01_1 = {63 5f 41 6e 74 69 4b 69 6c 6c } //1 c_AntiKill
		$a_01_2 = {45 6e 63 72 79 70 74 46 69 6c 65 } //1 EncryptFile
		$a_01_3 = {46 75 63 6b 5f 61 6c 6c } //1 Fuck_all
		$a_01_4 = {59 00 61 00 74 00 72 00 6f 00 6e 00 } //1 Yatron
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}