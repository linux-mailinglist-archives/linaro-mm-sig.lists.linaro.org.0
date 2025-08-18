Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C9388B29FD4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 12:59:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 321FA45D40
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 10:58:59 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2073.outbound.protection.outlook.com [40.107.212.73])
	by lists.linaro.org (Postfix) with ESMTPS id 5DC7C3F709
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Aug 2025 10:58:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=G7Ui0MD9;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.212.73 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kxG5puxiJpCS9Jf6MIhHV5B7rYZ6f1NqZ4BOEwJCN5mmg86zz5WY7F+/WHBTalqaRHtqK460zPiUVULI2jRo3CWT24YW+9IuQJoexxOxeMEoHA3oyCGeVDkO+GidioUtM1bYE5umfFaxsMgB63XwUUcKZK2BIdfy6YLxGJ0nd7F4q6edy9MSTYGculsI4L8w9yY5cUwbbYll9oVfjhsCFmxtGuWbV/ySj+o8l5XpN138nnGYhSY9oZWt0/6qE2wDzWxitO03ncwRqQlxEOzgOjRrUYt/4kzvq1gcUjPB21Nh7MERLbg3K7Bn9/lF600/Y+N2CQGDRRPI70ThMEyCaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3UBeIyqiYvy11aiqkpO//j7RfrMksCf+LqFH8+B5Wgs=;
 b=Tn9+BvURsmsO2hd+ucUrbxgulc1w1h0WOHct5wC+aJWPogxkDAE4wUZLreWh9d0Zxse9DJTAPRy1dSeIxzZmFyU7qPPHlZcLlgfQ1hGj33KG0APsT/GrSWsA93qWWmntPIm4gy7sXfbkyHX1ilcYyXkrY5+A4e7gfC+gEtEpER32VM5x5Qa1wfRJ+qRsahT9l4VK5rYzwZmHr2ruzopo9KUtHD/k9YaaStBsrxGB0bJWBjIOYXLAldUz1EBnBqyNdXLCrfiXQTJpTxapsFrRcJ0Hk+StSfAokGQDoURPvkpf3Su1vYMQusRVADIuwkBbMeEyKar0ZFBf5w18spALEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3UBeIyqiYvy11aiqkpO//j7RfrMksCf+LqFH8+B5Wgs=;
 b=G7Ui0MD9GBuRQ+J3L7Qpx+TmZIa2JyDOezrz80W7kjVVStSq+tYLWS3072oCLjb50qrUhHDMKiUxv/3XiluVyjcVs/8iCqc7wX3+CVMd0eH6u7Tm6bWp9ERFcMp/oLprYgxrPCYxCmcXrfks7keM4w969hO/6p/q/Ep6KIIOtY8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB7592.namprd12.prod.outlook.com (2603:10b6:208:428::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 10:58:48 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 10:58:48 +0000
Message-ID: <19c6c5da-575f-4908-8f2e-23ca8e5bffd6@amd.com>
Date: Mon, 18 Aug 2025 12:58:44 +0200
User-Agent: Mozilla Thunderbird
To: Andrew Davis <afd@ti.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Paul Cercueil
 <paul@crapouillou.net>, Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20250814161049.678672-1-afd@ti.com>
 <0b963b02-dec0-4bf5-aea9-dbe3050716ee@amd.com>
 <008f6004-dcf0-42e8-b2df-f97c0ee5ba66@ti.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <008f6004-dcf0-42e8-b2df-f97c0ee5ba66@ti.com>
X-ClientProxiedBy: FR4P281CA0162.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB7592:EE_
X-MS-Office365-Filtering-Correlation-Id: f7784a05-9658-42c9-6c58-08ddde46359d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TlFsM2V4N0h4TWFsbXoyQ01yNDBHRkZnc1ZnZzdnaFVIcytMci9jTm5qWXYr?=
 =?utf-8?B?cVlhQmp4K2NsR3BWWmUyazdCV1ROMktmSGU4MXF3c3I3OHc2eW5Odmx5OWEz?=
 =?utf-8?B?Nm5vRUE4VDA1dzJ4eFpLbStTUkRjcmQzWmxVZ1pObTlGYVJoNmFBZlhFclZk?=
 =?utf-8?B?M2JPRy9CaHdxa1Z2K0hzejl4eTkxclJOWTlJMVFFRTVYRTRJaUV6bWxQL2Nu?=
 =?utf-8?B?N2RzQVlEdWI0a1JsRVAzamt1eFFFRGw0cWRmMlJtVkhVbGhXUThGdmRSZUdz?=
 =?utf-8?B?MXV2YkMzbkorUXM4YWNuTUJBUkF3bTdMTG9BYmpaMVFEQVRIdUVSWHVQL3FG?=
 =?utf-8?B?UnEvTkFIakR4emFZUXNCcHJHZmhvcmFQeW1vZmR0NjY5QXJ5VFNGYTl1V2JK?=
 =?utf-8?B?R3JWNjN2amQydlJ6L0VOMm90QkM1c2V2NXVoYTVCamVYeGhxeTBRb1VBR0JZ?=
 =?utf-8?B?ZjFJcDhnclBHTDdzZ2N2cG5ZYTBkMGV6dno2QTdhRjRnRjZ2YXhPczNmbzFi?=
 =?utf-8?B?Z3o5K1l5U1l6VVYwajhYZTZuSEd3MGt5Q0F6bE5mYUZWVDBpa3c4OXE4T3kz?=
 =?utf-8?B?N29nYXVwbURNb3pBMVcyR2hhbGxOZFNNZmxVc1VDakc1QlVHeWhUSE02N1I1?=
 =?utf-8?B?TEtWOVBHdnh6c1NlSXhqK3ZSUmdiSkFkMzdWdjc2N2h2US9jU1lmT3FqaWlq?=
 =?utf-8?B?MzA4Nm0vSnJQbzhzK1FqZEVQOFgxL01vZEM4bHBZaWgzU2d1YUwzUlZHUjlm?=
 =?utf-8?B?di9zWjcwUjlSNldrTU9pSWRKWjRYK0lPTTBZT0YveVhYcDcvTWN3aGdoS0NZ?=
 =?utf-8?B?NHhMUWxlbFFJdFBlRktUeDExT0ZkU09NR2NBeVcva0pGUlZucFVJVkR4SFV3?=
 =?utf-8?B?dHRwL2VydzVsTzNDcVVqWVNORzBqT1dFVG8yWDVEUTlyYTJSQ1B1UmVEbFlU?=
 =?utf-8?B?Skg4alk4TkduMCt2RHNWWk5uRE5kdk9aKy9mOHp0d1l3WlA0NjZtQXlsc050?=
 =?utf-8?B?WVYwRXNIM3ZocURYNHdTa08rYXZzaVFlc0tQNUtrVUp2T05KRDFwS0ZFdWxG?=
 =?utf-8?B?Qk9kN3VibzhHakNHT3VkZUFVbUo0TUhFTlRhc1VYUFlxQ2pzVW45MGMwZmNN?=
 =?utf-8?B?MzhVcmo4UStTMit6bjE3QnVyTnlRNHJ0Tktnb0Z2aXhzbmplazhyWlViRG54?=
 =?utf-8?B?Rk9oNGpqOEp3ckt3cmVhakJBQTI2ZGZzK2FXMTI3UjZKTk1SNHlqUzNFdmQv?=
 =?utf-8?B?U08yd1BMRENSY1VvVkxaYkd1U2Z1bVhQcHhUNUFQSXhPNDVTdXRqOWJRUFlr?=
 =?utf-8?B?MkJqWG1mN3A0Vm5MME0ydURBRzFJUDMwNkI1QkhuVnRjZlZYVlJzeEx4WmEv?=
 =?utf-8?B?MFZpc2NXbjNUd1VoeEhJUllGQUNQQTRQTDVVbEFQNWtPRjlZMEY3THVnSm55?=
 =?utf-8?B?RTVaRW5Zb291bEJIWmZSbCtjZzV0UFFpckYzTUJPWWR4MHpwdVg4SkM0K0Mr?=
 =?utf-8?B?SWtMeC9wZVVmR1NPOHk1NGZRc1Fob0pmMmttc00wd2d5NFY1SUFKb0N1cEVZ?=
 =?utf-8?B?UGdmVEdmNDJsOUswZVRLUVBmZGdUNXNGS2xvOExobHdkenpXQjFaY0FteUp2?=
 =?utf-8?B?SGhNeHQzdGs5eEthbkxZNXBWY2wrTVJuWENudFVEMjJ6M3RIMmd4dXhoYlFk?=
 =?utf-8?B?aUVUei9jMkk0NjJ4Y1lGNS95K0NpUzRSRTQ1VEVudllhNWpQMmhuMU9mTmFH?=
 =?utf-8?B?ZmZ6NFBOQlIwdjFTMmlSSHJnTi94Q1ptZ3IrcStybEUzYk52cDA5MEFkNk9J?=
 =?utf-8?B?VFZHMy9sQThDT1pJcTVvN3U4MnUveGNqcWtzSldXY0ppWTkyNTlTVmVmT0lI?=
 =?utf-8?Q?Xp/KAJdXs+9Jw?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d1IvMURtbnlQeFNMdmJkb0d5TGQ4bzBHYVRhNHZzVzNtNUVxWVlPZG9kVCs2?=
 =?utf-8?B?S1AwTGFIbUtQWXJqN3h1WUhOcXFIMndzYnFXSnhadytTQ3dLMVNGSGtQOTNw?=
 =?utf-8?B?TEFOd2padjdna0krS1RrQzM1b3VhbjhJYzYyWG9BbDQrWlgzRkNHS0xpTXU2?=
 =?utf-8?B?eFpXSFMzZ3htakIwZmlTZElZR0Q4b3VnbWM5dGo2SUxLSzFMeGdyeVlsRnhB?=
 =?utf-8?B?c1RFSG1PYW92NU52R3lFbnN2VWJxZS9zLzFaSnp3MEV0TTJzMy9aMUZmcjYw?=
 =?utf-8?B?MTRBZGlqL0hGc1BPbzIzWS93TVVXVFF4K3gwTlMrS0UxQ1o2VS9aVkNwRVc5?=
 =?utf-8?B?WFgxYjFBck1ZT2IvY0FJK2JDQm9McE5hTXFWZ3J3aTgrQUpTWnJxM1dUTDZV?=
 =?utf-8?B?QlgrSStkTTZ1bldlemYweWQxZG9HYUlla1RvMUN3MG1mMWVpMlFnRHNOQyt4?=
 =?utf-8?B?SHE3Rk5kY1NPUndKMEpCeGxRKzB6bW9ZdHZvWlY4ekM4MFhlV3ZKY1I0VzF2?=
 =?utf-8?B?VUpKaXdsWWlZQUhyQjFDWnBsVUcxNTdYZWVsYngzR1ZkcndzQjAwZG1JT3Nr?=
 =?utf-8?B?dDM4d252dEJaUlM1U2Z4OFYyYnEwMzhpRUV2b29oMU1wK3BCYkdHdzczbTZ3?=
 =?utf-8?B?UGgyR0tZc2I4aTVqZUhMMktsT2lIQXpuMEZXYU12NW5lUGR4Nzl1ZmhMWXMz?=
 =?utf-8?B?YVBwRUZKWlJNVFljbzNkOXVJKy9XUHlIV0VoYnhSdFlVTjFBSHExcWZRWXR0?=
 =?utf-8?B?M1E4OWsxSm4rOWNZbG13ZE9iTnpvOVFFWFBrTFp3aEZIOEc3a0NuZEJpQUVB?=
 =?utf-8?B?ZHMzUC9MMVUzcUx5K1lpYW9JZGNLWEw4Rmt0bTQ2SmlwY1cxdCtCejllNXd6?=
 =?utf-8?B?TC9qWkt4QzA4WXFwbFJFbW5yQkNhZTh4cFZ5V1UvYkFacXRQQS9tQkFwaGl1?=
 =?utf-8?B?clBmZFFQUFZPaU0yZXN1M3dUK2k1UHBSY1gyNlZ6N3RRbFVVV3EvRlRvZnFq?=
 =?utf-8?B?T21xYmN3Wng3TURQU09iZ0hDSnVVWnpkUnhjOGtsOFR4cUNJNDFieHdHazli?=
 =?utf-8?B?Rm1kOUlKLytaaC8yVU5DMVlDbGRlSVBSY0R1TFNWL1VKVFpWbkxWOG1oRTdu?=
 =?utf-8?B?SFhqWEVnQUxNNEo3UkYxNEJNOFlRUWlYYkRnT0JxelBPUHpZMlhKZEJwb2Zl?=
 =?utf-8?B?bkIxTmswaXoyK1l4MzVCM0xzSkQrdDZQVGJlbExzRWp5dVdmUWtMa284K0Ri?=
 =?utf-8?B?UUNaOXU1YmN5NUNHNG1RajVHdXFSY3ovYTQvMkZJSHNjU3pEZ3Ywbi8yQzh0?=
 =?utf-8?B?elBxb3ZJSzNKVCtxa21qbWhhV3JJS3BkSFl1KzlvNDdBbUVZdGl6Mm51Mkwz?=
 =?utf-8?B?RzVtTGpQUzRJMEdzejJhU0gzY2NxUi9XY0hxVUdFQlRXTjAwcUJzT0lGbDc1?=
 =?utf-8?B?THdhQ1l4akx5UmU4M0FYZFlaTUpWYlNZZk1LT2llVlFxSTdrWUw1ME1MY2ta?=
 =?utf-8?B?Y0s0NnRSaW9lQmtrdXZCUHBjYVFaaHNSWnkzWjhtRVJ4NzdmandWQ25OMFBB?=
 =?utf-8?B?V2hSYUxkMHYySWZ0RlRRLzZOK3hVMVN6ZjhnTEpkeFkxU05wQS9wYWR6d2gz?=
 =?utf-8?B?djZmSWRDRHlCbFFHdTg2NkZNU2p6NkVHR3E5SmJHejNVNk5tQ0pMa3U5S2xW?=
 =?utf-8?B?b0hxdzJoK2VFQ0ZLcndOSnYvNmRGSG00MW0vZENxdC9Rbkw0TGM2bzVRd29p?=
 =?utf-8?B?Y0pyL0tVR282TkJNZzdvcXMvSnRSY0hpUXdXdEszMVpNZXlPdGp0WmNtaWNr?=
 =?utf-8?B?OVVMNGZzOW9yNnBaUldYNE5pS1UxQlFlNGJyTDNGMzhMcC83RFBQZ0VCaUtR?=
 =?utf-8?B?OHlzQ2FyTXZQL25BWEVxelU2TnVPS1dBTmt5cXZHa0pCeTl5NTBJWUtuRmJm?=
 =?utf-8?B?YTRDOWhsVjAxNm9kazIrK3ZVWkFHZXdKV0M0WWtqM0dqUTcxQ2dxbUVLM0p4?=
 =?utf-8?B?Vm9ESlFmcmQ5MmdvZXFzbXprYWNwRVozaVc3NkI2eHVwcFNjaWxUb3MwSVor?=
 =?utf-8?B?MmNVOWthQXJVWFZXUzNydU5jVGsrd1p5cVREZk9ISDZEVXVNQlh0cHAyck8r?=
 =?utf-8?Q?j2wYwUrq7DjzfzLjZoXeK/xLf?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7784a05-9658-42c9-6c58-08ddde46359d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 10:58:48.6500
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zCrFCGQL8ZZu+uXR4/uTm6vkhK55fTDgCmcCyde5XEjvhp6eUWA/HW+IF7o+TICs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB7592
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5DC7C3F709
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.212.73:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: BZ5VBVS5Z3P7PEUTXODWITBIN5WNYA7Y
X-Message-ID-Hash: BZ5VBVS5Z3P7PEUTXODWITBIN5WNYA7Y
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] udmabuf: Sync to attached devices
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BZ5VBVS5Z3P7PEUTXODWITBIN5WNYA7Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTUuMDguMjUgMjE6NDAsIEFuZHJldyBEYXZpcyB3cm90ZToNCj4gT24gOC8xNS8yNSA0OjQx
IEFNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gMTQuMDguMjUgMTg6MTAsIEFuZHJl
dyBEYXZpcyB3cm90ZToNCj4+PiBIZWxsbyBhbGwsDQo+Pj4NCj4+PiBUaGlzIHNlcmllcyBtYWtl
cyBpdCBzbyB0aGUgdWRtYWJ1ZiB3aWxsIHN5bmMgdGhlIGJhY2tpbmcgYnVmZmVyDQo+Pj4gd2l0
aCB0aGUgc2V0IG9mIGF0dGFjaGVkIGRldmljZXMgYXMgcmVxdWlyZWQgZm9yIERNQS1CVUZzIHdo
ZW4NCj4+PiBkb2luZyB7YmVnaW4sZW5kfV9jcHVfYWNjZXNzLg0KPj4NCj4+IFllYWggdGhlIHJl
YXNvbiB3aHkgd2UgZGlkbid0IGRvIHRoYXQgaXMgdGhhdCB0aGlzIGRvZXNuJ3QgZXZlbiB3b3Jr
IDEwMCUgcmVsaWFibGUgaW4gdGhlb3J5LiBTbyB0aGlzIHBhdGNoc2V0IGhlcmUgbWlnaHQgbWFr
ZSB5b3VyIHVzZSBjYXNlIHdvcmsgYnV0IGlzIGEgYml0IHF1ZXN0aW9uYWJsZSBpbiBnZW5lcmFs
Lg0KPj4NCj4+IHVkbWFidWYgaXMgYWJvdXQgdHVybmluZyBhIGZpbGUgZGVzY3JpcHRvciBjcmVh
dGVkIGJ5IG1lbWZkX2NyZWF0ZSgpIGludG8gYSBETUEtYnVmLiBNYXBwaW5nIHRoYXQgbWVtb3J5
IGNhbiBoYXBwZW4gdGhyb3VnaCB0aGUgbWVtZmQgYXMgd2VsbCBhbmQgc28gaXQgaXMgcGVyZmVj
dGx5IHZhbGlkIHRvIHNraXAgdGhlIERNQS1idWYgYmVnaW5fYWNjZXNzIGFuZCBlbmRfYWNjZXNz
IGNhbGxiYWNrcy4NCj4+DQo+IA0KPiBJZiBzb21lb25lIG1hcHMgdGhlIG1lbW9yeSBiYWNrZWQg
YnkgdGhlIERNQS1idWYgb3V0c2lkZSBvZiB0aGUgRE1BLUFQSXMgdGhlbiB3ZSBjYW5ub3QgcmVh
bGx5DQo+IGNvbnRyb2wgdGhhdCwgYnV0IGluIHRoaXMgY2FzZSBpZiB0aGV5IGRvIG1hcCB3aXRo
IHRoZSBETUEtQVBJIHRoZW4gaXQgaXMgKm5vdCogdmFsaWQgdG8gc2tpcA0KPiB0aGVzZSBiZWdp
bl9hY2Nlc3MgYW5kIGVuZF9hY2Nlc3MgY2FsbGJhY2tzLiBBbmQgdGhhdCBpcyB0aGUgY2FzZSBJ
IGFtIGFkZHJlc3NpbmcgaGVyZS4NCg0KR29vZCBhcmd1bWVudCwgYnV0IHRoYXQgbmVlZHMgcXVp
dGUgc29tZSBkb2N1bWVudGF0aW9uIHRoZW4uIHVkbWFidWYuYyBjb3VsZCB1c2Ugc29tZSBnZW5l
cmFsIGRvY3VtZW50YXRpb24gYW55d2F5Lg0KDQo+IA0KPiBSaWdodCBub3cgd2UgYXJlIG5vdCBz
eW5jaW5nIHRoZSBtYXBwaW5nIGZvciBhbnkgYXR0YWNoZWQgZGV2aWNlLCB3ZSBqdXN0IHphcCBp
dCBmcm9tDQo+IHRoZSBDUFUgY2FjaGVzIHVzaW5nIHNvbWUgaGFja3kgbG9vcGJhY2sgYW5kIGhv
cGUgdGhhdCBpcyBlbm91Z2ggZm9yIHRoZSBkZXZpY2VzIDovDQoNClllYWggdGhhdCBpcyBqdXN0
IHByZXR0eSBob3JyaWJsZS4NCg0KPiANCj4+IEFkZGl0aW9uYWwgdG8gdGhhdCB3aGVuIENPTkZJ
R19ETUFCVUZfREVCVUcgaXMgZW5hYmxlZCB0aGUgRE1BLWJ1ZiBjb2RlIG1hbmdsZXMgdGhlIHBh
Z2UgYWRkcmVzc2VzIGluIHRoZSBzZyB0YWJsZSB0byBwcmV2ZW50IGltcG9ydGVycyBmcm9tIGFi
dXNpbmcgaXQuIFRoYXQgbWFrZXMgZG1hX3N5bmNfc2d0YWJsZV9mb3JfY3B1KCkgYW5kIGRtYV9z
eW5jX3NndGFibGVfZm9yX2RldmljZSgpIG9uIHRoZSBleHBvcnRlciBzaWRlIGNyYXNoLg0KPj4N
Cj4gDQo+IEkgd2FzIG5vdCBhd2FyZSBvZiB0aGlzIG1hbmdsZV9zZ190YWJsZSgpIGhhY2ssIG11
c3QgaGF2ZSBiZWVuIGFkZGVkIHdoaWxlIEkgd2FzIG5vdCBsb29raW5nIDopDQo+IA0KPiBTZWVt
cyB2ZXJ5IGJyb2tlbiBUQkgsIHRha2luZyBhIHF1aWNrIGxvb2ssIEkgc2VlIG9uIHRoaXMgbGlu
ZVswXSB5b3UgY2FsbCBpdCwgdGhlbg0KPiBqdXN0IGEgY291cGxlIGxpbmVzIGxhdGVyIHlvdSB1
c2UgdGhhdCBzYW1lIG1hbmdsZWQgcGFnZV9saW5rIHRvIHdhbGsgdGhlIFNHIHRhYmxlWzFdLi4N
Cg0Kc2dfbmV4dCgpIGlzIHNraXBwaW5nIG92ZXIgdGhlIGNoYWluIGVudHJpZXMsIG9ubHkgcGFn
ZSBlbnRyaWVzIGFyZSBtYW5nbGVkLCBidXQgSSBjb21wbGV0ZWx5IGFncmVlIHRoYXQgdGhpcyBp
cyBhcyBoYWNraXNoIGFzIGl0IGNhbiBnZXQuDQoNCldlIGp1c3QgaGFkIHF1aXRlIGEgbnVtYmVy
IG9mIGhhcnNoIHByb2JsZW1zIGFuZCBldmVuIENWRXMgYmVjYXVzZSBpbXBvcnRlcnMgZGlkbid0
IGdvdCB0aGF0IHRoZXkgYWJzb2x1dGVseSBzaG91bGRuJ3QgdG91Y2ggdGhlIHVuZGVybHlpbmcg
cGFnZSBvZiBhIG1hcHBpbmcuDQoNCkFsbG93aW5nIHVzZXJzcGFjZSB0byBSL1cgdG8gZnJlZWQg
dXAgbWVtb3J5IG9yIG1lc3NpbmcgdXAgdGhlIHBhZ2UgY291bnQgaXMgbm90IGZ1bm55IGF0IGFs
bC4gDQoNCj4gSWYgYW55b25lIGVuYWJsZXMgRE1BX0FQSV9ERUJVRyBhbmQgdHJpZWQgdG8gYXR0
YWNoL21hcCBhIG5vbi1jb250aWd1b3VzIERNQS1CVUYgd2l0aA0KPiBhIGNoYWluZWQgc2cgSSBk
b24ndCBzZWUgaG93IHRoYXQgZG9lc24ndCBjcmFzaCBvdXQuDQo+IA0KPj4gVGhhdCdzIHRoZSBy
ZWFzb24gd2h5IERNQS1idWYgaGVhcHMgdXNlcyBhIGNvcHkgb2YgdGhlIHNnIHRhYmxlIGZvciBj
YWxsaW5nIGRtYV9zeW5jX3NndGFibGVfZm9yX2NwdSgpL2RtYV9zeW5jX3NndGFibGVfZm9yX2Rl
dmljZSgpLg0KPj4NCj4gDQo+IENvdWxkIHlvdSBwb2ludCBtZSB0byB3aGVyZSBIZWFwcyB1c2Vz
IGEgY29weSBvZiB0aGUgU0cgdGFibGU/IEkgc2VlIGl0IHVzaW5nIHRoZQ0KPiBleGFjdCBzYW1l
IFNHIHRhYmxlIGZvciBkbWFfc3luY19zZ3RhYmxlX2Zvcl8qKCkgdGhhdCB3ZSBjcmVhdGVkIHdo
ZW4gbWFwcGluZyB0aGUNCj4gZGV2aWNlIGF0dGFjaG1lbnRzLg0KDQpTZWUgZHVwX3NnX3RhYmxl
KCkgaW4gc3lzdGVtX2hlYXAuYy4NCg0KQXBhcnQgZnJvbSBzdG9wcGluZyB1c2luZyBzZ190YWJs
ZSBpbiBETUEtYnVmIGF0IGFsbCB3aGF0IHdlIGNvdWxkIHBvdGVudGlhbGx5IGRvIGlzIHRvIGlt
cHJvdmUgdGhlIG1hbmdsaW5nLiBFLmcuIGp1c3QgYWxsb2NhdGUgYSBuZXcgc2dfdGFibGUsIGNv
cHkgb3ZlciBhbGwgdGhlIERNQSBhZGRyZXNzZXMgYW5kIGtlZXAgdGhlIHBhZ2VfbGluayBwb2lu
dGluZyB0byB0aGUgb3JpZ2luYWwgb25lLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0K
PiBUaGFua3MsDQo+IEFuZHJldw0KPiANCj4gWzBdIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxk
cy9saW51eC9ibG9iL21hc3Rlci9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jI0wxMTQyDQo+IFsx
XSBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyNMMTE1MQ0KPiANCj4+IEl0J3MgYmFzaWNhbGx5IGEgaGFjayBhbmQg
c2hvdWxkIGJlIHJlbW92ZWQsIGJ1dCBmb3IgdGhpcyB3ZSBuZWVkIHRvIGNoYW5nZSBhbGwgY2xp
ZW50cyB3aGljaCBpcyB0b25zIG9mIHdvcmsuDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlh
bi4NCj4+DQo+Pj4NCj4+PiBUaGFua3MNCj4+PiBBbmRyZXcNCj4+Pg0KPj4+IENoYW5nZXMgZm9y
IHYyOg0KPj4+IMKgIC0gZml4IGF0dGFjaG1lbnQgdGFibGUgdXNlLWFmdGVyLWZyZWUNCj4+PiDC
oCAtIHJlYmFzZWQgb24gdjYuMTctcmMxDQo+Pj4NCj4+PiBBbmRyZXcgRGF2aXMgKDMpOg0KPj4+
IMKgwqAgdWRtYWJ1ZjogS2VlcCB0cmFjayBjdXJyZW50IGRldmljZSBtYXBwaW5ncw0KPj4+IMKg
wqAgdWRtYWJ1ZjogU3luYyBidWZmZXIgbWFwcGluZ3MgZm9yIGF0dGFjaGVkIGRldmljZXMNCj4+
PiDCoMKgIHVkbWFidWY6IFVzZSBtb2R1bGVfbWlzY19kZXZpY2UoKSB0byByZWdpc3RlciB0aGlz
IGRldmljZQ0KPj4+DQo+Pj4gwqAgZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyB8IDEzMyArKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPj4+IMKgIDEgZmlsZSBjaGFuZ2Vk
LCA2NyBpbnNlcnRpb25zKCspLCA2NiBkZWxldGlvbnMoLSkNCj4+Pg0KPj4NCj4gDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
