
rule Ransom_Win32_Ruqwili_A{
	meta:
		description = "Ransom:Win32/Ruqwili.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {3c 61 20 68 72 65 66 3d 22 6d 61 69 6c 74 6f 3a 66 69 6c 65 73 6f 73 40 79 65 61 68 2e 6e 65 74 22 3e 66 69 6c 65 73 6f 73 40 79 65 61 68 2e 6e 65 74 3c 2f 61 3e } //1 <a href="mailto:filesos@yeah.net">filesos@yeah.net</a>
		$a_03_1 = {7b 22 65 6d 61 69 6c 22 3a 22 [0-10] 40 [0-10] 2e [0-04] 22 2c 22 6b 65 79 22 3a 22 [0-10] 22 2c 22 65 78 74 22 3a 22 [0-10] 22 2c 22 68 61 73 68 54 79 70 65 22 3a ?? 2c 22 63 69 70 68 65 72 54 79 70 65 22 3a ?? 2c 22 63 6d 54 79 70 65 22 3a ?? 2c 22 73 61 6c 74 53 69 7a 65 22 3a [0-05] 2c 22 43 74 22 3a ?? 2c 22 48 74 22 3a ?? 2c 22 4b 65 79 53 74 72 22 3a 22 [0-10] 22 7d 00 } //1
		$a_01_2 = {2a 2e 64 6f 63 2c 2a 2e 64 6f 63 78 2c 2a 2e 64 6f 63 6d 2c 2a 2e 6f 64 74 2c 2a 2e 78 6c 73 2c 2a 2e 78 6c 73 78 2c 2a 2e 78 6c 73 6d 2c 2a 2e 63 73 76 2c 2a 2e 78 6c 73 62 2c 2a 2e 6f 64 73 2c 2a 2e 73 78 63 2c 2a 2e 70 70 74 2c 2a 2e 70 70 74 78 2c 2a 2e 70 70 74 6d 2c 2a 2e 6f 64 70 2c 2a 2e 64 62 66 2c 2a 2e 6d 64 62 2c 2a 2e 41 43 43 44 41 2c 2a 2e 41 43 43 44 42 2c } //1 *.doc,*.docx,*.docm,*.odt,*.xls,*.xlsx,*.xlsm,*.csv,*.xlsb,*.ods,*.sxc,*.ppt,*.pptx,*.pptm,*.odp,*.dbf,*.mdb,*.ACCDA,*.ACCDB,
		$a_01_3 = {2e 45 78 65 63 51 75 65 72 79 28 22 53 65 6c 65 63 74 20 2a 20 46 72 6f 6d 20 57 69 6e 33 32 5f 53 68 61 64 6f 77 43 6f 70 79 22 29 } //1 .ExecQuery("Select * From Win32_ShadowCopy")
		$a_01_4 = {c2 f1 e5 20 e2 e0 f8 e8 20 f4 e0 e9 eb fb 20 e7 e0 f8 e8 f4 f0 ee e2 e0 ed fb } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}