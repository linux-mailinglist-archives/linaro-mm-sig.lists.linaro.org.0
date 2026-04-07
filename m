Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEwsG3zZ1GlxyAcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Apr 2026 12:16:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0C03ACA4B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Apr 2026 12:16:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C741F40470
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Apr 2026 10:16:26 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011005.outbound.protection.outlook.com [40.107.208.5])
	by lists.linaro.org (Postfix) with ESMTPS id 577773F4C6
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2026 10:16:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=VFakcKQN;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.208.5 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BYc4yjlssfayStgP59igAEN0ZvYIouSGUlLHF82iB8UHuJkj2Dr/Bq1ZVcpv2pcFkJ9OAt8KPB9c2vNWlk3QuVbG2WdgdKb4fk+LAUB6blj3To24j+nAPxet4ZBFR3U/6iIpqkJoD5E1hChY/Xr/ESFdkdjNDOGx3iPnnmPa7uKAzg4/VDGq+a0vDoZz5FD8BzhtQqMe5Gl7AKja8ro2erQS2Iv1SPdxRYZVo6buUV2zZfp92Y5wmJO7KvbHmKJSREgbjRVAUcxpQUwoNHkywcto3tGD0RXieTYdGxhKCazBYa9RFOirxLm8KQZJqMZFFZ9GUZb51PBn1HNaPC1++Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OkigFcR1irUy2nXTSzCcFNLA857EwMvMS7nX0N71T70=;
 b=BvH7LmCkKXLbX0AyfyE+B9wdsmTfdCF3Hi9HlngOlCDscYL19kWxLccX6LhDX8/zVbLSeYkvJTnCbw4q2BXE5M3A3L20TT9WO/UQi8zxyiFk3vkEutHlKjp7V9vsnv9LrntIASie3xW78LA2VEGu8D5UkZYcip90m55H/Mq9lYOacVZcG+9uWvThQHJd8eWp45JUflS/JqIZvx6DgFFEvYUD7fyyDyJMxRIkwi6Tt/PY1XhZA990eQP8iVRPK/2wwTaegnv+X15koZ5YAVuieTbG70cR3oWyRppgvy3jMNbMBd0v3sRIvJiJJ4ToTh/95bydUaJZHlK5eCV0tRMuMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OkigFcR1irUy2nXTSzCcFNLA857EwMvMS7nX0N71T70=;
 b=VFakcKQN60FpsChd4+56Bv7bjGd6LkwFadSrX+IPoGtmMAfPvlyh8uwgdkPhwyf+4CLhk/1yqHxw6nPJsCfI3ri6oF5UZU1d+7a03IF3F4411k0UH+I7y5dD6hcqDgbprkx1VBtnAWSbPU8DX1VEx4X2X2O7CkCYo4kkNECLjDw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA3PR12MB7879.namprd12.prod.outlook.com (2603:10b6:806:306::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.21; Tue, 7 Apr
 2026 10:16:19 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 10:16:19 +0000
Message-ID: <0c00c6ec-5834-42a3-b1a7-0bb81943bd98@amd.com>
Date: Tue, 7 Apr 2026 12:16:15 +0200
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20260403083602.1771-1-pierre-eric.pelloux-prayer@amd.com>
 <20260403083602.1771-6-pierre-eric.pelloux-prayer@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260403083602.1771-6-pierre-eric.pelloux-prayer@amd.com>
X-ClientProxiedBy: FR4P281CA0187.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::9) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA3PR12MB7879:EE_
X-MS-Office365-Filtering-Correlation-Id: 5291394d-4060-4f97-da81-08de948eb60d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	lkqSACdnwEUhkcd0gEKgsS6pxprleR6ehFepPTm5o83dlvnqs6JPlhtBnkK7DRW/MugC6i5DRjY6aPA36dHAWbeMYG99d1ElSyqT7S7QiVgdpU/n2Fit+Se+QsdcoAG4L1vJbA6gAxF8C1TF29P+WelSj7v3q2uH5CA5z8GSXAc4FBBe6HhBreKs8QwbSZhwnpN1LtjKd/5CS/6IOgZExvq4g+7ylpflIewOrrOxFx7jwgvTaNCkstx6C7/iY8sqYnt8KbcIw0G9Z8OlFLA1PqRpOLFjqwulegQf7VbuHlXDvkiwwIRMHb79fE0IuyuW0Q9J0A9b9OP23hxvZ6JL8G57RxQVWlXB7hU99wJSO+wXTPpf6mo/zvtlUV3v+rjvlR0CTfzi7yO4gkx/yrP5cnUxF0oIRBt40eUWLr1FdR0G5dhDVqGCceJTNosxqW5KtnITK8fY9St/pCtwAge6HjrJ1rAqRelWwXXBypV/g1TqONYShvt+ha5vxSyp6GKWnRhpXn45Kd+gDdiBZiZo+GpLrbJySh2fC87pKx8hO52xxDAwl1w1so8bhqU4GqC7udChqOjJ2wvBHweiP7L3cIXfLYleZCXvOVmUpLNNqES2Q8vVqUvO0N2ukNdWYltRFk1Tgt5TrUWIAdtDiqxcNZlEuGf1NzwS7N/e1TbsV6TuloFjUlXlY1p9n6xXzC+s69OXZPn38CXFN8ueeXbnTE6wWX8pBDtQsSTwif1R7j4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K3JDZlVSeWZTTHowWE9YTVF0TGFVMHB3eUJWL0tyWS95bzdMK1Q3a016Q3dZ?=
 =?utf-8?B?S3VkSTFCZVpFNlNWcmdBNkNkR3BTRERqTlUzOHVUTUE5aEZwaGNrZkl0V01C?=
 =?utf-8?B?OVF1NG92YmE3RkJUbWlnOU9ubHJ2Zkh1NkdQV0huUlNDNnEwcnpFd2VoUWdi?=
 =?utf-8?B?UlFrWjJlQkdWNkh3RWg5MWl4eHFBM0xFNEs1TjdTZFpOeFkva3hDU1hpcXYy?=
 =?utf-8?B?R1VmRCtCYzVucTlNMTU0ekk5VUZhYmVtem5zeWpETlgwK2NQTFFsRDRLRVFI?=
 =?utf-8?B?V2RsQ1J6UFRtNjVJTzU0V2ttOGlzSThicG5MSHJ1WWpjT1B6QSs2M0xacHlC?=
 =?utf-8?B?VEladTBiR0RUVzc4Y0lUbTA2VmFHRlQ1RVBzcG5vZk5QaHhMeDZVYld2Skow?=
 =?utf-8?B?eUh6VzFhdHF4elVSZFQrTURVN3JCcVRpUmdwYWxyMWdIWXY5NWc0dit4dHRJ?=
 =?utf-8?B?MVZ1Y1R3bFVIU1hwN1c0Q2prVW9wSGw2K0tMWVAzOUJDdENRckMzOGZRMzJs?=
 =?utf-8?B?b1cvM0hiS1hkaWc5OFJJV3lqUTVOcURzY1BFSDlSK0Rlc1oxN2h2bUx4MVlU?=
 =?utf-8?B?U2VZTzF6bjJIejRrMXVsMDVFVjB3UUFaTU5GQzdYV3Z2SkZRbG9qbjArWmlK?=
 =?utf-8?B?QTVIeitKZGFwUkhmYmFNbk1Bc3N0T3FRaVkvcGEwNlZOVmJjb2lMQzhQQmJx?=
 =?utf-8?B?Z052eXVHeHF3NWRsUGJzMGlYWWlzMHBDYTgyMGo0YjRQNWoveHB3TGh6Mi9r?=
 =?utf-8?B?VWhFTXlKMGJYM1FRZktRUWl1VUJOaElSaVJwRkZGRUx2WkU5RnRFZTYxZGt6?=
 =?utf-8?B?SVJHRit3bTNySVgrdlozNFJqWUZ0TVdFQlZNU1NrRW5DOWtvdUFXclJNTXd4?=
 =?utf-8?B?WGdMMHVSTkFCNEptZXNoT2M4QUZkNVdZUmxNdjZuL3hESm9ZeXRrM1g5UmZ3?=
 =?utf-8?B?ZE5XVWdDdTBkaG4rbVpUeDBkYzlBeVlxQ2x0RzNnR1ZKNkw4bkdMQUNpSkha?=
 =?utf-8?B?b2NyZ1hZSG8rMDM0OVNidHc4Wk5QRDR4L0UvNXVPakt3NHpQRlRvZVY5VmlZ?=
 =?utf-8?B?akpjTis2MlVkNitEVHY2TW0zcHZmVUJFRUxDc3JQM2NMZHM2cjZWcERYc3lm?=
 =?utf-8?B?ZnFCSkNTWDArNWtKdk1xUEp6NkNOeGhWcU5CK2ZDdHdMaEQwamFNZmdUMVZI?=
 =?utf-8?B?WGIvN01HeUVtMlZPT3RValdJbXVGUkhJdGJWc3lkcHMxSGZvcGNHRWthQS95?=
 =?utf-8?B?NHcxM25DdUd6Vmd2bDFtNEVwZmdtUXBGRHhJUVlmYjJWTmRORTkyeXI5bXAw?=
 =?utf-8?B?Z1c5Q1dSQVNWVXhoY3JOS0pKOHFjbDdBb1RkelR5V1pCakRvQUdiTnp6a1dk?=
 =?utf-8?B?Z3MxMjdMZHVtVHhuRDg5d3FPYXFVTk9UcURCamkralNhQTQ1dXlvbVJPblMw?=
 =?utf-8?B?a3pmU1BscVBOenpSTTM1NjluM2ZtVDVEWGJkTmFvK3pMOEpUUncyeXE4NnZq?=
 =?utf-8?B?QXhzZ1RnazQycCtRRW96NFhoaGtGL2lSNVY0Qkx4MGl2elczcWU3RkRyVXdB?=
 =?utf-8?B?SGE3YmtFSURnZ1ZrOE1OSXNuVkdjYkdaSm1oRDQvdGJmK3dHaVFZNkNLSVJT?=
 =?utf-8?B?VkZXUjJIN3ZmVHk0YzhkcDZtdk1GOFV2ZlVZYVMrWlJmRzVUd0VuOTYxNDU4?=
 =?utf-8?B?VG53aENwd25PZzZmdVdnNmE5L1RKTlJLOG5SMlJsT3FCNUVUZzB3SENGTEI4?=
 =?utf-8?B?MmVOd01XSnJyS09DcWlQMmpWV1Z5bWpwYkZkaDhCeERmdVBmdzRqeUdQY1Mr?=
 =?utf-8?B?RVZ0dWxLVXgwSnd4bTR4Q3h4cG90ZVJoeS9BN2dvNHVXS2JOQUxmY0ZndXpB?=
 =?utf-8?B?TElheVU1TmRoRm5NUUZ6UEl3VGNQM2xESmNMWDA4K2thT0JRS01QZ2ZJRHZV?=
 =?utf-8?B?R0lHZ3pqbHFBMFhpdDVIZVoxeVRqYzhRY2QvTWZUdGYrelNIM3RINzJYQzZk?=
 =?utf-8?B?ZmgwYUR2b25ybmRneS8rRlBLZmE0dy9kMTZ3VFFPMW9EZ2RRVjRxVVNNVDEz?=
 =?utf-8?B?a0UyaGd6SGludHdiV0xCbUtsSXlFTUN1bmpDTjkrZ09kU3JhRjZoWkd6WUZG?=
 =?utf-8?B?ZFdwdTlYdFJ5b1RwNnZ3c211RDZZeG81VEc5RlFOUnQ5c3plSkxkbDVkZDFY?=
 =?utf-8?B?WHJ3UEJUV2o0RGU1dFZiZ0Q0VWZqVmtWdWtWamtEZ09iSlFaQXNldGpVcW9C?=
 =?utf-8?B?NTNFNG1MQlNaRFlJMVZFbVRpUjYrR0JlNEczM3NnOTRyTFhoWmJjVHV5NnFK?=
 =?utf-8?Q?qkIJMTqrqflAXgXqC3?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5291394d-4060-4f97-da81-08de948eb60d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 10:16:19.6995
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5UwgL+uqt0zSmYoTCloFJbMaWnv3HpNqHQIOFHPYezBSmxCfprDXDCgyotYto7WW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB7879
X-Spamd-Bar: -----
Message-ID-Hash: KK3QAOPGR3MENM7OUR6DJLAVWDTY2KHQ
X-Message-ID-Hash: KK3QAOPGR3MENM7OUR6DJLAVWDTY2KHQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 6/7] drm/amdgpu: rename amdgpu_fill_buffer as amdgpu_ttm_clear_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KK3QAOPGR3MENM7OUR6DJLAVWDTY2KHQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,amd.com:mid]
X-Rspamd-Queue-Id: CC0C03ACA4B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCk9uIDQvMy8yNiAxMDozNSwgUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgd3JvdGU6DQo+
IFRoaXMgaXMgdGhlIG9ubHkgdXNlIGNhc2UgZm9yIHRoaXMgZnVuY3Rpb24uDQo+IA0KPiAtLS0N
Cj4gdjI6IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyIGluc3RlYWQgb2YgYW1kZ3B1X2NsZWFyX2J1
ZmZlcg0KPiAtLS0NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFBpZXJyZS1FcmljIFBlbGxvdXgtUHJh
eWVyIDxwaWVycmUtZXJpYy5wZWxsb3V4LXByYXllckBhbWQuY29tPg0KPiBSZXZpZXdlZC1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYyB8IDEyICsrKysrLS0tLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgICAgfCAyMyArKysr
KysrKysrLS0tLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
dHRtLmggICAgfCAxMyArKysrKystLS0tLS0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0
aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X29iamVjdC5jDQo+IGluZGV4IGQwODg0YmJmZmE3NS4uMTk1Y2IxYzgxNGQxIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jDQo+IEBA
IC03MTcsOSArNzE3LDkgQEAgaW50IGFtZGdwdV9ib19jcmVhdGUoc3RydWN0IGFtZGdwdV9kZXZp
Y2UgKmFkZXYsDQo+ICAJICAgIGJvLT50Ym8ucmVzb3VyY2UtPm1lbV90eXBlID09IFRUTV9QTF9W
UkFNKSB7DQo+ICAJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KPiAgDQo+IC0JCXIgPSBhbWRn
cHVfZmlsbF9idWZmZXIoYW1kZ3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShhZGV2KSwNCj4gLQkJ
CQkgICAgICAgYm8sIDAsIE5VTEwsICZmZW5jZSwNCj4gLQkJCQkgICAgICAgdHJ1ZSwgQU1ER1BV
X0tFUk5FTF9KT0JfSURfVFRNX0NMRUFSX0JVRkZFUik7DQo+ICsJCXIgPSBhbWRncHVfdHRtX2Ns
ZWFyX2J1ZmZlcihhbWRncHVfdHRtX25leHRfY2xlYXJfZW50aXR5KGFkZXYpLA0KPiArCQkJCQkg
ICAgYm8sIE5VTEwsICZmZW5jZSwNCg0KV2FpdCBhIHNlY29uZC4gV2h5IGlzIHRoZSBkZXBlbmRl
bmN5IE5VTEwgaGVyZT8NCg0KQ291bGQgaXQgYmUgdGhhdCB3ZSByZWxpZWQgb24gdGhlIGZhY3Qg
dGhhdCBjbGVhcnMgYW5kIG1vdmVzIHdlcmUgc2VyaWFsaXplZCBpbiB0aGUgcGFzdD8NCg0KUmVn
YXJkcywNCkNocmlzdGlhbi4NCg0KPiArCQkJCQkgICAgdHJ1ZSwgQU1ER1BVX0tFUk5FTF9KT0Jf
SURfVFRNX0NMRUFSX0JVRkZFUik7DQo+ICAJCWlmICh1bmxpa2VseShyKSkNCj4gIAkJCWdvdG8g
ZmFpbF91bnJlc2VydmU7DQo+ICANCj4gQEAgLTEzMjksOSArMTMyOSw5IEBAIHZvaWQgYW1kZ3B1
X2JvX3JlbGVhc2Vfbm90aWZ5KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pDQo+ICAJaWYg
KHIpDQo+ICAJCWdvdG8gb3V0Ow0KPiAgDQo+IC0JciA9IGFtZGdwdV9maWxsX2J1ZmZlcihhbWRn
cHVfdHRtX25leHRfY2xlYXJfZW50aXR5KGFkZXYpLA0KPiAtCQkJICAgICAgIGFibywgMCwgJmJv
LT5iYXNlLl9yZXN2LCAmZmVuY2UsDQo+IC0JCQkgICAgICAgZmFsc2UsIEFNREdQVV9LRVJORUxf
Sk9CX0lEX0NMRUFSX09OX1JFTEVBU0UpOw0KPiArCXIgPSBhbWRncHVfdHRtX2NsZWFyX2J1ZmZl
cihhbWRncHVfdHRtX25leHRfY2xlYXJfZW50aXR5KGFkZXYpLA0KPiArCQkJCSAgICBhYm8sICZi
by0+YmFzZS5fcmVzdiwgJmZlbmNlLA0KPiArCQkJCSAgICBmYWxzZSwgQU1ER1BVX0tFUk5FTF9K
T0JfSURfQ0xFQVJfT05fUkVMRUFTRSk7DQo+ICAJaWYgKFdBUk5fT04ocikpDQo+ICAJCWdvdG8g
b3V0Ow0KPiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCj4gaW5k
ZXggYTNkMDk5OGI4Y2VjLi5lNzRmOWY4YTg4ZGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdHRtLmMNCj4gQEAgLTQxNyw4ICs0MTcsOCBAQCBzdGF0aWMgaW50IGFt
ZGdwdV9tb3ZlX2JsaXQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywNCj4gIAlpZiAob2xk
X21lbS0+bWVtX3R5cGUgPT0gVFRNX1BMX1ZSQU0gJiYNCj4gIAkgICAgKGFiby0+ZmxhZ3MgJiBB
TURHUFVfR0VNX0NSRUFURV9WUkFNX1dJUEVfT05fUkVMRUFTRSkpIHsNCj4gIAkJc3RydWN0IGRt
YV9mZW5jZSAqd2lwZV9mZW5jZSA9IE5VTEw7DQo+IC0JCXIgPSBhbWRncHVfZmlsbF9idWZmZXIo
ZW50aXR5LCBhYm8sIDAsIE5VTEwsICZ3aXBlX2ZlbmNlLA0KPiAtCQkJCSAgICAgICBmYWxzZSwg
QU1ER1BVX0tFUk5FTF9KT0JfSURfTU9WRV9CTElUKTsNCj4gKwkJciA9IGFtZGdwdV90dG1fY2xl
YXJfYnVmZmVyKGVudGl0eSwgYWJvLCBOVUxMLCAmd2lwZV9mZW5jZSwNCj4gKwkJCQkJICAgIGZh
bHNlLCBBTURHUFVfS0VSTkVMX0pPQl9JRF9NT1ZFX0JMSVQpOw0KPiAgCQlpZiAocikgew0KPiAg
CQkJZ290byBlcnJvcjsNCj4gIAkJfSBlbHNlIGlmICh3aXBlX2ZlbmNlKSB7DQo+IEBAIC0yNTcy
LDI2ICsyNTcyLDIzIEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9maWxsX21lbShzdHJ1Y3QgYW1k
Z3B1X2RldmljZSAqYWRldiwNCj4gIH0NCj4gIA0KPiAgLyoqDQo+IC0gKiBhbWRncHVfZmlsbF9i
dWZmZXIgLSBmaWxsIGEgYnVmZmVyIHdpdGggYSBnaXZlbiB2YWx1ZQ0KPiArICogYW1kZ3B1X3R0
bV9jbGVhcl9idWZmZXIgLSBmaWxsIGEgYnVmZmVyIHdpdGggMA0KPiAgICogQGVudGl0eTogZW50
aXR5IHRvIHVzZQ0KPiAgICogQGJvOiB0aGUgYm8gdG8gZmlsbA0KPiAtICogQHNyY19kYXRhOiB0
aGUgdmFsdWUgdG8gc2V0DQo+ICAgKiBAcmVzdjogZmVuY2VzIGNvbnRhaW5lZCBpbiB0aGlzIHJl
c2VydmF0aW9uIHdpbGwgYmUgdXNlZCBhcyBkZXBlbmRlbmNpZXMuDQo+ICAgKiBAb3V0X2ZlbmNl
OiB0aGUgZmVuY2UgZnJvbSB0aGUgbGFzdCBjbGVhciB3aWxsIGJlIHN0b3JlZCBoZXJlLiBJdCBt
aWdodCBiZQ0KPiAgICogICAgICAgICAgICAgTlVMTCBpZiBubyBqb2Igd2FzIHJ1bi4NCj4gLSAq
IEBkZXBlbmRlbmN5OiBvcHRpb25hbCBpbnB1dCBkZXBlbmRlbmN5IGZlbmNlLg0KPiAgICogQGNv
bnNpZGVyX2NsZWFyX3N0YXR1czogdHJ1ZSBpZiByZWdpb24gcmVwb3J0ZWQgYXMgY2xlYXJlZCBi
eSBhbWRncHVfcmVzX2NsZWFyZWQoKQ0KPiAgICogICAgICAgICAgICAgICAgICAgICAgICAgYXJl
IHNraXBwZWQuDQo+ICAgKiBAa19qb2JfaWQ6IHRyYWNlIGlkDQo+ICAgKg0KPiAgICovDQo+IC1p
bnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2J1ZmZlcl9lbnRpdHkgKmVu
dGl0eSwNCj4gLQkJICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvLA0KPiAtCQkgICAgICAgdWlu
dDMyX3Qgc3JjX2RhdGEsDQo+IC0JCSAgICAgICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQo+IC0J
CSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNlLA0KPiAtCQkgICAgICAgYm9vbCBj
b25zaWRlcl9jbGVhcl9zdGF0dXMsDQo+IC0JCSAgICAgICB1NjQga19qb2JfaWQpDQo+ICtpbnQg
YW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0eSAq
ZW50aXR5LA0KPiArCQkJICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvLA0KPiArCQkJICAgIHN0cnVj
dCBkbWFfcmVzdiAqcmVzdiwNCj4gKwkJCSAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNl
LA0KPiArCQkJICAgIGJvb2wgY29uc2lkZXJfY2xlYXJfc3RhdHVzLA0KPiArCQkJICAgIHU2NCBr
X2pvYl9pZCkNCj4gIHsNCj4gIAlzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiA9IGFtZGdwdV90
dG1fYWRldihiby0+dGJvLmJkZXYpOw0KPiAgCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gTlVM
TDsNCj4gQEAgLTI2MjIsNyArMjYxOSw3IEBAIGludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0
IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0eSAqZW50aXR5LA0KPiAgCQkJZ290byBlcnJvcjsNCj4g
IA0KPiAgCQlyID0gYW1kZ3B1X3R0bV9maWxsX21lbShhZGV2LCBlbnRpdHksDQo+IC0JCQkJCXNy
Y19kYXRhLCB0bywgY3VyX3NpemUsIHJlc3YsDQo+ICsJCQkJCTAsIHRvLCBjdXJfc2l6ZSwgcmVz
diwNCj4gIAkJCQkJJm5leHQsIHRydWUsIGtfam9iX2lkKTsNCj4gIAkJaWYgKHIpDQo+ICAJCQln
b3RvIGVycm9yOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3R0bS5oIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oDQo+IGlu
ZGV4IDQzNmEzZTA5YTE3OC4uZDdiMTRkNWNhYzc3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3R0bS5oDQo+IEBAIC0xODcsMTMgKzE4NywxMiBAQCBpbnQgYW1kZ3B1
X2NvcHlfYnVmZmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LA0KPiAgCQkgICAgICAgc3Ry
dWN0IGRtYV9yZXN2ICpyZXN2LA0KPiAgCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNl
LA0KPiAgCQkgICAgICAgYm9vbCB2bV9uZWVkc19mbHVzaCwgdWludDMyX3QgY29weV9mbGFncyk7
DQo+IC1pbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2J1ZmZlcl9lbnRp
dHkgKmVudGl0eSwNCj4gLQkJICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvLA0KPiAtCQkgICAg
ICAgdWludDMyX3Qgc3JjX2RhdGEsDQo+IC0JCSAgICAgICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3Ys
DQo+IC0JCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNlLA0KPiAtCQkgICAgICAg
Ym9vbCBjb25zaWRlcl9jbGVhcl9zdGF0dXMsDQo+IC0JCSAgICAgICB1NjQga19qb2JfaWQpOw0K
PiAraW50IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2J1ZmZlcl9l
bnRpdHkgKmVudGl0eSwNCj4gKwkJCSAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibywNCj4gKwkJCSAg
ICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQo+ICsJCQkgICAgc3RydWN0IGRtYV9mZW5jZSAqKm91
dF9mZW5jZSwNCj4gKwkJCSAgICBib29sIGNvbnNpZGVyX2NsZWFyX3N0YXR1cywNCj4gKwkJCSAg
ICB1NjQga19qb2JfaWQpOw0KPiAgc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0eSAqYW1k
Z3B1X3R0bV9uZXh0X2NsZWFyX2VudGl0eShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldik7DQo+
ICANCj4gIGludCBhbWRncHVfdHRtX2FsbG9jX2dhcnQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0
ICpibyk7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
