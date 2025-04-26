
rule Trojan_BAT_DllInject_J_MTB{
	meta:
		description = "Trojan:BAT/DllInject.J!MTB,SIGNATURE_TYPE_PEHSTR,07 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {41 6e 64 72 6f 69 64 53 74 75 64 69 6f 2e 64 6c 6c } //4 AndroidStudio.dll
		$a_01_1 = {53 70 61 72 74 61 2e 64 6c 6c } //3 Sparta.dll
		$a_01_2 = {58 4f 52 5f 44 65 63 72 79 70 74 } //2 XOR_Decrypt
		$a_01_3 = {49 6e 73 65 72 74 52 61 6e 67 65 } //1 InsertRange
		$a_01_4 = {53 79 73 74 65 6d 2e 49 4f 2e 43 6f 6d 70 72 65 73 73 69 6f 6e } //1 System.IO.Compression
		$a_01_5 = {52 65 73 6f 75 72 63 65 5f 46 75 6e 63 } //1 Resource_Func
		$a_01_6 = {53 74 61 72 74 47 61 6d 65 } //1 StartGame
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}