
rule Ransom_Win32_DarkSide_G_MSR{
	meta:
		description = "Ransom:Win32/DarkSide.G!MSR,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 20 5b 20 57 65 6c 63 6f 6d 65 20 74 6f 20 44 61 72 6b 20 5d 20 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 3e } //1 ----------- [ Welcome to Dark ] ------------->
		$a_01_1 = {46 69 72 73 74 20 6f 66 20 61 6c 6c 20 77 65 20 68 61 76 65 20 75 70 6c 6f 61 64 65 64 20 6d 6f 72 65 20 74 68 65 6e 20 31 30 30 20 47 42 20 64 61 74 61 2e } //1 First of all we have uploaded more then 100 GB data.
		$a_01_2 = {41 66 74 65 72 20 70 75 62 6c 69 63 61 74 69 6f 6e 2c 20 79 6f 75 72 20 64 61 74 61 20 77 69 6c 6c 20 62 65 20 61 76 61 69 6c 61 62 6c 65 20 66 6f 72 20 61 74 20 6c 65 61 73 74 20 36 20 6d 6f 6e 74 68 73 20 6f 6e 20 6f 75 72 20 74 6f 72 20 63 64 6e 20 73 65 72 76 65 72 73 2e } //1 After publication, your data will be available for at least 6 months on our tor cdn servers.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}