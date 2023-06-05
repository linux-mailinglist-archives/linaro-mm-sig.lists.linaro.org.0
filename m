Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CC77220B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Jun 2023 10:13:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F122D4142D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Jun 2023 08:13:07 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2053.outbound.protection.outlook.com [40.107.243.53])
	by lists.linaro.org (Postfix) with ESMTPS id 8B7F23EBFD
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Jun 2023 08:13:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=JzPmBqLm;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.53 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jLdPN8xgzeNezD5btOSKq9HAUV3Y1YrcYukeAnmBqH4yGRPV/hWGa7TWybJVRQgfV6PwqK7T7b1GJojpH/gLgpNaUpVce2tVsWKqHPiOylo+RVbO9NsACjYIaQTvvNjXXGj3WxpKZViAmSA3NQGnX59CjfyimeCevrddt8LJj9WK9HU+WJXesZOFNRr0qYtJIzf/0mJAbRwpsAFn/CK3DSyGJICSGW5MDu1bTW9sdAf0f2r5R+MDLTPgsI1ppLw8tcR0dRag9QHjE5EwkFY8tgCJ/7J36FCLxhHHNpZaB2EZMZPWa83s0FUFQ1A1TbZfubQMMMdS3QV/ZZQS91FSqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HskrjQTHtVsKOxc3AhKTql+Wr/0OAstnXmFMD6ONbRE=;
 b=aLLAhYeCadWsS9SkE/QU5yphLWnJashxjGqAcVGuwJg9+PsmNqHHpirVGzntkjtjB66GjYud9gYTx9wXM1LMs4eZddFPHyQybro6/ZzQ4qblWmiV1sALeZLLzbBEcTckX3AsbNvWvxgwmikhtzNxdug/lR0QT9hGpYlNyIfiFxvKz/lc6P3qo7JPab+asELmVL4Oeh1i3xGO6Z4IMNxTr75oh5HmDnRvZ0dv+zQgBSuuTf07oZVFAVo4+bj1UQLE/xlVhH+UtNZDlkSx/ZObgVlxgCJ3Sm7hoesaP/Pz7s+oR635Iu2nVF9HeU508eMt9rjEFRLDL3ixkAaitQ6CoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HskrjQTHtVsKOxc3AhKTql+Wr/0OAstnXmFMD6ONbRE=;
 b=JzPmBqLmCt0bq32eJaoh+9W/EYtx9M9GE8bmcjT0UhHTw73dtN5GzcK9hEGmnP+Pd8Aye8rHNDiXW/zDXVs7QrSEw/X4eukchP6DWp2tYeSg9DXpVhdsaAVQFwqldSpNw/IdJzVqxuP1Nq3YcMT79mm9kJjwOk97rp632sRdFnY=
Received: from BYAPR12MB3589.namprd12.prod.outlook.com (2603:10b6:a03:df::29)
 by MW3PR12MB4411.namprd12.prod.outlook.com (2603:10b6:303:5e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 08:13:00 +0000
Received: from BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::401e:2e7f:7c2b:6bff]) by BYAPR12MB3589.namprd12.prod.outlook.com
 ([fe80::401e:2e7f:7c2b:6bff%4]) with mapi id 15.20.6455.024; Mon, 5 Jun 2023
 08:13:00 +0000
