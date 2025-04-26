
rule Ransom_MSIL_Genasom_I{
	meta:
		description = "Ransom:MSIL/Genasom.I,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 73 00 65 00 6f 00 5c 00 53 00 64 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 C:\seo\Sdchost.exe
		$a_01_1 = {46 00 69 00 6c 00 65 00 69 00 63 00 65 00 52 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 } //1 FileiceRansomware
		$a_01_2 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 68 00 61 00 6e 00 67 00 65 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //1 DisableChangePassword
		$a_01_3 = {55 00 6e 00 6c 00 6f 00 63 00 6b 00 20 00 59 00 6f 00 75 00 72 00 20 00 50 00 43 00 } //1 Unlock Your PC
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}