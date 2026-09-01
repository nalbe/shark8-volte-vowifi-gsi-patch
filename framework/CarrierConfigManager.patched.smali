.class public Landroid/telephony/CarrierConfigManager;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;,
        Landroid/telephony/CarrierConfigManager$Apn;,
        Landroid/telephony/CarrierConfigManager$OpportunisticNetwork;,
        Landroid/telephony/CarrierConfigManager$ImsServiceEntitlement;,
        Landroid/telephony/CarrierConfigManager$Gps;,
        Landroid/telephony/CarrierConfigManager$Ims;,
        Landroid/telephony/CarrierConfigManager$ImsVoice;,
        Landroid/telephony/CarrierConfigManager$ImsSms;,
        Landroid/telephony/CarrierConfigManager$ImsRtt;,
        Landroid/telephony/CarrierConfigManager$ImsEmergency;,
        Landroid/telephony/CarrierConfigManager$ImsVt;,
        Landroid/telephony/CarrierConfigManager$ImsWfc;,
        Landroid/telephony/CarrierConfigManager$ImsSs;,
        Landroid/telephony/CarrierConfigManager$Bsf;,
        Landroid/telephony/CarrierConfigManager$Iwlan;,
        Landroid/telephony/CarrierConfigManager$Wifi;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CARRIER_CONFIG_CHANGED:Ljava/lang/String; = "android.telephony.action.CARRIER_CONFIG_CHANGED"

.field public static final whitelist CARRIER_NR_AVAILABILITY_NSA:I = 0x1

.field public static final whitelist CARRIER_NR_AVAILABILITY_SA:I = 0x2

.field public static final whitelist CROSS_SIM_SPN_FORMAT_CARRIER_NAME_ONLY:I = 0x0

.field public static final whitelist CROSS_SIM_SPN_FORMAT_CARRIER_NAME_WITH_BRANDING:I = 0x1

.field public static final whitelist DATA_CYCLE_THRESHOLD_DISABLED:I = -0x2

.field public static final whitelist DATA_CYCLE_USE_PLATFORM_DEFAULT:I = -0x1

.field public static final whitelist ENABLE_EAP_METHOD_PREFIX_BOOL:Ljava/lang/String; = "enable_eap_method_prefix_bool"

.field public static final whitelist EXTRA_REBROADCAST_ON_UNLOCK:Ljava/lang/String; = "android.telephony.extra.REBROADCAST_ON_UNLOCK"

.field public static final whitelist EXTRA_SLOT_INDEX:Ljava/lang/String; = "android.telephony.extra.SLOT_INDEX"

.field public static final whitelist EXTRA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_INDEX"

.field public static final whitelist GBA_DIGEST:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_ME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GBA_U:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IMSI_CARRIER_PUBLIC_KEY_EPDG_STRING:Ljava/lang/String; = "imsi_carrier_public_key_epdg_string"

.field public static final blacklist IMSI_CARRIER_PUBLIC_KEY_WLAN_STRING:Ljava/lang/String; = "imsi_carrier_public_key_wlan_string"

.field public static final whitelist IMSI_KEY_AVAILABILITY_INT:Ljava/lang/String; = "imsi_key_availability_int"

.field public static final greylist-max-o IMSI_KEY_DOWNLOAD_URL_STRING:Ljava/lang/String; = "imsi_key_download_url_string"

.field public static final blacklist KEY_4G_ONLY_BOOL:Ljava/lang/String; = "4g_only_bool"

.field public static final blacklist KEY_5G_ICON_CONFIGURATION_STRING:Ljava/lang/String; = "5g_icon_configuration_string"

.field public static final blacklist KEY_5G_ICON_DISPLAY_GRACE_PERIOD_STRING:Ljava/lang/String; = "5g_icon_display_grace_period_string"

.field public static final blacklist KEY_5G_ICON_DISPLAY_SECONDARY_GRACE_PERIOD_STRING:Ljava/lang/String; = "5g_icon_display_secondary_grace_period_string"

.field public static final whitelist KEY_5G_NR_SSRSRP_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "5g_nr_ssrsrp_thresholds_int_array"

.field public static final whitelist KEY_5G_NR_SSRSRQ_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "5g_nr_ssrsrq_thresholds_int_array"

.field public static final whitelist KEY_5G_NR_SSSINR_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "5g_nr_sssinr_thresholds_int_array"

.field public static final blacklist KEY_5G_WATCHDOG_TIME_MS_LONG:Ljava/lang/String; = "5g_watchdog_time_ms_long"

.field public static final whitelist KEY_ADDITIONAL_CALL_SETTING_BOOL:Ljava/lang/String; = "additional_call_setting_bool"

.field public static final blacklist KEY_ADDITIONAL_NR_ADVANCED_BANDS_INT_ARRAY:Ljava/lang/String; = "additional_nr_advanced_bands_int_array"

.field public static final whitelist KEY_ADDITIONAL_SETTINGS_CALLER_ID_VISIBILITY_BOOL:Ljava/lang/String; = "additional_settings_caller_id_visibility_bool"

.field public static final whitelist KEY_ADDITIONAL_SETTINGS_CALL_WAITING_VISIBILITY_BOOL:Ljava/lang/String; = "additional_settings_call_waiting_visibility_bool"

.field public static final blacklist KEY_ALLOWED_INITIAL_ATTACH_APN_TYPES_STRING_ARRAY:Ljava/lang/String; = "allowed_initial_attach_apn_types_string_array"

.field public static final whitelist KEY_ALLOW_ADDING_APNS_BOOL:Ljava/lang/String; = "allow_adding_apns_bool"

.field public static final whitelist KEY_ALLOW_ADD_CALL_DURING_VIDEO_CALL_BOOL:Ljava/lang/String; = "allow_add_call_during_video_call"

.field public static final whitelist KEY_ALLOW_EMERGENCY_NUMBERS_IN_CALL_LOG_BOOL:Ljava/lang/String; = "allow_emergency_numbers_in_call_log_bool"

.field public static final whitelist KEY_ALLOW_EMERGENCY_VIDEO_CALLS_BOOL:Ljava/lang/String; = "allow_emergency_video_calls_bool"

.field public static final blacklist KEY_ALLOW_ERI_BOOL:Ljava/lang/String; = "allow_cdma_eri_bool"

.field public static final whitelist KEY_ALLOW_HOLD_CALL_DURING_EMERGENCY_BOOL:Ljava/lang/String; = "allow_hold_call_during_emergency_bool"

.field public static final greylist-max-o KEY_ALLOW_HOLD_IN_IMS_CALL_BOOL:Ljava/lang/String; = "allow_hold_in_ims_call"

.field public static final whitelist KEY_ALLOW_HOLD_VIDEO_CALL_BOOL:Ljava/lang/String; = "allow_hold_video_call_bool"

.field public static final whitelist KEY_ALLOW_LOCAL_DTMF_TONES_BOOL:Ljava/lang/String; = "allow_local_dtmf_tones_bool"

.field public static final whitelist KEY_ALLOW_MERGE_WIFI_CALLS_WHEN_VOWIFI_OFF_BOOL:Ljava/lang/String; = "allow_merge_wifi_calls_when_vowifi_off_bool"

.field public static final blacklist KEY_ALLOW_MERGING_RTT_CALLS_BOOL:Ljava/lang/String; = "allow_merging_rtt_calls_bool"

.field public static final blacklist KEY_ALLOW_METERED_NETWORK_FOR_CERT_DOWNLOAD_BOOL:Ljava/lang/String; = "allow_metered_network_for_cert_download_bool"

.field public static final whitelist KEY_ALLOW_NON_EMERGENCY_CALLS_IN_ECM_BOOL:Ljava/lang/String; = "allow_non_emergency_calls_in_ecm_bool"

.field public static final greylist-max-o KEY_ALLOW_USSD_REQUESTS_VIA_TELEPHONY_MANAGER_BOOL:Ljava/lang/String; = "allow_ussd_requests_via_telephony_manager_bool"

.field public static final whitelist KEY_ALLOW_VIDEO_CALLING_FALLBACK_BOOL:Ljava/lang/String; = "allow_video_calling_fallback_bool"

.field public static final greylist-max-o KEY_ALWAYS_PLAY_REMOTE_HOLD_TONE_BOOL:Ljava/lang/String; = "always_play_remote_hold_tone_bool"

.field public static final whitelist KEY_ALWAYS_SHOW_DATA_RAT_ICON_BOOL:Ljava/lang/String; = "always_show_data_rat_icon_bool"

.field public static final whitelist KEY_ALWAYS_SHOW_EMERGENCY_ALERT_ONOFF_BOOL:Ljava/lang/String; = "always_show_emergency_alert_onoff_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_ALWAYS_SHOW_PRIMARY_SIGNAL_BAR_IN_OPPORTUNISTIC_NETWORK_BOOLEAN:Ljava/lang/String; = "always_show_primary_signal_bar_in_opportunistic_network_boolean"

.field public static final whitelist KEY_APN_EXPAND_BOOL:Ljava/lang/String; = "apn_expand_bool"

.field public static final whitelist KEY_APN_SETTINGS_DEFAULT_APN_TYPES_STRING_ARRAY:Ljava/lang/String; = "apn_settings_default_apn_types_string_array"

.field public static final blacklist KEY_ASCII_7_BIT_SUPPORT_FOR_LONG_MESSAGE_BOOL:Ljava/lang/String; = "ascii_7_bit_support_for_long_message_bool"

.field public static final blacklist KEY_AUTO_CANCEL_CS_REJECT_NOTIFICATION:Ljava/lang/String; = "carrier_auto_cancel_cs_notification"

.field public static final blacklist KEY_AUTO_DATA_SWITCH_RAT_SIGNAL_SCORE_BUNDLE:Ljava/lang/String; = "auto_data_switch_rat_signal_score_string_bundle"

.field public static final whitelist KEY_AUTO_RETRY_ENABLED_BOOL:Ljava/lang/String; = "auto_retry_enabled_bool"

.field public static final blacklist KEY_AUTO_RETRY_FAILED_WIFI_EMERGENCY_CALL:Ljava/lang/String; = "auto_retry_failed_wifi_emergency_call"

.field public static final blacklist KEY_BANDWIDTH_NR_NSA_USE_LTE_VALUE_FOR_UPLINK_BOOL:Ljava/lang/String; = "bandwidth_nr_nsa_use_lte_value_for_uplink_bool"

.field public static final blacklist KEY_BANDWIDTH_STRING_ARRAY:Ljava/lang/String; = "bandwidth_string_array"

.field public static final greylist-max-o KEY_BOOSTED_LTE_EARFCNS_STRING_ARRAY:Ljava/lang/String; = "boosted_lte_earfcns_string_array"

.field public static final blacklist KEY_BOOSTED_NRARFCNS_STRING_ARRAY:Ljava/lang/String; = "boosted_nrarfcns_string_array"

.field public static final greylist-max-o KEY_BROADCAST_EMERGENCY_CALL_STATE_CHANGES_BOOL:Ljava/lang/String; = "broadcast_emergency_call_state_changes_bool"

.field public static final blacklist KEY_CALLER_ID_OVER_UT_WARNING_BOOL:Ljava/lang/String; = "caller_id_over_ut_warning_bool"

.field public static final whitelist KEY_CALL_BARRING_DEFAULT_SERVICE_CLASS_INT:Ljava/lang/String; = "call_barring_default_service_class_int"

.field public static final blacklist KEY_CALL_BARRING_OVER_UT_WARNING_BOOL:Ljava/lang/String; = "call_barring_over_ut_warning_bool"

.field public static final whitelist KEY_CALL_BARRING_SUPPORTS_DEACTIVATE_ALL_BOOL:Ljava/lang/String; = "call_barring_supports_deactivate_all_bool"

.field public static final whitelist KEY_CALL_BARRING_SUPPORTS_PASSWORD_CHANGE_BOOL:Ljava/lang/String; = "call_barring_supports_password_change_bool"

.field public static final whitelist KEY_CALL_BARRING_VISIBILITY_BOOL:Ljava/lang/String; = "call_barring_visibility_bool"

.field public static final whitelist KEY_CALL_COMPOSER_PICTURE_SERVER_URL_STRING:Ljava/lang/String; = "call_composer_picture_server_url_string"

.field public static final whitelist KEY_CALL_FORWARDING_BLOCKS_WHILE_ROAMING_STRING_ARRAY:Ljava/lang/String; = "call_forwarding_blocks_while_roaming_string_array"

.field public static final greylist-max-o KEY_CALL_FORWARDING_MAP_NON_NUMBER_TO_VOICEMAIL_BOOL:Ljava/lang/String; = "call_forwarding_map_non_number_to_voicemail_bool"

.field public static final blacklist KEY_CALL_FORWARDING_OVER_UT_WARNING_BOOL:Ljava/lang/String; = "call_forwarding_over_ut_warning_bool"

.field public static final blacklist KEY_CALL_FORWARDING_VISIBILITY_BOOL:Ljava/lang/String; = "call_forwarding_visibility_bool"

.field public static final blacklist KEY_CALL_FORWARDING_WHEN_BUSY_SUPPORTED_BOOL:Ljava/lang/String; = "call_forwarding_when_busy_supported_bool"

.field public static final blacklist KEY_CALL_FORWARDING_WHEN_UNANSWERED_SUPPORTED_BOOL:Ljava/lang/String; = "call_forwarding_when_unanswered_supported_bool"

.field public static final blacklist KEY_CALL_FORWARDING_WHEN_UNREACHABLE_SUPPORTED_BOOL:Ljava/lang/String; = "call_forwarding_when_unreachable_supported_bool"

.field public static final whitelist KEY_CALL_REDIRECTION_SERVICE_COMPONENT_NAME_STRING:Ljava/lang/String; = "call_redirection_service_component_name_string"

.field public static final blacklist KEY_CALL_WAITING_OVER_UT_WARNING_BOOL:Ljava/lang/String; = "call_waiting_over_ut_warning_bool"

.field public static final blacklist KEY_CALL_WAITING_SERVICE_CLASS_INT:Ljava/lang/String; = "call_waiting_service_class_int"

.field public static final whitelist KEY_CAPABILITIES_EXEMPT_FROM_SINGLE_DC_CHECK_INT_ARRAY:Ljava/lang/String; = "capabilities_exempt_from_single_dc_check_int_array"

.field public static final whitelist KEY_CARRIER_ALLOW_DEFLECT_IMS_CALL_BOOL:Ljava/lang/String; = "carrier_allow_deflect_ims_call_bool"

.field public static final blacklist KEY_CARRIER_ALLOW_TRANSFER_IMS_CALL_BOOL:Ljava/lang/String; = "carrier_allow_transfer_ims_call_bool"

.field public static final whitelist KEY_CARRIER_ALLOW_TURNOFF_IMS_BOOL:Ljava/lang/String; = "carrier_allow_turnoff_ims_bool"

.field public static final greylist-max-o KEY_CARRIER_APP_NO_WAKE_SIGNAL_CONFIG_STRING_ARRAY:Ljava/lang/String; = "carrier_app_no_wake_signal_config"

.field public static final whitelist KEY_CARRIER_APP_REQUIRED_DURING_SIM_SETUP_BOOL:Ljava/lang/String; = "carrier_app_required_during_setup_bool"

.field public static final greylist-max-o KEY_CARRIER_APP_WAKE_SIGNAL_CONFIG_STRING_ARRAY:Ljava/lang/String; = "carrier_app_wake_signal_config"

.field public static final whitelist KEY_CARRIER_CALL_SCREENING_APP_STRING:Ljava/lang/String; = "call_screening_app"

.field public static final whitelist KEY_CARRIER_CERTIFICATE_STRING_ARRAY:Ljava/lang/String; = "carrier_certificate_string_array"

.field public static final whitelist KEY_CARRIER_CONFIG_APPLIED_BOOL:Ljava/lang/String; = "carrier_config_applied_bool"

.field public static final whitelist KEY_CARRIER_CONFIG_VERSION_STRING:Ljava/lang/String; = "carrier_config_version_string"

.field public static final whitelist KEY_CARRIER_CROSS_SIM_IMS_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_cross_sim_ims_available_bool"

.field public static final greylist-max-o KEY_CARRIER_DATA_CALL_APN_RETRY_AFTER_DISCONNECT_LONG:Ljava/lang/String; = "carrier_data_call_apn_retry_after_disconnect_long"

.field public static final whitelist KEY_CARRIER_DATA_CALL_PERMANENT_FAILURE_STRINGS:Ljava/lang/String; = "carrier_data_call_permanent_failure_strings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist KEY_CARRIER_DATA_SERVICE_WLAN_CLASS_OVERRIDE_STRING:Ljava/lang/String; = "carrier_data_service_wlan_class_override_string"

.field public static final greylist-max-o KEY_CARRIER_DATA_SERVICE_WLAN_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "carrier_data_service_wlan_package_override_string"

.field public static final blacklist KEY_CARRIER_DATA_SERVICE_WWAN_CLASS_OVERRIDE_STRING:Ljava/lang/String; = "carrier_data_service_wwan_class_override_string"

.field public static final greylist-max-o KEY_CARRIER_DATA_SERVICE_WWAN_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "carrier_data_service_wwan_package_override_string"

.field public static final whitelist KEY_CARRIER_DEFAULT_ACTIONS_ON_DCFAILURE_STRING_ARRAY:Ljava/lang/String; = "carrier_default_actions_on_dcfailure_string_array"

.field public static final whitelist KEY_CARRIER_DEFAULT_ACTIONS_ON_DEFAULT_NETWORK_AVAILABLE:Ljava/lang/String; = "carrier_default_actions_on_default_network_available_string_array"

.field public static final whitelist KEY_CARRIER_DEFAULT_ACTIONS_ON_REDIRECTION_STRING_ARRAY:Ljava/lang/String; = "carrier_default_actions_on_redirection_string_array"

