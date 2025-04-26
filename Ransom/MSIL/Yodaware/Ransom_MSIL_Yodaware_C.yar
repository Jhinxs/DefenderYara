
rule Ransom_MSIL_Yodaware_C{
	meta:
		description = "Ransom:MSIL/Yodaware.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {59 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 61 00 72 00 65 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 21 00 21 00 21 00 } //1 Your files are encrypted!!!
		$a_00_1 = {2e 00 6c 00 6f 00 63 00 6b 00 } //1 .lock
		$a_00_2 = {5f 00 5f 00 52 00 45 00 41 00 44 00 5f 00 5f 00 4d 00 45 00 5f 00 5f 00 2e 00 74 00 78 00 74 00 } //1 __READ__ME__.txt
		$a_02_3 = {53 00 65 00 6e 00 64 00 20 00 24 00 [0-10] 20 00 77 00 6f 00 72 00 74 00 68 00 20 00 6f 00 66 00 20 00 4d 00 6f 00 6e 00 65 00 72 00 6f 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}
rule Ransom_MSIL_Yodaware_C_2{
	meta:
		description = "Ransom:MSIL/Yodaware.C,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {50 00 78 00 52 00 78 00 4f 00 78 00 43 00 78 00 4d 00 78 00 4f 00 78 00 4e 00 78 00 } //1 PxRxOxCxMxOxNx
		$a_01_1 = {46 00 75 00 73 00 69 00 6f 00 6e 00 20 00 4c 00 6f 00 67 00 3a 00 } //1 Fusion Log:
		$a_01_2 = {68 65 6c 6c 6f 77 6f 72 6c 64 2e 70 72 2e 74 78 74 } //1 helloworld.pr.txt
		$a_01_3 = {5c 24 53 79 73 52 65 73 65 74 5c 4c 6f 67 73 } //1 \$SysReset\Logs
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}