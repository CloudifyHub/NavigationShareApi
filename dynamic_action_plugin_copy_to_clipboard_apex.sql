prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_220100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>9007032660868394
,p_default_application_id=>144
,p_default_id_offset=>0
,p_default_owner=>'TESTING'
);
end;
/
 
prompt APPLICATION 144 - test charts
--
-- Application Export:
--   Application:     144
--   Name:            test charts
--   Date and Time:   14:39 Thursday July 21, 2022
--   Exported By:     TESTING
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 23352886324112314
--   Manifest End
--   Version:         22.1.1
--   Instance ID:     9006706218265734
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/copy_to_clipboard_apex
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(23352886324112314)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COPY.TO.CLIPBOARD.APEX'
,p_display_name=>'navishare'
,p_category=>'EFFECT'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_javascript_file_urls=>'#APP_FILES#nav#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION render(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                p_plugin         IN apex_plugin.t_plugin)',
'    RETURN apex_plugin.t_dynamic_action_render_result ',
'IS',
'  l_result       apex_plugin.t_dynamic_action_render_result;',
'BEGIN',
'  l_result.attribute_01 := p_dynamic_action.attribute_01;',
'  l_result.attribute_02 := p_dynamic_action.attribute_02;',
'  l_result.attribute_03 := p_dynamic_action.attribute_03;',
'  l_result.javascript_function := ''showNavigation.execute'';',
'',
'  RETURN l_result;',
'',
'END render;'))
,p_api_version=>2
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/akilr/Copy-To-Clipboard'
,p_files_version=>2
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(18062155835023359)
,p_plugin_id=>wwv_flow_imp.id(23352886324112314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(18062876442024094)
,p_plugin_id=>wwv_flow_imp.id(23352886324112314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'message'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(18063538127026144)
,p_plugin_id=>wwv_flow_imp.id(23352886324112314)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'url'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