.field public static final whitelist KEY_CARRIER_DEFAULT_ACTIONS_ON_RESET:Ljava/lang/String; = "carrier_default_actions_on_reset_string_array"

.field public static final greylist-max-o KEY_CARRIER_DEFAULT_DATA_ROAMING_ENABLED_BOOL:Ljava/lang/String; = "carrier_default_data_roaming_enabled_bool"

.field public static final whitelist KEY_CARRIER_DEFAULT_REDIRECTION_URL_STRING_ARRAY:Ljava/lang/String; = "carrier_default_redirection_url_string_array"

.field public static final whitelist KEY_CARRIER_DEFAULT_WFC_IMS_ENABLED_BOOL:Ljava/lang/String; = "carrier_default_wfc_ims_enabled_bool"

.field public static final whitelist KEY_CARRIER_DEFAULT_WFC_IMS_MODE_INT:Ljava/lang/String; = "carrier_default_wfc_ims_mode_int"

.field public static final greylist-max-o KEY_CARRIER_DEFAULT_WFC_IMS_ROAMING_ENABLED_BOOL:Ljava/lang/String; = "carrier_default_wfc_ims_roaming_enabled_bool"

.field public static final whitelist KEY_CARRIER_DEFAULT_WFC_IMS_ROAMING_MODE_INT:Ljava/lang/String; = "carrier_default_wfc_ims_roaming_mode_int"

.field public static final greylist-max-o KEY_CARRIER_ERI_FILE_NAME_STRING:Ljava/lang/String; = "carrier_eri_file_name_string"

.field public static final whitelist KEY_CARRIER_FORCE_DISABLE_ETWS_CMAS_TEST_BOOL:Ljava/lang/String; = "carrier_force_disable_etws_cmas_test_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_IMS_GBA_REQUIRED_BOOL:Ljava/lang/String; = "carrier_ims_gba_required_bool"

.field public static final whitelist KEY_CARRIER_INSTANT_LETTERING_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_instant_lettering_available_bool"

.field public static final whitelist KEY_CARRIER_INSTANT_LETTERING_ENCODING_STRING:Ljava/lang/String; = "carrier_instant_lettering_encoding_string"

.field public static final whitelist KEY_CARRIER_INSTANT_LETTERING_ESCAPED_CHARS_STRING:Ljava/lang/String; = "carrier_instant_lettering_escaped_chars_string"

.field public static final whitelist KEY_CARRIER_INSTANT_LETTERING_INVALID_CHARS_STRING:Ljava/lang/String; = "carrier_instant_lettering_invalid_chars_string"

.field public static final whitelist KEY_CARRIER_INSTANT_LETTERING_LENGTH_LIMIT_INT:Ljava/lang/String; = "carrier_instant_lettering_length_limit_int"

.field public static final whitelist KEY_CARRIER_METERED_APN_TYPES_STRINGS:Ljava/lang/String; = "carrier_metered_apn_types_strings"

.field public static final whitelist KEY_CARRIER_METERED_ROAMING_APN_TYPES_STRINGS:Ljava/lang/String; = "carrier_metered_roaming_apn_types_strings"

.field public static final whitelist KEY_CARRIER_NAME_OVERRIDE_BOOL:Ljava/lang/String; = "carrier_name_override_bool"

.field public static final whitelist KEY_CARRIER_NAME_STRING:Ljava/lang/String; = "carrier_name_string"

.field public static final blacklist KEY_CARRIER_NETWORK_SERVICE_WLAN_CLASS_OVERRIDE_STRING:Ljava/lang/String; = "carrier_network_service_wlan_class_override_string"

.field public static final greylist-max-o KEY_CARRIER_NETWORK_SERVICE_WLAN_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "carrier_network_service_wlan_package_override_string"

.field public static final blacklist KEY_CARRIER_NETWORK_SERVICE_WWAN_CLASS_OVERRIDE_STRING:Ljava/lang/String; = "carrier_network_service_wwan_class_override_string"

.field public static final greylist-max-o KEY_CARRIER_NETWORK_SERVICE_WWAN_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "carrier_network_service_wwan_package_override_string"

.field public static final whitelist KEY_CARRIER_NR_AVAILABILITIES_INT_ARRAY:Ljava/lang/String; = "carrier_nr_availabilities_int_array"

.field public static final greylist-max-o KEY_CARRIER_PROMOTE_WFC_ON_CALL_FAIL_BOOL:Ljava/lang/String; = "carrier_promote_wfc_on_call_fail_bool"

.field public static final blacklist KEY_CARRIER_PROVISIONING_APP_STRING:Ljava/lang/String; = "carrier_provisioning_app_string"

.field public static final whitelist KEY_CARRIER_PROVISIONS_WIFI_MERGED_NETWORKS_BOOL:Ljava/lang/String; = "carrier_provisions_wifi_merged_networks_bool"

.field public static final blacklist KEY_CARRIER_QUALIFIED_NETWORKS_SERVICE_CLASS_OVERRIDE_STRING:Ljava/lang/String; = "carrier_qualified_networks_service_class_override_string"

.field public static final blacklist KEY_CARRIER_QUALIFIED_NETWORKS_SERVICE_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "carrier_qualified_networks_service_package_override_string"

.field public static final whitelist KEY_CARRIER_RCS_PROVISIONING_REQUIRED_BOOL:Ljava/lang/String; = "carrier_rcs_provisioning_required_bool"

.field public static final whitelist KEY_CARRIER_SERVICE_NAME_STRING_ARRAY:Ljava/lang/String; = "carrier_service_name_array"

.field public static final whitelist KEY_CARRIER_SERVICE_NUMBER_STRING_ARRAY:Ljava/lang/String; = "carrier_service_number_array"

.field public static final whitelist KEY_CARRIER_SETTINGS_ACTIVITY_COMPONENT_NAME_STRING:Ljava/lang/String; = "carrier_settings_activity_component_name_string"

.field public static final whitelist KEY_CARRIER_SETTINGS_ENABLE_BOOL:Ljava/lang/String; = "carrier_settings_enable_bool"

.field public static final whitelist KEY_CARRIER_SETUP_APP_STRING:Ljava/lang/String; = "carrier_setup_app_string"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_SUPPORTED_SATELLITE_SERVICES_PER_PROVIDER_BUNDLE:Ljava/lang/String; = "carrier_supported_satellite_services_per_provider_bundle"

.field public static final blacklist KEY_CARRIER_SUPPORTS_CALLER_ID_VERTICAL_SERVICE_CODES_BOOL:Ljava/lang/String; = "carrier_supports_caller_id_vertical_service_codes_bool"

.field public static final whitelist KEY_CARRIER_SUPPORTS_OPP_DATA_AUTO_PROVISIONING_BOOL:Ljava/lang/String; = "carrier_supports_opp_data_auto_provisioning_bool"

.field public static final whitelist KEY_CARRIER_SUPPORTS_SS_OVER_UT_BOOL:Ljava/lang/String; = "carrier_supports_ss_over_ut_bool"

.field public static final whitelist KEY_CARRIER_SUPPORTS_TETHERING_BOOL:Ljava/lang/String; = "carrier_supports_tethering_bool"

.field public static final whitelist KEY_CARRIER_USE_IMS_FIRST_FOR_EMERGENCY_BOOL:Ljava/lang/String; = "carrier_use_ims_first_for_emergency_bool"

.field public static final whitelist KEY_CARRIER_USSD_METHOD_INT:Ljava/lang/String; = "carrier_ussd_method_int"

.field public static final whitelist KEY_CARRIER_UT_PROVISIONING_REQUIRED_BOOL:Ljava/lang/String; = "carrier_ut_provisioning_required_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_VOLTE_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_volte_available_bool"

.field public static final whitelist KEY_CARRIER_VOLTE_OVERRIDE_WFC_PROVISIONING_BOOL:Ljava/lang/String; = "carrier_volte_override_wfc_provisioning_bool"

.field public static final whitelist KEY_CARRIER_VOLTE_PROVISIONED_BOOL:Ljava/lang/String; = "carrier_volte_provisioned_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_VOLTE_PROVISIONING_REQUIRED_BOOL:Ljava/lang/String; = "carrier_volte_provisioning_required_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_VOLTE_TTY_SUPPORTED_BOOL:Ljava/lang/String; = "carrier_volte_tty_supported_bool"

.field public static final blacklist KEY_CARRIER_VOWIFI_TTY_SUPPORTED_BOOL:Ljava/lang/String; = "carrier_vowifi_tty_supported_bool"

.field public static final whitelist KEY_CARRIER_VT_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_vt_available_bool"

.field public static final whitelist KEY_CARRIER_VVM_PACKAGE_NAME_STRING:Ljava/lang/String; = "carrier_vvm_package_name_string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CARRIER_VVM_PACKAGE_NAME_STRING_ARRAY:Ljava/lang/String; = "carrier_vvm_package_name_string_array"

.field public static final whitelist KEY_CARRIER_WFC_IMS_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_wfc_ims_available_bool"

.field public static final whitelist KEY_CARRIER_WFC_SUPPORTS_WIFI_ONLY_BOOL:Ljava/lang/String; = "carrier_wfc_supports_wifi_only_bool"

.field public static final whitelist KEY_CDMA_3WAYCALL_FLASH_DELAY_INT:Ljava/lang/String; = "cdma_3waycall_flash_delay_int"

.field public static final whitelist KEY_CDMA_DTMF_TONE_DELAY_INT:Ljava/lang/String; = "cdma_dtmf_tone_delay_int"

.field public static final blacklist KEY_CDMA_ENHANCED_ROAMING_INDICATOR_FOR_HOME_NETWORK_INT_ARRAY:Ljava/lang/String; = "cdma_enhanced_roaming_indicator_for_home_network_int_array"

.field public static final blacklist KEY_CDMA_HOME_REGISTERED_PLMN_NAME_OVERRIDE_BOOL:Ljava/lang/String; = "cdma_home_registered_plmn_name_override_bool"

.field public static final blacklist KEY_CDMA_HOME_REGISTERED_PLMN_NAME_STRING:Ljava/lang/String; = "cdma_home_registered_plmn_name_string"

.field public static final whitelist KEY_CDMA_NONROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "cdma_nonroaming_networks_string_array"

.field public static final whitelist KEY_CDMA_ROAMING_MODE_INT:Ljava/lang/String; = "cdma_roaming_mode_int"

.field public static final whitelist KEY_CDMA_ROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "cdma_roaming_networks_string_array"

.field public static final whitelist KEY_CELLULAR_SERVICE_CAPABILITIES_INT_ARRAY:Ljava/lang/String; = "cellular_service_capabilities_int_array"

.field public static final whitelist KEY_CELLULAR_USAGE_SETTING_INT:Ljava/lang/String; = "cellular_usage_setting_int"

.field public static final whitelist KEY_CHECK_PRICING_WITH_CARRIER_FOR_DATA_ROAMING_BOOL:Ljava/lang/String; = "check_pricing_with_carrier_data_roaming_bool"

.field public static final whitelist KEY_CI_ACTION_ON_SYS_UPDATE_BOOL:Ljava/lang/String; = "ci_action_on_sys_update_bool"

.field public static final whitelist KEY_CI_ACTION_ON_SYS_UPDATE_EXTRA_STRING:Ljava/lang/String; = "ci_action_on_sys_update_extra_string"

.field public static final whitelist KEY_CI_ACTION_ON_SYS_UPDATE_EXTRA_VAL_STRING:Ljava/lang/String; = "ci_action_on_sys_update_extra_val_string"

.field public static final whitelist KEY_CI_ACTION_ON_SYS_UPDATE_INTENT_STRING:Ljava/lang/String; = "ci_action_on_sys_update_intent_string"

.field public static final whitelist KEY_CONFIG_IMS_MMTEL_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "config_ims_mmtel_package_override_string"

.field public static final whitelist KEY_CONFIG_IMS_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "config_ims_package_override_string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_CONFIG_IMS_RCS_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "config_ims_rcs_package_override_string"

.field public static final whitelist KEY_CONFIG_PLANS_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "config_plans_package_override_string"

.field public static final blacklist KEY_CONFIG_SHOW_ORIG_DIAL_STRING_FOR_CDMA_BOOL:Ljava/lang/String; = "config_show_orig_dial_string_for_cdma"

.field public static final whitelist KEY_CONFIG_TELEPHONY_USE_OWN_NUMBER_FOR_VOICEMAIL_BOOL:Ljava/lang/String; = "config_telephony_use_own_number_for_voicemail_bool"

.field public static final whitelist KEY_CONFIG_WIFI_DISABLE_IN_ECBM:Ljava/lang/String; = "config_wifi_disable_in_ecbm"

.field public static final greylist-max-o KEY_CONVERT_CDMA_CALLER_ID_MMI_CODES_WHILE_ROAMING_ON_3GPP_BOOL:Ljava/lang/String; = "convert_cdma_caller_id_mmi_codes_while_roaming_on_3gpp_bool"

.field public static final whitelist KEY_CROSS_SIM_SPN_FORMAT_INT:Ljava/lang/String; = "cross_sim_spn_format_int"

.field public static final whitelist KEY_CSP_ENABLED_BOOL:Ljava/lang/String; = "csp_enabled_bool"

.field public static final blacklist KEY_DATA_CONNECTED_ROAMING_NOTIFICATION_EXCLUDED_MCCS_STRING_ARRAY:Ljava/lang/String; = "data_connected_roaming_notification_excluded_mccs_string_array"

.field public static final blacklist KEY_DATA_CONNECTED_ROAMING_NOTIFICATION_INCLUDED_MCC_MNCS_STRING_ARRAY:Ljava/lang/String; = "data_connected_roaming_notification_included_mcc_mncs_string_array"

.field public static final whitelist KEY_DATA_LIMIT_NOTIFICATION_BOOL:Ljava/lang/String; = "data_limit_notification_bool"

.field public static final whitelist KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG:Ljava/lang/String; = "data_limit_threshold_bytes_long"

.field public static final whitelist KEY_DATA_RAPID_NOTIFICATION_BOOL:Ljava/lang/String; = "data_rapid_notification_bool"

.field public static final blacklist KEY_DATA_STALL_RECOVERY_SHOULD_SKIP_BOOL_ARRAY:Ljava/lang/String; = "data_stall_recovery_should_skip_bool_array"

.field public static final blacklist KEY_DATA_STALL_RECOVERY_TIMERS_LONG_ARRAY:Ljava/lang/String; = "data_stall_recovery_timers_long_array"

.field public static final blacklist KEY_DATA_SWITCH_VALIDATION_MIN_GAP_LONG:Ljava/lang/String; = "data_switch_validation_min_gap_long"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_DATA_SWITCH_VALIDATION_MIN_INTERVAL_MILLIS_LONG:Ljava/lang/String; = "data_switch_validation_min_gap_long"

.field public static final whitelist KEY_DATA_SWITCH_VALIDATION_TIMEOUT_LONG:Ljava/lang/String; = "data_switch_validation_timeout_long"

.field public static final whitelist KEY_DATA_WARNING_NOTIFICATION_BOOL:Ljava/lang/String; = "data_warning_notification_bool"

.field public static final whitelist KEY_DATA_WARNING_THRESHOLD_BYTES_LONG:Ljava/lang/String; = "data_warning_threshold_bytes_long"

.field public static final blacklist KEY_DEFAULT_MTU_INT:Ljava/lang/String; = "default_mtu_int"

.field public static final blacklist KEY_DEFAULT_PREFERRED_APN_NAME_STRING:Ljava/lang/String; = "default_preferred_apn_name_string"

.field public static final blacklist KEY_DEFAULT_RTT_MODE_INT:Ljava/lang/String; = "default_rtt_mode_int"

.field public static final whitelist KEY_DEFAULT_SIM_CALL_MANAGER_STRING:Ljava/lang/String; = "default_sim_call_manager_string"

.field public static final whitelist KEY_DEFAULT_VM_NUMBER_ROAMING_AND_IMS_UNREGISTERED_STRING:Ljava/lang/String; = "default_vm_number_roaming_and_ims_unregistered_string"

.field public static final greylist-max-o KEY_DEFAULT_VM_NUMBER_ROAMING_STRING:Ljava/lang/String; = "default_vm_number_roaming_string"

.field public static final whitelist KEY_DEFAULT_VM_NUMBER_STRING:Ljava/lang/String; = "default_vm_number_string"

.field public static final blacklist KEY_DELAY_IMS_TEAR_DOWN_UNTIL_CALL_END_BOOL:Ljava/lang/String; = "delay_ims_tear_down_until_call_end_bool"

.field public static final whitelist KEY_DIAL_STRING_REPLACE_STRING_ARRAY:Ljava/lang/String; = "dial_string_replace_string_array"

.field public static final whitelist KEY_DISABLE_CDMA_ACTIVATION_CODE_BOOL:Ljava/lang/String; = "disable_cdma_activation_code_bool"

.field public static final whitelist KEY_DISABLE_CHARGE_INDICATION_BOOL:Ljava/lang/String; = "disable_charge_indication_bool"

.field public static final blacklist KEY_DISABLE_DUN_APN_WHILE_ROAMING_WITH_PRESET_APN_BOOL:Ljava/lang/String; = "disable_dun_apn_while_roaming_with_preset_apn_bool"

.field public static final whitelist KEY_DISABLE_SUPPLEMENTARY_SERVICES_IN_AIRPLANE_MODE_BOOL:Ljava/lang/String; = "disable_supplementary_services_in_airplane_mode_bool"

.field public static final greylist-max-r KEY_DISABLE_VOICE_BARRING_NOTIFICATION_BOOL:Ljava/lang/String; = "disable_voice_barring_notification_bool"

.field public static final whitelist KEY_DISCONNECT_CAUSE_PLAY_BUSYTONE_INT_ARRAY:Ljava/lang/String; = "disconnect_cause_play_busytone_int_array"

.field public static final whitelist KEY_DISPLAY_CALL_STRENGTH_INDICATOR_BOOL:Ljava/lang/String; = "display_call_strength_indicator_bool"