Message-ID: <e337dec6-0b0e-7e53-e38d-ae1791b98418@amd.com>
Date: Mon, 5 Jun 2023 10:12:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Min Li <lm0963hack@gmail.com>, alexander.deucher@amd.com
References: <20230603074345.17907-1-lm0963hack@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230603074345.17907-1-lm0963hack@gmail.com>
X-ClientProxiedBy: FR3P281CA0199.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::16) To BYAPR12MB3589.namprd12.prod.outlook.com
 (2603:10b6:a03:df::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB3589:EE_|MW3PR12MB4411:EE_
X-MS-Office365-Filtering-Correlation-Id: 07e04105-cc5b-4e5a-35c1-08db659cad3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GPJLOMH1CmRGCAxkA6+swQI1cAYpQA024v7OEsCsC1L9e3UOen8MhSMJ1rUXaQpQXR7DYmjZVV9uskmToxk9+rguJs2GM1Zx91K0cnL0cBn5YeB+yU5hP03KNwjpr7o0+QNuyKHgIIOVUf8lET1KkCq9cMgrnQGr0r7GGnrFF4USfuYZLmb5cwfzsGGpVykL1haZnikBimpBneuB53H9Djz/09dBqAotAvnVDZGM36xMiQuMZcrz/Fu2/wn4f/vtuGL+9VvrtcXK6+qOz3QZ0Zv8pYQB3TI851A/wQNp2HtbXGJ5dKJBJpLbeJgF1gfs9zPHxE30l1VHMQZv0XibDKfZAgEnb8iJRD6coa3+Jv7g58mu19DWZZMPXX/Gx6C7djgJIN1dDiylFbCqdlIIIZ8Cmsh+xdDvQmSVh2LKFq+6nBcTuZjFkg/T1tsX+7ZGwmDWvxcAUsFFM/LuVQbNYz5u2qKhThEPabw+zc2qZYPdRmleJa056q8CaLxAZA5CpIQofCaM6VbMLVZcY/zyMih6rxLb8qB64X3adqr5lA/xttWMoWC7fX8PiWzMvBZiYMIV+OkhRmfeJN4IWhQYT1yd43xacWI9JnCiFJUi2d1oP6UTktDbNsuXIQWvXd6dL1XssT2zfA6LUUHblCiqHw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3589.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(376002)(366004)(346002)(136003)(396003)(451199021)(6506007)(6512007)(31686004)(83380400001)(186003)(2906002)(36756003)(316002)(5660300002)(31696002)(86362001)(41300700001)(8936002)(8676002)(2616005)(6666004)(38100700002)(66556008)(66946007)(66476007)(6636002)(4326008)(66574015)(6486002)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NEM3dWVnMHNPTTZwQUtwOVRManVnN1pablBBcXBNWE1uQ0VmOEdCOUM4S2xF?=
 =?utf-8?B?TUZlQVVTd2ZFNno2ZDJwQ0QzdFJvQmM0ZjAxcGRMTG1XRU95TjRBQnNmczZ5?=
 =?utf-8?B?MmdtczNIWWl5OVE0WDNmRXk4WkZEM3pXSkNBcDFmOFFya29zQXJLZ2tieWht?=
 =?utf-8?B?ZHNsWGlEUHp5VldubkJINEVIdFRQZlJTd0RCRXpWKzZLNHBhdkUwZTVWcUVB?=
 =?utf-8?B?UmNDS0xBTWpXTHNBazlqQSttZml4VVJqOEdMU3IzV2VsZGVEWjJjYVcwTUhV?=
 =?utf-8?B?Zm9MdjRnbXFHYXpmcCtTK250T0h1T09RQ3pUYituR3NGTVEyME9vdUFiTEJW?=
 =?utf-8?B?ZUkwbEJCTk9QTWNUL2JscmxjR0dTTjJ2MWh2UXZ2aW5RZFRmdFc5ZS9rcmFS?=
 =?utf-8?B?MmFLdVBDb2h5M2kzSzZBM0pJOTVYQXNQREZOdmF0cFgyRXljR0tiSE1RcWMz?=
 =?utf-8?B?M2VZaE5iZzJNSXZGSlEzajJzQ1NmclhVQnh0OUMvTVh1bEsyMkxybWNYNk9n?=
 =?utf-8?B?WTJRTEh5K1E0MG9jdk5iT3psSDhYdE9mNmlsMmF0VHdKbElJaU5BVG83VUF0?=
 =?utf-8?B?NTRDT1NnL1FCR2dySUNCUlZnTjAyN1NmWTRsc2IycHNrTUtSc21VMlZxaFNK?=
 =?utf-8?B?RmZ5RFlKWEh0S1lEdWIxMXFMZVI0S25Ec0J1MXBoSWRhQ2pPK1k5Q1dvQlVD?=
 =?utf-8?B?dC9XMU1Oa1p1RGdiVWxhaDRPTHNSUFloeTBlNW1GZnZ5eTNoVnRkZ1Jzc0V4?=
 =?utf-8?B?WUdRVjFWTTVjeVZqWk9NdmlLZEJxMmJTZ2NWVGhPVDJsaDBWQTRpcVc2azNC?=
 =?utf-8?B?TklQTGxPZU4vcG54Mnhrc25hYXpFNTU5NnlWc1ZPZ3JDb2d3QlJaNUN5cEtt?=
 =?utf-8?B?Vnh4K1Z5R3dnYjQ1UU40b3JLNzRxOThselB6Wkl2ZVdnWTNQak5WRytQZGs0?=
 =?utf-8?B?QytCZk1lVS9oQjNDWDBPeEZOU1BEVGpuNHJvTmhMbmJ1U2xlREdicWxxREtT?=
 =?utf-8?B?bTlqRDd0dzNoRFpUSk1lVXo5QmI4cW9XcHkrRTAxOENxb2Y3N2hRdW83WlFI?=
 =?utf-8?B?QkE0TTFmdjhFcUQ1QXVEekdQN0lnUzdGL3lweStrUHk5ODFqbHg5Mm5GYjlm?=
 =?utf-8?B?eGxuRSttZTFjTVA3OWFMdEVRMUNWWURmcG5PN2t4emtGU21iajhMcHEyUmJW?=
 =?utf-8?B?T0NzSzc4ck1WTDc1MWxaMW9ZU1NCNVdrUDY0VW51T1VyQnFvU0RYWGZZRzFC?=
 =?utf-8?B?S0tUZjF2WUVVWlN3QU9ZMkl3elgwNS85dDB0RGRPbnFOeHVwei9Pc2pUUCtj?=
 =?utf-8?B?WDhhRUNxREs5WFZRL2NMNlM1a0xrL05VSFJiV1JtVkhzRFlrNC9PN21FT29D?=
 =?utf-8?B?SVFTNjQzZTQzSlZPbWNWbERRaVhlVGY4RTJCYXlEVDFhOVNaSUR1U0hsR2xW?=
 =?utf-8?B?ZG94ODNSYUZxK0hvdEgyWTZxMDVldFVyOG41NjBtYkczZWp2MG4wY2pVZFNv?=
 =?utf-8?B?RTNadUgwNk11a0tCSXUxczU0Vk5uUExOdzN4TzFZdFdlTDlqWUtsQW9MNHE4?=
 =?utf-8?B?WmJ5d1l3Z0xGclJjZ3JqRG05U1YyR0xtQk9sOWJNaitzQ3RRWm9xZklWd1ZM?=
 =?utf-8?B?bG90S0RpUFVzNzRDZFJVMFZrKzRXUWdMZ1N0ejZYZGlFUmJPbDJzNENzQWRz?=
 =?utf-8?B?Y0d0eFk3c0wzVWpzRW9obS9xNE1CbkMzWm1JUlNmTEVmYU52cDFWWjczd2s1?=
 =?utf-8?B?ZWJ3emdUcHFHdFBEMlJ4QXp1TEVrV1JsSENJV2tUazhTVW90RjdNaUZQY2R6?=
 =?utf-8?B?S1ROcnY0OEhZcmxyQUxiK0xmc1RIbWx6OW5wTXRFU2F3WHh6Q2NhYjduUlFN?=
 =?utf-8?B?dU1ob2VSbTRxVEdGY2Y2SnZ4WFRjK2cyTHZ0VUdQZTFyM2xYN2pPWWF6Rllx?=
 =?utf-8?B?YXBPeXlzUXhyeDEweWxjV245QVVUL0tLY0VURWxKUk5GQUY3aExyV056WThT?=
 =?utf-8?B?THVGaCs5S1gzNkxoYWg2NjFMTE5zdE9RcmhhbjduNjhyU0xac3h0NkhRRFEw?=
 =?utf-8?B?dmVoMnJuWE5tZlV6em8zYitRNlR0ZkYwajlVNkhLQ0dyRE9RbjJyNHg3SXo5?=
 =?utf-8?B?a2s1bXNOc0RKMDhVZ0pNMWlLOUJXNzFyNXNGODBKeGkyQThpaGtscGF0NTA0?=
 =?utf-8?Q?0YWAKChRb6mvxZi+U8gh7pgXkN3P1OcSSMHJVPcON55e?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07e04105-cc5b-4e5a-35c1-08db659cad3b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3589.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 08:13:00.2127
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ame2J5l14sSzO+urw3TissM/LGlgzlb71KTWjl07qOYfsTcf7SAyqNE8SF8Ns0KZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4411
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,amd.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.53:from];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8B7F23EBFD
X-Spamd-Bar: -----
Message-ID-Hash: UL64CAHBDIPPIIXG5ES5C6A7L22DQYMU
X-Message-ID-Hash: UL64CAHBDIPPIIXG5ES5C6A7L22DQYMU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/radeon: fix race condition UAF in radeon_gem_set_domain_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UL64CAHBDIPPIIXG5ES5C6A7L22DQYMU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDMuMDYuMjMgdW0gMDk6NDMgc2NocmllYiBNaW4gTGk6DQo+IFVzZXJzcGFjZSBjYW4gcmFj
ZSB0byBmcmVlIHRoZSBnb2JqKHJvYmogY29udmVydGVkIGZyb20pLCByb2JqIHNob3VsZCBub3QN
Cj4gYmUgYWNjZXNzZWQgYWdhaW4gYWZ0ZXIgZHJtX2dlbV9vYmplY3RfcHV0LCBvdGhlcndpdGgg
aXQgd2lsbCByZXN1bHQgaW4NCj4gdXNlLWFmdGVyLWZyZWUuDQo+DQo+IFNpZ25lZC1vZmYtYnk6
IE1pbiBMaSA8bG0wOTYzaGFja0BnbWFpbC5jb20+DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+IENoYW5nZXMgaW4g
djI6DQo+IC0gUmVtb3ZlIHVudXNlZCByb2JqLCBhdm9pZCBjb21waWxlIGNvbXBsYWluDQo+DQo+
ICAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZ2VtLmMgfCA0ICstLS0NCj4gICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9nZW0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vcmFkZW9uX2dlbS5jDQo+IGluZGV4IGJkYzVhZjIzZjAwNS4uZDNmNWRkYmMxNzA0
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9nZW0uYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9nZW0uYw0KPiBAQCAtNDU5LDcgKzQ1
OSw2IEBAIGludCByYWRlb25fZ2VtX3NldF9kb21haW5faW9jdGwoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwNCj4gICAJc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYgPSBkZXYt
PmRldl9wcml2YXRlOw0KPiAgIAlzdHJ1Y3QgZHJtX3JhZGVvbl9nZW1fc2V0X2RvbWFpbiAqYXJn
cyA9IGRhdGE7DQo+ICAgCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZ29iajsNCj4gLQlzdHJ1Y3Qg
cmFkZW9uX2JvICpyb2JqOw0KPiAgIAlpbnQgcjsNCj4gICANCj4gICAJLyogZm9yIG5vdyBpZiBz
b21lb25lIHJlcXVlc3RzIGRvbWFpbiBDUFUgLQ0KPiBAQCAtNDcyLDEzICs0NzEsMTIgQEAgaW50
IHJhZGVvbl9nZW1fc2V0X2RvbWFpbl9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLA0KPiAgIAkJdXBfcmVhZCgmcmRldi0+ZXhjbHVzaXZlX2xvY2spOw0KPiAgIAkJcmV0
dXJuIC1FTk9FTlQ7DQo+ICAgCX0NCj4gLQlyb2JqID0gZ2VtX3RvX3JhZGVvbl9ibyhnb2JqKTsN
Cj4gICANCj4gICAJciA9IHJhZGVvbl9nZW1fc2V0X2RvbWFpbihnb2JqLCBhcmdzLT5yZWFkX2Rv
bWFpbnMsIGFyZ3MtPndyaXRlX2RvbWFpbik7DQo+ICAgDQo+ICAgCWRybV9nZW1fb2JqZWN0X3B1
dChnb2JqKTsNCj4gICAJdXBfcmVhZCgmcmRldi0+ZXhjbHVzaXZlX2xvY2spOw0KPiAtCXIgPSBy
YWRlb25fZ2VtX2hhbmRsZV9sb2NrdXAocm9iai0+cmRldiwgcik7DQo+ICsJciA9IHJhZGVvbl9n
ZW1faGFuZGxlX2xvY2t1cChyZGV2LCByKTsNCj4gICAJcmV0dXJuIHI7DQo+ICAgfQ0KPiAgIA0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
