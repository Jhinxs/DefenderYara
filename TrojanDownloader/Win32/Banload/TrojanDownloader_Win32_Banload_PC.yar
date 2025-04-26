
rule TrojanDownloader_Win32_Banload_PC{
	meta:
		description = "TrojanDownloader:Win32/Banload.PC,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {72 65 67 73 76 72 33 32 00 90 0a 1f 00 2f 73 20 00 } //1
		$a_00_1 = {6d 6f 64 75 6c 6f 00 00 ff ff ff ff } //1
		$a_00_2 = {67 65 72 61 6c 00 00 00 ff ff ff } //1
		$a_00_3 = {61 75 74 6f 6d 61 69 6c 00 } //1
		$a_01_4 = {41 53 44 46 45 52 4d 56 4e 5a 53 46 45 57 42 4e 55 46 4e 33 34 37 38 52 32 5a 42 52 52 5a 53 4b 4a 44 46 4e 49 51 52 45 59 38 39 57 51 45 37 46 4e 32 35 47 49 4e 35 52 45 36 37 51 42 51 45 34 39 38 33 32 4e 34 37 52 38 39 45 31 52 46 4e 37 4d 46 47 35 34 33 35 34 33 36 45 39 38 52 37 54 39 38 54 36 42 38 51 39 52 4e 46 38 44 37 54 51 45 38 52 54 37 39 51 52 45 4d } //1 ASDFERMVNZSFEWBNUFN3478R2ZBRRZSKJDFNIQREY89WQE7FN25GIN5RE67QBQE49832N47R89E1RFN7MFG5435436E98R7T98T6B8Q9RNF8D7TQE8RT79QREM
		$a_03_5 = {5c 6d 6f 64 33 32 5f 00 [0-0a] 2e 64 6c 6c } //2
		$a_03_6 = {5c 64 6c 6c 33 32 5f 00 [0-0a] 2e 64 6c 6c } //2
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*2+(#a_03_6  & 1)*2) >=7
 
}