.field public static final whitelist KEY_DISPLAY_HD_AUDIO_PROPERTY_BOOL:Ljava/lang/String; = "display_hd_audio_property_bool"

.field public static final blacklist KEY_DISPLAY_NO_DATA_NOTIFICATION_ON_PERMANENT_FAILURE_BOOL:Ljava/lang/String; = "display_no_data_notification_on_permanent_failure_bool"

.field public static final greylist-max-o KEY_DISPLAY_VOICEMAIL_NUMBER_AS_DEFAULT_CALL_FORWARDING_NUMBER_BOOL:Ljava/lang/String; = "display_voicemail_number_as_default_call_forwarding_number"

.field public static final whitelist KEY_DROP_VIDEO_CALL_WHEN_ANSWERING_AUDIO_CALL_BOOL:Ljava/lang/String; = "drop_video_call_when_answering_audio_call_bool"

.field public static final whitelist KEY_DTMF_TYPE_ENABLED_BOOL:Ljava/lang/String; = "dtmf_type_enabled_bool"

.field public static final whitelist KEY_DURATION_BLOCKING_DISABLED_AFTER_EMERGENCY_INT:Ljava/lang/String; = "duration_blocking_disabled_after_emergency_int"

.field public static final whitelist KEY_EDITABLE_ENHANCED_4G_LTE_BOOL:Ljava/lang/String; = "editable_enhanced_4g_lte_bool"

.field public static final whitelist KEY_EDITABLE_VOICEMAIL_NUMBER_BOOL:Ljava/lang/String; = "editable_voicemail_number_bool"

.field public static final whitelist KEY_EDITABLE_VOICEMAIL_NUMBER_SETTING_BOOL:Ljava/lang/String; = "editable_voicemail_number_setting_bool"

.field public static final whitelist KEY_EDITABLE_WFC_MODE_BOOL:Ljava/lang/String; = "editable_wfc_mode_bool"

.field public static final whitelist KEY_EDITABLE_WFC_ROAMING_MODE_BOOL:Ljava/lang/String; = "editable_wfc_roaming_mode_bool"

.field public static final blacklist KEY_EHPLMN_OVERRIDE_STRING_ARRAY:Ljava/lang/String; = "ehplmn_override_string_array"

.field public static final whitelist KEY_EMERGENCY_NOTIFICATION_DELAY_INT:Ljava/lang/String; = "emergency_notification_delay_int"

.field public static final whitelist KEY_EMERGENCY_NUMBER_PREFIX_STRING_ARRAY:Ljava/lang/String; = "emergency_number_prefix_string_array"

.field public static final blacklist KEY_EMERGENCY_SMS_MODE_TIMER_MS_INT:Ljava/lang/String; = "emergency_sms_mode_timer_ms_int"

.field public static final blacklist KEY_ENABLE_4G_OPPORTUNISTIC_NETWORK_SCAN_BOOL:Ljava/lang/String; = "enabled_4g_opportunistic_network_scan_bool"

.field public static final greylist-max-o KEY_ENABLE_APPS_STRING_ARRAY:Ljava/lang/String; = "enable_apps_string_array"

.field public static final blacklist KEY_ENABLE_CARRIER_DISPLAY_NAME_RESOLVER_BOOL:Ljava/lang/String; = "enable_carrier_display_name_resolver_bool"

.field public static final whitelist KEY_ENABLE_CROSS_SIM_CALLING_ON_OPPORTUNISTIC_DATA_BOOL:Ljava/lang/String; = "enable_cross_sim_calling_on_opportunistic_data_bool"

.field public static final whitelist KEY_ENABLE_DIALER_KEY_VIBRATION_BOOL:Ljava/lang/String; = "enable_dialer_key_vibration_bool"

.field public static final blacklist KEY_ENABLE_NR_ADVANCED_WHILE_ROAMING_BOOL:Ljava/lang/String; = "enable_nr_advanced_for_roaming_bool"

.field public static final whitelist KEY_ENHANCED_4G_LTE_ON_BY_DEFAULT_BOOL:Ljava/lang/String; = "enhanced_4g_lte_on_by_default_bool"

.field public static final greylist-max-o KEY_ENHANCED_4G_LTE_TITLE_VARIANT_BOOL:Ljava/lang/String; = "enhanced_4g_lte_title_variant_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_ENHANCED_4G_LTE_TITLE_VARIANT_INT:Ljava/lang/String; = "enhanced_4g_lte_title_variant_int"

.field public static final whitelist KEY_ESIM_DOWNLOAD_RETRY_BACKOFF_TIMER_SEC_INT:Ljava/lang/String; = "esim_download_retry_backoff_timer_sec_int"

.field public static final whitelist KEY_ESIM_MAX_DOWNLOAD_RETRY_ATTEMPTS_INT:Ljava/lang/String; = "esim_max_download_retry_attempts_int"

.field public static final blacklist KEY_EUTRAN_RSRP_HYSTERESIS_DB_INT:Ljava/lang/String; = "eutran_rsrp_hysteresis_db_int"

.field public static final blacklist KEY_EUTRAN_RSRQ_HYSTERESIS_DB_INT:Ljava/lang/String; = "eutran_rsrq_hysteresis_db_int"

.field public static final blacklist KEY_EUTRAN_RSSNR_HYSTERESIS_DB_INT:Ljava/lang/String; = "eutran_rssnr_hysteresis_db_int"

.field public static final blacklist KEY_FDN_NUMBER_LENGTH_LIMIT_INT:Ljava/lang/String; = "fdn_number_length_limit_int"

.field public static final greylist-max-o KEY_FEATURE_ACCESS_CODES_STRING_ARRAY:Ljava/lang/String; = "feature_access_codes_string_array"

.field public static final greylist-max-o KEY_FILTERED_CNAP_NAMES_STRING_ARRAY:Ljava/lang/String; = "filtered_cnap_names_string_array"

.field public static final whitelist KEY_FORCE_HOME_NETWORK_BOOL:Ljava/lang/String; = "force_home_network_bool"

.field public static final greylist-max-o KEY_FORCE_IMEI_BOOL:Ljava/lang/String; = "force_imei_bool"

.field public static final blacklist KEY_FORMAT_INCOMING_NUMBER_TO_NATIONAL_FOR_JP_BOOL:Ljava/lang/String; = "format_incoming_number_to_national_for_jp_bool"

.field public static final whitelist KEY_GBA_MODE_INT:Ljava/lang/String; = "gba_mode_int"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_GBA_UA_SECURITY_ORGANIZATION_INT:Ljava/lang/String; = "gba_ua_security_organization_int"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_GBA_UA_SECURITY_PROTOCOL_INT:Ljava/lang/String; = "gba_ua_security_protocol_int"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_GBA_UA_TLS_CIPHER_SUITE_INT:Ljava/lang/String; = "gba_ua_tls_cipher_suite_int"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_GERAN_RSSI_HYSTERESIS_DB_INT:Ljava/lang/String; = "geran_rssi_hysteresis_db_int"

.field public static final greylist-max-o KEY_GSM_CDMA_CALLS_CAN_BE_HD_AUDIO:Ljava/lang/String; = "gsm_cdma_calls_can_be_hd_audio"

.field public static final whitelist KEY_GSM_DTMF_TONE_DELAY_INT:Ljava/lang/String; = "gsm_dtmf_tone_delay_int"

.field public static final whitelist KEY_GSM_NONROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "gsm_nonroaming_networks_string_array"

.field public static final whitelist KEY_GSM_ROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "gsm_roaming_networks_string_array"

.field public static final blacklist KEY_GSM_RSSI_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "gsm_rssi_thresholds_int_array"

.field public static final whitelist KEY_HAS_IN_CALL_NOISE_SUPPRESSION_BOOL:Ljava/lang/String; = "has_in_call_noise_suppression_bool"

.field public static final whitelist KEY_HIDE_CARRIER_NETWORK_SETTINGS_BOOL:Ljava/lang/String; = "hide_carrier_network_settings_bool"

.field public static final blacklist KEY_HIDE_DIGITS_HELPER_TEXT_ON_STK_INPUT_SCREEN_BOOL:Ljava/lang/String; = "hide_digits_helper_text_on_stk_input_screen_bool"

.field public static final greylist KEY_HIDE_ENABLE_2G:Ljava/lang/String; = "hide_enable_2g_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_HIDE_ENHANCED_4G_LTE_BOOL:Ljava/lang/String; = "hide_enhanced_4g_lte_bool"

.field public static final whitelist KEY_HIDE_IMS_APN_BOOL:Ljava/lang/String; = "hide_ims_apn_bool"

.field public static final whitelist KEY_HIDE_LTE_PLUS_DATA_ICON_BOOL:Ljava/lang/String; = "hide_lte_plus_data_icon_bool"

.field public static final whitelist KEY_HIDE_PREFERRED_NETWORK_TYPE_BOOL:Ljava/lang/String; = "hide_preferred_network_type_bool"

.field public static final whitelist KEY_HIDE_PRESET_APN_DETAILS_BOOL:Ljava/lang/String; = "hide_preset_apn_details_bool"

.field public static final whitelist KEY_HIDE_SIM_LOCK_SETTINGS_BOOL:Ljava/lang/String; = "hide_sim_lock_settings_bool"

.field public static final whitelist KEY_HIDE_TTY_HCO_VCO_WITH_RTT_BOOL:Ljava/lang/String; = "hide_tty_hco_vco_with_rtt"

.field public static final blacklist KEY_HIDE_VOICEMAIL_NUMBER_SETTING_BOOL:Ljava/lang/String; = "hide_voicemail_number_setting_bool"

.field public static final greylist-max-o KEY_IDENTIFY_HIGH_DEFINITION_CALLS_IN_CALL_LOG_BOOL:Ljava/lang/String; = "identify_high_definition_calls_in_call_log_bool"

.field public static final whitelist KEY_IGNORE_DATA_ENABLED_CHANGED_FOR_VIDEO_CALLS:Ljava/lang/String; = "ignore_data_enabled_changed_for_video_calls"

.field public static final whitelist KEY_IGNORE_RTT_MODE_SETTING_BOOL:Ljava/lang/String; = "ignore_rtt_mode_setting_bool"

.field public static final whitelist KEY_IGNORE_SIM_NETWORK_LOCKED_EVENTS_BOOL:Ljava/lang/String; = "ignore_sim_network_locked_events_bool"

.field public static final whitelist KEY_IMS_CONFERENCE_SIZE_LIMIT_INT:Ljava/lang/String; = "ims_conference_size_limit_int"

.field public static final whitelist KEY_IMS_DTMF_TONE_DELAY_INT:Ljava/lang/String; = "ims_dtmf_tone_delay_int"

.field public static final greylist-max-o KEY_IMS_REASONINFO_MAPPING_STRING_ARRAY:Ljava/lang/String; = "ims_reasoninfo_mapping_string_array"

.field public static final whitelist KEY_INCLUDE_LTE_FOR_NR_ADVANCED_THRESHOLD_BANDWIDTH_BOOL:Ljava/lang/String; = "include_lte_for_nr_advanced_threshold_bandwidth_bool"

.field public static final blacklist KEY_INFLATE_SIGNAL_STRENGTH_BOOL:Ljava/lang/String; = "inflate_signal_strength_bool"

.field public static final blacklist KEY_INTERNATIONAL_ROAMING_DIAL_STRING_REPLACE_STRING_ARRAY:Ljava/lang/String; = "international_roaming_dial_string_replace_string_array"

.field public static final whitelist KEY_IS_IMS_CONFERENCE_SIZE_ENFORCED_BOOL:Ljava/lang/String; = "is_ims_conference_size_enforced_bool"

.field public static final whitelist KEY_IS_OPPORTUNISTIC_SUBSCRIPTION_BOOL:Ljava/lang/String; = "is_opportunistic_subscription_bool"

.field public static final blacklist KEY_IWLAN_HANDOVER_POLICY_STRING_ARRAY:Ljava/lang/String; = "iwlan_handover_policy_string_array"

.field public static final blacklist KEY_LIMITED_SIM_FUNCTION_NOTIFICATION_FOR_DSDS_BOOL:Ljava/lang/String; = "limited_sim_function_notification_for_dsds_bool"

.field public static final blacklist KEY_LOCAL_DISCONNECT_EMPTY_IMS_CONFERENCE_BOOL:Ljava/lang/String; = "local_disconnect_empty_ims_conference_bool"

.field public static final greylist-max-o KEY_LTE_EARFCNS_RSRP_BOOST_INT:Ljava/lang/String; = "lte_earfcns_rsrp_boost_int"

.field public static final whitelist KEY_LTE_ENABLED_BOOL:Ljava/lang/String; = "lte_enabled_bool"

.field public static final blacklist KEY_LTE_ENDC_USING_USER_DATA_FOR_RRC_DETECTION_BOOL:Ljava/lang/String; = "lte_endc_using_user_data_for_rrc_detection_bool"

.field public static final blacklist KEY_LTE_PLUS_THRESHOLD_BANDWIDTH_KHZ_INT:Ljava/lang/String; = "lte_plus_threshold_bandwidth_khz_int"

.field public static final greylist-max-o KEY_LTE_RSRP_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "lte_rsrp_thresholds_int_array"

.field public static final whitelist KEY_LTE_RSRQ_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "lte_rsrq_thresholds_int_array"

.field public static final whitelist KEY_LTE_RSSNR_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "lte_rssnr_thresholds_int_array"

.field public static final whitelist KEY_MDN_IS_ADDITIONAL_VOICEMAIL_NUMBER_BOOL:Ljava/lang/String; = "mdn_is_additional_voicemail_number_bool"

.field public static final blacklist KEY_MIN_UDP_PORT_4500_NAT_TIMEOUT_SEC_INT:Ljava/lang/String; = "min_udp_port_4500_nat_timeout_sec_int"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist KEY_MISSED_INCOMING_CALL_SMS_ORIGINATOR_STRING_ARRAY:Ljava/lang/String; = "missed_incoming_call_sms_originator_string_array"

.field public static final blacklist KEY_MISSED_INCOMING_CALL_SMS_PATTERN_STRING_ARRAY:Ljava/lang/String; = "missed_incoming_call_sms_pattern_string_array"

.field public static final blacklist KEY_MMI_TWO_DIGIT_NUMBER_PATTERN_STRING_ARRAY:Ljava/lang/String; = "mmi_two_digit_number_pattern_string_array"

.field public static final whitelist KEY_MMS_ALIAS_ENABLED_BOOL:Ljava/lang/String; = "aliasEnabled"

.field public static final whitelist KEY_MMS_ALIAS_MAX_CHARS_INT:Ljava/lang/String; = "aliasMaxChars"

.field public static final whitelist KEY_MMS_ALIAS_MIN_CHARS_INT:Ljava/lang/String; = "aliasMinChars"

.field public static final whitelist KEY_MMS_ALLOW_ATTACH_AUDIO_BOOL:Ljava/lang/String; = "allowAttachAudio"

.field public static final whitelist KEY_MMS_APPEND_TRANSACTION_ID_BOOL:Ljava/lang/String; = "enabledTransID"

.field public static final whitelist KEY_MMS_CLOSE_CONNECTION_BOOL:Ljava/lang/String; = "mmsCloseConnection"

.field public static final whitelist KEY_MMS_EMAIL_GATEWAY_NUMBER_STRING:Ljava/lang/String; = "emailGatewayNumber"

.field public static final whitelist KEY_MMS_GROUP_MMS_ENABLED_BOOL:Ljava/lang/String; = "enableGroupMms"

.field public static final whitelist KEY_MMS_HTTP_PARAMS_STRING:Ljava/lang/String; = "httpParams"

.field public static final whitelist KEY_MMS_HTTP_SOCKET_TIMEOUT_INT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final whitelist KEY_MMS_MAX_IMAGE_HEIGHT_INT:Ljava/lang/String; = "maxImageHeight"

.field public static final whitelist KEY_MMS_MAX_IMAGE_WIDTH_INT:Ljava/lang/String; = "maxImageWidth"

.field public static final whitelist KEY_MMS_MAX_MESSAGE_SIZE_INT:Ljava/lang/String; = "maxMessageSize"

.field public static final blacklist KEY_MMS_MAX_NTN_PAYLOAD_SIZE_BYTES_INT:Ljava/lang/String; = "mms_max_ntn_payload_size_bytes_int"

.field public static final whitelist KEY_MMS_MESSAGE_TEXT_MAX_SIZE_INT:Ljava/lang/String; = "maxMessageTextSize"

.field public static final whitelist KEY_MMS_MMS_DELIVERY_REPORT_ENABLED_BOOL:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final whitelist KEY_MMS_MMS_ENABLED_BOOL:Ljava/lang/String; = "enabledMMS"

.field public static final whitelist KEY_MMS_MMS_READ_REPORT_ENABLED_BOOL:Ljava/lang/String; = "enableMMSReadReports"

.field public static final whitelist KEY_MMS_MULTIPART_SMS_ENABLED_BOOL:Ljava/lang/String; = "enableMultipartSMS"

.field public static final whitelist KEY_MMS_NAI_SUFFIX_STRING:Ljava/lang/String; = "naiSuffix"

.field public static final whitelist KEY_MMS_NETWORK_RELEASE_TIMEOUT_MILLIS_INT:Ljava/lang/String; = "mms_network_release_timeout_millis_int"

.field public static final whitelist KEY_MMS_NOTIFY_WAP_MMSC_ENABLED_BOOL:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final whitelist KEY_MMS_RECIPIENT_LIMIT_INT:Ljava/lang/String; = "recipientLimit"

.field public static final whitelist KEY_MMS_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES_BOOL:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final whitelist KEY_MMS_SHOW_CELL_BROADCAST_APP_LINKS_BOOL:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final whitelist KEY_MMS_SMS_DELIVERY_REPORT_ENABLED_BOOL:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final whitelist KEY_MMS_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD_INT:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final whitelist KEY_MMS_SMS_TO_MMS_TEXT_THRESHOLD_INT:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final whitelist KEY_MMS_SUBJECT_MAX_LENGTH_INT:Ljava/lang/String; = "maxSubjectLength"

