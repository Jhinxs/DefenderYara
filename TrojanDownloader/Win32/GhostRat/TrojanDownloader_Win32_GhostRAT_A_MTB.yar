
rule TrojanDownloader_Win32_GhostRAT_A_MTB{
	meta:
		description = "TrojanDownloader:Win32/GhostRAT.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {83 7d e8 10 8b 45 d4 73 ?? 8d 45 d4 8b 8c b5 78 fd ff ff 51 50 ff 15 ?? ?? ?? ?? 83 c4 08 85 c0 74 ?? 46 83 fe 02 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}