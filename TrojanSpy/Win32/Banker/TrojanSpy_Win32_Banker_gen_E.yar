
rule TrojanSpy_Win32_Banker_gen_E{
	meta:
		description = "TrojanSpy:Win32/Banker.gen!E,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {40 68 6f 74 6d 61 69 6c 2e 63 6f 6d } //1 @hotmail.com
		$a_01_1 = {40 79 61 68 6f 6f 2e 63 6f 6d } //1 @yahoo.com
		$a_01_2 = {53 65 6e 68 61 } //1 Senha
		$a_01_3 = {4d 41 43 3a } //1 MAC:
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}