
rule Trojan_Win32_TrickBotCrypt_MZ_MTB{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.MZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 54 24 14 8b [0-03] 8b [0-03] 8a [0-02] 8a [0-02] 32 ?? 8b [0-03] 88 [0-02] 40 3b ?? 89 [0-03] 0f } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}