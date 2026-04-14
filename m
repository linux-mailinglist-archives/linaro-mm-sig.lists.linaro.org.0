Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NkdNmKH3mlXFgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2026 20:28:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5F63FDADE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2026 20:28:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECDA9404D3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2026 18:28:47 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012009.outbound.protection.outlook.com [52.101.53.9])
	by lists.linaro.org (Postfix) with ESMTPS id EBD15404BB
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2026 18:28:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=xk9v+5Mx;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.53.9 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JfmwL6Kr5PchQYGzVybTEAXWfOLQS9Z9gvo5g6k3oqVkR35L52JkGmcb8uPyof47lw9eIJRbDt09cyVSGnpIj5mfHU4oGni6El59Jw1WqvzICJbBTQgvVwB75eMCGfrBesK1hRF/x80WvmvElrd/YMkG4A2Noz6kWLL6aYs1a0+JtTTW4TkttucGqvJUD2inixXROplINZg8rwPQUUMfgVtlg/LUyj++E9U422QPLrCLOjGQJt13mIrowwwmQLVUIgkF3CoIYJSuvTJn+mmO8ry0eBuQhH9yLYyF/0gSiKnd5eQL0Rg03gsjUg9ty3GI2WNTnn/3la5dQN7K3l6fNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ZngdMYvep3SPdvk+4sd/zGUN/yOyZcYAGnxNE9jcYk=;
 b=foz6m3CMohPf6VBGiKbsB8tM9gR7GYarY2U+yeBYuccBn9z4BX7cUJHAgBV1U7XsOfnabYww1hJNd/GPYkADAE85Fgeu6bs9+7lMp4EJ/pj06L4ZoCg8FHwex81jO5ctq9MxZ8ihSD5suyRRZREEpW713YBvewtiV8Py9Kd/JtfwKW77L/fwAr3xqWsfqVjU0vIMkK4T/8G416c4fDsh0OPAf4v187SL6ThaHRJ3rAtyFqqdAO8KDULo+hP9oUJIO70ctBGCawEDBuAnbJotybDn/4BU5OLRdFt7ZrTC/faUeSH83CYpXbqpr9L2im90G2SPQafmB6B6HTkFGSAAaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ZngdMYvep3SPdvk+4sd/zGUN/yOyZcYAGnxNE9jcYk=;
 b=xk9v+5MxMwwsPyjH7BU8bVaPsD0fuABHSY9avXvBbrXwZXt201HcTA9SssZ95r8MzLlpuZ75y9c+Kk0p2z3YNuTZUYC/8EvARh5y+1+Ss5kHx1jmeWqUCu9KoTpyyC2fe2pFvbuE80BdTA/HDEB7RR0a0phaL+/PA7KFy+9BNOw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ1PR12MB6195.namprd12.prod.outlook.com (2603:10b6:a03:457::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.21; Tue, 14 Apr
 2026 18:28:43 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9818.017; Tue, 14 Apr 2026
 18:28:42 +0000
Message-ID: <1f9b6a4e-2494-488d-824c-bfac240ddd9f@amd.com>
Date: Tue, 14 Apr 2026 20:28:38 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20260414154928.32934-1-tvrtko.ursulin@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260414154928.32934-1-tvrtko.ursulin@igalia.com>
X-ClientProxiedBy: BL1PR13CA0181.namprd13.prod.outlook.com
 (2603:10b6:208:2be::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ1PR12MB6195:EE_
X-MS-Office365-Filtering-Correlation-Id: fcc264db-a248-4a82-b3af-08de9a53a80c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	Afv1Nvt9Nj8OOVKhyKTkSKmvAexnbX6rTo3IqOrHn+2yEStaY8fdk8xMqvOYaILt3mSgsjaPeqZGGrOlIqoEzUqD+FvFHwRI2NheMK5YPe1LT9lhznIKdGGQOXgooYDcJUfY2THo2IzpK4bWt5F5lAYN886yxbLxZPwzSa8ZeoxK+LrHI4Ad7PkX6x8V+/BiKra8iGwB7zZxYe0b3b8fXzqstzWG6JeBJPtaf8B9jrGVWL+HG4o0u45EfcX6e1tjP1jEO+DLS9BPNs+OSmtmFqSQy3bMMuYH4g4tP+yRLr4NmyMMAuvrqrHNBQAwqCwm4z2F4ebS+a/AOrBdhZp2durciLeCyF2xWAbDvRJeo346qqBFX1mwSMLN2NhMVgBpuGtJ/oQMX7wNb/pjn42FYQVzkwLY1gZ45UOCHZVrXLoE/a3lXh+BPIAtAyuYkWv2dsMifPuYwwd7PAbNJ4GtXcyXOTj1mhHbrNgtZcT1c34PXZAsf8YzNI6r5dZMAuLHmaRK9vR+WRP32zQMi52oFQGrOcVKm/fRqayNe/bUOL5SX4vRYojqwpJx8yFXnScvlEaFATPLUmypCiUIogZrfYz9O5lkNnQeJkYI0FZii4yg4KCXFnrdHIBmNWRUkxswHSpqJTQF7pUIKaaa16QPd7WPvmrD93iO/lQIVCsf6oQvcz50Cg5O2daPM2bq7Pi9nL6iFbMGVwOTuhz7Y80ETbP49uLlNLYQOirMDv1p+Ng=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cyt2SUp3UXFZTDNnbDVmTEJzYnZkajVaV2phMWhhdHBHK1BRQlljbFJiRDEy?=
 =?utf-8?B?SjRTWVBEblQvdEVHWHJuSzNFUzlvdUlEOUszdWNnR1g2LzdZaWZsTzloWDRH?=
 =?utf-8?B?VHBkNXBralByeEZKaEZYTm5TQ2VaeEF4eHZUczBlejdTNFp3K3pWSldxTmVq?=
 =?utf-8?B?TElmQ0VxcEVvakZhdHN1RG91Z2x2WkdRVUU2RUZRaUJHZ2NndEw2Q3l1SmM1?=
 =?utf-8?B?YVh3TGlTVE9LRXIxSmZLekxRbld6eXVucG9vNzlyaStWRHFUb0NzWHR0Tmla?=
 =?utf-8?B?M0FqTnhFZ3ROQnR1UTh5Qm8yVXc4Um90SE5HK29ENG9XV0FZdlV2UlpQV0RB?=
 =?utf-8?B?ZDhuV1RuSHJMTHlxVmQxYkgwVVdFOXZ0SHIwZGVwYzRLMjBpZlllamdzTUV6?=
 =?utf-8?B?L3IyMXdscVJLQTVYR1lVeFB1SUFKUlZLZWtFTG8ra1BEY3ZCeml6V2cvcm5N?=
 =?utf-8?B?UUNXQ2ZvYW4xaXk2T1dLbVRUSEhUMmNycno4ZitwRGVFMy9EZ2xJQk1QSFhJ?=
 =?utf-8?B?azFYVmxnVytybW5PTW1lZFpYVnBDYVFzWko3RFc2ZnEyZDR3YUs5emJaL0t3?=
 =?utf-8?B?R0hCakp5cGZXcElEeUFnMWwwdjFQbkFkaG5iSmpRREh2Vm02eXJISWZhTU5v?=
 =?utf-8?B?Mk5Cb0hFaGR6bkloTnJUQWlycTBwRzJXVHRta2FNNXU0SVpvK3VTZEpZN2tp?=
 =?utf-8?B?YjhRdDNMWXg0ZE41TS9IbTNZcnV0QU9wTDY1Z1o5ZncxbWtzdDNIYzRJK24x?=
 =?utf-8?B?dCszc3ZTZklIdmcxdmVNajREU1pzYnBVQ29hZTl2YWF2QVlBQ002VkFYMVJP?=
 =?utf-8?B?YU12YzBMVFF2dDcyT05jQm9GMHdwY3h5QUFuQzBsQjFhNUpuWmpyMjRERHVS?=
 =?utf-8?B?MnNKOTlsbDV1MW9pVW5welY3bnlEaFcvYVlDbGEzT2RrSXc3UW03NkVzTGlM?=
 =?utf-8?B?VlpXOWIxZ3BKaFpjWmlEVS94NXQ0WTh0emNDdnBGaGtUdHBwREhCYUZiUjVJ?=
 =?utf-8?B?ZFhXTVZSTUd6T0Z4eWkwQnM1YXpEODhqckc1Q3M4cnlQaU5rZFBwTGlTd3ly?=
 =?utf-8?B?RnBtcTJvajZhU0srUGV5RFFHaDMvVWMwRjZNeE9OR21DOWpWb3o3SXpJSmtN?=
 =?utf-8?B?R0ZrMncxN2Y5cTRPVWRhWEFONWwzaVloNmdlSU91aGdvck13ZmgvNnAxRDF4?=
 =?utf-8?B?VDRGMGxZRldqcS8zR2R6TmxMTkw5V1hDTUlvVmNveGpOZ2pUSk40K3dobkpP?=
 =?utf-8?B?bFpvZXZFVnF1VEpYc0JxSmRMVXhaWjFOTWVLamRjV1Q5cmgxaUgrK2ZpVklQ?=
 =?utf-8?B?eFVpOHhGa0VDZW1xMTFla3VLbmNpbVVIank1RytveVBoeHJ4QTNWWWZqemJY?=
 =?utf-8?B?TlhGVEFJSXpqL2NyREgvVkwwUERxYTVLUUlRY3h0NWdmNTBmZjdHenJMMWJs?=
 =?utf-8?B?UWU1dk1jLzd2R25DejVvZG1xdGJVcVd3UXV2elp0d253Z3IrRUhUNFNQQWhC?=
 =?utf-8?B?NGFyaVh4YWdFV0ZwY3FiQjAwTFdwdEpqWFhNN2EyWmxhb1B4bWN2cEhvazlt?=
 =?utf-8?B?cXJ1NUNxV1htOTRtb2RCTVRWVVFXelA5c2VHTENDNGorR241N0tUaHFweXZo?=
 =?utf-8?B?ZEh0SzRFeVBuK1JIUDJiMUZ4NUR5YnpkUmJpMk9XTXk3aURtVG4weGhSMFFN?=
 =?utf-8?B?OVZBa3BYUm9JWm0yK3NMVXZsclVJVVhXYTFZb1JtaEhySm9HRDJ1alZMamJF?=
 =?utf-8?B?NFROYW54MzY2QlMvVXRSSjdJWjNhUDhxcGNGUTJSK0plbFlFMjBUV2d6YkZH?=
 =?utf-8?B?aDZFbVBtamRobklKaXRDRFBaaUxYSlQvQVc4MjVrODIwaDhVYnlvbDR6ZXhQ?=
 =?utf-8?B?SGIwNFFob2VrWHFSbi9ubDBjVHoxVjlnN1BZaEo1YWlRM056L2VGSC9NOHBs?=
 =?utf-8?B?REtJS0V5MzltbnF3NCtYdEhQdmNvUFJJUzQ1MnUxQ0NxMVp0Zy9IR3A1Wktk?=
 =?utf-8?B?SXZmaEVWRERCZEJJN3ZKSDE4SHlUaUlISTJraEg1VEduMFI3WWgyZ2tNbEFj?=
 =?utf-8?B?MC80UXlrZ0VTV0Q4QVlOR0pDa2tkRWE1L0NaVGlzc0JtU25ZWFpyMU4vSUhH?=
 =?utf-8?B?RWRBbDREU3BsK2VZdDBIR3JneUF3M21heUJyQ2VVKzNET2d4dGN5aURhSWdj?=
 =?utf-8?B?QVZ4d0pwSzFwQ0x0Rk1BalZIMm1SOGJsajI3MHM3elVHMkN3N1RZNXAySGNO?=
 =?utf-8?B?UDV2Wk4xeFhXaHNYK25wTklocWQ5OXZKbno0NWwwNlc4TC9FTTgzVU5VTWlF?=
 =?utf-8?Q?3tZ1CF1MPqMPgQMQPG?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcc264db-a248-4a82-b3af-08de9a53a80c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 18:28:42.8333
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6L5cA0HgTmGc7QuOF9PRQcIN/TMvA7zaXz0xmU1XPe4a4WaArKG/P9MJ0kHmkpWJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6195
X-Spamd-Bar: -----
Message-ID-Hash: DTU73RK356WEVFZ5KIVMACECHW6SNDIA
X-Message-ID-Hash: DTU73RK356WEVFZ5KIVMACECHW6SNDIA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kernel-dev@igalia.com, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-fence: Silence sparse warning in dma_fence_describe
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DTU73RK356WEVFZ5KIVMACECHW6SNDIA/>
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.989];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,amd.com:email,igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: ED5F63FDADE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8xNC8yNiAxNzo0OSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IFNwYXJzZSBjb21wbGFp
bnMgYWJvdXQgYXNzaWduaW5nIGEgc3RyaW5nIHRvIGEgX19yY3UgYW5ub3RhdGVkIGxvY2FsDQo+
IHZhcmlhYmxlOg0KPiANCj4gZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jOjEwNDA6Mzg6IHdh
cm5pbmc6IGluY29ycmVjdCB0eXBlIGluIGluaXRpYWxpemVyIChkaWZmZXJlbnQgYWRkcmVzcyBz
cGFjZXMpDQo+IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYzoxMDQwOjM4OiAgICBleHBlY3Rl
ZCBjaGFyIGNvbnN0IFtub2RlcmVmXSBfX3JjdSAqdGltZWxpbmUNCj4gZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jOjEwNDA6Mzg6ICAgIGdvdCBjaGFyICoNCj4gZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jOjEwNDE6MzY6IHdhcm5pbmc6IGluY29ycmVjdCB0eXBlIGluIGluaXRpYWxpemVy
IChkaWZmZXJlbnQgYWRkcmVzcyBzcGFjZXMpDQo+IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
YzoxMDQxOjM2OiAgICBleHBlY3RlZCBjaGFyIGNvbnN0IFtub2RlcmVmXSBfX3JjdSAqZHJpdmVy
DQo+IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYzoxMDQxOjM2OiAgICBnb3QgY2hhciAqDQo+
IA0KPiBJdCBpcyBoYXJtbGVzcyBidXQgbGV0cyBzaWxlbmNlIGl0Lg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQo+IEZpeGVz
OiBhYzM2NDAxNGZkODEgKCJkbWEtYnVmOiBjbGVhbnVwIGRtYV9mZW5jZV9kZXNjcmliZSB2MyIp
DQo+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IENj
OiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KDQpSZXZp
ZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgNCArKy0tDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYw0KPiBpbmRleCAxODI2YmE3MzA5NGMuLmEyYWE4MmY0ZWVkZCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYw0KPiBAQCAtMTAzNyw4ICsxMDM3LDggQEAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2Vf
c2V0X2RlYWRsaW5lKTsNCj4gICAqLw0KPiAgdm9pZCBkbWFfZmVuY2VfZGVzY3JpYmUoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UsIHN0cnVjdCBzZXFfZmlsZSAqc2VxKQ0KPiAgew0KPiAtCWNvbnN0
IGNoYXIgX19yY3UgKnRpbWVsaW5lID0gIiI7DQo+IC0JY29uc3QgY2hhciBfX3JjdSAqZHJpdmVy
ID0gIiI7DQo+ICsJY29uc3QgY2hhciBfX3JjdSAqdGltZWxpbmUgPSAoY29uc3QgY2hhciBfX3Jj
dSAqKSIiOw0KPiArCWNvbnN0IGNoYXIgX19yY3UgKmRyaXZlciA9IChjb25zdCBjaGFyIF9fcmN1
ICopIiI7DQo+ICAJY29uc3QgY2hhciAqc2lnbmFsZWQgPSAiIjsNCj4gIA0KPiAgCXJjdV9yZWFk
X2xvY2soKTsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
