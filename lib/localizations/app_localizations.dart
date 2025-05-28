import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      // Auth
      'login': 'Login',
      'signup': 'Sign Up',
      'welcome_back': 'Glad you\'re back!',
      'email': 'Email',
      'password': 'Password',
      'forgot_password': 'Forgot Password?',
      'reset_email_sent': 'Reset email sent successfully!',
      'reset_email_error': 'Error sending reset email. Please try again.',
      'remember_me': 'Remember Me',
      'dont_have_account': 'Don\'t have an account?',
      'create_account': 'Create Account',
      'signin_with_google': 'Sign in with Google',
      'google_signin_error': 'Error signing in with Google',
      'google_signup_error': 'Error signing up with Google',
      'unexpected_error': 'Unexpected error: ',
      
      // Map Page
      'road_map': 'Road Map',
      'settings': 'Settings',
      'personal_details': 'Personal Details',
      'notifications': 'Notifications',
      'faq': 'FAQ',
      'contact_us': 'Contact Us',
      'privacy_terms': 'Privacy and Terms',
      'logout': 'Logout',
      'select_service': 'Select Service',
      'electric_charging': 'Electric Charging',
      'gasoline': 'Gasoline',
      'light_maintenance': 'Light Maintenance',
      'charging_trucks': 'Charging Trucks Near You',
      'enter_location': 'Enter Location or City',
      'available_trucks': 'Available Trucks',
      'request': 'Request',
      'unknown_car': 'Unknown Car',
      'loading': 'Loading...',
      'error_loading_car': 'Error loading car',
      'no_trucks_available': 'No trucks available or location not detected',
      'service_type': 'Service Type',
      'distance': 'Distance',
      'estimated_time': 'Estimated Time',
      'minutes': 'minutes',
      
      // Settings
      'language': 'Language',
      'theme': 'Theme',
      'dark_mode': 'Dark Mode',
      'light_mode': 'Light Mode',
      
      // Validation Messages
      'enter_email': 'Please enter your email',
      'enter_valid_email': 'Please enter a valid email',
      'enter_password': 'Please enter your password',
      'password_length': 'Password must be at least 6 characters',
      
      // Error Messages
      'location_disabled': 'Location Services Disabled',
      'enable_location': 'Please enable location services from device settings and try again.',
      'location_permission_denied': 'Location Permission Denied',
      'allow_location': 'Please allow location permission from app settings.',
      'error': 'Error',
      'ok': 'OK',
      'cancel': 'Cancel',
      
      // Signup Page
      'create_new_account': 'Create New Account',
      'full_name': 'Full Name',
      'phone_number': 'Phone Number',
      'car_name': 'Car Name',
      'car_type': 'Car Type',
      'birth_date': 'Birth Date',
      'confirm_password': 'Confirm Password',
      'select_car_type': 'Select Car Type',
      'electric_car': 'Electric Car',
      'gasoline_car': 'Gasoline Car',
      'signup_with_google': 'Sign up with Google',
      'already_have_account': 'Already have an account?',
      'enter_name': 'Please enter your name',
      'enter_phone': 'Please enter your phone number',
      'enter_car_name': 'Please enter your car name',
      'select_birth_date': 'Please select your birth date',
      'passwords_dont_match': 'Passwords don\'t match',
      'select_car_type_message': 'Please select your car type',
      'signup_success': 'Signup completed! Please verify your email before logging in.',
      'email_already_registered': 'This email is already registered.',
      'error_occurred': 'An error occurred during signup.',
      'unexpected_error': 'Unexpected error: ',
    },
    'ar': {
      // Auth
      'login': 'تسجيل الدخول',
      'signup': 'إنشاء حساب',
      'welcome_back': 'مرحباً بعودتك!',
      'email': 'البريد الإلكتروني',
      'password': 'كلمة المرور',
      'forgot_password': 'نسيت كلمة المرور؟',
      'reset_email_sent': 'تم إرسال بريد إعادة التعيين بنجاح!',
      'reset_email_error': 'خطأ في إرسال بريد إعادة التعيين. يرجى المحاولة مرة أخرى.',
      'remember_me': 'تذكرني',
      'dont_have_account': 'ليس لديك حساب؟',
      'create_account': 'إنشاء حساب',
      'signin_with_google': 'تسجيل الدخول باستخدام جوجل',
      'google_signin_error': 'خطأ في تسجيل الدخول باستخدام جوجل',
      'google_signup_error': 'خطأ في التسجيل باستخدام جوجل',
      'unexpected_error': 'خطأ غير متوقع: ',
      
      // Map Page
      'road_map': 'خريطة الطريق',
      'settings': 'الإعدادات',
      'personal_details': 'البيانات الشخصية',
      'notifications': 'الإشعارات',
      'faq': 'الأسئلة الشائعة',
      'contact_us': 'اتصل بنا',
      'privacy_terms': 'الخصوصية والشروط',
      'logout': 'تسجيل الخروج',
      'select_service': 'اختر الخدمة',
      'electric_charging': 'شحن كهربائي',
      'gasoline': 'بنزين',
      'light_maintenance': 'صيانة خفيفة',
      'charging_trucks': 'شاحنات الشحن القريبة منك',
      'enter_location': 'أدخل الموقع أو المدينة',
      'available_trucks': 'الشاحنات المتوفرة',
      'request': 'طلب',
      'unknown_car': 'سيارة غير معروفة',
      'loading': 'جاري التحميل...',
      'error_loading_car': 'خطأ في تحميل بيانات السيارة',
      'no_trucks_available': 'لا توجد شاحنات متوفرة أو لم يتم تحديد الموقع',
      'service_type': 'نوع الخدمة',
      'distance': 'المسافة',
      'estimated_time': 'الوقت المتوقع',
      'minutes': 'دقائق',
      
      // Settings
      'language': 'اللغة',
      'theme': 'المظهر',
      'dark_mode': 'الوضع الداكن',
      'light_mode': 'الوضع الفاتح',
      
      // Validation Messages
      'enter_email': 'الرجاء إدخال البريد الإلكتروني',
      'enter_valid_email': 'الرجاء إدخال بريد إلكتروني صحيح',
      'enter_password': 'الرجاء إدخال كلمة المرور',
      'password_length': 'يجب أن تكون كلمة المرور 6 أحرف على الأقل',
      
      // Error Messages
      'location_disabled': 'خدمات الموقع معطلة',
      'enable_location': 'الرجاء تفعيل خدمات الموقع من إعدادات الجهاز والمحاولة مرة أخرى.',
      'location_permission_denied': 'تم رفض إذن الموقع',
      'allow_location': 'الرجاء السماح بإذن الموقع من إعدادات التطبيق.',
      'error': 'خطأ',
      'ok': 'موافق',
      'cancel': 'إلغاء',
      
      // Signup Page
      'create_new_account': 'إنشاء حساب جديد',
      'full_name': 'الاسم الكامل',
      'phone_number': 'رقم الهاتف',
      'car_name': 'اسم السيارة',
      'car_type': 'نوع السيارة',
      'birth_date': 'تاريخ الميلاد',
      'confirm_password': 'تأكيد كلمة المرور',
      'select_car_type': 'اختر نوع السيارة',
      'electric_car': 'سيارة كهربائية',
      'gasoline_car': 'سيارة بنزين',
      'signup_with_google': 'التسجيل باستخدام جوجل',
      'already_have_account': 'لديك حساب بالفعل؟',
      'enter_name': 'الرجاء إدخال الاسم',
      'enter_phone': 'الرجاء إدخال رقم الهاتف',
      'enter_car_name': 'الرجاء إدخال اسم السيارة',
      'select_birth_date': 'الرجاء اختيار تاريخ الميلاد',
      'passwords_dont_match': 'كلمات المرور غير متطابقة',
      'select_car_type_message': 'الرجاء اختيار نوع السيارة',
      'signup_success': 'تم إنشاء الحساب! الرجاء التحقق من بريدك الإلكتروني قبل تسجيل الدخول.',
      'email_already_registered': 'هذا البريد الإلكتروني مسجل بالفعل.',
      'error_occurred': 'حدث خطأ أثناء التسجيل.',
      'unexpected_error': 'خطأ غير متوقع: ',
    },
  };

  String get(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }
} 