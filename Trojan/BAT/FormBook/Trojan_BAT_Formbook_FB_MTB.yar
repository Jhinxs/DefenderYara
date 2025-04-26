
rule Trojan_BAT_Formbook_FB_MTB{
	meta:
		description = "Trojan:BAT/Formbook.FB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 07 00 00 "
		
	strings :
		$a_81_0 = {24 36 37 63 63 38 38 63 62 2d 34 30 37 30 2d 34 64 63 36 2d 61 61 38 65 2d 65 36 64 33 38 65 63 32 30 36 33 63 } //20 $67cc88cb-4070-4dc6-aa8e-e6d38ec2063c
		$a_81_1 = {53 68 69 74 42 72 69 63 6b 5f 54 6f 6f 6c 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //20 ShitBrick_Tool.Resources.resources
		$a_81_2 = {59 41 59 21 20 46 49 58 20 44 45 50 45 4e 44 41 4e 43 59 20 49 53 53 55 45 20 57 49 54 48 20 44 4f 54 4e 45 54 42 41 52 32 } //1 YAY! FIX DEPENDANCY ISSUE WITH DOTNETBAR2
		$a_81_3 = {53 68 69 74 42 72 69 63 6b 20 54 6f 6f 6c } //1 ShitBrick Tool
		$a_81_4 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
		$a_81_5 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_6 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=25
 
}