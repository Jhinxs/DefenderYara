
rule Ransom_Win32_Merin_MB_MTB{
	meta:
		description = "Ransom:Win32/Merin.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0f b6 c8 0f b6 45 ff 8a 80 ?? ?? ?? ?? 88 45 fd 0f b6 45 fe 8a 80 90 1b 00 88 45 ff 0f b6 45 fc 8a 80 90 1b 00 88 45 fe 8b c3 c1 e8 ?? 8a a0 ?? ?? ?? ?? 32 a1 90 1b 00 8a 4d ff 8a 6d fe 8a 42 f3 43 32 c4 88 42 03 8a 42 f4 32 45 fd 88 42 04 8a 42 f5 32 c1 88 42 05 8a 42 f6 32 c5 88 42 06 83 c2 ?? 83 fb ?? 0f 82 } //1
		$a_81_1 = {4d 45 52 49 4e 2d 44 45 43 52 59 50 54 49 4e 47 2e 74 78 74 } //1 MERIN-DECRYPTING.txt
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1) >=2
 
}