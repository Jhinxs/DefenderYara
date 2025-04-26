
rule Ransom_Win32_Mohelocker_A_rsm{
	meta:
		description = "Ransom:Win32/Mohelocker.A!rsm,SIGNATURE_TYPE_PEHSTR_EXT,ffffff90 01 ffffff90 01 04 00 00 "
		
	strings :
		$a_01_0 = {4d 61 6e 79 20 6f 66 20 79 6f 75 72 20 64 6f 63 75 6d 65 6e 74 73 2c 20 70 68 6f 74 6f 73 2c 20 76 69 64 65 6f 2c 20 64 61 74 61 62 61 73 65 73 20 61 6e 64 20 6f 74 68 65 72 20 66 69 6c 65 73 20 61 72 65 20 6e 6f 20 6c 6f 6e 67 65 72 20 61 63 63 65 73 73 69 62 6c 65 20 62 65 63 61 75 73 65 20 74 68 65 79 20 68 61 76 65 20 65 6e 63 72 79 70 74 65 64 } //100 Many of your documents, photos, video, databases and other files are no longer accessible because they have encrypted
		$a_01_1 = {4f 00 6f 00 6f 00 70 00 73 00 2c 00 20 00 59 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 21 00 } //100 Ooops, Your files have been encrypted !
		$a_01_2 = {43 3a 5c 55 73 65 72 73 5c 6d 6f 68 61 6d 65 64 5c 44 65 73 6b 74 6f 70 5c 57 69 6e 64 6f 77 73 41 70 70 6c 69 63 61 74 69 6f 6e 31 5c 57 69 6e 64 6f 77 73 41 70 70 6c 69 63 61 74 69 6f 6e 31 5c 6f 62 6a 5c 78 38 36 5c 44 65 62 75 67 5c 57 69 6e 64 6f 77 73 41 70 70 6c 69 63 61 74 69 6f 6e 31 2e 70 64 62 } //100 C:\Users\mohamed\Desktop\WindowsApplication1\WindowsApplication1\obj\x86\Debug\WindowsApplication1.pdb
		$a_01_3 = {5f 5f 45 4e 43 41 64 64 54 6f 4c 69 73 74 } //100 __ENCAddToList
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*100+(#a_01_3  & 1)*100) >=400
 
}