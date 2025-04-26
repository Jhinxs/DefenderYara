
rule Ransom_Win32_Mapo_MSR{
	meta:
		description = "Ransom:Win32/Mapo!MSR,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4b 69 6c 6c 50 72 6f 63 65 73 73 3d 73 71 6c 7c 73 74 6f 72 65 7c 77 33 77 70 7c 69 6e 65 74 69 6e 66 6f } //1 KillProcess=sql|store|w3wp|inetinfo
		$a_01_1 = {45 6e 63 72 79 70 74 65 64 45 78 74 3d 6d 61 70 6f } //1 EncryptedExt=mapo
		$a_01_2 = {4d 41 50 4f 2d 52 65 61 64 6d 65 2e 74 78 74 } //1 MAPO-Readme.txt
		$a_01_3 = {53 54 52 49 43 54 4c 59 20 46 4f 52 42 49 44 44 45 4e 20 54 4f 20 55 53 45 20 4e 4f 4e 2d 4f 52 49 47 49 4e 20 44 45 43 52 59 50 54 49 4f 4e 20 54 4f 4f 4c 53 20 4f 52 20 4d 4f 44 49 46 59 49 4e 47 20 45 4e 43 52 59 50 54 45 44 20 46 49 4c 45 53 } //1 STRICTLY FORBIDDEN TO USE NON-ORIGIN DECRYPTION TOOLS OR MODIFYING ENCRYPTED FILES
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}