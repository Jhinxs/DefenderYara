
rule Ransom_Win32_Conti_SD_MTB{
	meta:
		description = "Ransom:Win32/Conti.SD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {61 61 61 5f 54 6f 75 63 68 4d 65 4e 6f 74 5f 5c 61 61 61 5f 54 6f 75 63 68 4d 65 4e 6f 74 5f 2e 74 78 74 } //1 aaa_TouchMeNot_\aaa_TouchMeNot_.txt
		$a_81_1 = {43 4f 4e 54 49 5f 52 45 41 44 4d 45 2e 74 78 74 } //1 CONTI_README.txt
		$a_81_2 = {63 6d 64 2e 65 78 65 20 2f 63 20 6e 65 74 20 73 74 6f 70 20 56 65 65 61 6d 42 72 6f 6b 65 72 53 76 63 20 2f 79 } //1 cmd.exe /c net stop VeeamBrokerSvc /y
		$a_81_3 = {63 6d 64 2e 65 78 65 20 2f 63 20 6e 65 74 20 73 74 6f 70 20 6d 66 65 66 69 72 65 20 2f 79 } //1 cmd.exe /c net stop mfefire /y
		$a_81_4 = {63 6d 64 2e 65 78 65 20 2f 63 20 6e 65 74 20 73 74 6f 70 20 53 51 4c 41 67 65 6e 74 24 43 49 54 52 49 58 5f 4d 45 54 41 46 52 41 4d 45 20 2f 79 } //1 cmd.exe /c net stop SQLAgent$CITRIX_METAFRAME /y
		$a_81_5 = {63 6d 64 2e 65 78 65 20 2f 63 20 6e 65 74 20 73 74 6f 70 20 56 65 65 61 6d 45 6e 74 65 72 70 72 69 73 65 4d 61 6e 61 67 65 72 53 76 63 } //1 cmd.exe /c net stop VeeamEnterpriseManagerSvc
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}