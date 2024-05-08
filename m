Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC4E8BF7E0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 09:59:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F13A44850
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 07:59:49 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2079.outbound.protection.outlook.com [40.107.244.79])
	by lists.linaro.org (Postfix) with ESMTPS id 9910C3F38C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 07:59:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="LZgDq/y/";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.79 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YZfJFgcZJ2h6chrV4TdVOUs3VkAN4jGCmN3J9eI6bdE+pb3E+v5AsS5sNzLcJkomiPVwPypnbt7LYEn3Ix9qrYoMjdvjPUH6VS8R9aoGN9GuKTohq112YIxysaQdbPK3HCzWgh7ahsMnqzmIIxiZI4v7yKz3hSzcFze+Qlu1kq30Sv1X+33rHuyDiqvP6moir+pMUa0KcotHKksoomqeHTXKXkajHvBcdoqy2eYrrTZ9bY52KFpGvXJpVIYTeuen+k8DNQT8OaqAUbxJXxOsvY9zAN1EHSODcH9BqyrQgKbnLzlKRyF10XXTh2jojguCLxeoeJBuoKqk+2fi8vl7hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=COg2CIfxRuDWjHNCwTSk7LYGNIvP+L37qxDtElZrmwQ=;
 b=Cbw+d4uRGtocfaqfUUJppwqiLSwbDwvnK+P7L5lA6NuVLvP0O40HOa9cX8O8VtoHZLP8JltR/3nRLgf4h29FRIDddsNh8rF5gxvFqtQDiv9864i9fpt4GVc9qjzeyUmP2TBnJcWMAKHIBVoMNBBqPha1lM96UwAb+dfACFc0JH1HgTX2ir4C6PagGK0B+DlCJ2TeE9gwmjXZryP5lCrV/hsT3s1PBOW8RTUVArLcB87ULuF6YpZ+eUMoSWatl0ft/oFHAgFwluVLQc8UpkiZ5ZofaNtzZxHWEhLUfjspmJ6fpxxvxO4eQ7kvkdxnLz/eo4GkzMWT3ukjGI7/OQ4D0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=COg2CIfxRuDWjHNCwTSk7LYGNIvP+L37qxDtElZrmwQ=;
 b=LZgDq/y/cXOyY+RBTD8Bl+xOZhKJlQE5s8yQjSF/TZ3bqdAHqlZ6c0LBfeXF+6R2rRfae+l+dhBHwkXN/6amG2Y2WCz0osl3VTzpwSgYR0sEA/yuJK2s3+qtrcvt1oQcFt5xYe2DN1UOKfP8bCOo33cnVCq90sjZotlVdIfA/ho=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB7246.namprd12.prod.outlook.com (2603:10b6:806:2bc::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.43; Wed, 8 May
 2024 07:59:35 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%2]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 07:59:35 +0000
Message-ID: <e1a2d134-83a4-4833-939b-a53fe31553a4@amd.com>
Date: Wed, 8 May 2024 09:59:26 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Christian Brauner <brauner@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 keescook@chromium.org, axboe@kernel.dk, dri-devel@lists.freedesktop.org,
 io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name,
 linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 minhquangbui99@gmail.com, sumit.semwal@linaro.org,
 syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com,
 syzkaller-bugs@googlegroups.com
References: <202405031110.6F47982593@keescook>
 <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV>
 <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner>
 <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wj6XL9MGCd_nUzRj6SaKeN0TsyTTZDFpGdW34R+zMZaSg@mail.gmail.com>
 <b1728d20-047c-4e28-8458-bf3206a1c97c@gmail.com>
 <ZjoKX4nmrRdevyxm@phenom.ffwll.local>
 <CAHk-=wgh5S-7sCCqXBxGcXHZDhe4U8cuaXpVTjtXLej2si2f3g@mail.gmail.com>
 <d68417df-1493-421a-8558-879abe36d6fa@gmail.com>
 <36169520-56e4-4a01-a467-051a94c7f810@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <36169520-56e4-4a01-a467-051a94c7f810@mailbox.org>
