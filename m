Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEuTCQ4GEGqLSQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 09:30:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A22095B0014
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 09:30:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1587D40985
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 07:30:20 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013036.outbound.protection.outlook.com [40.93.196.36])
	by lists.linaro.org (Postfix) with ESMTPS id 0E8CA40985
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 May 2026 07:29:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=XBQRCazw;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.36 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dnJIPZ2zfoiag/usDlFsk79b60GcVa3m+aTpJ+F1OPFwDzXq2K9J9X4mBPShieFnhMawTAhWgn1oPzAwoU5e30bRQkkO6ibP3oyUL7y8+JQY24Sv5TF4yFbFwNwiYlrO2VkzLjWJZD4qRjJdv/b0kGBj2o/i5tc0O2u6v9PWjIPg3bGQy08os3EcuxtnlSyXY1QJtafm3l38I/mTww/2X3jQaXIAlv9zhVZCYCazd2/OxT1IBbSDdvPdL/cVid8G18fqMcln8A0wCqShb3tMGcsx4FMYaJ/I9fL9j4O6vDn0v8dK7aJC5r/o+oIfGWfoHPYOXsWrLwr7p9ItPEBg1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L4mq+K78PNd2T6sS2jQ1TN1fOxGJjDjP/A9J0iRavnM=;
 b=bZ1ZDQizyxWQwk88m6QMK4UetWXT5GWl04aZfaIMMQqlAEanXk/x0U8SoYfmDmR2kVGcCkWKN7h0f+cQewFO8L0B3W3Rytq6XK89CP66bldHtfpo5EhhP4J+aMd8htnthmnOq6k23lJAVRYupnAHqQbJKU3agigwGgEFLmTD6kvSuizP5l/z0gMBxQJakquRQNq6IVXUBAYK0YC9ETW8yRvJTbNbsto3Xha6fUQOoM3DmyBH6ELvzftzwWpiESxcigKiagyp1obTRA45FdOKNL777bSTA+MK6bmjYUrstqQIMfJOXfAejHAee30dnxiK0TYVqBzGTBg5hHv2yUtymw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L4mq+K78PNd2T6sS2jQ1TN1fOxGJjDjP/A9J0iRavnM=;
 b=XBQRCazwTAi38GITH/LGJbq9XaxIF9WTKdjwEjWXKAO8UW9kU5gBEP9kuZU64ON9vLkT8279v+D8SY/4Kn8KGxmwCdmO9wAwNYOzpeHbM9+yAxsSdGis6BX83oa4U58qzyunjDt0JRwq87IjL51JXyCay28ZCJpvXnsWyfwOzGE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB6161.namprd12.prod.outlook.com (2603:10b6:208:3eb::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Fri, 22 May
 2026 07:29:48 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Fri, 22 May 2026
 07:29:47 +0000
Message-ID: <88588749-aa0b-470b-be79-bf7316313f0c@amd.com>
Date: Fri, 22 May 2026 09:29:40 +0200
User-Agent: Mozilla Thunderbird
To: Lizhi Hou <lizhi.hou@amd.com>, ogabbay@kernel.org,
 quic_jhugo@quicinc.com, mario.limonciello@amd.com,
 karol.wachowski@linux.intel.com
References: <20260521162930.1451042-1-lizhi.hou@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260521162930.1451042-1-lizhi.hou@amd.com>
X-ClientProxiedBy: FR3P281CA0183.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB6161:EE_
X-MS-Office365-Filtering-Correlation-Id: a45f7d49-7e38-44e9-77a6-08deb7d3e6e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003|11063799006;
X-Microsoft-Antispam-Message-Info: 
	fA0OEKDLTdyuSohoMvujZxyA3U5LgRrevalYnZOoeHbj4ezwl1py2cb3rl9C1HpTpe5P7cymrxP0nNLV9aW0O5tbHgkPE53F3xY0AtnYT2CEngIXNlsVBaRlozCLul9iBNlxX/LqSbYmap6nyacp/b5JYeKLgvNlT6S/TOs/r6kK/m8t6jaLxFzMZ6dQoePV0nhz2EnqaryTW3GXH6qt+lcvNqstlBOLQmDX5TvLdduxh1+Xdm5mcPv6mRJlk2a+1u60Gm4MxbGxx0hXdihY6QKGd7FGJYoByX5gOPAN1NecQdF6Vna0oBxQe6MeIpoXthTsV1DgyrXR0OSxcsOCXVr/QvXpZS+/GwXQw4/DD9H91a/0fbnZ5esiKFLDU+TBtZ4WQXHNtSvijbLx+3qo8QBhUcSChGGcu0sflEGtHTVM2QUi0I7HKiFfhy0qxNtWkXHA0wOt+tBYpgBttAIjUJ3X/pzPwYZu2SR1BFR5/ER3EQs0VE5vnL/YCBcyNGsgu1OG+LbPpczKaS8E8CjWka36Ww9jhM1coaXsoeEsJqL/eRANs4Y5tOg3MmfqrDLOcO2dL/Ynd7WYNvqC1wc98jveyfi1hun/dIAHt4vzBJjHDjv7faRp24SJVYu5szkUx0agvgMpZ7fBK0Fnet5q5VuSJ1SfDhQ7kyPPuA6g6X1NuJM9K2SIhqxkLk5CwVbU
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WGpVZ1pCWm1jSzdLdGRwRG1RWkt3TUc0ZjdYOEIyK3liU0lMQVRjTEpkRTZ2?=
 =?utf-8?B?MWpoUGhqTDhPNFJva3BjaW9FSk5hRmQ5dEExM01FekxvUis3dUczOWs3RmVx?=
 =?utf-8?B?MTIwc1NCdTdCNkF4VG9qVE9nS0I2MmRaaGZvRExKTlNPdjJGc1ZvZFd3T2lx?=
 =?utf-8?B?ZDdCZHppRmJxeDcyU1hBays2QVJSUjVISHA1ejJwWlVVZEtCd3ZpN0hWYWZx?=
 =?utf-8?B?VmptVmxEUkxDRDFuNXlmcUNzbGtkaEduTThrVTZkQ1FTN296RkwyYVFpMXhi?=
 =?utf-8?B?c1h5WXRpd3pjRUtMZlNOSVNRWlh6anpuOVIzRUkwaUpIakNycFMyaW9qaVdN?=
 =?utf-8?B?ejJNeWt0M0docklTV2RrTHhFdU41VkJIRi9rWnV6a3RGam1hbE8yM3I0Tjl6?=
 =?utf-8?B?RnVvdGsyazdDZWhVdUZsUXNlb3FLeTlCL3hWSjVUZzlqQThISlhWZ21JK2Fq?=
 =?utf-8?B?Tm5wQlZPQWV5Y0o2eDczU1BkSlN6WG5nNmRxdllYcHNGREl3WWNKVmJ5a3lh?=
 =?utf-8?B?Ui9LT1JPQnFld0IvSU9lcHhEU0FRWllMMDFjNlpZV3J2QzU2cUYyTzQ4THEv?=
 =?utf-8?B?STF4YU5acERDSkdTNDJyM25lYk0yenNqOTA2MFZacDRxalJZSlBQUVNIUndu?=
 =?utf-8?B?b1Y0akpOc0t6Ui9SdXNVeGxyblBLMXVWdnRQQzJLWVIzZmtiZ2ZsRVR1amoz?=
 =?utf-8?B?cC9tc2d5ZVFGVnVMTDNXQUtYL1p5N2RBNnJla0FCeFc0L3BBUmpQazR4dU9r?=
 =?utf-8?B?aTMwSVYyZncxYWMrVEo1SzdIQVpYS0swWlFGYk9rR2x1VkM0bWhGdjFsQXQv?=
 =?utf-8?B?Z3NvMUZkUkNya1I5VEZick1PT20xZm1xaWZhQVFNdmdId0kzMGRqc28wRkI2?=
 =?utf-8?B?ZFlXOU1HK09kdGU5TVY0VnlxdW5iOUlZZS9aYzl6Y3dHNW1MT3pKcVJ0VjZS?=
 =?utf-8?B?Vy9rdWE0WXVFN2thYVZPY1llQ0FUenV0dkxESGM4d2ltb3c0S0ZJa1NJTnQy?=
 =?utf-8?B?NWJzMko1d2tjVDVHNzM0Z3c3cnVGaHdZR2xMTVowbDFTejlHWnJJOGJHbmxG?=
 =?utf-8?B?K0FnYmxtNjR5K242MkNHZGwyN0REVFh5a3lOOGQ1d2JvY3NtcW1Oc3JobmZr?=
 =?utf-8?B?aUQzMkphRlNhdEVqOTA4UWhiYUtZTUtWZDNEZHNVRVgxNEpHbzNOOTl4OGNP?=
 =?utf-8?B?K253RG4ralIyRlZwRVk1aE5wY0VGam5XWUVmRDUyb1NkeHppR2Z1R3V4L0Zh?=
 =?utf-8?B?dGVMbitHbkZ3U2ZsSldmYzU5dDgxTDRpaDIvUm0zcFF5WFZESkdtQlppMDB4?=
 =?utf-8?B?RjFCWUt2ZDYzTUFvV2dZNEJGeTdXOCtDenNlTS9DT21VSDgxa0ZvUFR0Z3hz?=
 =?utf-8?B?ZXFxZTFFdFhKcW9uRno0MDJ5eTVMMERMeXJEOUsxb1VyR2xKRHlEUktxcThk?=
 =?utf-8?B?M051TmY4YkRwS0Y5dUdtQXRYS3hpUlo5bDdkeFZuaW9zdjFrUXN4aWlOQytX?=
 =?utf-8?B?UE9kcHZhT0JCVXZwZm5BNXlaV0d0bjFEeDA0SHVMbER2ZTRhTXRzNko0RGxh?=
 =?utf-8?B?aU5xOGNuN1RWVElsdzZnVEYzMlNzc3d6dXhYUVY4TEwrQndWR2hyWkgwRjB0?=
 =?utf-8?B?MWxKVllDYjJMWXVqVE5pK2hSU05jTzQyZlRkUDNvUHU3aEVaYnFzZTZCdEV0?=
 =?utf-8?B?V0NjOEw0YUs4NU5INTArVlIrN1o0YXl5SmhyN1VVaFplbUw0MllhMEhrRU10?=
 =?utf-8?B?dVZxK1dTaFdpNTJqdU9iY2Z4U0VDSDN2cnhOYTM3ZzgrN1c0R3JwT2FqdmZ6?=
 =?utf-8?B?K2xRZ3Z1b3lvQ2dzek0xVTdScVJoaExCZ3JXV0Q3dExGMldTbFd1Z1VmN0Vh?=
 =?utf-8?B?eHZVQWtDSk5XdlFvQUJtSXU4elg5ekZHKzJ5QWxkdUdMOUY5RGtSeFk4NWtF?=
 =?utf-8?B?ZE91M3cza3l3MWg2RTlkRTY4VXBTMTNKY3M3cVhZQ3Q0ZlBhSEN0ZjErMVc0?=
 =?utf-8?B?YjVsV2krUm5meDhRZzBFTDYxRUNsVW1pVXFaeVRwZ2VNWVFjS3IyQjk1b3g0?=
 =?utf-8?B?WFU5akZGOWMxV2puRTVOSFN3OTN3anBTeTFXK0FYdGgxY0F3bmw1RGE2NHFL?=
 =?utf-8?B?Zm9UaU96VFpqS2pLMGdpejAzRHdtZm9ob1UrNHVFaklBYzdsdVc1R3kzZjZL?=
 =?utf-8?B?SUV6QVFFdXdsRmlJdGdxaHg0N0FFdHlFQ3BNMERWbTZua3dFL1VtU2w1Q0w0?=
 =?utf-8?B?VDJQb0N1YkZEQ3V2OHgyUjRSNGIrckppc1JONlh5Sk5tSlZmOFZKTFFwaGls?=
 =?utf-8?Q?NE8GHA/qsOrK/SR4CV?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a45f7d49-7e38-44e9-77a6-08deb7d3e6e1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 07:29:47.6021
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6rlNKqHfRakTFZiF5LIXQ8eBy7yMyawTWlE9dppt7Yc1XvdxAGG4QUiEx78M9tPA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6161
X-Spamd-Bar: --
Message-ID-Hash: U6XRPVGPUV6SYJ6EEBSUWXD4Z2BPWTX3
X-Message-ID-Hash: U6XRPVGPUV6SYJ6EEBSUWXD4Z2BPWTX3
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, simona@ffwll.ch, max.zhen@amd.com, sonal.santan@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V1] Revert "accel/amdxdna: Support read-only user-pointer BO mappings"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U6XRPVGPUV6SYJ6EEBSUWXD4Z2BPWTX3/>
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.712];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: A22095B0014
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMS8yNiAxODoyOSwgTGl6aGkgSG91IHdyb3RlOg0KPiBUaGlzIHJldmVydHMgY29tbWl0
IGY2NDllNjNkNGE2NDIzZWRhOGViMjA4NjM4ODQ5ZmQ2Mzk2YWVkZDcuDQo+IA0KPiBUaGUgcmVh
ZC1vbmx5IGZlYXR1cmUgcmVxdWlyZXMgZnVydGhlciBjb25zaWRlcmF0aW9uLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogTGl6aGkgSG91IDxsaXpoaS5ob3VAYW1kLmNvbT4NCg0KQWNrZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gIGRy
aXZlcnMvYWNjZWwvYW1keGRuYS9hbWR4ZG5hX3VidWYuYyB8IDI5ICsrLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDI3IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNjZWwvYW1keGRuYS9hbWR4ZG5h
X3VidWYuYyBiL2RyaXZlcnMvYWNjZWwvYW1keGRuYS9hbWR4ZG5hX3VidWYuYw0KPiBpbmRleCAz
NzY5MjEwYzU1Y2MuLjRjMDY0NzA1Nzc1OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9hY2NlbC9h
bWR4ZG5hL2FtZHhkbmFfdWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvYWNjZWwvYW1keGRuYS9hbWR4
ZG5hX3VidWYuYw0KPiBAQCAtMTI1LDI2ICsxMjUsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRt
YV9idWZfb3BzIGFtZHhkbmFfdWJ1Zl9kbWFidWZfb3BzID0gew0KPiAgCS52dW5tYXAgPSBhbWR4
ZG5hX3VidWZfdnVubWFwLA0KPiAgfTsNCj4gIA0KPiAtc3RhdGljIGludCByZWFkb25seV92YV9l
bnRyeShzdHJ1Y3QgYW1keGRuYV9kcm1fdmFfZW50cnkgKnZhX2VudCkNCj4gLXsNCj4gLQlzdHJ1
Y3QgbW1fc3RydWN0ICptbSA9IGN1cnJlbnQtPm1tOw0KPiAtCXN0cnVjdCB2bV9hcmVhX3N0cnVj
dCAqdm1hOw0KPiAtCWludCByZXQ7DQo+IC0NCj4gLQltbWFwX3JlYWRfbG9jayhtbSk7DQo+IC0N
Cj4gLQl2bWEgPSBmaW5kX3ZtYShtbSwgdmFfZW50LT52YWRkcik7DQo+IC0JaWYgKCF2bWEgfHwN
Cj4gLQkgICAgdm1hLT52bV9zdGFydCA+IHZhX2VudC0+dmFkZHIgfHwNCj4gLQkgICAgdm1hLT52
bV9lbmQgLSB2YV9lbnQtPnZhZGRyIDwgdmFfZW50LT5sZW4pDQo+IC0JCXJldCA9IC1FTk9FTlQ7
DQo+IC0JZWxzZQ0KPiAtCQlyZXQgPSB2bWEtPnZtX2ZsYWdzICYgVk1fV1JJVEUgPyAwIDogMTsN
Cj4gLQ0KPiAtCW1tYXBfcmVhZF91bmxvY2sobW0pOw0KPiAtCXJldHVybiByZXQ7DQo+IC19DQo+
IC0NCj4gIHN0cnVjdCBkbWFfYnVmICphbWR4ZG5hX2dldF91YnVmKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsDQo+ICAJCQkJIHUzMiBudW1fZW50cmllcywgdm9pZCBfX3VzZXIgKnZhX2VudHJpZXMp
DQo+ICB7DQo+IEBAIC0xNTQsNyArMTM0LDYgQEAgc3RydWN0IGRtYV9idWYgKmFtZHhkbmFfZ2V0
X3VidWYoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCj4gIAlzdHJ1Y3QgYW1keGRuYV91YnVmX3By
aXYgKnVidWY7DQo+ICAJdTMyIG5wYWdlcywgc3RhcnQgPSAwOw0KPiAgCXN0cnVjdCBkbWFfYnVm
ICpkYnVmOw0KPiAtCWJvb2wgcmVhZG9ubHkgPSB0cnVlOw0KPiAgCWludCBpLCByZXQ7DQo+ICAJ
REVGSU5FX0RNQV9CVUZfRVhQT1JUX0lORk8oZXhwX2luZm8pOw0KPiAgDQo+IEBAIC0xOTMsMTAg
KzE3Miw2IEBAIHN0cnVjdCBkbWFfYnVmICphbWR4ZG5hX2dldF91YnVmKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsDQo+ICAJCQlyZXQgPSAtRUlOVkFMOw0KPiAgCQkJZ290byBmcmVlX2VudDsNCj4g
IAkJfQ0KPiAtDQo+IC0JCS8qIFBpbiBwYWdlcyBhcyB3cml0YWJsZSBhcyBsb25nIGFzIG5vdCBh
bGwgZW50cmllcyBhcmUgcmVhZC1vbmx5LiAqLw0KPiAtCQlpZiAocmVhZG9ubHkgJiYgcmVhZG9u
bHlfdmFfZW50cnkoJnZhX2VudFtpXSkgIT0gMSkNCj4gLQkJCXJlYWRvbmx5ID0gZmFsc2U7DQo+
ICAJfQ0KPiAgDQo+ICAJdWJ1Zi0+bnJfcGFnZXMgPSBleHBfaW5mby5zaXplID4+IFBBR0VfU0hJ
RlQ7DQo+IEBAIC0yMTksNyArMTk0LDcgQEAgc3RydWN0IGRtYV9idWYgKmFtZHhkbmFfZ2V0X3Vi
dWYoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCj4gIAkJbnBhZ2VzID0gdmFfZW50W2ldLmxlbiA+
PiBQQUdFX1NISUZUOw0KPiAgDQo+ICAJCXJldCA9IHBpbl91c2VyX3BhZ2VzX2Zhc3QodmFfZW50
W2ldLnZhZGRyLCBucGFnZXMsDQo+IC0JCQkJCSAgKHJlYWRvbmx5ID8gMCA6IEZPTExfV1JJVEUp
IHwgRk9MTF9MT05HVEVSTSwNCj4gKwkJCQkJICBGT0xMX1dSSVRFIHwgRk9MTF9MT05HVEVSTSwN
Cj4gIAkJCQkJICAmdWJ1Zi0+cGFnZXNbc3RhcnRdKTsNCj4gIAkJaWYgKHJldCA+PSAwKSB7DQo+
ICAJCQlzdGFydCArPSByZXQ7DQo+IEBAIC0yMzYsNyArMjExLDcgQEAgc3RydWN0IGRtYV9idWYg
KmFtZHhkbmFfZ2V0X3VidWYoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCj4gIA0KPiAgCWV4cF9p
bmZvLm9wcyA9ICZhbWR4ZG5hX3VidWZfZG1hYnVmX29wczsNCj4gIAlleHBfaW5mby5wcml2ID0g
dWJ1ZjsNCj4gLQlleHBfaW5mby5mbGFncyA9IChyZWFkb25seSA/IE9fUkRPTkxZIDogT19SRFdS
KSB8IE9fQ0xPRVhFQzsNCj4gKwlleHBfaW5mby5mbGFncyA9IE9fUkRXUiB8IE9fQ0xPRVhFQzsN
Cj4gIA0KPiAgCWRidWYgPSBkbWFfYnVmX2V4cG9ydCgmZXhwX2luZm8pOw0KPiAgCWlmIChJU19F
UlIoZGJ1ZikpIHsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
