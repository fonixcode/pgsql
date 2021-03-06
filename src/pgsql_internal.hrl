
% Backend messages
-type pgsql_oid() :: integer().
-type pgsql_procid() :: integer().
-type pgsql_format() :: text | binary.
-type pgsql_error_and_mention_field_type() ::
    severity | code | message | detail | hint | position | internal_position
    | internal_query | where | file | line | routine | {unknown, byte()}.
-type pgsql_error_and_mention_field() ::
    {pgsql_error_and_mention_field_type(), binary()}.

% from pg_type.h
-define(BOOLOID, 16).
-define(BYTEAOID, 17).
-define(CHAROID, 18).
-define(NAMEOID, 19).
-define(INT8OID, 20).
-define(INT2OID, 21).
-define(INT2VECTOROID, 22).
-define(INT4OID, 23).
-define(REGPROCOID, 24).
-define(TEXTOID, 25).
-define(OIDOID, 26).
-define(TIDOID, 27).
-define(XIDOID, 28).
-define(CIDOID, 29).
-define(OIDVECTOROID, 30).
-define(JSONOID, 114).
-define(XMLOID, 142).
-define(PGNODETREEOID, 194).
-define(POINTOID, 600).
-define(LSEGOID, 601).
-define(PATHOID, 602).
-define(BOXOID, 603).
-define(POLYGONOID, 604).
-define(LINEOID, 628).
-define(FLOAT4OID, 700).
-define(FLOAT8OID, 701).
-define(ABSTIMEOID, 702).
-define(RELTIMEOID, 703).
-define(TINTERVALOID, 704).
-define(UNKNOWNOID, 705).
-define(CIRCLEOID, 718).
-define(CASHOID, 790).
-define(MACADDROID, 829).
-define(INETOID, 869).
-define(CIDROID, 650).
-define(INT4ARRAYOID, 1007).
-define(TEXTARRAYOID, 1009).
-define(FLOAT4ARRAYOID, 1021).
-define(ACLITEMOID, 1033).
-define(CSTRINGARRAYOID, 1263).
-define(BPCHAROID, 1042).
-define(VARCHAROID, 1043).
-define(DATEOID, 1082).
-define(TIMEOID, 1083).
-define(TIMESTAMPOID, 1114).
-define(TIMESTAMPTZOID, 1184).
-define(INTERVALOID, 1186).
-define(TIMETZOID, 1266).
-define(BITOID, 1560).
-define(VARBITOID, 1562).
-define(NUMERICOID, 1700).
-define(REFCURSOROID, 1790).
-define(REGPROCEDUREOID, 2202).
-define(REGOPEROID, 2203).
-define(REGOPERATOROID, 2204).
-define(REGCLASSOID, 2205).
-define(REGTYPEOID, 2206).
-define(REGTYPEARRAYOID, 2211).
-define(UUIDOID, 2950). % not #defined
-define(TSVECTOROID, 3614).
-define(GTSVECTOROID, 3642).
-define(TSQUERYOID, 3615).
-define(REGCONFIGOID, 3734).
-define(REGDICTIONARYOID, 3769).
-define(INT4RANGEOID, 3904).
-define(RECORDOID, 2249).
-define(RECORDARRAYOID, 2287).
-define(CSTRINGOID, 2275).
-define(ANYOID, 2276).
-define(ANYARRAYOID, 2277).
-define(VOIDOID, 2278).
-define(TRIGGEROID, 2279).
-define(LANGUAGE_HANDLEROID, 2280).
-define(INTERNALOID, 2281).
-define(OPAQUEOID, 2282).
-define(ANYELEMENTOID, 2283).
-define(ANYNONARRAYOID, 2776).
-define(ANYENUMOID, 3500).
-define(FDW_HANDLEROID, 3115).
-define(ANYRANGEOID, 3831).