X-ClientProxiedBy: FR3P281CA0013.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB7246:EE_
X-MS-Office365-Filtering-Correlation-Id: b9a89be3-7906-4ab7-e658-08dc6f34cd03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|7416005|376005|1800799015|366007|921011;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZDlGQTlra0tGRFFGcStQOUk1SS9odDFuOTR5aU1GWkdUNjhkajRLa2o3V0V1?=
 =?utf-8?B?VWxaK2JXckdiaGQzaXNtTEUxKzh3YXVRc2c0THNOcDVnY0pIdHZVNklXa3FN?=
 =?utf-8?B?SU9ocWFBaWo5eDBEK2VQU0t3RGc3YmY0ZmowTnFBZmhLZC9ydmFvQWZZanVH?=
 =?utf-8?B?bkRZb2dYcVhTdUFvMzBGV0t3K1I0VHpYL1lUUGFQVU9tSTJJbUJFYnd1d2x6?=
 =?utf-8?B?Z1hqQmlzR3gyckZmVnEvU1k1anlRa2ZYV3NwbGFGdElSTGV2UXlqOW80YWkw?=
 =?utf-8?B?b0EyRnArMytaNTJVMWpsV0FpMk1WL1cyTHlnWWlLdVFQelVLYkY1RWZJcXhL?=
 =?utf-8?B?MVNXdkRoRWtzc2JGQlJmeHhuYk5uQzZWRWZnSHRGd2JGRkpVWDh4cVhTVTFO?=
 =?utf-8?B?OEhNSm5mL2t2RmNFN1Z1eVBKeC91UnV2N05Ra2RFOThSUC9xN1RhWUkrSlNr?=
 =?utf-8?B?UmkxbnM4SzludU5HUkRSRTFOL3ppZUt5aWhUUWZEK3BEV25YU2dnY0QwVlpD?=
 =?utf-8?B?NVU2WE5jaVMvWkdETTlqMjlCZEJwNnZyeXArRzYzNzNXRjZ1MFBKVHdKUldq?=
 =?utf-8?B?YXcreGFBU3NjWEszOUlJUGFQLzUrWUVnNjF2d3RyWTZ6Ny9ocUEvSUpDc1dV?=
 =?utf-8?B?bDF0a0xFZkd4SS9VQU9iU1crc0VMb2ZMQ0tpMkFzcDM1bEN6ZFB3cDJBaTlT?=
 =?utf-8?B?aDJBaDBIR1BNVnRGYUFWWmw2RkRNZ3ozakNvSUtUSGdMUzhkYlZUQWRqVk1j?=
 =?utf-8?B?K2tzT05uZmNnU0kyVy9ZaHFYci9WN25oOGwrQUhOSGVuZEFrS1BzaFRqcXpQ?=
 =?utf-8?B?YXVxbXNrdGJkaHh6ZVY1aFBnZzRKaGlHRVU4QTdHTGEwc2YvQmpmSXFDbDlW?=
 =?utf-8?B?c21Uck9TL1BOdU82NlBSWnFlNUU0SWloQVFDVjdNbVRERUY5Ui9EbU5kVmh2?=
 =?utf-8?B?TC96Um9ndzdKMGU4VEIvdWJyNVVBdVNIQUpZaERZdEVXaVNqVDJTTjVCYXVV?=
 =?utf-8?B?YnNXK1F5dGdpQW5qWjFSaFpncjZ5RUc2a1R3akVUTDVxd1Z1ekhJTWl6Lyt6?=
 =?utf-8?B?bi9sOGN2enVKQW0vWGVwc21BdnJkN0dzQ3c0MlFnZFRFMVQ4QnY5a2lmZ2tP?=
 =?utf-8?B?eDZneTg0MlNvTEJxbWsrazIwKzJyck9wVlp4czBtSFJldytydVdsTytTenJ2?=
 =?utf-8?B?enNZSE5ieUUrMzhXeWpFSitiSTduK29JM0lVV3VZMjdGTW9HWXVZWWRlYWl3?=
 =?utf-8?B?VVFhK0JSSkxJUWVqc3YyRzFJUnpnaHM4c1hsdUxTQUNzcUtYMHVZZzI2M3dC?=
 =?utf-8?B?SlA5YThkWG5GTm9LVndEVElkZEw3M2hYdTFJWkVuWW1sNFk4UWV1QnorMUtU?=
 =?utf-8?B?ajRuRHlQWW11VkExd3k4cWVGTmh1SHZPMS96Wmw1YWJ5ekpEVUx4bjNYUy94?=
 =?utf-8?B?VDRXbGl0NWEzbDd0eXhDZ0hudDRFL2FzZmQ2MEdqZXR4aGIrM1M2c05OQ1BH?=
 =?utf-8?B?cHk4TUcyeE42WUNyRys4RERoWC9oaEMrdkt0QmdqRkgyUERRV1RPUEJ0a0ps?=
 =?utf-8?B?SHBFc1NicWNsK1ZhQXpYcU8yb2JoVHJLZVVtK2puT2hXWFgvRUM0blduVnl6?=
 =?utf-8?B?eWJTc3RwSEtLcE00VjZ0V3NvMmxNWFVQRGtIUFVzRDQ1TFE0VC9nb1hmbDBx?=
 =?utf-8?B?bkJWcDZCb2JwK0tqN1hWcGo1eUJaS2tOdzBONURPcGdrWjkwRUlQLzZvY1Qv?=
 =?utf-8?Q?dcBb6MJCI78iFv8D0lF/Ma1+G9Qrf+SZP8PAWj9?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(376005)(1800799015)(366007)(921011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VWpKS21QOUExMXZ4RmtDcW9QZkx4MHRMRmlKTmNGRU5hRWdRSkJjVEpoRVBF?=
 =?utf-8?B?Q25PWDFwR256ZmZrK3h4ZjV5R2cwbE5lS0xHSnBlNDI0L1FGbGxXeHYxR05T?=
 =?utf-8?B?TGY4SFBsQmJYVXBNR1lIZFgvQzRZQmpIUzJucXdhWjkyRi8ydVQ3TE1CSDVE?=
 =?utf-8?B?Mk1yNE1MRlBXRmtSN0NNVVNlMmpzc052OWk1ZDhhVnlIYjBDNHQybE5mZkg5?=
 =?utf-8?B?anY2ZE9qT2pRR0JhWFc5Z2x0QUpYc2NvdkhQUDJ3dHlNcDdqZzNpV3JGM09u?=
 =?utf-8?B?ZkUxWkZQLzNybWRRN0hWb05jYW1Rd2hYVU1VRDhxSS95dnBweUxMWFRjTmM1?=
 =?utf-8?B?UDZ5WlRGNVlUSkRWa2FTSzRGZGdlbjhKZVQ5dTRWdU03Z01yK25hQzc3VXVu?=
 =?utf-8?B?dVJCcklScjVZUHpwMEFaVVhTVjBmdlVGVlVaTDJUbVpwb1VnL2VaVlg2N3cv?=
 =?utf-8?B?Y3UyTWFZbDhlUzhUSS90VURNSHNBZmlHVVpZMVlYS3JHWVROc0tLNHBOSWor?=
 =?utf-8?B?aCtKYnFZVjB0c2FOSXd5dkE1akh0NHZzRVovMkVWc2dqQmNDODRYbnB2REJJ?=
 =?utf-8?B?ZUtmMTFKdVk1QjVQK1Bsdk1YMVlCdEtaMXNnamNMWW5LR3R3cDFOTmsxcWZN?=
 =?utf-8?B?SUs1VWhiU0ZCS255T01WTDUyMUU5OVVBR1RqcTFXbEw3YzBhdjlZK1lpUDJZ?=
 =?utf-8?B?eFFlY0EvOEtXT1RJT0QvTFdweGxnVXVYQWwxQ21PN2Zhb2J0a1oyZnlXL0NG?=
 =?utf-8?B?RXdKdXFsSkRvQWhQZWt0ckpZbVFJYWRnTk1rb1FnUUtRZWhncy8vMEFxN1Rq?=
 =?utf-8?B?YlRQVWIrZzRENUpjS3l5aWwxQlAyaE1HNkE2VUk3bVEyY2IybDFWYXF6aC84?=
 =?utf-8?B?K1pHQkw2TUlnWThjVThLRTgvdnpadXdvUlA2cmxEb241R0JWZjlTR2FKSHhs?=
 =?utf-8?B?bHFidTM3SUljQXprTnlSZ0I4SmhaUmYzcDgwMDVobkZqd0JGVHpRN1dWRTND?=
 =?utf-8?B?UUxtcFFtRUVGQ3RyMUtPZnVJaUdyR2ZGT0czTTJMeFIrMHRWMjlYajBwcUgr?=
 =?utf-8?B?SjlNQUlMOC90aER2YldYeFo2M0U0ZFQra1hnekE3aVYrZjU4ZjRaUFJaZVF5?=
 =?utf-8?B?UkRKT21XbWd5dllXNkdaZXVVMjhOTm1pTnJ4R1hnd1k4KzFrTGIrUi9INUc2?=
 =?utf-8?B?dk0xVG82YTNhKzdseHFCU3FLWWVCZGZOWmEwSEJmbTl1L0FFVUhacTFqMllL?=
 =?utf-8?B?elFNeTFSVjlORWRwcXBOYW40QTQzYTQ0M1ZuNW5NOHNKRGxhUjlGanpJR1Bj?=
 =?utf-8?B?MUdOeHlLWXdvbXdjZlNjRjkvVUh0SmRHbGxMdUZWT2pQeVhGTncwSXhWcGVH?=
 =?utf-8?B?aytqanBFY200UWdMcmR3dFY3aUdWb0w2Nk0rUXlNcGhqUExXSG5KVlJPSmdM?=
 =?utf-8?B?ZzFSK3RPRlB6M0JpQjBzK1pHQ2k4aS9mSWZETEFjL2Q5UFhWM05lSmlwcHhx?=
 =?utf-8?B?dkJ2Uk9hNjNmKzdHYk8vcGRoNFVtUnBMZXc3NSsraVZONWRpRE1aWkxCcnYy?=
 =?utf-8?B?OVdtN296U1Q3VWdJdjQxY0FHN3ZkbnQ1Z1J1YTdxamQ0dndpT2d2UDM5Wk5N?=
 =?utf-8?B?eEpCc2I0YThhV3dCNzFLdGg0SzZwSnJPWi8vZ1lrc1piMVdQM1FuWElEV0pS?=
 =?utf-8?B?WStTb2RLZ3pGV3F0VDRTRTRQOWhmNGFxRlNOdlhYU2tsc01OYkJoNkRNR3V3?=
 =?utf-8?B?TUhzaWM1dUdVUW53WG96eVRhbFBzWktxd1REYnJHYlpVenMrLzJLT3pvNEh3?=
 =?utf-8?B?ZVlpRk01bnprT2ZkdE5sMzhVb2kzMSt2S0VXK24zcmV4VWFoNjhxSUtLcTQ5?=
 =?utf-8?B?cjhiV2ZYYzhDcjJ2QVBYY1BLRDY4RUpxN1dQOFpLZW0xTklhaTlNRFRXMnkz?=
 =?utf-8?B?YlFEMFAvVS9WNzZnVVFHTUsyQXVENlVpbkhKMzFoT3haVk1jOSsvbnBaUlhE?=
 =?utf-8?B?RUN2NitjMCtZVkFKTjJORndFakNkZDRyTEc1UXhnVkYyMUpHcDNNUnoyMkxs?=
 =?utf-8?B?cWpJQlY4VE53cW4vZUR3WUVPd2VYQVlxYTlkZGdwbmZaY3lQYWxOTkFjNllZ?=
 =?utf-8?Q?tTIfINL8Vh0FFiHTeED4YpY/9?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9a89be3-7906-4ab7-e658-08dc6f34cd03
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 07:59:34.9351
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a2gA26jfFrKEbRnELoY7OU3eW49vSLlb3fas4WRrOLNK8kdDeTbXPAzZyuaDLH8t
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7246
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9910C3F38C
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.79:from];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,linux-foundation.org,kernel.org,zeniv.linux.org.uk,chromium.org,kernel.dk,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: FXYPOWYG53XDCJWDPNUJZVMQGJGZJ7JH
X-Message-ID-Hash: FXYPOWYG53XDCJWDPNUJZVMQGJGZJ7JH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FXYPOWYG53XDCJWDPNUJZVMQGJGZJ7JH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDUuMjQgdW0gMDk6NTEgc2NocmllYiBNaWNoZWwgRMOkbnplcjoNCj4gT24gMjAyNC0w
NS0wNyAxOTo0NSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IEFtIDA3LjA1LjI0IHVtIDE4
OjQ2IHNjaHJpZWIgTGludXMgVG9ydmFsZHM6DQo+Pj4gSnVzdCB3aGF0IGFyZSB0aGUgcmVxdWly
ZW1lbnRzIGZvciB0aGUgR1BVIHN0YWNrPyBJcyBvbmUgb2YgdGhlIGZpbGUNCj4+PiBkZXNjcmlw
dG9ycyAidHJ1c3RlZCIsIElPVywgeW91IGtub3cgd2hhdCBraW5kIGl0IGlzPw0KPj4+DQo+Pj4g
QmVjYXVzZSBkYW1taXQsIGl0J3MgKnNvKiBlYXN5IHRvIGRvLiBZb3UgY291bGQganVzdCBhZGQg
YSBjb3JlIERSTQ0KPj4+IGlvY3RsIGZvciBpdC4gTGl0ZXJhbGx5IGp1c3QNCj4+Pg0KPj4+ICDC
oMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBmZCBmMSA9IGZkZ2V0KGZkMSk7DQo+Pj4gIMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGZkIGYyID0gZmRnZXQoZmQyKTsNCj4+PiAgwqDCoMKgwqDCoMKgwqDC
oCBpbnQgc2FtZTsNCj4+Pg0KPj4+ICDCoMKgwqDCoMKgwqDCoMKgIHNhbWUgPSBmMS5maWxlICYm
IGYxLmZpbGUgPT0gZjIuZmlsZTsNCj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBmZHB1dChmZDEpOw0K
Pj4+ICDCoMKgwqDCoMKgwqDCoMKgIGZkcHV0KGZkMik7DQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIHNhbWU7DQo+Pj4NCj4+PiB3aGVyZSB0aGUgb25seSBxdWVzdGlvbiBpcyBpZiB5b3Ug
YWxzbyB3b3VkbCB3YW50IHRvIGRlYWwgd2l0aCBPX1BBVEgNCj4+PiBmZCdzLCBpbiB3aGljaCBj
YXNlIHRoZSAiZmRnZXQoKSIgd291bGQgYmUgImZkZ2V0X3JhdygpIi4NCj4+Pg0KPj4+IEhvbmVz
dGx5LCBhZGRpbmcgc29tZSBEUk0gaW9jdGwgZm9yIHRoaXMgc291bmRzIGhhY2t5LCBidXQgaXQg
c291bmRzDQo+Pj4gbGVzcyBoYWNreSB0aGFuIHJlbHlpbmcgb24gRVBPTEwgb3IgS0NNUC4NCj4+
Pg0KPj4+IEknZCBiZSBwZXJmZWN0bHkgb2sgd2l0aCBhZGRpbmcgYSBnZW5lcmljICJGSVNBTUUi
IFZGUyBsZXZlbCBpb2N0bA0KPj4+IHRvbywgaWYgdGhpcyBpcyBwb3NzaWJseSBhIG1vcmUgY29t
bW9uIHRoaW5nLiBhbmQgbm90IGp1c3QgRFJNIHdhbnRzDQo+Pj4gaXQuDQo+Pj4NCj4+PiBXb3Vs
ZCBzb21ldGhpbmcgbGlrZSB0aGF0IHdvcmsgZm9yIHlvdT8NCj4+IFdlbGwgdGhlIGdlbmVyaWMg
YXBwcm9hY2ggeWVzLCB0aGUgRFJNIHNwZWNpZmljIG9uZSBtYXliZS4gSUlSQyB3ZSBuZWVkIHRv
IGJlIGFibGUgdG8gY29tcGFyZSBib3RoIERSTSBhcyB3ZWxsIGFzIERNQS1idWYgZmlsZSBkZXNj
cmlwdG9ycy4NCj4+DQo+PiBUaGUgYmFzaWMgcHJvYmxlbSB1c2Vyc3BhY2UgdHJpZXMgdG8gc29s
dmUgaXMgdGhhdCBkcml2ZXJzIG1pZ2h0IGdldCB0aGUgc2FtZSBmZCB0aHJvdWdoIHR3byBkaWZm
ZXJlbnQgY29kZSBwYXRocy4NCj4+DQo+PiBGb3IgZXhhbXBsZSBhcHBsaWNhdGlvbiB1c2luZyBP
cGVuR0wvVnVsa2FuIGZvciByZW5kZXJpbmcgYW5kIFZBLUFQSSBmb3IgdmlkZW8gZGVjb2Rpbmcv
ZW5jb2RpbmcgYXQgdGhlIHNhbWUgdGltZS4NCj4+DQo+PiBCb3RoIEFQSXMgZ2V0IGEgZmQgd2hp
Y2ggaWRlbnRpZmllcyB0aGUgZGV2aWNlIHRvIHVzZS4gSXQgY2FuIGJlIHRoZSBzYW1lLCBidXQg
aXQgZG9lc24ndCBoYXZlIHRvLg0KPj4NCj4+IElmIGl0J3MgdGhlIHNhbWUgZGV2aWNlIGRyaXZl
ciBjb25uZWN0aW9uIChvciBpbiBrZXJuZWwgc3BlYWsgdW5kZXJseWluZyBzdHJ1Y3QgZmlsZSkg
dGhlbiB5b3UgY2FuIG9wdGltaXplIGF3YXkgaW1wb3J0aW5nIGFuZCBleHBvcnRpbmcgb2YgYnVm
ZmVycyBmb3IgZXhhbXBsZS4NCj4gSXQncyBub3QganVzdCBhYm91dCBvcHRpbWl6YXRpb24uIE1l
c2EgbmVlZHMgdG8ga25vdyB0aGlzIGZvciBjb3JyZWN0IHRyYWNraW5nIG9mIEdFTSBoYW5kbGVz
LiBJZiBpdCBndWVzc2VzIGluY29ycmVjdGx5LCB0aGVyZSBjYW4gYmUgbWlzYmVoYXZpb3VyLg0K
DQpPaCwgeWVhaCBnb29kIHBvaW50IGFzIHdlbGwuDQoNCkkgdGhpbmsgd2UgY2FuIHNheSBpbiBn
ZW5lcmFsIHRoYXQgaWYgdHdvIHVzZXJzcGFjZSBkcml2ZXIgbGlicmFyaWVzIA0Kd291bGQgbWVz
cyB3aXRoIHRoZSBzdGF0ZSBvZiBhbiBmZCBhdCB0aGUgc2FtZSB0aW1lIHdpdGhvdXQga25vd2lu
ZyBvZiANCmVhY2ggb3RoZXIgYmFkIHRoaW5ncyB3b3VsZCBoYXBwZW4uDQoNClJlZ2FyZHMsDQpD
aHJpc3RpYW4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
