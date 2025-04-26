
rule SoftwareBundler_Win32_Ogimant{
	meta:
		description = "SoftwareBundler:Win32/Ogimant,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {2f 2f 66 6f 72 63 65 73 2e 73 75 6e 73 68 69 6e 65 62 6c 6f 67 2e 72 75 2f 67 65 74 5f 6a 73 6f 6e 3f 73 74 62 3d 34 26 64 69 64 3d 90 04 09 0a 30 31 32 33 34 35 36 37 38 39 26 65 78 74 5f 70 61 72 74 6e 65 72 5f 69 64 3d 26 66 69 6c 65 5f 69 64 3d 90 04 09 0a 30 31 32 33 34 35 36 37 38 39 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule SoftwareBundler_Win32_Ogimant_2{
	meta:
		description = "SoftwareBundler:Win32/Ogimant,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0b 00 00 "
		
	strings :
		$a_01_0 = {25 73 2e 25 64 2e 65 78 65 } //1 %s.%d.exe
		$a_01_1 = {70 61 72 74 6e 65 72 5f 6e 65 77 5f 75 72 6c } //1 partner_new_url
		$a_01_2 = {42 49 4e 00 72 75 6e 70 72 6f 67 2e 65 78 65 } //1
		$a_01_3 = {64 6f 77 6e 6c 6f 61 64 65 72 5f 74 6d 70 5f } //1 downloader_tmp_
		$a_01_4 = {89 45 e0 8b 45 e0 0f b6 00 3c 3f } //1
		$a_03_5 = {2f 76 65 72 79 73 69 6c 65 6e 74 [0-05] 75 72 6c 3d } //1
		$a_01_6 = {66 6f 72 63 65 5f 72 75 6e } //1 force_run
		$a_01_7 = {26 69 6e 66 6f 3d 00 } //1
		$a_01_8 = {26 73 74 61 67 65 3d 00 } //1 猦慴敧=
		$a_01_9 = {26 63 6f 64 65 3d 00 } //1
		$a_01_10 = {26 68 65 61 64 65 72 73 3d 00 } //1 栦慥敤獲=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=10
 
}
rule SoftwareBundler_Win32_Ogimant_3{
	meta:
		description = "SoftwareBundler:Win32/Ogimant,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {8d 5a d0 80 fb 09 77 1b 8d 04 80 0f be d2 8d 44 42 d0 0f b6 11 83 c1 01 84 d2 75 e4 eb 05 } //1
		$a_03_1 = {29 c2 8b 0d ?? ?? ?? ?? 8b 1d ?? ?? ?? ?? 32 0c 03 88 4c 16 ff 83 e8 01 83 f8 ff 75 dd } //1
		$a_03_2 = {29 c1 8b 1d ?? ?? ?? ?? 32 1c 02 88 5c 0e ff 83 e8 01 83 f8 ff 75 e3 } //1
		$a_01_3 = {0f b6 55 e7 31 ca 88 10 } //1
		$a_01_4 = {0f b6 45 e7 31 d0 88 03 } //1
		$a_03_5 = {8b 50 28 8b 45 ?? 85 d2 74 ?? 03 55 ?? 74 ?? c7 44 24 08 00 00 00 00 c7 44 24 04 01 00 00 00 8b 4d ?? 89 0c 24 ff d2 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=3
 
}
rule SoftwareBundler_Win32_Ogimant_4{
	meta:
		description = "SoftwareBundler:Win32/Ogimant,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0a 00 00 "
		
	strings :
		$a_01_0 = {6d 61 69 6c 72 75 68 6f 6d 65 73 65 61 72 63 68 2e 65 78 65 } //1 mailruhomesearch.exe
		$a_03_1 = {44 6f 77 6e 6c 6f 61 64 65 72 [0-10] 4d 4c 52 } //1
		$a_01_2 = {25 73 2e 25 64 2e 65 78 65 } //1 %s.%d.exe
		$a_01_3 = {70 72 6f 66 69 74 72 61 66 } //1 profitraf
		$a_01_4 = {2d 2d 70 61 72 74 6e 65 72 5f 6e 65 77 5f 75 72 6c } //1 --partner_new_url
		$a_01_5 = {42 49 4e 00 72 75 6e 70 72 6f 67 2e 65 78 65 } //1
		$a_01_6 = {64 6f 77 6e 6c 6f 61 64 65 72 5f 74 6d 70 5f } //1 downloader_tmp_
		$a_01_7 = {89 45 e0 8b 45 e0 0f b6 00 3c 3f } //1
		$a_01_8 = {6d 61 69 6c 72 75 73 70 75 74 6e 69 6b 2e 65 78 65 } //1 mailrusputnik.exe
		$a_01_9 = {2f 73 69 6c 65 6e 74 20 2f 72 66 72 3d } //1 /silent /rfr=
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=7
 
}
rule SoftwareBundler_Win32_Ogimant_5{
	meta:
		description = "SoftwareBundler:Win32/Ogimant,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 70 72 6f 64 75 63 74 2e 6d 6f 62 6f 67 65 6e 69 65 2e 63 6f 6d 2f 70 63 2f 63 6c 69 65 6e 74 44 6f 77 6e 6c 6f 61 64 2e 68 74 6d } //1 http://product.mobogenie.com/pc/clientDownload.htm
		$a_00_1 = {68 74 74 70 3a 2f 2f 73 70 75 74 6e 69 6b 6d 61 69 6c 72 75 2e 63 64 6e 6d 61 69 6c 2e 72 75 2f 6d 61 69 6c 72 75 68 6f 6d 65 73 65 61 72 63 68 2e 65 78 65 } //1 http://sputnikmailru.cdnmail.ru/mailruhomesearch.exe
		$a_00_2 = {68 74 74 70 3a 2f 2f 61 6d 69 67 6f 62 69 6e 2e 63 64 6e 6d 61 69 6c 2e 72 75 2f 41 6d 69 67 6f 44 69 73 74 72 69 62 2e 65 78 65 } //1 http://amigobin.cdnmail.ru/AmigoDistrib.exe
		$a_01_3 = {68 20 bf 02 00 e8 e2 9b 17 00 66 c7 43 10 18 00 8d 45 fc e8 90 ff ff ff 50 ff 43 1c ba 31 d2 57 00 8d 45 f0 e8 7b 93 17 00 ff 43 1c 8b 00 5a e8 bc 8e 17 00 ff 4b 1c 8d 45 f0 ba 02 00 00 00 e8 7c 94 17 00 66 c7 43 10 0c 00 66 c7 43 10 24 00 8d 45 f8 e8 50 ff ff ff 50 ff 43 1c ba 36 d2 57 00 8d 45 ec e8 3b 93 17 00 } //1
		$a_00_4 = {28 28 68 74 74 70 7c 68 74 74 70 73 29 3a 2f 2f 7c 77 77 77 5c 2e 29 79 6f 75 74 75 62 65 2e 63 6f 6d 2f 77 61 74 63 68 5c 3f 2e 2a 5c 26 3f 76 3d 5b 61 2d 7a 2c 41 2d 5a 2c 30 2d 39 2c 5f 2c 2d } //1 ((http|https)://|www\.)youtube.com/watch\?.*\&?v=[a-z,A-Z,0-9,_,-
		$a_00_5 = {70 69 6e 67 3d 69 6e 73 74 70 61 69 64 26 62 75 6e 64 6c 65 3d 25 61 64 64 6f 6e 6b 65 79 25 26 73 3d 25 73 75 63 63 65 73 73 25 26 77 6d 69 64 3d 25 77 6d 69 64 25 26 70 72 6f 67 69 64 3d 6d 69 } //1 ping=instpaid&bundle=%addonkey%&s=%success%&wmid=%wmid%&progid=mi
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}