.field public static final whitelist KEY_MMS_SUPPORT_HTTP_CHARSET_HEADER_BOOL:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final whitelist KEY_MMS_SUPPORT_MMS_CONTENT_DISPOSITION_BOOL:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final whitelist KEY_MMS_UA_PROF_TAG_NAME_STRING:Ljava/lang/String; = "uaProfTagName"

.field public static final whitelist KEY_MMS_UA_PROF_URL_STRING:Ljava/lang/String; = "uaProfUrl"

.field public static final whitelist KEY_MMS_USER_AGENT_STRING:Ljava/lang/String; = "userAgent"

.field public static final whitelist KEY_MONTHLY_DATA_CYCLE_DAY_INT:Ljava/lang/String; = "monthly_data_cycle_day_int"

.field public static final blacklist KEY_NETWORK_TEMP_NOT_METERED_SUPPORTED_BOOL:Ljava/lang/String; = "network_temp_not_metered_supported_bool"

.field public static final blacklist KEY_NGRAN_SSRSRP_HYSTERESIS_DB_INT:Ljava/lang/String; = "ngran_ssrsrp_hysteresis_db_int"

.field public static final blacklist KEY_NGRAN_SSRSRQ_HYSTERESIS_DB_INT:Ljava/lang/String; = "ngran_ssrsrq_hysteresis_db_int"

.field public static final blacklist KEY_NGRAN_SSSINR_HYSTERESIS_DB_INT:Ljava/lang/String; = "ngran_sssinr_hysteresis_db_int"

.field public static final greylist-max-o KEY_NON_ROAMING_OPERATOR_STRING_ARRAY:Ljava/lang/String; = "non_roaming_operator_string_array"

.field public static final greylist-max-o KEY_NOTIFY_HANDOVER_VIDEO_FROM_LTE_TO_WIFI_BOOL:Ljava/lang/String; = "notify_handover_video_from_lte_to_wifi_bool"

.field public static final greylist-max-o KEY_NOTIFY_HANDOVER_VIDEO_FROM_WIFI_TO_LTE_BOOL:Ljava/lang/String; = "notify_handover_video_from_wifi_to_lte_bool"

.field public static final greylist-max-o KEY_NOTIFY_INTERNATIONAL_CALL_ON_WFC_BOOL:Ljava/lang/String; = "notify_international_call_on_wfc_bool"

.field public static final greylist-max-o KEY_NOTIFY_VT_HANDOVER_TO_WIFI_FAILURE_BOOL:Ljava/lang/String; = "notify_vt_handover_to_wifi_failure_bool"

.field public static final blacklist KEY_NRARFCNS_RSRP_BOOST_INT_ARRAY:Ljava/lang/String; = "nrarfcns_rsrp_boost_int_array"

.field public static final blacklist KEY_NR_ADVANCED_BANDS_SECONDARY_TIMER_SECONDS_INT:Ljava/lang/String; = "nr_advanced_bands_secondary_timer_seconds_int"

.field public static final blacklist KEY_NR_ADVANCED_CAPABLE_PCO_ID_INT:Ljava/lang/String; = "nr_advanced_capable_pco_id_int"

.field public static final blacklist KEY_NR_ADVANCED_THRESHOLD_BANDWIDTH_KHZ_INT:Ljava/lang/String; = "nr_advanced_threshold_bandwidth_khz_int"

.field public static final blacklist KEY_NR_TIMERS_RESET_IF_NON_ENDC_AND_RRC_IDLE_BOOL:Ljava/lang/String; = "nr_timers_reset_if_non_endc_and_rrc_idle_bool"

.field public static final blacklist KEY_NR_TIMERS_RESET_ON_PLMN_CHANGE_BOOL:Ljava/lang/String; = "nr_timers_reset_on_plmn_change_bool"

.field public static final blacklist KEY_NR_TIMERS_RESET_ON_VOICE_QOS_BOOL:Ljava/lang/String; = "nr_timers_reset_on_voice_qos_bool"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_MIN_BANDWIDTH_MODE:Ljava/lang/String; = "5g_ultra_wideband_icon_min_bandwidth_mode"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_MIN_BANDWIDTH_VALUE:Ljava/lang/String; = "5g_ultra_wideband_icon_min_bandwidth_value"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_NSA_BAND_ARRAY:Ljava/lang/String; = "5g_ultra_wideband_icon_nsa_band_array"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_NSA_BAND_MODE:Ljava/lang/String; = "5g_ultra_wideband_icon_nsa_band_mode"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_REFRESH_TIMER_MAP:Ljava/lang/String; = "5g_ultra_wideband_icon_refresh_timer_map"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_SA_BAND_ARRAY:Ljava/lang/String; = "5g_ultra_wideband_icon_sa_band_array"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_SA_BAND_MODE:Ljava/lang/String; = "5g_ultra_wideband_icon_sa_band_mode"

.field public static final blacklist KEY_NR_ULTRA_WIDEBAND_ICON_SIB2_VALUE:Ljava/lang/String; = "5g_ultra_wideband_icon_sib2_value"

.field public static final whitelist KEY_NTN_LTE_RSRP_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "ntn_lte_rsrp_thresholds_int_array"

.field public static final whitelist KEY_NTN_LTE_RSRQ_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "ntn_lte_rsrq_thresholds_int_array"

.field public static final whitelist KEY_NTN_LTE_RSSNR_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "ntn_lte_rssnr_thresholds_int_array"

.field public static final whitelist KEY_ONLY_AUTO_SELECT_IN_HOME_NETWORK_BOOL:Ljava/lang/String; = "only_auto_select_in_home_network"

.field public static final whitelist KEY_ONLY_SINGLE_DC_ALLOWED_INT_ARRAY:Ljava/lang/String; = "only_single_dc_allowed_int_array"

.field public static final blacklist KEY_OPERATOR_NAME_FILTER_PATTERN_STRING:Ljava/lang/String; = "operator_name_filter_pattern_string"

.field public static final whitelist KEY_OPERATOR_SELECTION_EXPAND_BOOL:Ljava/lang/String; = "operator_selection_expand_bool"

.field public static final blacklist KEY_OPL_OVERRIDE_STRING_ARRAY:Ljava/lang/String; = "opl_override_opl_string_array"

.field public static final blacklist KEY_OPPORTUNISTIC_CARRIER_IDS_INT_ARRAY:Ljava/lang/String; = "opportunistic_carrier_ids_int_array"

.field public static final blacklist KEY_OPPORTUNISTIC_ESIM_DOWNLOAD_VIA_WIFI_ONLY_BOOL:Ljava/lang/String; = "opportunistic_esim_download_via_wifi_only_bool"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_BACKOFF_TIME_LONG:Ljava/lang/String; = "opportunistic_network_backoff_time_long"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_DATA_SWITCH_EXIT_HYSTERESIS_TIME_LONG:Ljava/lang/String; = "opportunistic_network_data_switch_exit_hysteresis_time_long"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_DATA_SWITCH_HYSTERESIS_TIME_LONG:Ljava/lang/String; = "opportunistic_network_data_switch_hysteresis_time_long"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_ENTRY_OR_EXIT_HYSTERESIS_TIME_LONG:Ljava/lang/String; = "opportunistic_network_entry_or_exit_hysteresis_time_long"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_ENTRY_THRESHOLD_BANDWIDTH_INT:Ljava/lang/String; = "opportunistic_network_entry_threshold_bandwidth_int"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_ENTRY_THRESHOLD_RSRP_INT:Ljava/lang/String; = "opportunistic_network_entry_threshold_rsrp_int"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_ENTRY_THRESHOLD_RSSNR_INT:Ljava/lang/String; = "opportunistic_network_entry_threshold_rssnr_int"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_EXIT_THRESHOLD_RSRP_INT:Ljava/lang/String; = "opportunistic_network_exit_threshold_rsrp_int"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_EXIT_THRESHOLD_RSSNR_INT:Ljava/lang/String; = "opportunistic_network_exit_threshold_rssnr_int"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_MAX_BACKOFF_TIME_LONG:Ljava/lang/String; = "opportunistic_network_max_backoff_time_long"

.field public static final whitelist KEY_OPPORTUNISTIC_NETWORK_PING_PONG_TIME_LONG:Ljava/lang/String; = "opportunistic_network_ping_pong_time_long"

.field public static final blacklist KEY_OPPORTUNISTIC_TIME_TO_SCAN_AFTER_CAPABILITY_SWITCH_TO_PRIMARY_LONG:Ljava/lang/String; = "opportunistic_time_to_scan_after_capability_switch_to_primary_long"

.field public static final blacklist KEY_OVERRIDE_WFC_ROAMING_MODE_WHILE_USING_NTN_BOOL:Ljava/lang/String; = "override_wfc_roaming_mode_while_using_ntn_bool"

.field public static final blacklist KEY_PARAMETERS_USED_FOR_LTE_SIGNAL_BAR_INT:Ljava/lang/String; = "parameters_used_for_lte_signal_bar_int"

.field public static final whitelist KEY_PARAMETERS_USED_FOR_NTN_LTE_SIGNAL_BAR_INT:Ljava/lang/String; = "parameters_used_for_ntn_lte_signal_bar_int"

.field public static final blacklist KEY_PARAMETERS_USE_FOR_5G_NR_SIGNAL_BAR_INT:Ljava/lang/String; = "parameters_use_for_5g_nr_signal_bar_int"

.field public static final whitelist KEY_PING_TEST_BEFORE_DATA_SWITCH_BOOL:Ljava/lang/String; = "ping_test_before_data_switch_bool"

.field public static final greylist-max-o KEY_PLAY_CALL_RECORDING_TONE_BOOL:Ljava/lang/String; = "play_call_recording_tone_bool"

.field public static final blacklist KEY_PNN_OVERRIDE_STRING_ARRAY:Ljava/lang/String; = "pnn_override_string_array"

.field public static final blacklist KEY_PREFERRED_IKE_PROTOCOL_INT:Ljava/lang/String; = "preferred_ike_protocol_int"

.field public static final whitelist KEY_PREFER_2G_BOOL:Ljava/lang/String; = "prefer_2g_bool"

.field public static final whitelist KEY_PREFER_3G_VISIBILITY_BOOL:Ljava/lang/String; = "prefer_3g_visibility_bool"

.field public static final blacklist KEY_PREFER_IN_SERVICE_SIM_FOR_NORMAL_ROUTED_EMERGENCY_CALLS_BOOL:Ljava/lang/String; = "prefer_in_service_sim_for_normal_routed_emergency_calls_bool"

.field public static final greylist-max-o KEY_PREF_NETWORK_NOTIFICATION_DELAY_INT:Ljava/lang/String; = "network_notification_delay_int"

.field public static final whitelist KEY_PREMIUM_CAPABILITY_MAXIMUM_DAILY_NOTIFICATION_COUNT_INT:Ljava/lang/String; = "premium_capability_maximum_daily_notification_count_int"

.field public static final whitelist KEY_PREMIUM_CAPABILITY_MAXIMUM_MONTHLY_NOTIFICATION_COUNT_INT:Ljava/lang/String; = "premium_capability_maximum_monthly_notification_count_int"

.field public static final whitelist KEY_PREMIUM_CAPABILITY_NETWORK_SETUP_TIME_MILLIS_LONG:Ljava/lang/String; = "premium_capability_network_setup_time_millis_long"

.field public static final whitelist KEY_PREMIUM_CAPABILITY_NOTIFICATION_BACKOFF_HYSTERESIS_TIME_MILLIS_LONG:Ljava/lang/String; = "premium_capability_notification_backoff_hysteresis_time_millis_long"

.field public static final whitelist KEY_PREMIUM_CAPABILITY_NOTIFICATION_DISPLAY_TIMEOUT_MILLIS_LONG:Ljava/lang/String; = "premium_capability_notification_display_timeout_millis_long"

.field public static final whitelist KEY_PREMIUM_CAPABILITY_PURCHASE_CONDITION_BACKOFF_HYSTERESIS_TIME_MILLIS_LONG:Ljava/lang/String; = "premium_capability_purchase_condition_backoff_hysteresis_time_millis_long"

.field public static final whitelist KEY_PREMIUM_CAPABILITY_PURCHASE_URL_STRING:Ljava/lang/String; = "premium_capability_purchase_url_string"

.field public static final whitelist KEY_PREMIUM_CAPABILITY_SUPPORTED_ON_LTE_BOOL:Ljava/lang/String; = "premium_capability_supported_on_lte_bool"

.field public static final whitelist KEY_PREVENT_CLIR_ACTIVATION_AND_DEACTIVATION_CODE_BOOL:Ljava/lang/String; = "prevent_clir_activation_and_deactivation_code_bool"

.field public static final whitelist KEY_RADIO_RESTART_FAILURE_CAUSES_INT_ARRAY:Ljava/lang/String; = "radio_restart_failure_causes_int_array"

.field public static final whitelist KEY_RATCHET_NR_ADVANCED_BANDWIDTH_IF_RRC_IDLE_BOOL:Ljava/lang/String; = "ratchet_nr_advanced_bandwidth_if_rrc_idle_bool"

.field public static final greylist-max-o KEY_RATCHET_RAT_FAMILIES:Ljava/lang/String; = "ratchet_rat_families"

.field public static final whitelist KEY_RCS_CONFIG_SERVER_URL_STRING:Ljava/lang/String; = "rcs_config_server_url_string"

.field public static final whitelist KEY_READ_ONLY_APN_FIELDS_STRING_ARRAY:Ljava/lang/String; = "read_only_apn_fields_string_array"

.field public static final whitelist KEY_READ_ONLY_APN_TYPES_STRING_ARRAY:Ljava/lang/String; = "read_only_apn_types_string_array"

.field public static final blacklist KEY_REMOVE_SATELLITE_PLMN_IN_MANUAL_NETWORK_SCAN_BOOL:Ljava/lang/String; = "remove_satellite_plmn_in_manual_network_scan_bool"

.field public static final whitelist KEY_REQUIRE_ENTITLEMENT_CHECKS_BOOL:Ljava/lang/String; = "require_entitlement_checks_bool"

.field public static final whitelist KEY_RESTART_RADIO_ON_PDP_FAIL_REGULAR_DEACTIVATION_BOOL:Ljava/lang/String; = "restart_radio_on_pdp_fail_regular_deactivation_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o KEY_ROAMING_OPERATOR_STRING_ARRAY:Ljava/lang/String; = "roaming_operator_string_array"

.field public static final blacklist KEY_ROAMING_UNMETERED_NETWORK_TYPES_STRING_ARRAY:Ljava/lang/String; = "roaming_unmetered_network_types_string_array"

.field public static final whitelist KEY_RTT_AUTO_UPGRADE_BOOL:Ljava/lang/String; = "rtt_auto_upgrade_bool"

.field public static final whitelist KEY_RTT_DOWNGRADE_SUPPORTED_BOOL:Ljava/lang/String; = "rtt_downgrade_supported_bool"

.field public static final whitelist KEY_RTT_SUPPORTED_BOOL:Ljava/lang/String; = "rtt_supported_bool"

.field public static final whitelist KEY_RTT_SUPPORTED_FOR_VT_BOOL:Ljava/lang/String; = "rtt_supported_for_vt_bool"

.field public static final whitelist KEY_RTT_SUPPORTED_WHILE_ROAMING_BOOL:Ljava/lang/String; = "rtt_supported_while_roaming_bool"

.field public static final whitelist KEY_RTT_UPGRADE_SUPPORTED_BOOL:Ljava/lang/String; = "rtt_upgrade_supported_bool"

.field public static final whitelist KEY_RTT_UPGRADE_SUPPORTED_FOR_DOWNGRADED_VT_CALL_BOOL:Ljava/lang/String; = "rtt_upgrade_supported_for_downgraded_vt_call"

.field public static final whitelist KEY_SATELLITE_ATTACH_SUPPORTED_BOOL:Ljava/lang/String; = "satellite_attach_supported_bool"

.field public static final whitelist KEY_SATELLITE_CONNECTION_HYSTERESIS_SEC_INT:Ljava/lang/String; = "satellite_connection_hysteresis_sec_int"

.field public static final whitelist KEY_SATELLITE_ENTITLEMENT_STATUS_REFRESH_DAYS_INT:Ljava/lang/String; = "satellite_entitlement_status_refresh_days_int"

.field public static final whitelist KEY_SATELLITE_ENTITLEMENT_SUPPORTED_BOOL:Ljava/lang/String; = "satellite_entitlement_supported_bool"

.field public static final blacklist KEY_SHOW_4GLTE_FOR_LTE_DATA_ICON_BOOL:Ljava/lang/String; = "show_4glte_for_lte_data_icon_bool"

.field public static final whitelist KEY_SHOW_4G_FOR_3G_DATA_ICON_BOOL:Ljava/lang/String; = "show_4g_for_3g_data_icon_bool"

.field public static final whitelist KEY_SHOW_4G_FOR_LTE_DATA_ICON_BOOL:Ljava/lang/String; = "show_4g_for_lte_data_icon_bool"

.field public static final blacklist KEY_SHOW_5G_SLICE_ICON_BOOL:Ljava/lang/String; = "show_5g_slice_icon_bool"

.field public static final whitelist KEY_SHOW_APN_SETTING_CDMA_BOOL:Ljava/lang/String; = "show_apn_setting_cdma_bool"

.field public static final whitelist KEY_SHOW_BLOCKING_PAY_PHONE_OPTION_BOOL:Ljava/lang/String; = "show_blocking_pay_phone_option_bool"

.field public static final whitelist KEY_SHOW_CALL_BLOCKING_DISABLED_NOTIFICATION_ALWAYS_BOOL:Ljava/lang/String; = "show_call_blocking_disabled_notification_always_bool"

