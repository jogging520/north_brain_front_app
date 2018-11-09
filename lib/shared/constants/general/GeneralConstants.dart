
//头像枚举值
enum AvatarType {
  icon,
  text
}

//类名：通用的常量定义类
class GeneralConstants {

  //主标题
  static const String CONSTANT_COMMON_APPLICATION_TITLE                         = '测试系统';

  //是否打开测试画布
  static const bool CONSTANT_COMMON_APPLICATION_DEBUG_PAINT_SIZE_ENABLED        = true;

  /// 提示的时长（单位：秒）
  static const int    CONSTANT_COMMON_HINT_TIME                                 = 1;

  static const String CONSTANT_COMMON_STRING_CRLF                               = r'[\r\n]';

  //APP文档存储路径
  static const String CONSTANT_COMMON_APPLICATION_DIRECTORY_DOCUMENT            = '/doc';
  //APP文档存储分隔符
  static const String CONSTANT_COMMON_APPLICATION_DIRECTORY_SEPARATOR           = '/';

  /// 没有网络连接提示
  static const String CONSTANT_COMMON_NETWORK_CONNECTIVITY_NONE_HINT            = '网络连接错误，请检查移动网络或者WIFI。';
  //拷贝成功提示
  static const String CONSTANT_COMMON_COPY_SUCCESS_HINT                         = '拷贝成功。';
  //HTTP基础URL
  static const String CONSTANT_COMMON_HTTP_BASE_URL                             = 'http://223.105.5.116:9090/';
  //HTTP的get方法
  static const String CONSTANT_COMMON_HTTP_METHOD_GET                           = 'get';
  //HTTP的post方法
  static const String CONSTANT_COMMON_HTTP_METHOD_POST                          = 'post';
  //HTTP的put方法
  static const String CONSTANT_COMMON_HTTP_METHOD_PUT                           = 'put';
  //HTTP的delete方法
  static const String CONSTANT_COMMON_HTTP_METHOD_DELETE                        = 'delete';
  //HTTP的options方法
  static const String CONSTANT_COMMON_HTTP_METHOD_OPTIONS                       = 'options';

  //HTTP请求头请求数据类型定义常量
  static const String CONSTANT_COMMON_HTTP_HEADER_CONTENT_TYPE                  = 'content-type';
  //HTTP请求头请求数据类型取值常量
  static const String CONSTANT_COMMON_HTTP_HEADER_CONTENT_TYPE_VALUE            = 'application/json';
  //HTTP请求头接收数据类型定义常量
  static const String CONSTANT_COMMON_HTTP_HEADER_ACCEPT                        = 'Accept';
  //HTTP请求头接收数据类型取值常量
  static const String CONSTANT_COMMON_HTTP_HEADER_ACCEPT_VALUE                  = 'application/json';
  //HTTP请求头API KEY定义常量
  static const String CONSTANT_COMMON_HTTP_HEADER_API_KEY                       = 'apiKey';
  //HTTP请求头API KEY取值
  static const String CONSTANT_COMMON_HTTP_HEADER_API_KEY_VALUE                 = 'ENsbus03E025Mmu7yPZQUtNNpkpzhjVtADFw3wedawefaw';
  //HTTP请求参数中公共令牌定义常量
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_TOKEN                   = 'token';
  //HTTP请求参数中公共流水号定义常量
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_SERIAL_NO               = 'serialNo';
  //HTTP请求参数中公共应用类型定义常量
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_APP_TYPE                = 'appType';
  //HTTP请求参数中公共应用类型取值
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_APP_TYPE_VALUE          = 'app';
  //HTTP请求参数中公共类别（企业）定义常量
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_CATEGORY                = 'category';
  //HTTP请求参数中公共类别（企业）定义取值
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_CATEGORY_VALUE          = 'GansuProvincialEducationDepartment';
  //HTTP请求参数中公共会话编号定义常量
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_SESSION                 = 'session';
  //HTTP请求参数中公共用户编号定义常量
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_USER                    = 'user';

