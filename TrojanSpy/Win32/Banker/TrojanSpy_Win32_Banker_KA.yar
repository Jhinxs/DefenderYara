
rule TrojanSpy_Win32_Banker_KA{
	meta:
		description = "TrojanSpy:Win32/Banker.KA,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 62 00 72 00 61 00 64 00 65 00 73 00 63 00 6f 00 6e 00 65 00 74 00 65 00 6d 00 70 00 72 00 65 00 73 00 61 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 6e 00 65 00 2f 00 69 00 6e 00 69 00 63 00 69 00 61 00 73 00 65 00 73 00 73 00 61 00 6f 00 2e 00 61 00 73 00 70 00 } //1 https://bradesconetempresa.com.br/ne/iniciasessao.asp
		$a_01_1 = {2e 00 6b 00 69 00 74 00 2e 00 6e 00 65 00 74 00 2f 00 53 00 69 00 74 00 65 00 50 00 6a 00 2f 00 6e 00 65 00 2f 00 69 00 6e 00 69 00 63 00 69 00 61 00 73 00 65 00 73 00 73 00 61 00 6f 00 2e 00 68 00 74 00 6d 00 } //2 .kit.net/SitePj/ne/iniciasessao.htm
		$a_01_2 = {0d 78 00 0f 00 6c 6c ff 1b 12 00 fb 30 c5 32 06 00 74 ff 70 ff 6c ff 1c 8f 00 27 ec fe 27 0c ff 27 2c ff 27 4c ff 1b 13 00 08 08 00 58 34 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=3
 
}