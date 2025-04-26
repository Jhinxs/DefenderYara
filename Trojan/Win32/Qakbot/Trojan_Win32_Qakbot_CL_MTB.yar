
rule Trojan_Win32_Qakbot_CL_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.CL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 "
		
	strings :
		$a_01_0 = {4a 53 4c 5f 43 54 58 5f 73 65 74 5f 64 65 66 61 75 6c 74 5f 70 61 73 73 77 64 5f 63 62 5f 75 73 65 72 64 61 74 61 } //1 JSL_CTX_set_default_passwd_cb_userdata
		$a_01_1 = {4a 53 4c 5f 43 54 58 5f 73 65 74 5f 73 65 73 73 69 6f 6e 5f 69 64 5f 63 6f 6e 74 65 78 74 } //1 JSL_CTX_set_session_id_context
		$a_01_2 = {4a 53 4c 5f 43 4f 4d 50 5f 61 64 64 5f 63 6f 6d 70 72 65 73 73 69 6f 6e 5f 6d 65 74 68 6f 64 } //1 JSL_COMP_add_compression_method
		$a_01_3 = {4a 53 4c 5f 67 65 74 5f 65 78 5f 64 61 74 61 5f 58 35 30 39 5f 53 54 4f 52 45 5f 43 54 58 5f 69 64 78 } //1 JSL_get_ex_data_X509_STORE_CTX_idx
		$a_01_4 = {4a 49 4f 5f 6e 65 77 5f 62 75 66 66 65 72 5f 73 73 6c 5f 63 6f 6e 6e 65 63 74 } //1 JIO_new_buffer_ssl_connect
		$a_01_5 = {4a 53 4c 5f 43 54 58 5f 67 65 74 5f 71 75 69 65 74 5f 73 68 75 74 64 6f 77 6e } //1 JSL_CTX_get_quiet_shutdown
		$a_01_6 = {4a 53 4c 5f 63 68 65 63 6b 5f 70 72 69 76 61 74 65 5f 6b 65 79 } //1 JSL_check_private_key
		$a_01_7 = {4a 53 4c 5f 43 54 58 5f 75 73 65 5f 63 65 72 74 69 66 69 63 61 74 65 5f 66 69 6c 65 } //1 JSL_CTX_use_certificate_file
		$a_01_8 = {4a 53 4c 5f 43 54 58 5f 61 64 64 5f 73 65 72 76 65 72 5f 63 75 73 74 6f 6d 5f 65 78 74 } //1 JSL_CTX_add_server_custom_ext
		$a_01_9 = {4a 53 4c 5f 43 54 58 5f 73 65 74 5f 61 6c 70 6e 5f 70 72 6f 74 6f 73 } //1 JSL_CTX_set_alpn_protos
		$a_01_10 = {4a 53 4c 5f 43 54 58 5f 73 65 74 5f 6e 65 78 74 5f 70 72 6f 74 6f 73 5f 61 64 76 65 72 74 69 73 65 64 5f 63 62 } //1 JSL_CTX_set_next_protos_advertised_cb
		$a_01_11 = {4a 52 50 5f 67 65 6e 65 72 61 74 65 5f 63 6c 69 65 6e 74 5f 6d 61 73 74 65 72 5f 73 65 63 72 65 74 } //1 JRP_generate_client_master_secret
		$a_01_12 = {4a 52 52 5f 6c 6f 61 64 5f 53 53 4c 5f 73 74 72 69 6e 67 73 } //1 JRR_load_SSL_strings
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=13
 
}