
//头像枚举值
enum AvatarType {
  icon,
  text
}

//加载状态枚举值
enum LoadingStatus {
  idle,
  loading,
  error,
  success,
}

//类名：通用的常量定义类
class GeneralConstants {

  //主标题
  static const String CONSTANT_COMMON_APPLICATION_TITLE                         = '测试系统';

  //是否打开测试画布
  static const bool CONSTANT_COMMON_APPLICATION_DEBUG_PAINT_SIZE_ENABLED        = false;

  /// 提示的时长（单位：秒）
  static const int    CONSTANT_COMMON_HINT_TIME                                 = 1;
  //提示标题
  static const String CONSTANT_COMMON_PROMPT_ERROR_TITLE                        = '提示';

  //回车换行符
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
  static const String CONSTANT_COMMON_HTTP_BASE_URL                             = 'http://117.157.24.67:9001/app/';
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
  static const String CONSTANT_COMMON_HTTP_HEADER_API_KEY_VALUE                 = 'ad323sfaef40asSDUefevBGy78781xgAPIO2E788abnm7URqwsUssIOd';
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
  //提示框的停留时长
  static const Duration CONSTANT_COMMON_PROMPT_FLUSH_BAR_DURATION               = Duration(seconds: 3);

  //app路由未找到错误标题
  static const String CONSTANT_COMMON_PAGE_ROUTE_NOT_FOUND_TITLE                = '错误提示';
  //app路由未找到错误
  static const String CONSTANT_COMMON_PAGE_ROUTE_NOT_FOUND_ERROR                = '未找到页面路由信息。';

  //存储路由的path路径
  static const String CONSTANT_COMMON_ROUTE_PATH_STORAGE                        = 'storage';
  //登录路由的path路径
  static const String CONSTANT_COMMON_ROUTE_PATH_LOGIN                          = 'login';
  //菜单路由的path路径
  static const String CONSTANT_COMMON_ROUTE_PATH_MENU                           = 'menus/app';
  //政策路由的path路径
  static const String CONSTANT_COMMON_ROUTE_PATH_POLICY                         = 'policies';
  //操作记录路由的path路径
  static const String CONSTANT_COMMON_ROUTE_PATH_OPERATION                      = 'operations';
  //操作记录路由的path路径
  static const String CONSTANT_COMMON_ROUTE_PATH_SUMMARY                        = 'summaries';
  //交易路由的path路径
  static const String CONSTANT_COMMON_ROUTE_PATH_TRADE                          = 'trades';



  //流水号缓存数据定义常量
  static const String CONSTANT_COMMON_CACHE_SERIAL_NO                           = 'serialNo';
  //属性设置缓存数据定义常量
  static const String CONSTANT_COMMON_CACHE_SETTING                             = 'setting';



  //默认错误描述
  static const String CONSTANT_COMMON_HTTP_DEFAULT_ERROR                        = '网络请求异常。';
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
  //setting日志获取提示
  static const String CONSTANT_COMMON_LOG_SETTING_GET_PROMPT                    = '获取到setting：';
  //setting日志设置提示
  static const String CONSTANT_COMMON_LOG_SETTING_SAVE_PROMPT                   = '存储setting：';
  //setting日志清除提示
  static const String CONSTANT_COMMON_LOG_SETTING_DELETE_PROMPT                 = '清除setting：';
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
  //会话类型中的用户名定义常量
  static const String CONSTANT_MODULE_SHARED_MODEL_SESSION_USERNAME             = 'userName';
  //会话类型中的密码定义常量
  static const String CONSTANT_MODULE_SHARED_MODEL_SESSION_PASSWORD             = 'password';
  //会话类型中的手机号码定义常量
  static const String CONSTANT_MODULE_SHARED_MODEL_SESSION_MOBILE               = 'mobile';

  ///组件常量定义
  //LOGIN组件的用户名标签
  static const String CONSTANT_WIDGET_LOGIN_USERNAME_LABEL                      = '用户名';
  //LOGIN组件的密码标签
  static const String CONSTANT_WIDGET_LOGIN_PASSWORD_LABEL                      = '密  码';
  //登录按钮
  static const String CONSTANT_WIDGET_LOGIN_BUTTON_TEXT                         = '登录';

  //app bar的标题列表
  static const List<String> CONSTANT_WIDGET_BOTTOM_TITLES                       = ['首页', '交易', '谷仓', '我的'];
  //poster组件的长宽比
  static const double CONSTANT_WIDGET_POSTER_RATIO                              = 0.7;


  //闪屏页面停留的时间
  static const int CONSTANT_PAGE_SPLASH_DELAY_DURATION                          = 3;
  //总体页面appBar的高度
  static const double CONSTANT_PAGE_APP_BAR_HEIGHT                              = 48.0;
  //总体页面appBar的立体阴影高度
  static const double CONSTANT_PAGE_APP_BAR_ELEVATION                           = 1.0;


  //搜索历史存储文件名称
  static const String CONSTANT_SEARCH_TRAIL_FILE_NAME                         = 'trail.txt';
  //搜索历史的展示长度
  static const int CONSTANT_SEARCH_SELF_LIST_LENGTH                         = 10;
  //搜索热门的展示长度
  static const int CONSTANT_SEARCH_HOT_LIST_LENGTH                         = 10;
}