.field public static final blacklist KEY_SHOW_CARRIER_DATA_ICON_PATTERN_STRING:Ljava/lang/String; = "show_carrier_data_icon_pattern_string"

.field public static final whitelist KEY_SHOW_CDMA_CHOICES_BOOL:Ljava/lang/String; = "show_cdma_choices_bool"

.field public static final blacklist KEY_SHOW_DATA_CONNECTED_ROAMING_NOTIFICATION_BOOL:Ljava/lang/String; = "show_data_connected_roaming_notification"

.field public static final whitelist KEY_SHOW_FORWARDED_NUMBER_BOOL:Ljava/lang/String; = "show_forwarded_number_bool"

.field public static final whitelist KEY_SHOW_ICCID_IN_SIM_STATUS_BOOL:Ljava/lang/String; = "show_iccid_in_sim_status_bool"

.field public static final whitelist KEY_SHOW_IMS_REGISTRATION_STATUS_BOOL:Ljava/lang/String; = "show_ims_registration_status_bool"

.field public static final whitelist KEY_SHOW_ONSCREEN_DIAL_BUTTON_BOOL:Ljava/lang/String; = "show_onscreen_dial_button_bool"

.field public static final blacklist KEY_SHOW_OPERATOR_NAME_IN_STATUSBAR_BOOL:Ljava/lang/String; = "show_operator_name_in_statusbar_bool"

.field public static final greylist-max-o KEY_SHOW_PRECISE_FAILED_CAUSE_BOOL:Ljava/lang/String; = "show_precise_failed_cause_bool"

.field public static final whitelist KEY_SHOW_ROAMING_INDICATOR_BOOL:Ljava/lang/String; = "show_roaming_indicator_bool"

.field public static final whitelist KEY_SHOW_SIGNAL_STRENGTH_IN_SIM_STATUS_BOOL:Ljava/lang/String; = "show_signal_strength_in_sim_status_bool"

.field public static final blacklist KEY_SHOW_SINGLE_OPERATOR_ROW_IN_CHOOSE_NETWORK_SETTING_BOOL:Ljava/lang/String; = "show_single_operator_row_in_choose_network_setting_bool"

.field public static final blacklist KEY_SHOW_SPN_FOR_HOME_IN_CHOOSE_NETWORK_SETTING_BOOL:Ljava/lang/String; = "show_spn_for_home_in_choose_network_setting_bool"

.field public static final whitelist KEY_SHOW_VIDEO_CALL_CHARGES_ALERT_DIALOG_BOOL:Ljava/lang/String; = "show_video_call_charges_alert_dialog_bool"

.field public static final whitelist KEY_SHOW_WFC_LOCATION_PRIVACY_POLICY_BOOL:Ljava/lang/String; = "show_wfc_location_privacy_policy_bool"

.field public static final blacklist KEY_SHOW_WIFI_CALLING_ICON_IN_STATUS_BAR_BOOL:Ljava/lang/String; = "show_wifi_calling_icon_in_status_bar_bool"

.field public static final blacklist KEY_SIGNAL_STRENGTH_NR_NSA_USE_LTE_AS_PRIMARY_BOOL:Ljava/lang/String; = "signal_strength_nr_nsa_use_lte_as_primary_bool"

.field public static final whitelist KEY_SIMPLIFIED_NETWORK_SETTINGS_BOOL:Ljava/lang/String; = "simplified_network_settings_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_SIM_COUNTRY_ISO_OVERRIDE_STRING:Ljava/lang/String; = "sim_country_iso_override_string"

.field public static final whitelist KEY_SIM_NETWORK_UNLOCK_ALLOW_DISMISS_BOOL:Ljava/lang/String; = "sim_network_unlock_allow_dismiss_bool"

.field public static final greylist-max-o KEY_SKIP_CF_FAIL_TO_DISABLE_DIALOG_BOOL:Ljava/lang/String; = "skip_cf_fail_to_disable_dialog_bool"

.field public static final blacklist KEY_SMART_FORWARDING_CONFIG_COMPONENT_NAME_STRING:Ljava/lang/String; = "smart_forwarding_config_component_name_string"

.field public static final whitelist KEY_SMDP_SERVER_ADDRESS_STRING:Ljava/lang/String; = "smdp_server_address_string"

.field public static final whitelist KEY_SMS_REQUIRES_DESTINATION_NUMBER_CONVERSION_BOOL:Ljava/lang/String; = "sms_requires_destination_number_conversion_bool"

.field public static final blacklist KEY_SPDI_OVERRIDE_STRING_ARRAY:Ljava/lang/String; = "spdi_override_string_array"

.field public static final blacklist KEY_SPN_DISPLAY_CONDITION_OVERRIDE_INT:Ljava/lang/String; = "spn_display_condition_override_int"

.field public static final greylist-max-o KEY_SPN_DISPLAY_RULE_USE_ROAMING_FROM_SERVICE_STATE_BOOL:Ljava/lang/String; = "spn_display_rule_use_roaming_from_service_state_bool"

.field public static final greylist-max-o KEY_STK_DISABLE_LAUNCH_BROWSER_BOOL:Ljava/lang/String; = "stk_disable_launch_browser_bool"

.field public static final blacklist KEY_STORE_SIM_PIN_FOR_UNATTENDED_REBOOT_BOOL:Ljava/lang/String; = "store_sim_pin_for_unattended_reboot_bool"

.field public static final whitelist KEY_SUBSCRIPTION_GROUP_UUID_STRING:Ljava/lang/String; = "subscription_group_uuid_string"

.field public static final whitelist KEY_SUPPORTED_PREMIUM_CAPABILITIES_INT_ARRAY:Ljava/lang/String; = "supported_premium_capabilities_int_array"

.field public static final whitelist KEY_SUPPORTS_BUSINESS_CALL_COMPOSER_BOOL:Ljava/lang/String; = "supports_business_call_composer_bool"

.field public static final whitelist KEY_SUPPORTS_CALL_COMPOSER_BOOL:Ljava/lang/String; = "supports_call_composer_bool"

.field public static final whitelist KEY_SUPPORTS_DEVICE_TO_DEVICE_COMMUNICATION_USING_DTMF_BOOL:Ljava/lang/String; = "supports_device_to_device_communication_using_dtmf_bool"

.field public static final whitelist KEY_SUPPORTS_DEVICE_TO_DEVICE_COMMUNICATION_USING_RTP_BOOL:Ljava/lang/String; = "supports_device_to_device_communication_using_rtp_bool"

.field public static final whitelist KEY_SUPPORTS_SDP_NEGOTIATION_OF_D2D_RTP_HEADER_EXTENSIONS_BOOL:Ljava/lang/String; = "supports_sdp_negotiation_of_d2d_rtp_header_extensions_bool"

.field public static final whitelist KEY_SUPPORT_3GPP_CALL_FORWARDING_WHILE_ROAMING_BOOL:Ljava/lang/String; = "support_3gpp_call_forwarding_while_roaming_bool"

.field public static final whitelist KEY_SUPPORT_ADD_CONFERENCE_PARTICIPANTS_BOOL:Ljava/lang/String; = "support_add_conference_participants_bool"

.field public static final whitelist KEY_SUPPORT_ADHOC_CONFERENCE_CALLS_BOOL:Ljava/lang/String; = "support_adhoc_conference_calls_bool"

.field public static final whitelist KEY_SUPPORT_CDMA_1X_VOICE_CALLS_BOOL:Ljava/lang/String; = "support_cdma_1x_voice_calls_bool"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_SUPPORT_CLIR_NETWORK_DEFAULT_BOOL:Ljava/lang/String; = "support_clir_network_default_bool"

.field public static final whitelist KEY_SUPPORT_CONFERENCE_CALL_BOOL:Ljava/lang/String; = "support_conference_call_bool"

.field public static final greylist-max-o KEY_SUPPORT_DIRECT_FDN_DIALING_BOOL:Ljava/lang/String; = "support_direct_fdn_dialing_bool"

.field public static final greylist-max-o KEY_SUPPORT_DOWNGRADE_VT_TO_AUDIO_BOOL:Ljava/lang/String; = "support_downgrade_vt_to_audio_bool"

.field public static final blacklist KEY_SUPPORT_EMERGENCY_DIALER_SHORTCUT_BOOL:Ljava/lang/String; = "support_emergency_dialer_shortcut_bool"

.field public static final whitelist KEY_SUPPORT_EMERGENCY_SMS_OVER_IMS_BOOL:Ljava/lang/String; = "support_emergency_sms_over_ims_bool"

.field public static final whitelist KEY_SUPPORT_ENHANCED_CALL_BLOCKING_BOOL:Ljava/lang/String; = "support_enhanced_call_blocking_bool"

.field public static final blacklist KEY_SUPPORT_IMS_CALL_FORWARDING_WHILE_ROAMING_BOOL:Ljava/lang/String; = "support_ims_call_forwarding_while_roaming_bool"

.field public static final greylist-max-o KEY_SUPPORT_IMS_CONFERENCE_CALL_BOOL:Ljava/lang/String; = "support_ims_conference_call_bool"

.field public static final whitelist KEY_SUPPORT_IMS_CONFERENCE_EVENT_PACKAGE_BOOL:Ljava/lang/String; = "support_ims_conference_event_package_bool"

.field public static final blacklist KEY_SUPPORT_IMS_CONFERENCE_EVENT_PACKAGE_ON_PEER_BOOL:Ljava/lang/String; = "support_ims_conference_event_package_on_peer_bool"

.field public static final greylist-max-o KEY_SUPPORT_MANAGE_IMS_CONFERENCE_CALL_BOOL:Ljava/lang/String; = "support_manage_ims_conference_call_bool"

.field public static final blacklist KEY_SUPPORT_NO_REPLY_TIMER_FOR_CFNRY_BOOL:Ljava/lang/String; = "support_no_reply_timer_for_cfnry_bool"

.field public static final whitelist KEY_SUPPORT_PAUSE_IMS_VIDEO_CALLS_BOOL:Ljava/lang/String; = "support_pause_ims_video_calls_bool"

.field public static final blacklist KEY_SUPPORT_SS_OVER_CDMA_BOOL:Ljava/lang/String; = "support_ss_over_cdma_bool"

.field public static final whitelist KEY_SUPPORT_SWAP_AFTER_MERGE_BOOL:Ljava/lang/String; = "support_swap_after_merge_bool"

.field public static final whitelist KEY_SUPPORT_TDSCDMA_BOOL:Ljava/lang/String; = "support_tdscdma_bool"

.field public static final whitelist KEY_SUPPORT_TDSCDMA_ROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "support_tdscdma_roaming_networks_string_array"

.field public static final greylist-max-o KEY_SUPPORT_VIDEO_CONFERENCE_CALL_BOOL:Ljava/lang/String; = "support_video_conference_call_bool"

.field public static final blacklist KEY_SUPPORT_WPS_OVER_IMS_BOOL:Ljava/lang/String; = "support_wps_over_ims_bool"

.field public static final whitelist KEY_SWITCH_DATA_TO_PRIMARY_IF_PRIMARY_IS_OOS_BOOL:Ljava/lang/String; = "switch_data_to_primary_if_primary_is_oos_bool"

.field public static final blacklist KEY_TELEPHONY_DATA_HANDOVER_RETRY_RULES_STRING_ARRAY:Ljava/lang/String; = "telephony_data_handover_retry_rules_string_array"

.field public static final blacklist KEY_TELEPHONY_DATA_SETUP_RETRY_RULES_STRING_ARRAY:Ljava/lang/String; = "telephony_data_setup_retry_rules_string_array"

.field public static final blacklist KEY_TELEPHONY_NETWORK_CAPABILITY_PRIORITIES_STRING_ARRAY:Ljava/lang/String; = "telephony_network_capability_priorities_string_array"

.field public static final blacklist KEY_TIME_TO_SWITCH_BACK_TO_PRIMARY_IF_OPPORTUNISTIC_OOS_LONG:Ljava/lang/String; = "time_to_switch_back_to_primary_if_opportunistic_oos_long"

.field public static final whitelist KEY_TREAT_DOWNGRADED_VIDEO_CALLS_AS_VIDEO_CALLS_BOOL:Ljava/lang/String; = "treat_downgraded_video_calls_as_video_calls_bool"

.field public static final whitelist KEY_TTY_SUPPORTED_BOOL:Ljava/lang/String; = "tty_supported_bool"

.field public static final greylist-max-o KEY_UNDELIVERED_SMS_MESSAGE_EXPIRATION_TIME:Ljava/lang/String; = "undelivered_sms_message_expiration_time"

.field public static final whitelist KEY_UNLOGGABLE_NUMBERS_STRING_ARRAY:Ljava/lang/String; = "unloggable_numbers_string_array"

.field public static final blacklist KEY_UNMETERED_NETWORK_TYPES_STRING_ARRAY:Ljava/lang/String; = "unmetered_network_types_string_array"

.field public static final blacklist KEY_UNTHROTTLE_DATA_RETRY_WHEN_TAC_CHANGES_BOOL:Ljava/lang/String; = "unthrottle_data_retry_when_tac_changes_bool"

.field public static final whitelist KEY_USE_ACS_FOR_RCS_BOOL:Ljava/lang/String; = "use_acs_for_rcs_bool"

.field public static final blacklist KEY_USE_CALLER_ID_USSD_BOOL:Ljava/lang/String; = "use_caller_id_ussd_bool"

.field public static final blacklist KEY_USE_CALL_FORWARDING_USSD_BOOL:Ljava/lang/String; = "use_call_forwarding_ussd_bool"

.field public static final blacklist KEY_USE_CALL_WAITING_USSD_BOOL:Ljava/lang/String; = "use_call_waiting_ussd_bool"

.field public static final whitelist KEY_USE_HFA_FOR_PROVISIONING_BOOL:Ljava/lang/String; = "use_hfa_for_provisioning_bool"

.field public static final whitelist KEY_USE_IP_FOR_CALLING_INDICATOR_BOOL:Ljava/lang/String; = "use_ip_for_calling_indicator_bool"

.field public static final blacklist KEY_USE_ONLY_DIALED_SIM_ECC_LIST_BOOL:Ljava/lang/String; = "use_only_dialed_sim_ecc_list_bool"

.field public static final greylist-max-o KEY_USE_ONLY_RSRP_FOR_LTE_SIGNAL_BAR_BOOL:Ljava/lang/String; = "use_only_rsrp_for_lte_signal_bar_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_USE_OTASP_FOR_PROVISIONING_BOOL:Ljava/lang/String; = "use_otasp_for_provisioning_bool"

.field public static final whitelist KEY_USE_RCS_PRESENCE_BOOL:Ljava/lang/String; = "use_rcs_presence_bool"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_USE_RCS_SIP_OPTIONS_BOOL:Ljava/lang/String; = "use_rcs_sip_options_bool"

.field public static final blacklist KEY_USE_USIM_BOOL:Ljava/lang/String; = "use_usim_bool"

.field public static final whitelist KEY_USE_WFC_HOME_NETWORK_MODE_IN_ROAMING_NETWORK_BOOL:Ljava/lang/String; = "use_wfc_home_network_mode_in_roaming_network_bool"

.field public static final blacklist KEY_UTRAN_ECNO_HYSTERESIS_DB_INT:Ljava/lang/String; = "utran_ecno_hysteresis_db_int"

.field public static final blacklist KEY_UTRAN_RSCP_HYSTERESIS_DB_INT:Ljava/lang/String; = "utran_rscp_hysteresis_db_int"

.field public static final greylist-max-o KEY_VIDEO_CALLS_CAN_BE_HD_AUDIO:Ljava/lang/String; = "video_calls_can_be_hd_audio"

.field public static final greylist-max-o KEY_VILTE_DATA_IS_METERED_BOOL:Ljava/lang/String; = "vilte_data_is_metered_bool"

.field public static final whitelist KEY_VOICEMAIL_NOTIFICATION_PERSISTENT_BOOL:Ljava/lang/String; = "voicemail_notification_persistent_bool"

.field public static final whitelist KEY_VOICE_PRIVACY_DISABLE_UI_BOOL:Ljava/lang/String; = "voice_privacy_disable_ui_bool"

.field public static final blacklist KEY_VOLTE_5G_LIMITED_ALERT_DIALOG_BOOL:Ljava/lang/String; = "volte_5g_limited_alert_dialog_bool"

.field public static final whitelist KEY_VOLTE_REPLACEMENT_RAT_INT:Ljava/lang/String; = "volte_replacement_rat_int"

.field public static final whitelist KEY_VONR_ENABLED_BOOL:Ljava/lang/String; = "vonr_enabled_bool"

.field public static final whitelist KEY_VONR_ON_BY_DEFAULT_BOOL:Ljava/lang/String; = "vonr_on_by_default_bool"

.field public static final whitelist KEY_VONR_SETTING_VISIBILITY_BOOL:Ljava/lang/String; = "vonr_setting_visibility_bool"

.field public static final whitelist KEY_VT_UPGRADE_SUPPORTED_FOR_DOWNGRADED_RTT_CALL_BOOL:Ljava/lang/String; = "vt_upgrade_supported_for_downgraded_rtt_call"

.field public static final whitelist KEY_VVM_CELLULAR_DATA_REQUIRED_BOOL:Ljava/lang/String; = "vvm_cellular_data_required_bool"

.field public static final whitelist KEY_VVM_CLIENT_PREFIX_STRING:Ljava/lang/String; = "vvm_client_prefix_string"

.field public static final whitelist KEY_VVM_DESTINATION_NUMBER_STRING:Ljava/lang/String; = "vvm_destination_number_string"

.field public static final whitelist KEY_VVM_DISABLED_CAPABILITIES_STRING_ARRAY:Ljava/lang/String; = "vvm_disabled_capabilities_string_array"

.field public static final whitelist KEY_VVM_LEGACY_MODE_ENABLED_BOOL:Ljava/lang/String; = "vvm_legacy_mode_enabled_bool"

.field public static final whitelist KEY_VVM_PORT_NUMBER_INT:Ljava/lang/String; = "vvm_port_number_int"

