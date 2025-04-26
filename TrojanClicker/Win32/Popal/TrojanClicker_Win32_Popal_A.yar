
rule TrojanClicker_Win32_Popal_A{
	meta:
		description = "TrojanClicker:Win32/Popal.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_02_0 = {8b 3d e0 60 40 00 8b ff 68 ?? ?? ?? ?? ff d6 6a 01 6a 00 6a 00 68 ?? ?? ?? ?? 68 60 78 40 00 6a 00 ff d7 68 ?? ?? ?? ?? ff d6 } //10
		$a_01_1 = {61 64 73 2e 62 61 62 61 6c 2e 6e 65 74 } //1 ads.babal.net
		$a_01_2 = {5c 50 4f 50 5c 52 65 6c 65 61 73 65 5c 70 6f 70 } //1 \POP\Release\pop
	condition:
		((#a_02_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=12
 
}