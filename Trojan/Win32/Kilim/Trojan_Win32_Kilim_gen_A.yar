
rule Trojan_Win32_Kilim_gen_A{
	meta:
		description = "Trojan:Win32/Kilim.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {25 69 64 25 3b 25 64 69 72 65 58 58 25 5c 73 65 74 75 70 2e 78 6d 6c } //1 %id%;%direXX%\setup.xml
		$a_01_1 = {25 64 69 72 65 58 58 25 5c 46 6c 61 73 68 50 6c 61 79 65 72 2e 65 78 65 } //1 %direXX%\FlashPlayer.exe
		$a_01_2 = {25 64 69 72 65 58 58 25 5c 25 6b 69 6e 67 25 } //1 %direXX%\%king%
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}