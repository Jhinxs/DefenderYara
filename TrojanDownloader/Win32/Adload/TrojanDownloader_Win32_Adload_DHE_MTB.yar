
rule TrojanDownloader_Win32_Adload_DHE_MTB{
	meta:
		description = "TrojanDownloader:Win32/Adload.DHE!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 08 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 69 2e 74 74 64 37 2e 63 6e 2f 67 65 74 73 6f 66 74 } //1 http://i.ttd7.cn/getsoft
		$a_01_1 = {68 74 74 70 3a 2f 2f 64 6f 77 6e 2e 66 69 72 6d 73 6f 61 72 2e 63 6f 6d 2f 46 61 73 74 61 69 64 65 5f 31 31 36 30 2e 65 78 65 } //1 http://down.firmsoar.com/Fastaide_1160.exe
		$a_01_2 = {4b 75 61 69 5a 69 70 5f 53 65 74 75 70 5f 33 30 38 37 36 31 36 34 35 39 5f 79 74 64 5f 30 30 32 2e 65 78 65 } //1 KuaiZip_Setup_3087616459_ytd_002.exe
		$a_01_3 = {68 74 74 70 3a 2f 2f 64 6f 77 6e 6c 6f 61 64 2e 6b 61 6f 62 65 69 74 75 2e 63 6f 6d 2f 6b 61 6f 62 65 69 74 75 2f } //1 http://download.kaobeitu.com/kaobeitu/
		$a_01_4 = {5c 4a 4a 44 6f 77 6e 4c 6f 61 64 65 72 5c 42 69 6e 5c 4a 4a 44 6f 77 6e 4c 6f 61 64 65 72 5f 61 2e 70 64 62 } //1 \JJDownLoader\Bin\JJDownLoader_a.pdb
		$a_01_5 = {7b 72 65 67 3a 48 4b 43 55 5c 53 6f 66 74 77 61 72 65 5c 4b 75 61 69 5a 69 70 5c 49 6e 73 74 61 6c 6c 2c 50 61 74 68 7d 5c 4b 7a 4e 65 77 2e 64 61 74 } //1 {reg:HKCU\Software\KuaiZip\Install,Path}\KzNew.dat
		$a_01_6 = {68 74 74 70 3a 2f 2f 64 6f 77 6e 6c 6f 61 64 2e 7a 6a 73 79 61 77 71 6a 2e 63 6e 2f 6a 6a 62 71 2f 73 65 74 75 70 5f 6a 6a 62 71 5f 6a 6a 62 71 30 33 6e 6f 64 6b 70 6b 5f 76 31 2e 30 5f 73 69 6c 65 6e 74 2e 65 78 65 } //1 http://download.zjsyawqj.cn/jjbq/setup_jjbq_jjbq03nodkpk_v1.0_silent.exe
		$a_01_7 = {7b 63 6f 6d 6d 6f 6e 61 70 70 64 61 74 61 7d 5c 3c 7b 24 72 61 6e 64 6f 6d 7d 3e 5c 7b 63 6f 6d 70 75 74 65 72 6e 61 6d 65 7d 2e 65 78 65 } //1 {commonappdata}\<{$random}>\{computername}.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=6
 
}