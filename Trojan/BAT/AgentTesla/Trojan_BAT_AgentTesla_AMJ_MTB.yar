
rule Trojan_BAT_AgentTesla_AMJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AMJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 55 73 65 72 73 5c 41 64 6d 69 6e 69 73 74 72 61 74 6f 72 5c 44 65 73 6b 74 6f 70 5c 4e 65 77 20 66 6f 6c 64 65 72 5c 62 69 6e 5c 44 65 62 75 67 5c 53 4c 4e 5c 68 61 73 74 61 6e 65 5c 6f 62 6a 5c 44 65 62 75 67 5c 68 61 73 74 61 6e 65 2e 70 64 62 } //1 C:\Users\Administrator\Desktop\New folder\bin\Debug\SLN\hastane\obj\Debug\hastane.pdb
		$a_01_1 = {43 3a 5c 55 73 65 72 73 5c 41 64 6d 69 6e 69 73 74 72 61 74 6f 72 5c 44 65 73 6b 74 6f 70 5c 4e 65 77 20 66 6f 6c 64 65 72 5c 62 69 6e 5c 44 65 62 75 67 5c 53 4c 4e 5c 42 69 6c 6c 69 6e 67 53 79 73 74 65 6d 6d 5c 6f 62 6a 5c 44 65 62 75 67 5c 42 69 6c 6c 69 6e 67 53 79 73 74 65 6d 6d 2e 70 64 62 } //1 C:\Users\Administrator\Desktop\New folder\bin\Debug\SLN\BillingSystemm\obj\Debug\BillingSystemm.pdb
		$a_01_2 = {42 69 6c 6c 69 6e 67 53 79 73 74 65 6d 6d 2e 65 78 65 } //1 BillingSystemm.exe
		$a_01_3 = {68 61 73 74 61 6e 65 2e 65 78 65 } //1 hastane.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=2
 
}