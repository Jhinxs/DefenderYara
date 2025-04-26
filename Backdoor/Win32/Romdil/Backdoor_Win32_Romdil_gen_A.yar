
rule Backdoor_Win32_Romdil_gen_A{
	meta:
		description = "Backdoor:Win32/Romdil.gen!A,SIGNATURE_TYPE_PEHSTR,10 00 0a 00 0e 00 00 "
		
	strings :
		$a_01_0 = {46 75 6e 67 73 69 32 } //1 Fungsi2
		$a_01_1 = {50 65 72 67 65 72 61 6b 61 6e } //1 Pergerakan
		$a_01_2 = {70 72 5f 4b 65 72 6a 61 5f 54 72 6f 6a 61 6e } //2 pr_Kerja_Trojan
		$a_01_3 = {42 75 6e 75 68 5f 42 72 6f 6e 74 6f 6b 5f 4e 5f 4b 72 6d 5f 45 6d 61 69 6c } //2 Bunuh_Brontok_N_Krm_Email
		$a_01_4 = {48 61 6e 63 75 72 6b 61 6e 5f 46 69 6c 65 } //2 Hancurkan_File
		$a_01_5 = {70 72 5f 4b 6f 70 69 6b 61 6e 5f 56 69 72 75 73 5f 4b 65 53 65 6d 75 61 5f 46 6f 6c 64 65 72 5f 41 6b 74 69 66 } //2 pr_Kopikan_Virus_KeSemua_Folder_Aktif
		$a_01_6 = {70 72 5f 48 61 70 75 73 5f 42 72 6f 6e 74 6f 6b } //2 pr_Hapus_Brontok
		$a_01_7 = {70 72 5f 53 65 74 74 69 6e 67 5f 57 61 6c 70 61 70 65 72 5f 64 61 6e 5f 72 65 67 65 64 69 74 } //2 pr_Setting_Walpaper_dan_regedit
		$a_01_8 = {43 65 74 61 6b 5f 4b 69 72 69 6d 5f 6d 49 52 43 } //2 Cetak_Kirim_mIRC
		$a_01_9 = {52 6f 6d 44 65 76 } //2 RomDev
		$a_01_10 = {55 62 61 68 42 72 6f 6e 74 6f 6b } //2 UbahBrontok
		$a_01_11 = {5c 00 52 00 6f 00 6d 00 61 00 74 00 69 00 63 00 2d 00 44 00 65 00 76 00 69 00 6c 00 2e 00 52 00 2e 00 68 00 74 00 6d 00 } //2 \Romatic-Devil.R.htm
		$a_01_12 = {23 00 43 00 6c 00 6f 00 73 00 65 00 20 00 43 00 44 00 20 00 42 00 65 00 72 00 68 00 61 00 73 00 69 00 6c 00 2e 00 2e 00 2e 00 } //2 #Close CD Berhasil...
		$a_01_13 = {2f 00 53 00 48 00 45 00 4c 00 4c 00 3e 00 20 00 52 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 62 00 65 00 72 00 68 00 61 00 73 00 69 00 6c 00 2e 00 2e 00 2e 00 } //2 /SHELL> Running Program berhasil...
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2+(#a_01_9  & 1)*2+(#a_01_10  & 1)*2+(#a_01_11  & 1)*2+(#a_01_12  & 1)*2+(#a_01_13  & 1)*2) >=10
 
}