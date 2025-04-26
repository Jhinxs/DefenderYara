
rule TrojanDownloader_O97M_Obfuse_QR_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.QR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {65 63 68 6f 20 77 73 63 72 69 70 74 2e 73 6c 65 65 70 20 33 30 30 30 } //1 echo wscript.sleep 3000
		$a_01_1 = {77 73 63 72 69 70 74 2e 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 2e 72 75 6e } //1 wscript.createobject("wscript.shell").run
		$a_01_2 = {68 22 22 74 74 22 22 70 22 22 3a 2f 22 22 2f 6e 65 77 73 63 61 6d 62 6f 64 69 61 2e 73 65 72 76 65 62 6c 6f 67 2e 6e 65 74 2f 62 6c 6f 67 2f 25 43 6f 6d 70 75 74 65 72 4e 61 6d 65 25 2e 64 6f 63 } //1 h""tt""p"":/""/newscambodia.serveblog.net/blog/%ComputerName%.doc
		$a_01_3 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 47 45 54 5c 67 2e 76 62 73 } //1 C:\ProgramData\GET\g.vbs
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_Obfuse_QR_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.QR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {51 20 3d 20 51 20 2b 20 30 2e 34 30 39 38 39 34 31 34 39 37 36 20 2a 20 4c 6f 67 28 31 2e 34 38 33 30 32 30 33 34 31 39 34 20 2b 20 32 36 30 38 37 2e 39 30 33 31 34 31 35 37 34 32 20 2a 20 54 29 } //1 Q = Q + 0.40989414976 * Log(1.48302034194 + 26087.9031415742 * T)
		$a_01_1 = {53 65 74 74 69 6e 67 41 74 74 72 2e 57 72 69 74 65 4c 69 6e 65 20 28 22 73 74 61 72 74 20 63 3a 5c 52 65 73 6f 75 72 63 65 73 5c 52 45 44 63 6c 69 66 2e 65 78 65 22 29 } //1 SettingAttr.WriteLine ("start c:\Resources\REDclif.exe")
		$a_03_2 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 22 63 3a 5c 52 65 73 6f 75 72 63 65 73 5c [0-16] 2e 63 6d 64 22 2c 20 54 72 75 65 29 } //1
		$a_01_3 = {26 20 22 7c 22 20 26 20 42 20 26 20 22 7c 22 20 26 } //1 & "|" & B & "|" &
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}