-define(PG_TYPE_H_TYPES_DICT, [
{?BOOLOID, bool},
{?BYTEAOID, bytea},
{?CHAROID, char},
{?NAMEOID, name},
{?INT8OID, int8},
{?INT2OID, int2},
{?INT2VECTOROID, int2vector},
{?INT4OID, int4},
{?REGPROCOID, regproc},
{?TEXTOID, text},
{?OIDOID, oid},
{?TIDOID, tid},
{?XIDOID, xid},
{?CIDOID, cid},
{?OIDVECTOROID, oidvector},
{?JSONOID, json},
{?XMLOID, xml},
{?PGNODETREEOID, pgnodetree},
{?POINTOID, point},
{?LSEGOID, lseg},
{?PATHOID, path},
{?BOXOID, box},
{?POLYGONOID, polygon},
{?LINEOID, line},
{?FLOAT4OID, float4},
{?FLOAT8OID, float8},
{?ABSTIMEOID, abstime},
{?RELTIMEOID, reltime},
{?TINTERVALOID, tinterval},
{?UNKNOWNOID, unknown},
{?CIRCLEOID, circle},
{?CASHOID, cash},
{?MACADDROID, macaddr},
{?INETOID, inet},
{?CIDROID, cidr},
{?INT4ARRAYOID, int4array},
{?TEXTARRAYOID, textarray},
{?FLOAT4ARRAYOID, float4array},
{?ACLITEMOID, aclitem},
{?CSTRINGARRAYOID, cstringarray},
{?BPCHAROID, bpchar},
{?VARCHAROID, varchar},
{?DATEOID, date},
{?TIMEOID, time},
{?TIMESTAMPOID, timestamp},
{?TIMESTAMPTZOID, timestamptz},
{?INTERVALOID, interval},
{?TIMETZOID, timetz},
{?BITOID, bit},
{?VARBITOID, varbit},
{?NUMERICOID, numeric},
{?REFCURSOROID, refcursor},
{?REGPROCEDUREOID, regprocedure},
{?REGOPEROID, regoper},
{?REGOPERATOROID, regoperator},
{?REGCLASSOID, regclass},
{?REGTYPEOID, regtype},
{?REGTYPEARRAYOID, regtypearray},
{?UUIDOID, uuid}, % not #defined
{?TSVECTOROID, tsvector},
{?GTSVECTOROID, gtsvector},
{?TSQUERYOID, tsquery},
{?REGCONFIGOID, regconfig},
{?REGDICTIONARYOID, regdictionary},
{?INT4RANGEOID, int4range},
{?RECORDOID, record},
{?RECORDARRAYOID, recordarray},
{?CSTRINGOID, cstring},
{?ANYOID, any},
{?ANYARRAYOID, anyarray},
{?VOIDOID, void},
{?TRIGGEROID, trigger},
{?LANGUAGE_HANDLEROID, language_handler},
{?INTERNALOID, internal},
{?OPAQUEOID, opaque},
{?ANYELEMENTOID, anyelement},
{?ANYNONARRAYOID, anynonarray},
{?ANYENUMOID, anyenum},
{?FDW_HANDLEROID, fdw_handler},
{?ANYRANGEOID, anyrange}
]).

-record(authentication_ok, {}).
-record(authentication_kerberos_v5, {}).
-record(authentication_cleartext_password, {}).
-record(authentication_md5_password, {
    salt :: binary()
}).
-record(authentication_scm_credential, {}).
-record(authentication_gss, {}).
-record(authentication_sspi, {}).
-record(authentication_gss_continue, {
    data :: binary()
}).
-record(backend_key_data, {
    procid :: pgsql_procid(),
    secret :: integer()
}).
-record(bind_complete, {}).
-record(close_complete, {}).
-record(command_complete, {
    command_tag :: iodata()
}).
-record(copy_data, {
    data :: any()
}).
-record(copy_done, {}).
-record(copy_in_response, {
    format :: pgsql_format(),
    columns :: non_neg_integer(),
    column_formats :: [pgsql_format()]
}).
-record(copy_out_response, {
    format :: pgsql_format(),
    columns :: non_neg_integer(),
    column_formats :: [pgsql_format()]
}).
-record(copy_both_response, {
    format :: pgsql_format(),
    columns :: non_neg_integer(),
    column_formats :: [pgsql_format()]
}).
-record(data_row, {
    values :: [null | binary()]
}).
-record(empty_query_response, {}).
-record(error_response, {
    fields :: [pgsql_error_and_mention_field()]
}).
-record(function_call_response, {
    value :: null | iodata()
}).
-record(no_data, {}).
-record(notice_response, {
    fields :: [pgsql_error_and_mention_field()]
}).
-record(notification_response, {
    procid :: pgsql_procid(),
    channel :: iodata(),
    payload :: iodata()
}).
-record(parameter_description, {
    count :: non_neg_integer(),
    data_types :: [pgsql_oid()]
}).
-record(parameter_status, {
    name :: iodata(),
    value :: iodata()
}).
-record(parse_complete, {}).
-record(portal_suspended, {}).
-record(ready_for_query, {
    transaction_status :: idle | transaction | error
}).
-record(row_description_field, {
    name :: iodata(),
    table_oid :: pgsql_oid(),
    attr_number :: integer(),
    data_type_oid :: pgsql_oid(),
    data_type_size :: integer(),
    type_modifier :: integer(),
    format :: pgsql_format()
}).
-record(row_description, {
    count :: non_neg_integer(),
    fields :: [#row_description_field{}]
}).

-type pgsql_backend_message() ::
        #authentication_cleartext_password{} |
        #authentication_gss_continue{} |
        #authentication_gss{} |
        #authentication_kerberos_v5{} |
        #authentication_md5_password{} |
        #authentication_ok{} |
        #authentication_scm_credential{} |
        #authentication_sspi{} |
        #backend_key_data{} |
        #bind_complete{} |
        #close_complete{} |
        #command_complete{} |
        #copy_both_response{} |
        #copy_data{} |
        #copy_done{} |
        #copy_in_response{} |
        #copy_out_response{} |
        #data_row{} |
        #empty_query_response{} |
        #error_response{} |
        #function_call_response{} |
        #no_data{} |
        #notice_response{} |
        #notification_response{} |
        #parameter_description{} |
        #parameter_status{} |
        #parse_complete{} |
        #portal_suspended{} |
        #ready_for_query{} |
        #row_description{}.
