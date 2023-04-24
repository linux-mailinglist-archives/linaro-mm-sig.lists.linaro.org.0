Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8F36EC6CC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Apr 2023 09:07:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F37C63F5AD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Apr 2023 07:07:14 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2070.outbound.protection.outlook.com [40.107.220.70])
	by lists.linaro.org (Postfix) with ESMTPS id 83B6C3EC32
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Apr 2023 07:07:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=TywVTUX9;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.70 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MXRaI2kCUbWYbEdG7xflMGzxdCsqje7m5bvEevUtSn+13SiaaLhgZYTf1fsC7Aq+3ZyiaRfKmr0wUjPepcB1nr8YSf7WepWH1VI9Tqh02xR3FrfsQbkR43UvDNo/s/zOMGqC9RQ93IncYYxAPgbD9IkVYzFoiwAGKe9ZZ0TAH6ZO64AJgRZP0TKEUl1zk4jROZoDHHspyWYOjOXKF9e7eqrmKZZwViWEPJFlrrTC+EDXFKhDiVOLfHRabjHkGfzCp1cb7fOUXuFfrAo8dnld7MFQTvzfK+Z9iahmtiIc2U4U0//ehUjXnGu1ZkgKGP0fAnmoKproh30WXpog9jD/Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TpNBGrdokkydCBIl1gK/7Hn2VBcUenGXRQfpcjoEyUg=;
 b=QoTWGgIsRmUkYKxAVliQBltlnOLHUO6fHEhNrPWBjUq7gOcKGH3pOS7ait/udsj+9BOz82mrAUMwkm3ipw2+1JTdeYLJMWmCkNRbTob983hoo+hAwbLMmttl2VuxrD1m26yjqO06v1oq/U2xFYvCzrTUexSSqlmNjUBlG6P7oOin2wk5J+7mwTv7uDbxG0DGNwxhZxS7betcx9ZFOxdaKvD/iJPYOjcutm/ipIsTBYjMqfTdxplFpdSaHRJDnoeivWoA1j5Y9vfki2QNGHXMpwMVxPVH43XTWe5rDcBjUgAjYM2Ut2EttQalpEfaXeXXj2NV0B8wvhI1ai/h9wgaeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TpNBGrdokkydCBIl1gK/7Hn2VBcUenGXRQfpcjoEyUg=;
 b=TywVTUX967UYpQxRzPf2yATHZ+xlSlxN8IhgIkk7lVJfJLV8ubYGObM+buMP4KUxwbUs0yyfmZdC1L547WAyu/OXlk4dO4ZqLDLTw9RfUS7sY7RY/Y4cG2+YgCpcDmN2y+H7mhV7zAK/Bxx5sgUbGPowsRa+vOa2Y/rKbw9/Jpc=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SN7PR12MB6744.namprd12.prod.outlook.com (2603:10b6:806:26c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.32; Mon, 24 Apr
 2023 07:07:09 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d2f8:7388:39c1:bbed]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d2f8:7388:39c1:bbed%3]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 07:07:09 +0000
Message-ID: <ecc972c1-cf7d-cd99-805b-38dbf04adc79@amd.com>
Date: Mon, 24 Apr 2023 09:07:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Sukrut Bellary <sukrut.bellary@linux.com>, daniel@ffwll.ch,
 airlied@gmail.com, sumit.semwal@linaro.org, Hawking.Zhang@amd.com,
 Julia.Lawall@inria.fr, dri-devel@lists.freedesktop.org
