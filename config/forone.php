<?php
/**
 * User : YuGang Yang
 * Date : 7/27/15
 * Time : 15:26
 * Email: smartydroid@gmail.com
 */

return [
    'disable_routes' => false, //禁用自带routes，默认启用
    'auth' => [
        'administrator_table'      => 'admins',
        'administrator_auth_controller' => 'Forone\Controllers\Auth\AuthController'
    ],
    'site_config'                 => [
        'site_name'   => 'ShiJiFeng',
        'title'       => '世纪风',
        'description' => '互联网家咨询',
        'logo'        => 'vendor/forone/images/logo.png'
    ],
    'RedirectAfterLoginPath'      => 'admin/roles', // 登录后跳转页面
    'RedirectIfAuthenticatedPath' => 'admin/roles', // 如果授权后直接跳转到指定页面

    'menus'                       => [
        '权限设置' => [
            'icon'       => 'mdi-toggle-radio-button-on',
            'permission' => 'admin',
            'children'   => [
                '角色管理'  => [
                    'uri' => 'roles',
                ],
                '权限管理'  => [
                    'uri' => 'permissions',
                ],
                '管理员管理' => [
                    'uri' => 'admins',
                ]
            ],
        ],
        "分类管理"=>[
            'icon'       => 'mdi-toggle-radio-button-on',
            'permission' => 'admin',
            'children'   => [
                '栏目管理' => [
                    'uri' => 'categories',
                ]
            ]
        ],
        "标签管理"=>[
            'icon'       => 'mdi-toggle-radio-button-on',
            'permission' => 'admin',
            'children'   => [
                '标签列表' => [
                    'uri' => 'tags',
                ]
            ]
        ],
        "素材管理"=>[
            'icon'       => 'mdi-toggle-radio-button-on',
            'permission' => 'editor',
            'children'   => [
                '素材列表' => [
                    'uri' => 'materials',
                ]
            ]
        ],
        "投稿申请"=>[
            'icon'       => 'mdi-toggle-radio-button-on',
            'permission' => 'admin',
            'children'   => [
                '审核列表'  => [
                    'uri' => 'contributes',
                ],
            ],
        ],
        '日刊管理' => [
            'icon'       => 'mdi-toggle-radio-button-on',
            'permission' => 'admin',
            'children'   => [
                '添加日刊'  => [
                    'uri' => 'journals',
                ],
                '日刊列表'  => [
                    'uri' => 'journals/show',
                ],
            ],
        ],
        '反馈意见' => [
            'icon'       => 'mdi-toggle-radio-button-on',
            'permission' => 'admin',
            'children'   => [
                '反馈列表'  => [
                    'uri' => 'feedbacks',
                ],
            ],
        ],
    ],

    'qiniu'                       => [

        'host'       => env('QINIU_HOST', 'http://7xr2od.com1.z0.glb.clouddn.com/'), //your qiniu host url
        'access_key' => env('QINIU_AK', '7pls73ID2k9YGUvPgQUVKtpfQC7hGRX6w9V8d-dj'), //for test
        'secret_key' => env('QINIU_SK', 'xti-ZteaKN5q31uVw6ElLc86RNKPnBFGW-voc7ny'), //for test
        'bucket'     => env('QINIU_BT', 'shijifeng')
    ]
];