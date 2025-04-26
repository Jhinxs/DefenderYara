
rule Trojan_BAT_Confuser_UI{
	meta:
		description = "Trojan:BAT/Confuser.UI,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {42 69 74 63 6f 69 6e 53 74 65 61 6c 65 72 2e 65 78 65 } //1 BitcoinStealer.exe
		$a_01_1 = {43 6f 6e 66 75 73 65 64 42 79 41 74 74 72 69 62 75 74 65 } //1 ConfusedByAttribute
		$a_01_2 = {43 6f 6e 66 75 73 65 72 45 78 } //1 ConfuserEx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}