  //HTTP请求的超时时间定义（毫秒）
  static const int    CONSTANT_COMMON_HTTP_REQUEST_TIMEOUT                      = 15000;


  //app路由未找到错误
  static const String CONSTANT_COMMON_PAGE_ROUTE_NOT_FOUND_ERROR                = '未找到页面路由信息。';

  //存储路由的path路径
  static const String CONSTANT_COMMON_ROUTE_PATH_STORAGE                        = 'storage';



  //流水号缓存数据定义常量
  static const String CONSTANT_COMMON_CACHE_SERIAL_NO                           = 'serialNo';



  //默认错误描述
  static const String CONSTANT_COMMON_HTTP_DEFAULT_ERROR                        = '网络不可用。';
  //默认错误描述
  static const String CONSTANT_COMMON_HTTP_RESPONSE_ERROR                       = '服务器响应错误:';
  //网络连接超时错误描述
  static const String CONSTANT_COMMON_HTTP_CONNECT_TIMEOUT_ERROR                = '网络连接超时，请检查网络。';
  //网络连接超时错误描述
  static const String CONSTANT_COMMON_HTTP_RECEIVE_TIMEOUT_ERROR                = '网络接收超时，请检查网络。';


  //临时公钥
  static const String CONSTANT_COMMON_TEMPORARY_PUBLIC_KEY                      = 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCgFGVfrY4jQSoZQWWygZ83roKXWD4YeT2x2p41dGkPixe73rT2IW04glagN2vgoZoHuOPqa5and6kAmK2ujmCHu6D1auJhE2tXP+yLkpSiYMQucDKmCsWMnW9XlC5K7OSL77TXXcfvTvyZcjObEz6LIBRzs6+FqpFbUO9SJEfh6wIDAQAB';

  //token日志获取提示
  static const String CONSTANT_COMMON_LOG_TOKEN_GET_PROMPT                      = '获取到token：';
  //token日志设置提示
  static const String CONSTANT_COMMON_LOG_TOKEN_SAVE_PROMPT                     = '存储token：';
  //token日志清除提示
  static const String CONSTANT_COMMON_LOG_TOKEN_DELETE_PROMPT                   = '清除token：';
  //cache日志保存提示
  static const String CONSTANT_COMMON_LOG_CACHE_SAVE_PROMPT                     = '保存到本地缓存：';
  //cache日志保存提示
  static const String CONSTANT_COMMON_LOG_CACHE_GET_PROMPT                      = '获取本地缓存：';
  //cache日志保存提示
  static const String CONSTANT_COMMON_LOG_CACHE_DELETE_PROMPT                   = '删除本地缓存：';
  //cache日志保存提示
  static const String CONSTANT_COMMON_LOG_SERIAL_NO_PROMPT                      = '当前流水号：';
  //系统启动提示
  static const String CONSTANT_COMMON_LOG_APPLICATION_LAUNCH_PROMPT             = '系统开始启动...';
  //HTTP请求参数提示
  static const String CONSTANT_COMMON_LOG_HTTP_REQUEST_PARAMETERS_PROMPT        = 'http请求参数为：';
  //HTTP请求url提示
  static const String CONSTANT_COMMON_LOG_HTTP_REQUEST_URL_PROMPT               = 'http请求URL为：';
  //HTTP请求body提示
  static const String CONSTANT_COMMON_LOG_HTTP_REQUEST_BODY_PROMPT              = 'http请求BODY为：';
  //HTTP请求body提示
  static const String CONSTANT_COMMON_LOG_HTTP_RESPONSE_BODY_PROMPT             = 'http响应BODY为：';



  //操作记录类型定义常量
  static const String CONSTANT_MODULE_SHARED_MODEL_OPERATION_TYPE               = 'COMMON';
  //操作记录类中的操作在用状态定义常量
  static const String CONSTANT_MODULE_SHARED_MODEL_OPERATION_STATUS_ACTIVE      = 'ACTIVE';
  //操作记录描述定义常量
  static const String CONSTANT_MODULE_SHARED_MODEL_OPERATION_DESCRIPTION        = 'auto generated by app.';

}