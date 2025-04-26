
rule Trojan_Win64_T1003_005_CachedDomainCredentials_A{
	meta:
		description = "Trojan:Win64/T1003_005_CachedDomainCredentials.A,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_01_0 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 63 00 61 00 63 00 68 00 65 00 } //10 lsadump::cache
	condition:
		((#a_01_0  & 1)*10) >=10
 
}