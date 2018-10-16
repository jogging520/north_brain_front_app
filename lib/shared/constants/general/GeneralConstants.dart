class GeneralConstants {
  /// 提示的时长（单位：秒）
  static const int    CONSTANT_COMMON_HINT_TIME  = 1;


  /// 没有网络连接提示
  static const String CONSTANT_COMMON_NETWORK_CONNECTIVITY_NONE_HINT            = '网络连接错误，请检查移动网络或者WIFI。';


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
  //HTTP请求参数中公共类别（企业）定义常量
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_CATEGORY_VALUE          = 'GansuProvincialEducationDepartment';
  //HTTP请求参数中公共会话编号定义常量
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_SESSION                 = 'session';
  //HTTP请求参数中公共用户编号定义常量
  static const String CONSTANT_COMMON_HTTP_PARAM_PUBLIC_USER                    = 'user';

  //HTTP请求的超时时间定义（毫秒）
  static const int    CONSTANT_COMMON_HTTP_REQUEST_TIMEOUT                      = 15000;



  //存储路由的path路径
  static const String CONSTANT_COMMON_ROUTE_PATH_STORAGE                        = 'storage';



  //流水号缓存数据定义常量
  static const String CONSTANT_COMMON_CACHE_SERIAL_NO                           = 'serialNo';




  static const String CONSTANT_COMMON_DEFAULT_ERROR                             = '系统发生未可知错误，请联系管理员检查。';


  static const String CONSTANT_COMMON_TEMPERORY_PUBLIC_KEY                      = '';
}