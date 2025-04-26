
rule Ransom_Win32_Hive_SC{
	meta:
		description = "Ransom:Win32/Hive.SC,SIGNATURE_TYPE_CMDHSTR_EXT,65 00 65 00 02 00 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 } //1 cmd
		$a_02_1 = {5c 00 6e 00 65 00 74 00 6c 00 6f 00 67 00 6f 00 6e 00 5c 00 79 00 79 00 79 00 2e 00 64 00 6c 00 6c 00 [0-10] 2d 00 75 00 [0-30] 3a 00 } //100
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*100) >=101
 
}