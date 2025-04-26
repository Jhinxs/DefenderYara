
rule Trojan_Win32_FlawedAmmyy_C{
	meta:
		description = "Trojan:Win32/FlawedAmmyy.C,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {2f 31 38 2f 62 6f 74 2e 70 68 70 } //1 /18/bot.php
		$a_01_1 = {52 65 6c 65 61 73 65 5c 4c 6f 61 64 65 72 2e 70 64 62 } //1 Release\Loader.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}