.field public static final whitelist KEY_VVM_PREFETCH_BOOL:Ljava/lang/String; = "vvm_prefetch_bool"

.field public static final whitelist KEY_VVM_SSL_ENABLED_BOOL:Ljava/lang/String; = "vvm_ssl_enabled_bool"

.field public static final whitelist KEY_VVM_TYPE_STRING:Ljava/lang/String; = "vvm_type_string"

.field public static final greylist-max-o KEY_WCDMA_DEFAULT_SIGNAL_STRENGTH_MEASUREMENT_STRING:Ljava/lang/String; = "wcdma_default_signal_strength_measurement_string"

.field public static final blacklist KEY_WCDMA_ECNO_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "wcdma_ecno_thresholds_int_array"

.field public static final greylist-max-o KEY_WCDMA_RSCP_THRESHOLDS_INT_ARRAY:Ljava/lang/String; = "wcdma_rscp_thresholds_int_array"

.field public static final blacklist KEY_WFC_CARRIER_NAME_OVERRIDE_BY_PNN_BOOL:Ljava/lang/String; = "wfc_carrier_name_override_by_pnn_bool"

.field public static final greylist-max-o KEY_WFC_DATA_SPN_FORMAT_IDX_INT:Ljava/lang/String; = "wfc_data_spn_format_idx_int"

.field public static final whitelist KEY_WFC_EMERGENCY_ADDRESS_CARRIER_APP_STRING:Ljava/lang/String; = "wfc_emergency_address_carrier_app_string"

.field public static final blacklist KEY_WFC_FLIGHT_MODE_SPN_FORMAT_IDX_INT:Ljava/lang/String; = "wfc_flight_mode_spn_format_idx_int"

.field public static final greylist-max-o KEY_WFC_OPERATOR_ERROR_CODES_STRING_ARRAY:Ljava/lang/String; = "wfc_operator_error_codes_string_array"

.field public static final greylist-max-o KEY_WFC_SPN_FORMAT_IDX_INT:Ljava/lang/String; = "wfc_spn_format_idx_int"

.field public static final blacklist KEY_WFC_SPN_USE_ROOT_LOCALE:Ljava/lang/String; = "wfc_spn_use_root_locale"

.field public static final greylist-max-o KEY_WIFI_CALLS_CAN_BE_HD_AUDIO:Ljava/lang/String; = "wifi_calls_can_be_hd_audio"

.field public static final whitelist KEY_WORLD_MODE_ENABLED_BOOL:Ljava/lang/String; = "world_mode_enabled_bool"

.field public static final whitelist KEY_WORLD_PHONE_BOOL:Ljava/lang/String; = "world_phone_bool"

.field public static final whitelist REMOVE_GROUP_UUID_STRING:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"

.field public static final whitelist SERVICE_CLASS_NONE:I = 0x0

.field public static final whitelist SERVICE_CLASS_VOICE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CarrierConfigManager"

.field public static final whitelist USSD_OVER_CS_ONLY:I = 0x2

.field public static final whitelist USSD_OVER_CS_PREFERRED:I = 0x0

.field public static final whitelist USSD_OVER_IMS_ONLY:I = 0x3

.field public static final whitelist USSD_OVER_IMS_PREFERRED:I = 0x1

