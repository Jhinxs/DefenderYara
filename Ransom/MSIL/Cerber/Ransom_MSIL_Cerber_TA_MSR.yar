
rule Ransom_MSIL_Cerber_TA_MSR{
	meta:
		description = "Ransom:MSIL/Cerber.TA!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 55 73 65 72 73 5c 75 73 65 72 5c 44 65 73 6b 74 6f 70 5c 57 69 6e 64 6f 77 73 41 70 70 6c 69 63 61 74 69 6f 6e 31 5c 57 69 6e 64 6f 77 73 41 70 70 6c 69 63 61 74 69 6f 6e 31 5c 6f 62 6a 5c 78 38 36 5c 52 65 6c 65 61 73 65 5c 57 69 6e 64 6f 77 73 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 70 64 62 } //4 C:\Users\user\Desktop\WindowsApplication1\WindowsApplication1\obj\x86\Release\Windows Application.pdb
		$a_01_1 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 73 00 6f 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 \Microsoft\Windows\Start Menu\Programs\Startup\sochost.exe
		$a_01_2 = {5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 73 00 6f 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 \Start Menu\Programs\Startup\sochost.exe
		$a_01_3 = {5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 5c 00 46 00 69 00 6c 00 65 00 73 00 2e 00 65 00 78 00 65 00 } //1 \Documents\Files.exe
		$a_01_4 = {5c 00 4c 00 69 00 76 00 65 00 20 00 53 00 63 00 72 00 65 00 65 00 6e 00 20 00 53 00 61 00 76 00 65 00 72 00 2e 00 73 00 63 00 72 00 } //1 \Live Screen Saver.scr
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}