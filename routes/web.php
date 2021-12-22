<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix'=>'/api','middleware'=>['api']],function(){
    Route::post('ApiVerifyOtp', 'Api\FrontendController@apiVerifyOtp');
    Route::post('registerEmail', 'Api\FrontendController@apiRegisterEmail');
    Route::post('APIsendsms', 'Api\FrontendController@apiSendSMS');
    Route::post('country', 'Api\CountryController@index')->name('country.country_details');
    Route::post('loginEmail', 'Api\FrontendController@apiLoginEmail');
    Route::post('createAsker', 'Api\AskerController@createAsker');
    Route::post('questionList', 'Api\AskerController@questionList');
    Route::post('askerQuestion', 'Api\AskerController@askerQuestion');
    Route::post('askerQuestionList', 'Api\AskerController@askerQuestionList');
    Route::post('publishAsker', 'Api\AskerController@publishAsker');
    Route::post('allAsker', 'Api\AskerController@allAsker');
    Route::post('activeAsker', 'Api\AskerController@activeAsker');
    Route::post('archivedAsker', 'Api\AskerController@archivedAsker');
    Route::post('askerCode', 'Api\AskerController@askerCode');
    Route::post('submitAnswer', 'Api\AskerController@submitAnswer');
    Route::post('nextQuestionList', 'Api\AskerController@nextQuestionList');
    Route::post('viewAnswers', 'Api\AskerController@viewAnswers');
    Route::post('sendAnswers', 'Api\AskerController@sendAnswers');
    Route::post('videoRating', 'Api\AskerController@videoRating');
    Route::post('inactiveAsker', 'Api\AskerController@inactiveAsker');
    Route::post('askerTitle', 'Api\AskerController@askerTitle');
    Route::post('askerEditQuestion', 'Api\AskerController@askerEditQuestion');
    Route::post('shareAsker', 'Api\AskerController@shareAsker');
    Route::post('promotionalVideo', 'Api\FrontendController@promotional_video');
    Route::post('answerList', 'Api\AskerController@answerList')->name('asker.answer_list');
    Route::post('share-asker-send-mail-api', 'Api\AskerController@share_asker_send_mail_api')->name('asker.share-asker');
    Route::post('forgotPassword', 'Api\ForgotPasswordController@forgotPassword');
    Route::post('forgotPasswordVerifyOtp', 'Api\ForgotPasswordController@forgotPasswordVerifyOtp');
    Route::post('forgotresetPassword', 'Api\ForgotPasswordController@resetPassword');
    Route::post('viewAnswers', 'Api\AskerController@viewAnswers');

});
Auth::routes(['register'=>false]);
Route::get('/login', function () {
    return view('auth.login');
});
// Backend section start
Route::group(['prefix'=>'admin','middleware'=>['admin']],function(){
    Route::get('/','PromotionalVideoController@index');

    Route::get('/home','AdminController@index')->name('admin');
    Route::resource('users','UsersController');
    Route::resource('question','QuestionController');
    Route::resource('brand','BrandController');
    Route::resource('video','PromotionalVideoController');
    Route::resource('job','JobController');
    Route::get('/profile','AdminController@profile')->name('admin-profile');
    Route::post('/profile/{id}','AdminController@profileUpdate')->name('profile-update');
    Route::resource('/message','MessageController');
    Route::get('/message/five','MessageController@messageFive')->name('messages.five');
    Route::get('settings','AdminController@settings')->name('settings');
    Route::post('setting/update','AdminController@settingsUpdate')->name('settings.update');
    Route::get('change-password', 'AdminController@changePassword')->name('change.password.form');
    Route::post('change-password-store', 'AdminController@changPasswordStore')->name('admin-change.password');
});

Route::view('{path?}', 'welcome');
