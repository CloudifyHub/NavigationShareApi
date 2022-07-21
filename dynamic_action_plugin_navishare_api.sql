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
,p_default_application_id=>118
,p_default_id_offset=>11528808817921182
,p_default_owner=>'TESTING'
);
end;
/
 
prompt APPLICATION 118 - Magnify Image
--
-- Application Export:
--   Application:     118
--   Name:            Magnify Image
--   Date and Time:   14:58 Thursday July 21, 2022
--   Exported By:     TESTING
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 41420714058299711
--   Manifest End
--   Version:         22.1.1
--   Instance ID:     9006706218265734
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/navishare_api
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(41420714058299711)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'NAVISHARE.API'
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
,p_about_url=>'https://github.com/CloudifyHub'
,p_files_version=>6
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(36129983569210756)
,p_plugin_id=>wwv_flow_imp.id(41420714058299711)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(36130704176211491)
,p_plugin_id=>wwv_flow_imp.id(41420714058299711)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'message'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(36131365861213541)
,p_plugin_id=>wwv_flow_imp.id(41420714058299711)
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
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7661722073686F774E617669676174696F6E203D207B0D0A202020206E61763A2066756E6374696F6E287469746C652C206D6573736167652C2075726C297B0D0A2020202020202020696620286E6176696761746F722E736861726529207B0D0A202020';
wwv_flow_imp.g_varchar2_table(2) := '2020202020202020206E6176696761746F722E7368617265287B0D0A20202020202020202020202020207469746C653A207469746C652C0D0A2020202020202020202020202020746578743A206D6573736167652C0D0A20202020202020202020202020';
wwv_flow_imp.g_varchar2_table(3) := '75726C3A2075726C0D0A2020202020202020202020207D292E7468656E282829203D3E207B0D0A20202020202020202020202020616C6572742822636F7069656422293B202F2F796F752063616E20646F20736F6D657468696E672066616E6379206865';
wwv_flow_imp.g_varchar2_table(4) := '72650D0A2020202020202020202020207D290D0A2020202020202020202020202E636174636828657272203D3E207B0D0A2020202020202020202020202020616C65727428226661696C656422293B202F2F202F2F796F752063616E20646F20736F6D65';
wwv_flow_imp.g_varchar2_table(5) := '7468696E672066616E637920686572650D0A2020202020202020202020207D293B0D0A202020202020202020207D20656C7365207B0D0A202020202020202020202020616C6572742822776562207368617265206E6F7420737570706F7274656422293B';
wwv_flow_imp.g_varchar2_table(6) := '0D0A20202020202020207D0D0A202020207D2C0D0A0D0A20202020657865637574653A2066756E6374696F6E2829207B09090D0A09096C6574207469746C6520203D20746869732E616374696F6E2E61747472696275746530310D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(7) := '6C65742075726C20203D20746869732E616374696F6E2E61747472696275746530330D0A09096C6574206D657373616765203D20746869732E616374696F6E2E61747472696275746530323B0D0A090973686F774E617669676174696F6E2E6E61762874';
wwv_flow_imp.g_varchar2_table(8) := '69746C652C206D6573736167652C75726C293B0D0A097D0D0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(18068187678196024)
,p_plugin_id=>wwv_flow_imp.id(41420714058299711)
,p_file_name=>'nav.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7661722073686F774E617669676174696F6E3D7B6E61763A66756E6374696F6E28742C612C65297B6E6176696761746F722E73686172653F6E6176696761746F722E7368617265287B7469746C653A742C746578743A612C75726C3A657D292E7468656E';
wwv_flow_imp.g_varchar2_table(2) := '282828293D3E7B616C6572742822636F7069656422297D29292E63617463682828743D3E7B616C65727428226661696C656422297D29293A616C6572742822776562207368617265206E6F7420737570706F7274656422297D2C657865637574653A6675';
wwv_flow_imp.g_varchar2_table(3) := '6E6374696F6E28297B6C657420743D746869732E616374696F6E2E61747472696275746530312C613D746869732E616374696F6E2E61747472696275746530332C653D746869732E616374696F6E2E61747472696275746530323B73686F774E61766967';
wwv_flow_imp.g_varchar2_table(4) := '6174696F6E2E6E617628742C652C61297D7D3B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(18069627878196424)
,p_plugin_id=>wwv_flow_imp.id(41420714058299711)
,p_file_name=>'nav.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
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