References: <20230424055910.15683-1-sukrut.bellary@linux.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230424055910.15683-1-sukrut.bellary@linux.com>
X-ClientProxiedBy: AM4PR0101CA0050.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::18) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SN7PR12MB6744:EE_
X-MS-Office365-Filtering-Correlation-Id: 806e4d98-779d-499d-32a7-08db4492850a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hq3pI5sBYDmWj+UqNl7Td2VaPGmoyf79SSZN4lqkLnyvBbz9w/F4/wVb3HDy5cMbEMUBrWA5P6plIGWwKPycqJIIxYnjhP0Q3GLBrQYxQ9Fgm3UWf5GovAHoUcNnmqK/WiZQfLiZAOYx8oTwZDVSHD/vFIdyy3cWrRNTMzBE8ic6PWyN+EcRvW0kMv89iOL0JYwoPoWEPN+dteeqSwQjJ64Sk/Rld87pLyOWVRbezFya9P33HAX6ra+aZRHtoE7VRSSrpNu13Oat4Z2TO+J947iQdZeZq2fGrqQkEU+vaUYMgDaqaN0B17xxZTLmutia4s6Wfgmy3sjRv+tZ2L1WumFr/IoIbne1Y55mKlKr/OJORsnqraVfFu2MJR1DvoiBJPLDaaeKbPu+EKfenA7Dt0mK5slM3qQVQS3j+uU2VxjxuQtEnK8cIm7+txJWacno5jfsB/he/2fRRWJUhLc0BXQtwhIUwU6XRYReXenk1Llo5OYLv47UmPZrd48krXCROyKpms26H5wOrG1+eNkSP3utNZfK9vyb69n6cq+2cy47aTwEQmqyrayT3W2N74CQLDy+qPqTWThVdK/0b2J+w2JF7AyI/9PIz3aCOXg7Y/P+CHlcWR9RLRPw22N7bGOgYUH8OYsKy3J3UdYsxZhsrw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(39860400002)(366004)(346002)(376002)(136003)(451199021)(36756003)(8676002)(8936002)(478600001)(66476007)(66556008)(4326008)(66946007)(7416002)(316002)(41300700001)(2906002)(38100700002)(5660300002)(2616005)(86362001)(186003)(26005)(6506007)(6512007)(31686004)(31696002)(6486002)(6666004)(83380400001)(66574015)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eXRqdElrUk5aYmJzRk55d3BVM1NmclRGNVdXeDdxRmZIUS9ZSHI1SndLU1hM?=
 =?utf-8?B?bjdTcG1PUVAvTG5pQkFzZ0NzM1RzaTRsUnNXejc5SFl6R21CZEFkdUE3UkJK?=
 =?utf-8?B?TWN3N2UybXZQQ3VRZVB4bmZKbjZWalcvK1pTWnVXQjdjZ0RJb1ZtQ3NYdUVU?=
 =?utf-8?B?c3FOR1lLY29JV3RFMm1KbEUvNXpXUWhpUno1aXpnL1VrQTAxYlZFVC9ZSzFk?=
 =?utf-8?B?NVE5WFIrTk9yYi82Y3ZUQm9MaUExOXEvSEpHdVN5U2c0VHNicExHQUVxd1VB?=
 =?utf-8?B?TnJiZU9uYm9DZURmMy9XSDRHMnZ4Qm0xYXUxbHhURkVpOHdjdmtiWGdVSW9z?=
 =?utf-8?B?RjNJSmRUOU9BeHRndzhVWktyUmtGZlY4NDNxWkl6MnFQaW1PZE5tVm1QdHV1?=
 =?utf-8?B?RXY3OCsyb01UZ2t2OUlWcGcvdUZJdFJ5M0JXOTZYY1R3a0lZbCttK1paeHlY?=
 =?utf-8?B?cW5ScEt1elZOTkJLR2VZZmRiOVgwT0lyaGwyM0xlWENlSTdGNGd0UlpRSTNQ?=
 =?utf-8?B?WGZXenQ2Z1hjNUljbFdZZWNzVGs1MWdSazd5N3AwSFlSZERCUVdCQXIvMmpU?=
 =?utf-8?B?V3FPNzFlMVBvMjZHYjlqd0FaQnRlRTduaDdWblVpZHdudmx4amcwczV1ZkFa?=
 =?utf-8?B?VU5mRkFWMGRpamUyclV5cTdxYzFHK1FGWWw1b2NaS0hMYUZLa1NFSWIxNlJ5?=
 =?utf-8?B?UXlVQmNmZUNGdlZhckxQVGJSaXc4QXdSZjFQdWNUUlVMc2pkQlFyaFJteHhU?=
 =?utf-8?B?eW95L0d3cE5nY1hyeElaWkErUThUUzFXeW9nTlVsZ3MzNnF0aXUrTE96bzg4?=
 =?utf-8?B?cGFheFhMcmlqWTFSa2JGQzlVblhlMUFXVlpBdXFQWnBVdE1KNjdESHp2RGZH?=
 =?utf-8?B?elEzNEJNaXpDZWE1cWxhVDVEb3FDUGp6c3ZiTXEzTTg2VzdySjd2SkZJVFhS?=
 =?utf-8?B?c25vamJXeTU4WXNSWkdmV2wwKytwZ2t3alN2WlRTZ2pWQlBxTnNTYWttV2R2?=
 =?utf-8?B?OEN0MFdRcldlczJ6L01RYndDRFFVcm1EMVpvTWlFU2VWdzk4dUx4ZTBtd1Z0?=
 =?utf-8?B?YUI2Z0x1ZGEvY3QrVTl4NDdQTXl5dnZqVjlzRlZFL2VocmxkM2pRVGZDZ2tu?=
 =?utf-8?B?bHVCUUdWeHljYWRjR2VZd2FNUEZxcGJNNk5CTTFPTE1iT3l4dWNnOExLeVlX?=
 =?utf-8?B?NE5HZ1hIc0d5aE93TTdZc1Q0U3hoeTA4RkgxSVpKcjFFNjA0ZnN3WlY5VFNK?=
 =?utf-8?B?V1RqSEVMbnJKaGd3Q1ZML2o4cFZDZnJSMi9TOE04cVY1Skw3dlhOYm9SQ1oy?=
 =?utf-8?B?cmtjR2ZxaS91WTZWN0l5c1FZeGpWMS9Db2ZNczlKRC9KUDZLZTJRSE92blVI?=
 =?utf-8?B?b2tDTERwcExzVFZJeVlOdWdSQk5CUzFuWGFtVW53TEt5bE9zWUZFYkNyQll0?=
 =?utf-8?B?N2doeFQxLzBkdnpsNnN4aXJUYisvMjNyak5rbi9lcmozU0tHdjdqellPSUp6?=
 =?utf-8?B?bFVYNnNsNDJ5YTV2Mkx1QlA5R0VQci81K09DeE5NZkN0UHRhbWF5aDhWVVlX?=
 =?utf-8?B?eURWR2NCS2FYQlI0OFZqZFVWc1dMQTFVQWI3SU9FanNYNWsvNTh6UGFiZTdw?=
 =?utf-8?B?cVlMc3dhV0NkaEl0OFpKYy90RmxLanVTU0FuTzE1UmtBclFYcVpYdG9xWTBa?=
 =?utf-8?B?M1gvYlZLejdlOTU4UzdpT3BSZHhrVE0yNTlMYnkxaWZoV09idk5hNXBXakND?=
 =?utf-8?B?bW13YWViR0orVTNyUjBnY0NKa1hubmhKTkcwaWNMaHJ1czJJYWo1QkxPNjV3?=
 =?utf-8?B?RlU5MlJaSVpRTVMvSzMzWmc3WkZXZGN2a0JiRGpiTFBvZ1BXcGYxaXlYYVVw?=
 =?utf-8?B?SXhnc1dhS3VNQ0taN0lySUo2eFptdzBYR09IbTg3VS93KzEzek5NOHA5cFlS?=
 =?utf-8?B?eUdETS9rOFcvaWZqd0tIYUJtRFdRS1dkNmdUTGRxa2MxcFh6NnR0SDFNNW1s?=
 =?utf-8?B?RFE5Wk9BcXdxaVFERnRnVVhOSzZ0UGZiYnF1WnduUlUycm9USC9UMkhvbEdp?=
 =?utf-8?B?bnZsMStCZER2Y0FqeHJ2alE1KzY1WDRySkplQ0U5NVZpUjN4eXBCRzZnLzIz?=
 =?utf-8?Q?8khU=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 806e4d98-779d-499d-32a7-08db4492850a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2023 07:07:09.3232
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u+K+nGjJfTgreM46x1b+QQdAKiQ+mQa5rg32FAu6JqyVnR60J/MRCv7IMUmqXoCf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6744
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linux.com,ffwll.ch,gmail.com,linaro.org,amd.com,inria.fr,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.70:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 83B6C3EC32
X-Spamd-Bar: -----
Message-ID-Hash: PAXWXX5LO2B5FYPAMGOVOZLHG62IQEHV
X-Message-ID-Hash: PAXWXX5LO2B5FYPAMGOVOZLHG62IQEHV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: alexander.deucher@amd.com, Xinhui.Pan@amd.com, amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm:amd:amdgpu: Fix missing bo unlock in failure path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PAXWXX5LO2B5FYPAMGOVOZLHG62IQEHV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjQuMDQuMjMgdW0gMDc6NTkgc2NocmllYiBTdWtydXQgQmVsbGFyeToNCj4gc21hdGNoIHdh
cm5pbmcgLSBpbmNvbnNpc3RlbnQgaGFuZGxpbmcgb2YgYnVmZmVyIG9iamVjdCByZXNlcnZlDQo+
IGFuZCB1bnJlc2VydmUuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IFN1a3J1dCBCZWxsYXJ5IDxzdWty
dXQuYmVsbGFyeUBsaW51eC5jb20+DQoNCkZvciBub3cgdGhhdCBwYXRjaCBpcyBSZXZpZXdlZC1i
eTogQ2hyaXN0aWFuIEvDtm5pZyANCjxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Lg0KDQpCdXQg
Zm9yIHRoZSByZWNvcmQgbWFwcGluZy91bm1hcHBpbmcgdGhlIE1RRCBsaWtlIHRoaXMgaXMgYSB2
ZXJ5IGJhZCANCmlkZWEgaW4gdGhlIGZpcnN0IHBsYWNlLg0KDQpXZSBjb3VsZCBuZWVkIHRvIHNo
dWZmbGUgbWVtb3J5IGFyb3VuZCBmb3IgdGhhdCBkdXJpbmcgcmVzdW1lIGFuZCB0aGF0IA0KaXMg
bm90IHNvbWV0aGluZyB3ZSByZWFsbHkgd2FudCB0byBkby4NCg0KQ2hyaXN0aWFuLg0KDQo+IC0t
LQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OF8wLmMgfCA0ICsrKy0NCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjhfMC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y4XzAuYw0KPiBpbmRleCAyNzg0MTZhY2YwNjAuLjVk
ZTQ0ZDdlOTJkZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4
X3Y4XzAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjhfMC5jDQo+
IEBAIC00Njg2LDggKzQ2ODYsMTAgQEAgc3RhdGljIGludCBnZnhfdjhfMF9raXFfcmVzdW1lKHN0
cnVjdCBhbWRncHVfZGV2aWNlICphZGV2KQ0KPiAgIAkJcmV0dXJuIHI7DQo+ICAgDQo+ICAgCXIg
PSBhbWRncHVfYm9fa21hcChyaW5nLT5tcWRfb2JqLCAmcmluZy0+bXFkX3B0cik7DQo+IC0JaWYg
KHVubGlrZWx5KHIgIT0gMCkpDQo+ICsJaWYgKHVubGlrZWx5KHIgIT0gMCkpIHsNCj4gKwkJYW1k
Z3B1X2JvX3VucmVzZXJ2ZShyaW5nLT5tcWRfb2JqKTsNCj4gICAJCXJldHVybiByOw0KPiArCX0N
Cj4gICANCj4gICAJZ2Z4X3Y4XzBfa2lxX2luaXRfcXVldWUocmluZyk7DQo+ICAgCWFtZGdwdV9i
b19rdW5tYXAocmluZy0+bXFkX29iaik7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
