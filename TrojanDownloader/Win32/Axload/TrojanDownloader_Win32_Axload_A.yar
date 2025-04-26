
rule TrojanDownloader_Win32_Axload_A{
	meta:
		description = "TrojanDownloader:Win32/Axload.A,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {77 69 6e 69 66 69 78 65 72 2e 63 6f 6d } //5 winifixer.com
		$a_01_1 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 00 00 00 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 00 00 00 2f 6c 6f 67 33 2e 70 68 70 3f 74 6d 3d 25 64 } //2
		$a_01_2 = {25 46 72 69 65 6e 64 6c 79 4e 61 6d 65 25 00 00 41 78 4c 6f 61 64 65 72 2e 4c 6f 61 64 65 72 2e 31 } //2
		$a_01_3 = {7b 37 44 35 44 44 38 32 39 2d 36 43 39 30 2d 34 32 43 35 2d 42 35 34 43 2d 32 41 46 41 38 32 46 39 38 38 42 41 7d } //2 {7D5DD829-6C90-42C5-B54C-2AFA82F988BA}
		$a_01_4 = {48 41 52 44 57 41 52 45 5c 44 45 53 43 52 49 50 54 49 4f 4e 5c 53 79 73 74 65 6d 5c 43 65 6e 74 72 61 6c 50 72 6f 63 65 73 73 6f 72 5c 30 } //1 HARDWARE\DESCRIPTION\System\CentralProcessor\0
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1) >=10
 
}