.field private static final greylist-max-o sDefaults:Landroid/os/PersistableBundle;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsDefaults()Landroid/os/PersistableBundle;
    .registers 1

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 38

    .line 10327
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    sput-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    .line 10328
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_config_version_string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10329
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_hold_in_ims_call"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10330
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_allow_deflect_ims_call_bool"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10331
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_allow_transfer_ims_call_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10332
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "always_play_remote_hold_tone_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10333
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "auto_retry_failed_wifi_emergency_call"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10334
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "additional_call_setting_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10335
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_emergency_numbers_in_call_log_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10336
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "unloggable_numbers_string_array"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10337
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_local_dtmf_tones_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10338
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "play_call_recording_tone_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10339
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "apn_expand_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10340
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "auto_retry_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10341
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_settings_enable_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10342
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_volte_available_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10343
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_vt_available_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10344
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_ussd_method_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10345
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "volte_5g_limited_alert_dialog_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10346
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "notify_handover_video_from_wifi_to_lte_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10347
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_merging_rtt_calls_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10348
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "notify_handover_video_from_lte_to_wifi_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10349
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_downgrade_vt_to_audio_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10350
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "default_vm_number_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10351
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "default_vm_number_roaming_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10352
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "default_vm_number_roaming_and_ims_unregistered_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10353
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "config_telephony_use_own_number_for_voicemail_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10354
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10355
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vilte_data_is_metered_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10356
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_wfc_ims_available_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10357
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_cross_sim_ims_available_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10358
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enable_cross_sim_calling_on_opportunistic_data_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10359
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_wfc_supports_wifi_only_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10360
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10361
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10362
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_promote_wfc_on_call_fail_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10363
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_default_wfc_ims_mode_int"

    const/4 v6, 0x2

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10364
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_default_wfc_ims_roaming_mode_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10365
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_force_disable_etws_cmas_test_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10366
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_rcs_provisioning_required_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10367
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_volte_provisioning_required_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10368
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_ut_provisioning_required_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10369
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_supports_ss_over_ut_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10370
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_volte_override_wfc_provisioning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10371
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_volte_tty_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10372
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_vowifi_tty_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10373
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_allow_turnoff_ims_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10374
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_ims_gba_required_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10375
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_instant_lettering_available_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10376
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_use_ims_first_for_emergency_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10377
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "prefer_in_service_sim_for_normal_routed_emergency_calls_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10379
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_only_dialed_sim_ecc_list_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10380
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_network_service_wwan_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10381
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_network_service_wlan_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10382
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_network_service_wlan_class_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10383
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_network_service_wwan_class_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10384
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_qualified_networks_service_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10385
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_qualified_networks_service_class_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10386
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_data_service_wwan_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10387
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_data_service_wlan_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10388
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_data_service_wwan_class_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10389
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_data_service_wlan_class_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10390
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "config_plans_package_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10391
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_instant_lettering_invalid_chars_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10392
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_instant_lettering_escaped_chars_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10393
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_instant_lettering_encoding_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10394
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_instant_lettering_length_limit_int"

    const/16 v7, 0x40

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10395
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "disable_cdma_activation_code_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10396
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "dtmf_type_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10397
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enable_dialer_key_vibration_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10398
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "has_in_call_noise_suppression_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10399
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_carrier_network_settings_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10400
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "only_auto_select_in_home_network"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10401
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_single_operator_row_in_choose_network_setting_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10402
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_spn_for_home_in_choose_network_setting_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10403
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "simplified_network_settings_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10404
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_sim_lock_settings_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10406
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_volte_provisioned_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10407
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_barring_visibility_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10408
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_barring_supports_password_change_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10409
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_barring_supports_deactivate_all_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10410
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_barring_default_service_class_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10411
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_ss_over_cdma_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10412
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_forwarding_visibility_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10413
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_forwarding_when_unreachable_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10414
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_forwarding_when_unanswered_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10415
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_forwarding_when_busy_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10416
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "additional_settings_caller_id_visibility_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10417
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "additional_settings_call_waiting_visibility_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10418
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "disable_supplementary_services_in_airplane_mode_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10419
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ignore_sim_network_locked_events_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10420
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "mdn_is_additional_voicemail_number_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10421
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "operator_selection_expand_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10422
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "prefer_2g_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10423
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "prefer_3g_visibility_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10424
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "4g_only_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10425
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_apn_setting_cdma_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10426
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_cdma_choices_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10427
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "sms_requires_destination_number_conversion_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10428
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_emergency_sms_over_ims_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10429
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_onscreen_dial_button_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10430
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "sim_network_unlock_allow_dismiss_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10431
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_pause_ims_video_calls_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10432
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_swap_after_merge_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10433
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_hfa_for_provisioning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10434
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "editable_voicemail_number_setting_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10435
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "editable_voicemail_number_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10436
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_voicemail_number_setting_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10437
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_otasp_for_provisioning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10438
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "voicemail_notification_persistent_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10439
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "voice_privacy_disable_ui_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10440
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "world_phone_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10441
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "require_entitlement_checks_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10442
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_supports_tethering_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10443
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "restart_radio_on_pdp_fail_regular_deactivation_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10444
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "radio_restart_failure_causes_int_array"

    new-array v7, v4, [I

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10445
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "volte_replacement_rat_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10446
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "default_sim_call_manager_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10447
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_destination_number_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10448
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_port_number_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10449
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_type_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10450
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_cellular_data_required_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10451
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_client_prefix_string"

    const-string v7, "//VVM"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10452
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_ssl_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10453
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_disabled_capabilities_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10454
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_legacy_mode_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10455
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_prefetch_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10456
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_vvm_package_name_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10457
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_vvm_package_name_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10458
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_iccid_in_sim_status_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10459
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_signal_strength_in_sim_status_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10460
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "inflate_signal_strength_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10461
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ci_action_on_sys_update_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10462
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ci_action_on_sys_update_intent_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10463
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ci_action_on_sys_update_extra_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10464
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10465
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "csp_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10466
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_adding_apns_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10467
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "dun"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "read_only_apn_types_string_array"

    invoke-virtual {v0, v8, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10468
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v7, "read_only_apn_fields_string_array"

    invoke-virtual {v0, v7, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10469
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v7, "apn_settings_default_apn_types_string_array"

    invoke-virtual {v0, v7, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10470
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Apn;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10472
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v7, "broadcast_emergency_call_state_changes_bool"

    invoke-virtual {v0, v7, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10473
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v7, "always_show_emergency_alert_onoff_bool"

    invoke-virtual {v0, v7, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10474
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v7, "default_mtu_int"

    const/16 v8, 0x5dc

    invoke-virtual {v0, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10475
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v7, "carrier_data_call_apn_retry_after_disconnect_long"

    const-wide/16 v9, 0xbb8

    invoke-virtual {v0, v7, v9, v10}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10476
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v7, "carrier_eri_file_name_string"

    const-string v9, "eri.xml"

    invoke-virtual {v0, v7, v9}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10477
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v7, "duration_blocking_disabled_after_emergency_int"

    const/16 v9, 0x1c20

    invoke-virtual {v0, v7, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10478
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v7, "supl"

    const-string v9, "enterprise"

    const-string v10, "default"

    const-string/jumbo v11, "mms"

    filled-new-array {v10, v11, v1, v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const-string v9, "carrier_metered_apn_types_strings"

    invoke-virtual {v0, v9, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10480
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v7, "supl"

    const-string v9, "enterprise"

    const-string/jumbo v11, "mms"

    filled-new-array {v10, v11, v1, v7, v9}, [Ljava/lang/String;

    move-result-object v1

    const-string v7, "carrier_metered_roaming_apn_types_strings"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10482
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/4 v1, 0x6

    const/16 v7, 0xc

    const/4 v9, 0x4

    const/4 v11, 0x7

    const/4 v12, 0x5

    filled-new-array {v9, v11, v12, v1, v7}, [I

    move-result-object v1

    const-string/jumbo v7, "only_single_dc_allowed_int_array"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10486
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "capabilities_exempt_from_single_dc_check_int_array"

    filled-new-array {v9}, [I

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10488
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "gsm_roaming_networks_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10489
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "gsm_nonroaming_networks_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10490
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "config_ims_package_override_string"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10491
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "config_ims_mmtel_package_override_string"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10492
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "config_ims_rcs_package_override_string"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10493
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "cdma_roaming_networks_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10494
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "cdma_nonroaming_networks_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10495
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "dial_string_replace_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10496
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "international_roaming_dial_string_replace_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10497
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "force_home_network_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10498
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "gsm_dtmf_tone_delay_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10499
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ims_dtmf_tone_delay_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10500
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "cdma_dtmf_tone_delay_int"

    const/16 v7, 0x64

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10501
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_forwarding_map_non_number_to_voicemail_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10502
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ignore_rtt_mode_setting_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10503
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "cdma_3waycall_flash_delay_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10504
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_adhoc_conference_calls_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10505
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_add_conference_participants_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10506
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_conference_call_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10507
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_ims_conference_call_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10508
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "local_disconnect_empty_ims_conference_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10509
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_manage_ims_conference_call_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10510
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_ims_conference_event_package_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10511
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_ims_conference_event_package_on_peer_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10512
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "supports_device_to_device_communication_using_rtp_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10513
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "supports_sdp_negotiation_of_d2d_rtp_header_extensions_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10514
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "supports_device_to_device_communication_using_dtmf_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10515
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_video_conference_call_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10516
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "is_ims_conference_size_enforced_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10517
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ims_conference_size_limit_int"

    invoke-virtual {v0, v1, v12}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10518
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "display_hd_audio_property_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10519
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "editable_enhanced_4g_lte_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10520
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_enhanced_4g_lte_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10521
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enhanced_4g_lte_on_by_default_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10522
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_ims_apn_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10523
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_preferred_network_type_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10524
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_emergency_video_calls_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10525
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enable_apps_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10526
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "editable_wfc_mode_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10527
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_operator_error_codes_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10528
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_spn_format_idx_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10529
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_data_spn_format_idx_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10530
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_flight_mode_spn_format_idx_int"

    const/4 v11, -0x1

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10531
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_spn_use_root_locale"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10532
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_emergency_address_carrier_app_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10533
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "config_wifi_disable_in_ecbm"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10534
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_name_override_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10535
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_name_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10536
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_carrier_name_override_by_pnn_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10537
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "cross_sim_spn_format_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10538
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "spn_display_condition_override_int"

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10539
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "spdi_override_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10540
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "pnn_override_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10541
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opl_override_opl_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10542
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ehplmn_override_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10543
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_cdma_eri_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10544
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enable_carrier_display_name_resolver_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10545
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "sim_country_iso_override_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10546
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_screening_app"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10547
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_redirection_service_component_name_string"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10548
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "cdma_home_registered_plmn_name_override_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10549
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "cdma_home_registered_plmn_name_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10550
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_direct_fdn_dialing_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10551
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "fdn_number_length_limit_int"

    const/16 v13, 0x14

    invoke-virtual {v0, v1, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10552
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_default_data_roaming_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10553
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "skip_cf_fail_to_disable_dialog_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10554
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_enhanced_call_blocking_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10557
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "aliasEnabled"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10558
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allowAttachAudio"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10559
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enabledTransID"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10560
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enableGroupMms"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10561
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enableMMSDeliveryReports"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10562
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enabledMMS"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10563
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enableMMSReadReports"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10564
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enableMultipartSMS"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10565
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enabledNotifyWapMMSC"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10566
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "sendMultipartSmsAsSeparateMessages"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10567
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "config_cellBroadcastAppLinks"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10568
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enableSMSDeliveryReports"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10569
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "supportHttpCharsetHeader"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10570
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "supportMmsContentDisposition"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10571
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "mmsCloseConnection"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10572
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "aliasMaxChars"

    const/16 v13, 0x30

    invoke-virtual {v0, v1, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10573
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "aliasMinChars"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10574
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "httpSocketTimeout"

    const v13, 0xea60

    invoke-virtual {v0, v1, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10575
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "maxImageHeight"

    const/16 v13, 0x1e0

    invoke-virtual {v0, v1, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10576
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "maxImageWidth"

    const/16 v13, 0x280

    invoke-virtual {v0, v1, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10577
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "maxMessageSize"

    const v13, 0x4b000

    invoke-virtual {v0, v1, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10578
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "maxMessageTextSize"

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10579
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "recipientLimit"

    const v13, 0x7fffffff

    invoke-virtual {v0, v1, v13}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10580
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "smsToMmsTextLengthThreshold"

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10581
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "smsToMmsTextThreshold"

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10582
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "maxSubjectLength"

    const/16 v14, 0x28

    invoke-virtual {v0, v1, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10583
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "mms_network_release_timeout_millis_int"

    const/16 v14, 0x1388

    invoke-virtual {v0, v1, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10584
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "mms_max_ntn_payload_size_bytes_int"

    const/16 v14, 0xbb8

    invoke-virtual {v0, v1, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10585
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "emailGatewayNumber"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10586
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "httpParams"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10587
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "naiSuffix"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10588
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "uaProfTagName"

    const-string/jumbo v14, "x-wap-profile"

    invoke-virtual {v0, v1, v14}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10589
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "uaProfUrl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10590
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "userAgent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10591
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_non_emergency_calls_in_ecm_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10592
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "emergency_sms_mode_timer_ms_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10593
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_hold_call_during_emergency_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10594
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_rcs_presence_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10595
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_rcs_sip_options_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10596
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "force_imei_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10597
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "cdma_roaming_mode_int"

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10599
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_cdma_1x_voice_calls_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10600
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "rcs_config_server_url_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10603
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_setup_app_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10604
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "com.android.carrierdefaultapp/.CarrierDefaultBroadcastReceiver:com.android.internal.telephony.CARRIER_SIGNAL_RESET"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v14, "carrier_app_wake_signal_config"

    invoke-virtual {v0, v14, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10609
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_app_no_wake_signal_config"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10610
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_app_required_during_setup_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10613
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "9, 4, 1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v14, "carrier_default_actions_on_redirection_string_array"

    invoke-virtual {v0, v14, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10620
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "6, 8"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v14, "carrier_default_actions_on_reset_string_array"

    invoke-virtual {v0, v14, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10625
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "false: 7"

    const-string/jumbo v14, "true: 8"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const-string v14, "carrier_default_actions_on_default_network_available_string_array"

    invoke-virtual {v0, v14, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10630
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_default_redirection_url_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10632
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "monthly_data_cycle_day_int"

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10633
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "data_warning_threshold_bytes_long"

    const-wide/16 v14, -0x1

    invoke-virtual {v0, v1, v14, v15}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10634
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "data_warning_notification_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10635
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "limited_sim_function_notification_for_dsds_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10636
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "data_limit_threshold_bytes_long"

    invoke-virtual {v0, v1, v14, v15}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10637
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "data_limit_notification_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10638
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "data_rapid_notification_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10643
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "3,11,9,10,15"

    const-string v14, "14,19"

    const-string v15, "1,2"

    const-string v8, "7,8,12"

    filled-new-array {v15, v8, v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "ratchet_rat_families"

    invoke-virtual {v0, v8, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10645
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "treat_downgraded_video_calls_as_video_calls_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10646
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "drop_video_call_when_answering_audio_call_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10647
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_merge_wifi_calls_when_vowifi_off_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10648
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_add_call_during_video_call"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10649
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_hold_video_call_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10650
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wifi_calls_can_be_hd_audio"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10651
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "video_calls_can_be_hd_audio"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10652
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "gsm_cdma_calls_can_be_hd_audio"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10653
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_video_calling_fallback_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10655
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ims_reasoninfo_mapping_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10656
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enhanced_4g_lte_title_variant_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10657
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enhanced_4g_lte_title_variant_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10658
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "notify_vt_handover_to_wifi_failure_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10659
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "filtered_cnap_names_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10660
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10661
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_blocking_pay_phone_option_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10662
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_wfc_home_network_mode_in_roaming_network_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10663
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "stk_disable_launch_browser_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10664
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_metered_network_for_cert_download_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10665
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_digits_helper_text_on_stk_input_screen_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10666
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "network_notification_delay_int"

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10667
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "emergency_notification_delay_int"

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10668
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "allow_ussd_requests_via_telephony_manager_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10669
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_3gpp_call_forwarding_while_roaming_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10670
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "display_voicemail_number_as_default_call_forwarding_number"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10672
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "notify_international_call_on_wfc_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10673
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_preset_apn_details_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10674
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_video_call_charges_alert_dialog_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10675
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_forwarding_blocks_while_roaming_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10676
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_ims_call_forwarding_while_roaming_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10677
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "lte_earfcns_rsrp_boost_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10678
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "boosted_lte_earfcns_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10679
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "nrarfcns_rsrp_boost_int_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10680
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "boosted_nrarfcns_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10681
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_only_rsrp_for_lte_signal_bar_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10682
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "disable_voice_barring_notification_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10683
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "imsi_key_availability_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10684
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "imsi_key_download_url_string"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10685
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "imsi_carrier_public_key_epdg_string"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10686
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "imsi_carrier_public_key_wlan_string"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10687
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "convert_cdma_caller_id_mmi_codes_while_roaming_on_3gpp_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10689
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "non_roaming_operator_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10690
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "roaming_operator_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10691
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_roaming_indicator_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10692
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_ims_registration_status_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10693
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "rtt_supported_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10694
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "tty_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10695
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "rtt_auto_upgrade_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10696
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "rtt_supported_for_vt_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10697
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "rtt_upgrade_supported_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10698
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "rtt_downgrade_supported_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10699
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_tty_hco_vco_with_rtt"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10700
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "rtt_supported_while_roaming_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10701
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "rtt_upgrade_supported_for_downgraded_vt_call"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10702
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vt_upgrade_supported_for_downgraded_rtt_call"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10703
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "disable_charge_indication_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10704
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_no_reply_timer_for_cfnry_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10705
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "feature_access_codes_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10706
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "identify_high_definition_calls_in_call_log_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10707
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_precise_failed_cause_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10708
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "spn_display_rule_use_roaming_from_service_state_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10709
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "always_show_data_rat_icon_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10710
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_4g_for_lte_data_icon_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10711
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_4glte_for_lte_data_icon_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10712
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_4g_for_3g_data_icon_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10713
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "operator_name_filter_pattern_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10714
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_carrier_data_icon_pattern_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10715
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_lte_plus_data_icon_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10716
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_5g_slice_icon_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10717
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "lte_plus_threshold_bandwidth_khz_int"

    const/16 v8, 0x4e20

    invoke-virtual {v0, v1, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10718
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "nr_advanced_threshold_bandwidth_khz_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10719
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "include_lte_for_nr_advanced_threshold_bandwidth_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10720
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ratchet_nr_advanced_bandwidth_if_rrc_idle_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10721
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_nr_availabilities_int_array"

    filled-new-array {v3, v6}, [I

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10723
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "lte_enabled_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10724
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_tdscdma_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10725
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_tdscdma_roaming_networks_string_array"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10726
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "world_mode_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10727
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_settings_activity_component_name_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10728
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_operator_name_in_statusbar_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10729
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_config_applied_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10730
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "check_pricing_with_carrier_data_roaming_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10731
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_data_connected_roaming_notification"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10732
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "data_connected_roaming_notification_excluded_mccs_string_array"

    new-array v8, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10734
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "data_connected_roaming_notification_included_mcc_mncs_string_array"

    new-array v8, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10737
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/16 v1, -0x62

    const/16 v8, -0x80

    const/16 v14, -0x76

    const/16 v15, -0x6c

    filled-new-array {v8, v14, v15, v1}, [I

    move-result-object v1

    const-string v8, "lte_rsrp_thresholds_int_array"

    invoke-virtual {v0, v8, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10745
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/16 v1, -0xb

    const/16 v8, -0x14

    const/16 v7, -0x11

    const/16 v5, -0xe

    filled-new-array {v8, v7, v5, v1}, [I

    move-result-object v1

    const-string v7, "lte_rsrq_thresholds_int_array"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10753
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/4 v1, -0x3

    const/16 v7, 0xd

    filled-new-array {v1, v3, v12, v7}, [I

    move-result-object v1

    const-string v7, "lte_rssnr_thresholds_int_array"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10761
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/16 v1, -0x5f

    const/16 v7, -0x55

    const/16 v8, -0x73

    const/16 v13, -0x69

    filled-new-array {v8, v13, v1, v7}, [I

    move-result-object v1

    const-string/jumbo v7, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10771
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/16 v1, -0x18

    const/4 v7, -0x6

    filled-new-array {v1, v5, v7, v3}, [I

    move-result-object v1

    const-string/jumbo v7, "wcdma_ecno_thresholds_int_array"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10779
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/16 v1, -0x50

    const/16 v7, -0x41

    const/16 v8, -0x6e

    const/16 v13, -0x5a

    filled-new-array {v8, v13, v1, v7}, [I

    move-result-object v1

    const-string v7, "5g_nr_ssrsrp_thresholds_int_array"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10787
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/4 v1, -0x7

    const/4 v7, 0x6

    const/16 v8, -0x1f

    const/16 v13, -0x13

    filled-new-array {v8, v13, v1, v7}, [I

    move-result-object v1

    const-string v7, "5g_nr_ssrsrq_thresholds_int_array"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10795
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/4 v1, -0x5

    const/16 v7, 0xf

    const/16 v8, 0x1e

    filled-new-array {v1, v12, v7, v8}, [I

    move-result-object v1

    const-string v7, "5g_nr_sssinr_thresholds_int_array"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10803
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "geran_rssi_hysteresis_db_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10804
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "utran_rscp_hysteresis_db_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10805
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "eutran_rsrp_hysteresis_db_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10806
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "eutran_rsrq_hysteresis_db_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10807
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "eutran_rssnr_hysteresis_db_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10808
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ngran_ssrsrp_hysteresis_db_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10809
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ngran_ssrsrq_hysteresis_db_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10810
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ngran_sssinr_hysteresis_db_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10811
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "utran_ecno_hysteresis_db_int"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10812
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "parameters_use_for_5g_nr_signal_bar_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10814
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "signal_strength_nr_nsa_use_lte_as_primary_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10815
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v36, "NR_SA:145000,60000"

    const-string v37, "NR_SA_MMWAVE:145000,60000"

    const-string v16, "GPRS:24,24"

    const-string v17, "EDGE:70,18"

    const-string v18, "UMTS:115,115"

    const-string v19, "CDMA:14,14"

    const-string v20, "1xRTT:30,30"

    const-string v21, "EvDo_0:750,48"

    const-string v22, "EvDo_A:950,550"

    const-string v23, "HSDPA:4300,620"

    const-string v24, "HSUPA:4300,1800"

    const-string v25, "HSPA:4300,1800"

    const-string v26, "EvDo_B:1500,550"

    const-string v27, "eHRPD:750,48"

    const-string v28, "iDEN:14,14"

    const-string v29, "LTE:30000,15000"

    const-string v30, "HSPA+:13000,3400"

    const-string v31, "GSM:24,24"

    const-string v32, "TD_SCDMA:115,115"

    const-string v33, "LTE_CA:30000,15000"

    const-string v34, "NR_NSA:47000,18000"

    const-string v35, "NR_NSA_MMWAVE:145000,60000"

    filled-new-array/range {v16 .. v37}, [Ljava/lang/String;

    move-result-object v1

    const-string v7, "bandwidth_string_array"

    invoke-virtual {v0, v7, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10822
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "bandwidth_nr_nsa_use_lte_value_for_uplink_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10823
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wcdma_default_signal_strength_measurement_string"

    const-string/jumbo v7, "rssi"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10824
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "undelivered_sms_message_expiration_time"

    const-wide/32 v6, 0x240c8400

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10826
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "config_show_orig_dial_string_for_cdma"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10827
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_call_blocking_disabled_notification_always_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10828
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_forwarding_over_ut_warning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10829
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_barring_over_ut_warning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10830
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "caller_id_over_ut_warning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10831
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_waiting_over_ut_warning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10832
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_clir_network_default_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10833
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_emergency_dialer_shortcut_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10834
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_call_forwarding_ussd_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10835
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_caller_id_ussd_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10836
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_call_waiting_ussd_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10837
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_waiting_service_class_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10838
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_icon_configuration_string"

    const-string v6, "connected_mmwave:5G,connected:5G,connected_rrc_idle:5G,not_restricted_rrc_idle:5G,not_restricted_rrc_con:5G"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10841
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_icon_display_grace_period_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10842
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_icon_display_secondary_grace_period_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10843
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "nr_advanced_bands_secondary_timer_seconds_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10844
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "nr_timers_reset_if_non_endc_and_rrc_idle_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10845
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "nr_timers_reset_on_voice_qos_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10846
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "nr_timers_reset_on_plmn_change_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10848
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_watchdog_time_ms_long"

    const-wide/32 v6, 0x36ee80

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10849
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "additional_nr_advanced_bands_int_array"

    new-array v6, v4, [I

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10850
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "nr_advanced_capable_pco_id_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10851
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enable_nr_advanced_for_roaming_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10852
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "lte_endc_using_user_data_for_rrc_detection_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10853
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "NR_SA"

    const-string v6, "NR_SA_MMWAVE"

    const-string v7, "NR_NSA"

    const-string v13, "NR_NSA_MMWAVE"

    filled-new-array {v7, v13, v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "unmetered_network_types_string_array"

    invoke-virtual {v0, v6, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10855
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "roaming_unmetered_network_types_string_array"

    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10856
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ascii_7_bit_support_for_long_message_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10857
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_wifi_calling_icon_in_status_bar_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10858
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_supports_opp_data_auto_provisioning_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10859
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "smdp_server_address_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10860
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "esim_max_download_retry_attempts_int"

    invoke-virtual {v0, v1, v12}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10861
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "esim_download_retry_backoff_timer_sec_int"

    const/16 v6, 0x3c

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10862
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_carrier_ids_int_array"

    filled-new-array {v4}, [I

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10863
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_esim_download_via_wifi_only_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10865
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_entry_threshold_rsrp_int"

    invoke-virtual {v0, v1, v15}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10867
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_exit_threshold_rsrp_int"

    invoke-virtual {v0, v1, v14}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10869
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_entry_threshold_rssnr_int"

    invoke-virtual {v0, v1, v12}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10871
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_exit_threshold_rssnr_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10873
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_entry_threshold_bandwidth_int"

    const/16 v6, 0x400

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10875
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_entry_or_exit_hysteresis_time_long"

    const-wide/16 v6, 0x2710

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10877
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_data_switch_hysteresis_time_long"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10879
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_data_switch_exit_hysteresis_time_long"

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10880
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$OpportunisticNetwork;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10881
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ping_test_before_data_switch_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10882
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "switch_data_to_primary_if_primary_is_oos_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10884
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_ping_pong_time_long"

    const-wide/32 v6, 0xea60

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10886
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_backoff_time_long"

    const-wide/16 v6, 0x2710

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10888
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_network_max_backoff_time_long"

    const-wide/32 v6, 0xea60

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10889
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enabled_4g_opportunistic_network_scan_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10890
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "time_to_switch_back_to_primary_if_opportunistic_oos_long"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10891
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "opportunistic_time_to_scan_after_capability_switch_to_primary_long"

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10893
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsServiceEntitlement;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10894
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Gps;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10895
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "cdma_enhanced_roaming_indicator_for_home_network_int_array"

    filled-new-array {v3}, [I

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10899
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "emergency_number_prefix_string_array"

    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10900
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_supports_caller_id_vertical_service_codes_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10901
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_usim_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10902
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_wfc_location_privacy_policy_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10903
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_auto_cancel_cs_notification"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10904
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "smart_forwarding_config_component_name_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10905
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10907
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "subscription_group_uuid_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10908
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "is_opportunistic_subscription_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10909
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/16 v1, -0x61

    const/16 v6, -0x59

    const/16 v7, -0x6b

    const/16 v13, -0x67

    filled-new-array {v7, v13, v1, v6}, [I

    move-result-object v1

    const-string v6, "gsm_rssi_thresholds_int_array"

    invoke-virtual {v0, v6, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10916
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_wps_over_ims_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10917
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Ims;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10918
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsVoice;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10919
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsSms;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10920
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsRtt;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10921
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsEmergency;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10922
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsVt;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10923
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsWfc;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10924
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsSs;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10925
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Bsf;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10926
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Iwlan;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10927
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_certificate_string_array"

    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10928
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "format_incoming_number_to_national_for_jp_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10929
    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->doNotOverridePreciseLabel()Z

    move-result v0

    if-eqz v0, :cond_eed

    .line 10930
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "disconnect_cause_play_busytone_int_array"

    new-array v6, v4, [I

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_ef8

    .line 10932
    :cond_eed
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "disconnect_cause_play_busytone_int_array"

    filled-new-array {v9}, [I

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10935
    :goto_ef8
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "prevent_clir_activation_and_deactivation_code_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10936
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "data_switch_validation_timeout_long"

    const-wide/16 v6, 0x1388

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10937
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "mmi_two_digit_number_pattern_string_array"

    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10938
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "parameters_used_for_lte_signal_bar_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10940
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "min_udp_port_4500_nat_timeout_sec_int"

    const/16 v6, 0x12c

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10941
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "preferred_ike_protocol_int"

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10943
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Wifi;->-$$Nest$smgetDefaults()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 10944
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "enable_eap_method_prefix_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10945
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "gba_mode_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10946
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "gba_ua_security_organization_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10948
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "gba_ua_security_protocol_int"

    const/high16 v6, 0x10000

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10950
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "gba_ua_tls_cipher_suite_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10952
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_forwarded_number_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10953
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 10954
    const-wide/16 v6, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 10953
    const-string v1, "data_switch_validation_min_gap_long"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 10955
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "missed_incoming_call_sms_originator_string_array"

    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10957
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_ultra_wideband_icon_sib2_value"

    const v6, 0x7fffffff

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10958
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_ultra_wideband_icon_min_bandwidth_value"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10959
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_ultra_wideband_icon_min_bandwidth_mode"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10960
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_ultra_wideband_icon_refresh_timer_map"

    sget-object v7, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 10962
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_ultra_wideband_icon_nsa_band_mode"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10963
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_ultra_wideband_icon_sa_band_array"

    new-array v7, v4, [I

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10964
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_ultra_wideband_icon_sa_band_mode"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10965
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "5g_ultra_wideband_icon_nsa_band_array"

    new-array v6, v4, [I

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10969
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v29, "prioritize_bandwidth:20"

    const-string/jumbo v30, "prioritize_latency:20"

    const-string v17, "eims:90"

    const-string/jumbo v18, "supl:80"

    const-string/jumbo v19, "mms:70"

    const-string/jumbo v20, "xcap:70"

    const-string v21, "cbs:50"

    const-string/jumbo v22, "mcx:50"

    const-string v23, "fota:50"

    const-string v24, "ims:40"

    const-string/jumbo v25, "rcs:40"

    const-string v26, "dun:30"

    const-string v27, "enterprise:20"

    const-string v28, "internet:20"

    filled-new-array/range {v17 .. v30}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "telephony_network_capability_priorities_string_array"

    invoke-virtual {v0, v6, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10975
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "capabilities=mms|supl|cbs|rcs, retry_interval=2000"

    const-string v6, "capabilities=internet|enterprise|dun|ims|fota|xcap|mcx|prioritize_bandwidth|prioritize_latency, retry_interval=2500|3000|5000|10000|15000|20000|40000|60000|120000|240000|600000|1200000|1800000, maximum_retries=20"

    const-string v7, "capabilities=eims, retry_interval=1000, maximum_retries=20"

    const-string/jumbo v13, "permanent_fail_causes=8|27|28|29|30|32|33|35|50|51|111|-5|-6|65537|65538|-3|65543|65547|2252|2253|2254, retry_interval=2500"

    filled-new-array {v7, v13, v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "telephony_data_setup_retry_rules_string_array"

    invoke-virtual {v0, v6, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10991
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "retry_interval=1000|2000|4000|8000|16000, maximum_retries=5"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "telephony_data_handover_retry_rules_string_array"

    invoke-virtual {v0, v6, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10995
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "delay_ims_tear_down_until_call_end_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10996
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "missed_incoming_call_sms_pattern_string_array"

    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10997
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_supported_satellite_services_per_provider_bundle"

    sget-object v6, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 11000
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "satellite_attach_supported_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11001
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "satellite_connection_hysteresis_sec_int"

    const/16 v6, 0x12c

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 11002
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/16 v1, -0x80

    const/16 v6, -0x62

    filled-new-array {v1, v14, v15, v6}, [I

    move-result-object v1

    const-string/jumbo v6, "ntn_lte_rsrp_thresholds_int_array"

    invoke-virtual {v0, v6, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11010
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/16 v1, -0x11

    const/16 v6, -0xb

    const/16 v7, -0x14

    filled-new-array {v7, v1, v5, v6}, [I

    move-result-object v1

    const-string/jumbo v5, "ntn_lte_rsrq_thresholds_int_array"

    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11018
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/4 v1, -0x3

    const/16 v5, 0xd

    filled-new-array {v1, v3, v12, v5}, [I

    move-result-object v1

    const-string/jumbo v5, "ntn_lte_rssnr_thresholds_int_array"

    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11026
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "parameters_used_for_ntn_lte_signal_bar_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 11028
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "remove_satellite_plmn_in_manual_network_scan_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11029
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "override_wfc_roaming_mode_while_using_ntn_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11030
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "satellite_entitlement_status_refresh_days_int"

    invoke-virtual {v0, v1, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 11031
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "satellite_entitlement_supported_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11032
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "disable_dun_apn_while_roaming_with_preset_apn_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11033
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "default_preferred_apn_name_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11034
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "supports_call_composer_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11035
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "supports_business_call_composer_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11036
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "call_composer_picture_server_url_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11037
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_acs_for_rcs_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11038
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "network_temp_not_metered_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11039
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "default_rtt_mode_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 11040
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "store_sim_pin_for_unattended_reboot_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11041
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "hide_enable_2g_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11042
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "ia"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "allowed_initial_attach_apn_types_string_array"

    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 11044
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_provisions_wifi_merged_networks_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11045
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_ip_for_calling_indicator_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11046
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "display_call_strength_indicator_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11047
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_provisioning_app_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11048
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "display_no_data_notification_on_permanent_failure_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11049
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "unthrottle_data_retry_when_tac_changes_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11050
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vonr_setting_visibility_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11051
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vonr_enabled_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11052
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vonr_on_by_default_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11053
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "supported_premium_capabilities_int_array"

    new-array v2, v4, [I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11054
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 11055
    const-wide/16 v5, 0x1e

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 11054
    const-string/jumbo v5, "premium_capability_notification_display_timeout_millis_long"

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 11056
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 11057
    const-wide/16 v5, 0x1e

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 11056
    const-string/jumbo v5, "premium_capability_notification_backoff_hysteresis_time_millis_long"

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 11058
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "premium_capability_maximum_daily_notification_count_int"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 11059
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "premium_capability_maximum_monthly_notification_count_int"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 11060
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 11062
    const-wide/16 v5, 0x1e

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 11060
    const-string/jumbo v5, "premium_capability_purchase_condition_backoff_hysteresis_time_millis_long"

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 11063
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 11064
    const-wide/16 v5, 0x5

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 11063
    const-string/jumbo v5, "premium_capability_network_setup_time_millis_long"

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 11065
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "premium_capability_purchase_url_string"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11066
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "premium_capability_supported_on_lte_bool"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11067
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "source=GERAN|UTRAN|EUTRAN|NGRAN|IWLAN, target=GERAN|UTRAN|EUTRAN|NGRAN|IWLAN, type=allowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "iwlan_handover_policy_string_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 11070
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 11071
    const/16 v1, 0x4838

    const/16 v2, 0x4e31

    const/16 v5, 0x2710

    const/16 v6, 0x33ab

    const/16 v7, 0x3e80

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "NR_SA_MMWAVE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11073
    const/16 v1, 0x3aa9

    const/16 v2, 0x3bae

    const/16 v5, 0x1f40

    const/16 v6, 0x27f3

    const/16 v7, 0x30c8

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "NR_NSA_MMWAVE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11075
    const/16 v1, 0x2bab

    const/16 v2, 0x3448

    const/16 v5, 0xe93

    const/16 v6, 0x174d

    const/16 v7, 0x21aa

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "LTE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11077
    const/16 v1, 0x2c73

    const/16 v2, 0x34ac

    const/16 v5, 0xef7

    const/16 v6, 0x17b1

    const/16 v7, 0x220e

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "LTE_CA"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11079
    const/16 v1, 0x1d8a

    const/16 v2, 0x25f1

    const/16 v5, 0x14a8

    const/16 v6, 0x1a8b

    const/16 v7, 0x1b2b

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "NR_SA"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11081
    const/16 v1, 0x232f

    const/16 v2, 0x24d4

    const/16 v5, 0x1557

    const/16 v6, 0x1aab

    const/16 v7, 0x1f5d

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "NR_NSA"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11083
    const/16 v1, 0xb7

    const/16 v2, 0xc0

    const/16 v5, 0x12c

    const/16 v6, 0xa9

    const/16 v7, 0x64

    filled-new-array {v7, v6, v1, v2, v5}, [I

    move-result-object v1

    const-string v2, "UMTS"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11085
    const/16 v1, 0x258

    const/16 v2, 0x320

    const/16 v5, 0xa

    const/16 v6, 0x3e8

    const/16 v7, 0x190

    filled-new-array {v5, v7, v1, v2, v6}, [I

    move-result-object v1

    const-string v2, "eHRPD"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11087
    const/16 v1, 0x1f4

    const/16 v2, 0x3e8

    const/16 v5, 0x32

    const/16 v6, 0x64

    filled-new-array {v3, v5, v6, v1, v2}, [I

    move-result-object v1

    const-string v2, "TD_SCDMA"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11089
    const-string v1, "iDEN"

    const/16 v2, 0xa

    const/4 v7, 0x2

    filled-new-array {v3, v7, v2, v5, v6}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11091
    const/16 v1, 0x9e4

    const/16 v2, 0xa28

    const/16 v5, 0x3e8

    const/16 v6, 0x5d7

    const/16 v7, 0x88a

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "EvDo_B"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11093
    const/16 v1, 0x1021

    const/16 v2, 0x1074

    const/16 v5, 0x653

    const/16 v6, 0x9c4

    const/16 v7, 0xd41

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "HSPA+"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11095
    const/16 v1, 0x9e4

    const/16 v2, 0x9f0

    const/16 v5, 0x3e8

    const/16 v6, 0x5d7

    const/16 v7, 0x88a

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "HSPA"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11097
    const/16 v1, 0x93a

    const/16 v2, 0xa90

    const/16 v5, 0x77f

    const/16 v6, 0x854

    const/16 v7, 0x5dc

    filled-new-array {v7, v5, v6, v1, v2}, [I

    move-result-object v1

    const-string v2, "HSUPA"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11099
    const/16 v1, 0x1b58

    const/16 v2, 0x1f40

    const/16 v5, 0x6c4

    const/16 v6, 0xfa0

    filled-new-array {v7, v5, v6, v1, v2}, [I

    move-result-object v1

    const-string v2, "HSDPA"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11101
    const/16 v1, 0x514

    const/16 v2, 0x578

    const/16 v5, 0x258

    const/16 v6, 0x348

    const/16 v7, 0x4b0

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "EvDo_A"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11103
    const/16 v1, 0x258

    const/16 v2, 0x7d0

    const/16 v5, 0x3e8

    const/16 v6, 0x12c

    const/16 v7, 0x5dc

    filled-new-array {v6, v1, v5, v7, v2}, [I

    move-result-object v1

    const-string v2, "EvDo_0"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11105
    const/16 v1, 0x50

    const/16 v2, 0x5a

    const/16 v5, 0x32

    const/16 v6, 0x3c

    const/16 v7, 0x46

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "1xRTT"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11107
    const/16 v1, 0xc0

    const/16 v2, 0x10b

    const/16 v5, 0x9a

    const/16 v6, 0xa9

    const/16 v7, 0xb7

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const-string v2, "EDGE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11109
    const/16 v1, 0x28

    const/16 v2, 0x2d

    const/16 v5, 0x32

    const/16 v6, 0xf

    filled-new-array {v6, v8, v1, v2, v5}, [I

    move-result-object v1

    const-string v2, "GPRS"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11111
    const/16 v1, 0x7d0

    const/16 v2, 0x12c

    const/16 v6, 0x64

    filled-new-array {v3, v5, v6, v2, v1}, [I

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11113
    const-string v1, "GSM"

    const/16 v2, 0xa

    const/4 v7, 0x2

    filled-new-array {v3, v7, v2, v5, v6}, [I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11115
    sget-object v1, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v2, "auto_data_switch_rat_signal_score_string_bundle"

    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 11117
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "cellular_usage_setting_int"

    invoke-virtual {v0, v1, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 11120
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    new-array v1, v9, [J

    fill-array-data v1, :array_1382

    const-string v2, "data_stall_recovery_timers_long_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 11122
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    new-array v1, v12, [Z

    fill-array-data v1, :array_1396

    const-string v2, "data_stall_recovery_should_skip_bool_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 11124
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_service_name_array"

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 11125
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string v1, "carrier_service_number_array"

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 11126
    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const/4 v1, 0x3

    const/4 v2, 0x2

    filled-new-array {v3, v2, v1}, [I

    move-result-object v1

    const-string v2, "cellular_service_capabilities_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11127
    return-void

    :array_1382
    .array-data 8
        0x2bf20
        0x2bf20
        0x2bf20
        0x2bf20
    .end array-data

    :array_1396
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroid/telephony/CarrierConfigManager;->mContext:Landroid/content/Context;

    .line 153
    return-void
.end method

.method private blacklist addConfig(Ljava/lang/String;Ljava/lang/Object;Landroid/os/PersistableBundle;)V
    .registers 6

    .line 11581
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 11582
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 11583
    :cond_b
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 11584
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 11585
    :cond_16
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_24

    .line 11586
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7f

    .line 11587
    :cond_24
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_32

    .line 11588
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_7f

    .line 11589
    :cond_32
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_40

    .line 11590
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_7f

    .line 11591
    :cond_40
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4e

    .line 11592
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_7f

    .line 11593
    :cond_4e
    instance-of v0, p2, [I

    if-eqz v0, :cond_58

    .line 11594
    check-cast p2, [I

    invoke-virtual {p3, p1, p2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_7f

    .line 11595
    :cond_58
    instance-of v0, p2, [D

    if-eqz v0, :cond_62

    .line 11596
    check-cast p2, [D

    invoke-virtual {p3, p1, p2}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_7f

    .line 11597
    :cond_62
    instance-of v0, p2, [Z

    if-eqz v0, :cond_6c

    .line 11598
    check-cast p2, [Z

    invoke-virtual {p3, p1, p2}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_7f

    .line 11599
    :cond_6c
    instance-of v0, p2, [J

    if-eqz v0, :cond_76

    .line 11600
    check-cast p2, [J

    invoke-virtual {p3, p1, p2}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_7f

    .line 11601
    :cond_76
    instance-of v0, p2, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_7f

    .line 11602
    check-cast p2, Landroid/os/PersistableBundle;

    invoke-virtual {p3, p1, p2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 11604
    :cond_7f
    :goto_7f
    return-void
.end method

.method public static varargs blacklist getCarrierConfigSubset(Landroid/content/Context;I[Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 4

    .line 11711
    nop

    .line 11712
    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 11714
    :try_start_9
    invoke-virtual {p0, p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_d} :catch_e

    .line 11717
    goto :goto_17

    .line 11715
    :catch_e
    move-exception p0

    .line 11716
    const-string p0, "CarrierConfigManager"

    const-string p1, "CarrierConfigLoader is not available."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 11718
    :goto_17
    if-eqz p0, :cond_1a

    goto :goto_1f

    :cond_1a
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_1f
    return-object p0
.end method

.method public static whitelist getDefaultConfig()Landroid/os/PersistableBundle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11532
    new-instance v0, Landroid/os/PersistableBundle;

    sget-object v1, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method private greylist-max-o getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;
    .registers 2

    .line 11540
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 11541
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getCarrierConfigServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 11542
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 11538
    invoke-static {v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z
    .registers 2

    .line 11435
    if-eqz p0, :cond_c

    const-string v0, "carrier_config_applied_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public whitelist getConfig()Landroid/os/PersistableBundle;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11370
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist getConfig([Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3

    .line 11407
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getConfigByComponentForSubId(Ljava/lang/String;I)Landroid/os/PersistableBundle;
    .registers 7

    .line 11564
    invoke-virtual {p0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    .line 11566
    if-nez p2, :cond_8

    .line 11567
    const/4 p1, 0x0

    return-object p1

    .line 11570
    :cond_8
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 11571
    invoke-virtual {p2}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11572
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 11573
    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Landroid/telephony/CarrierConfigManager;->addConfig(Ljava/lang/String;Ljava/lang/Object;Landroid/os/PersistableBundle;)V

    .line 11575
    :cond_2e
    goto :goto_15

    .line 11577
    :cond_2f
    return-object v0
.end method

.method public whitelist getConfigForSubId(I)Landroid/os/PersistableBundle;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11212
    const-string v0, "Error getting config for subId "

    const-string v1, "CarrierConfigManager"

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v3

    .line 11213
    if-nez v3, :cond_26

    .line 11214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ICarrierConfigLoader is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11216
    return-object v2

    .line 11218
    :cond_26
    iget-object v4, p0, Landroid/telephony/CarrierConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/CarrierConfigManager;->mContext:Landroid/content/Context;

    .line 11219
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 11218
    invoke-interface {v3, p1, v4, v5}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getConfigForSubIdWithFeature(ILjava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_36} :catch_37

    return-object p1

    .line 11220
    :catch_37
    move-exception v3

    .line 11221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11223
    return-object v2
.end method

.method public varargs whitelist getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 9

    .line 11261
    const-string v0, "Error getting config for subId "

    const-string v1, "CarrierConfigManager"

    const-string v2, "Config keys should be non-null"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11262
    array-length v2, p2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_17

    aget-object v4, p2, v3

    .line 11263
    const-string v5, "Config key should be non-null"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11262
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 11267
    :cond_17
    :try_start_17
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v2

    .line 11268
    if-eqz v2, :cond_2e

    .line 11273
    iget-object v3, p0, Landroid/telephony/CarrierConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/CarrierConfigManager;->mContext:Landroid/content/Context;

    .line 11274
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 11273
    invoke-interface {v2, p1, v3, v4, p2}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getConfigSubsetForSubIdWithFeature(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1

    .line 11269
    :cond_2e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " ICarrierConfigLoader is null"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11271
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v2, "Carrier config loader is not available."

    invoke-direct {p2, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_50} :catch_50

    .line 11275
    :catch_50
    move-exception p2

    .line 11276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11277
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11279
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    return-object p1
.end method

.method public whitelist getDefaultCarrierServicePackageName()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11510
    const-string v0, ""

    const-string v1, "getDefaultCarrierServicePackageName ICarrierConfigLoader is null"

    const-string v2, "CarrierConfigManager"

    :try_start_6
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v3

    .line 11511
    if-nez v3, :cond_10

    .line 11512
    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11513
    return-object v0

    .line 11515
    :cond_10
    invoke-interface {v3}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v0

    .line 11516
    :catch_15
    move-exception v3

    .line 11517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11518
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 11520
    return-object v0
.end method

.method public whitelist notifyConfigChangedForSubId(I)V
    .registers 6

    .line 11459
    const-string v0, "Error reloading config for subId="

    const-string v1, "CarrierConfigManager"

    :try_start_4
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v2

    .line 11460
    if-nez v2, :cond_25

    .line 11461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ICarrierConfigLoader is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11463
    return-void

    .line 11465
    :cond_25
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ICarrierConfigLoader;->notifyConfigChangedForSubId(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_28} :catch_29

    .line 11468
    goto :goto_48

    .line 11466
    :catch_29
    move-exception v2

    .line 11467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11469
    :goto_48
    return-void
.end method

.method public whitelist overrideConfig(ILandroid/os/PersistableBundle;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/CarrierConfigManager;->overrideConfig(ILandroid/os/PersistableBundle;Z)V

    .line 11308
    return-void
.end method

.method public blacklist overrideConfig(ILandroid/os/PersistableBundle;Z)V
    .registers 7

    .line 11336
    const-string v0, "Error setting config for subId "

    const-string v1, "CarrierConfigManager"

    :try_start_4
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v2

    .line 11337
    if-nez v2, :cond_25

    .line 11338
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " ICarrierConfigLoader is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11340
    return-void

    .line 11342
    :cond_25
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ICarrierConfigLoader;->overrideConfig(ILandroid/os/PersistableBundle;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_28} :catch_29

    .line 11345
    goto :goto_48

    .line 11343
    :catch_29
    move-exception p2

    .line 11344
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11346
    :goto_48
    return-void
.end method

.method public whitelist registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V
    .registers 5

    .line 11659
    const-string v0, "Executor should be non-null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11660
    const-string v0, "Listener should be non-null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11662
    iget-object v0, p0, Landroid/telephony/CarrierConfigManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 11663
    if-eqz v0, :cond_1a

    .line 11666
    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyRegistryManager;->addCarrierConfigChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 11667
    return-void

    .line 11664
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telephony registry service is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist unregisterCarrierConfigChangeListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V
    .registers 4

    .line 11678
    const-string v0, "Listener should be non-null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11680
    iget-object v0, p0, Landroid/telephony/CarrierConfigManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 11681
    if-eqz v0, :cond_15

    .line 11684
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyRegistryManager;->removeCarrierConfigChangedListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 11685
    return-void

    .line 11682
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telephony registry service is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist updateConfigForPhoneId(ILjava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11485
    const-string v0, "Error updating config for phoneId="

    const-string v1, "CarrierConfigManager"

    :try_start_4
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v2

    .line 11486
    if-nez v2, :cond_25

    .line 11487
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " ICarrierConfigLoader is null"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11489
    return-void

    .line 11491
    :cond_25
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ICarrierConfigLoader;->updateConfigForPhoneId(ILjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_28} :catch_29

    .line 11494
    goto :goto_48

    .line 11492
    :catch_29
    move-exception p2

    .line 11493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11495
    :goto_48
    return-void
.end method
