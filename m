Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFsdIYrB6Gm9PwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 14:39:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF36446114
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 14:39:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89942404E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 12:39:36 +0000 (UTC)
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010068.outbound.protection.outlook.com [52.101.201.68])
	by lists.linaro.org (Postfix) with ESMTPS id C89443F821
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Apr 2026 12:39:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=WoGq1UKp;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.201.68 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jxayQ42uIpfC5JjSS65xUGo8BRkOxvXT2k0hO3qR8HZNLhp86iUduXZLReA6waBAOShGjlUM527SAcnUKk5VE29mpOJ3GaTOh/h47gdZqcMfNwpeWCPwg7tXrbKwtYtMqAQDRuODMRpiwDxiok5BcqcJyrP8akAJ7nZ0EP4bZkL1+lWqJPqHv1T3Bafz13yzmukW/uWopkwUOyPQRT49pkXjw5unv8gr8Y00vo27q6TjklxQAwNsU3OEFOArmCgJCoBf744EDmnBstKH58xHe//8IMemauSwDrWzhkdd0Cf49KLSwExDLCXa0WcDYc1FKi5iYkaj1Op37KdNPMz/XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MMTkXQIsan3SLJhhkBaUokqyVzkv9bCTYB1PHyCN8Yc=;
 b=DE6NaRQ/Pb61aOboQ7CuFmmXcryCmJw9xg6MGrfhgDiPkQLjiTENRbrRRAb8Ilt5PA7BThq2hF4rIRq5WQPM9DfF9MO7VUmAgzxvLel4egSVbyudcL0/meLy28zGacwXsyPPsR2aLKHZiE+XfOffLT1nCQor11jPb5y8SV1S6F4EfACI6bGrxycoNc29CqzQny6NR56dkaKr/W45KmjxqZ6+3T6bspsmq+j3Vt85uYyuMsFVlBNOxcKBvwUUFkOuvig0XSw5B3COEudiHwG7GhkvxRMbGHd/NCM5nla2ZJZb+5T602ANKr35imcRC5aTHYYYXA3/3qFoCyTAU904+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MMTkXQIsan3SLJhhkBaUokqyVzkv9bCTYB1PHyCN8Yc=;
 b=WoGq1UKp6Q1Gcf7gaadmfVZxGRooz/reYyQMBxhzWS6ixwgwnSyT5tkgYVCizEqEucl6e+8lSULkRmRF3AqBbugcQHcRYfXnR13LkR010C7tF0Hx1Ld/S4O5UwBX+w1YbUBHcJYGcCgl+tF1vwfulgQxNZ1v8lJeGdIqFNe1nRM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB5594.namprd12.prod.outlook.com (2603:10b6:510:134::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Wed, 22 Apr
 2026 12:39:30 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9846.016; Wed, 22 Apr 2026
 12:39:30 +0000
Message-ID: <fd8065ce-fd0e-4df5-9c80-8e9603657cfe@amd.com>
Date: Wed, 22 Apr 2026 14:39:16 +0200
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>
References: <21-v1-b5cab63049c0+191af-dmabuf_map_type_jgg@nvidia.com>
 <c413710b-4c28-4ed8-88ec-aeb8c4482011@amd.com>
 <20260413121628.GE2588311@nvidia.com>
 <f6d38a08-009c-4efe-9dc3-6bcf00ac35f7@amd.com>
 <20260422115306.GI3199414@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260422115306.GI3199414@nvidia.com>
X-ClientProxiedBy: MN2PR20CA0066.namprd20.prod.outlook.com
 (2603:10b6:208:235::35) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB5594:EE_
X-MS-Office365-Filtering-Correlation-Id: dcf9bd2a-ba10-4971-8e84-08dea06c32a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|7416014|1800799024|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	FdHV/Oz6+eazfRX7Wu93d1nXYAviTrxGPE7bDjQRJZsaqtEg7fmXEpbhcDIvnl8r4KiR7LkzV7fixlGZi73dp1jkZkzBFCBFWs7P4hHAIbfnO7PUcKKVIykV37bbvQCzPT4CWp0wpDf3Q3GSI2HqsIahy/bjsIvA383O4NiL5MHOQQ0lh+zrBMJuxfXYCuoZgQd9U9zXU7cae29ejhKPJ2oiSMMVN2RxeEswIxv5Oseu7YQogZ/NLdWqhNnAyO0wpi5MJ4F9wu9qDUCdzmO5qAaq2O1IynyjAwZ6KdtKestPewKj/XRWvlTiYmI1z1z7GSfSG1VUw+2uVacGprSsmNaBxrsd4vwg/YQFMEyesjBv8tO6LPKFD1YM0SVhCxe8oDhLSQlOcGbT+35EYf0VbQZG3sRFO28oFr6gKqG5kznqh2al3SlL5j8NdTkE8cvew1/jPiTUFFI3khOD1dG7XRlwp85NfmIk9gLmQrG5+X/XfEZUAA14JOge4HdL4FZr8HzN5Ed7BkKjDshryCwWFowgNlq9Zhj50zzLEkobY/EAdnC27d4Y4xK7OkEPF5SoKsUtoDDYIka59kdY+k9kPGT+AgbNQZnSLDQiffQJyW/P9TElJ+EOxrdEMcRFRgUqDJLlHM4wo7DNT6wZ+8kx9QyUw0piVHKtjCkXrb63AmVjEJhACQqjg/gbbdp4xd4KSt1zy8yirizwWVJFeWFOxkD2p3KkGZVqrKxNrXg62kQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(1800799024)(376014)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OEUvZHh5V2FQSmpUZG5YTW9nZFUxcG5iaG4zYmlzeXN4MEJhVkVmR2hVYnR4?=
 =?utf-8?B?UFVvUnF4MGhiR3ZkODFod09uekNMTmh6UTZJKzRRazNPVnR2Z2plTjN1anI4?=
 =?utf-8?B?NEROOVlMZXZsNWRKL1U3R1IrK2RsS0FxS2JDUS9TZ2pFd1AzM1VMSmtQQ0tN?=
 =?utf-8?B?S3h3ZTljUUpxNnROeEVzUXdzRjdBQ0IyM2pEZXZ2MDhINmZPcWR6TG9WZk9R?=
 =?utf-8?B?WVlJZWpKM3Y2d0lMR0I2bmtadUtRQXA1bmZ6WnZSdnE4U1hMOHBYUTlDVVRC?=
 =?utf-8?B?YjFEcmtiMjFmdHZ0eWZEM3lMbEhTQnJBbncwT3V2R1pSdlpIcEZXR09DWWpI?=
 =?utf-8?B?NWVzL0h4VWRqVGUzcGRyTldvZDZmSzJsaGQvNkl2aXBKMXFTaFQ0RFRUOENs?=
 =?utf-8?B?ZW5ZYU9sOVNETjNBS1NUN1FWUnJibTZXaFU5WCtqQTlXRmNWRVkyUllTSFRR?=
 =?utf-8?B?Q1U0ZTM3NlJodDZQSUN3SVQrRGJqeTdveVFjL0JrNkV6TnpPdU9NUlMyRGh5?=
 =?utf-8?B?K2YxR1RDb05iUlJtWHVNbVRHamhyRkxQVXpyZUlPcGViY2c1VnJYdUlkZ0pX?=
 =?utf-8?B?WWVsK1N0SVd1OUUzY3plVHFHdHNLUWYyL05Ic21nWDZPVVVnYzNNbHFoRGhC?=
 =?utf-8?B?NEp3d1R0NnFoUWNOSG9ZMGhsTHZyU3h4Y29hay9wVzlmeFdJUWpGVlZuMWdj?=
 =?utf-8?B?cVNlQWtqTmhrMVo5eGUxSm5zaUhPd0Z6Q0RvNCtkbjFEYVRQaCs5N01LMFhD?=
 =?utf-8?B?QU1uYzNvaTJLZE5TdUZBWUxiTHFHVElDK0dJTjMzTFJia1hxeEczZmQ5MHpi?=
 =?utf-8?B?WWtqcjNzSDFHemE0MGpkRXo3Vm01OFg1d3RETWJMUkw3MVdyZGNzS0hVZVow?=
 =?utf-8?B?VUJ5akVXM1Q5WCt5Um5wa1VXWXhUb2k0UDF5am5xcWY4YjBMbmRVN1Y1bG1C?=
 =?utf-8?B?NUlxRmFyK0JBNjdDSmtxWXNNK3lqenNQVG1YWkVSY0RSUEpPQmtIQk5Yd2F5?=
 =?utf-8?B?RWFVNXBoTTY5cHN3SWxyS0lLQjRiN29VdUUydHUvd3pMbmlyMnhQREJQOEVr?=
 =?utf-8?B?WG44MXArbjdXdmxaajdya3ZNckxUbG8rNE14bmF5a0lTWlFCcmNPVE9LZmZS?=
 =?utf-8?B?RTg3ZUQvQUN2aUJQMDFmWlBSR1RIT2VEanRNK0NFbmd4Sk1EMExiYkc5WnJo?=
 =?utf-8?B?L3BGbDB3aGJqblc3MjVPWHF5NUxCaTN1T3JOc2VFOTFMQnBkYUJmWEdCTE5G?=
 =?utf-8?B?bWJQa2xTcDlTR2w4cTZzbzB0ai94KytGeFBiY0JudkYwODlOL0hBRk13ZVd1?=
 =?utf-8?B?RFlYWFdrZnlyTzdLYStxK05uN0dZYmtxR2laOHFZc1ZNNDJnWm0xblRJNHBa?=
 =?utf-8?B?NEo3RUZBTVlvUlRqaTk2UGRob0orY0hDT2M5bnZLSDJ3NTRodnl4cTdUVitK?=
 =?utf-8?B?VkJ5MjlGdkdSVHFDZmJuT2ZPZmVKR3EzYlFWOFNtczJibWN1aGk3TTdSYWJD?=
 =?utf-8?B?akZESWNOMkdEZE5UNVVUanVZRzZGa0JRenVNZDlhRWQvUW1JTS9lQmdCdlV5?=
 =?utf-8?B?enF4bFQrUVZQODZQNHZWS3ZzRjVTMVpsRm1QcHJobEpzOEZtQVJodVZYVW9o?=
 =?utf-8?B?NWV2S0t4Q3ZZRXoyV3JPd0tHcnFXalU2N1ZkZlZHRm1LTGIwTEVpcjlwcWp4?=
 =?utf-8?B?dkxGM25DREp4YVVTMlVNWU5zc05LNUN6RVFaZUtXRzAvT0ZuL21qYzRRbkNT?=
 =?utf-8?B?U3VxSDcwVFRHK3ozS29hVW5vdW1uTjVjc1RXbXBRbzRyR0dORkVyd0pWUHpB?=
 =?utf-8?B?UnFVZm9Za3d2dExkcWJFM2grTThtTGpDd0ZRV05tWVptY1NubklWUVdiQ2Vv?=
 =?utf-8?B?cnJwaEJLMGp4ZE11ZGlOK01JWlNLMTJRWldoWFU1eE03NVdtbG9pUStoOGRC?=
 =?utf-8?B?RXREdk54MEJwSzY1OVlCN1ZpQ2RidHh6OTV3ZXBZLzJNS3U2NVMyQk12Y0du?=
 =?utf-8?B?UG41QW1FYTh0YU5SdWRLK0JySko5a2VDcXMva0dPOG1EaWZjcHhsSGpWaG5R?=
 =?utf-8?B?eWg0b1cyQzY5NEVuVWNKYmtIT3RrMHJHMG9zTVF4K0x6dWRFMzlZU2NnMzRz?=
 =?utf-8?B?SUlaZWdPT1RIN0owellScUMxR3ZJRnhUTzY3YWxhcTl1VVpEc1U4NlA0M09V?=
 =?utf-8?B?UVY3WUN2c1NTWURIblgzQ3lvVzFlSUhudTRUKzJucGhHaW9ONTkrRkNUMlB5?=
 =?utf-8?B?TXVsdllLR3JpUDRTOVczUy9jV3IzTk1XUkh6MWZTeTdQZjZ5a1dBRXF2bk5t?=
 =?utf-8?Q?uJCz54mBlY+14a6nwO?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcf9bd2a-ba10-4971-8e84-08dea06c32a1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 12:39:30.2082
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H7vVzALxq15kQCMSBceabuoTU67W4blnLomOuTx3mzcYGc8B8Fpbn/gsWEX7hwGS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5594
X-Spamd-Bar: ----
Message-ID-Hash: RUJ4CCPXC3GIJWO5IV2NYFBRMILRU65F
X-Message-ID-Hash: RUJ4CCPXC3GIJWO5IV2NYFBRMILRU65F
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, iommu@lists.linux.dev, Kevin Tian <kevin.tian@intel.com>, Leon Romanovsky <leonro@nvidia.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Matthew Brost <matthew.brost@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Hellstrom <thomas.hellstrom@linux.intel.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 21/26] dma-buf: Add the Physical Address List DMA mapping type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RUJ4CCPXC3GIJWO5IV2NYFBRMILRU65F/>
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
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.954];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: EBF36446114
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNC8yMi8yNiAxMzo1MywgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBXZWQsIEFwciAy
MiwgMjAyNiBhdCAxMDoxNzowNkFNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
Tm8sIG5vdCBldmVuIHJlbW90ZWx5LiBJIGNsZWFybHkgZG9uJ3Qgd2FudCBzdWNoIGFuIGludGVy
ZmFjZSBpbg0KPj4gRE1BLWJ1ZiBhdCBhbGwuDQo+Pg0KPj4gWW91IGNhbiBkbyB0aGF0IGFzIHBy
aXZhdGUgaW9tbXVmZCBpbnRlcmZhY2UsIGUuZy4gd2hlcmUgaW9tbXVmZA0KPj4gb2ZmZXJzIHRo
ZSBmdW5jdGlvbmFsaXR5IHRvIHNheSBnaXZlIG1lIFBGTnMgaWYgeW91IHdhbnQgdGhhdC4NCj4g
DQo+IEknbSBub3Qgc3VyZSB3aGF0IGEgInByaXZhdGUiIGludGVyZmFjZSBtZWFucyBpZiBWRklP
IGFuZCBEUk0vUkRNQQ0KPiBkcml2ZXJzIG5lZWQgdG8gaW1wbGVtZW50IHRoZSBleHBvcnRlciBz
aWRlPyBUaGF0J3Mgbm90IGV4YWN0bHkNCj4gcHJpdmF0ZSBpZiBpdCBpbiBzbyBtYW55IGRyaXZl
cnMuDQo+IA0KPiBJJ3ZlIHRyaWVkIHRvIG1ha2UgdGhlIGltcG9ydGVyIHNpZGUgcHJpdmF0ZSwg
aWYgeW91IGhhdmUgYmV0dGVyIGlkZWFzDQo+IGhvdyB0byBtYWtlIGl0IG1vcmUgcHJpdmF0ZSBw
bGVhc2Ugc2hhcmUgdGhlbS4NCj4gDQo+PiBCdXQgd2hlbiB0aGVyZSBpcyBhIERNQS1idWYgaW50
ZXJmYWNlIGV2ZW4gaWYgaXQgaXMgbGltaXRlZCB0bw0KPj4gaW9tbXVmZCB0aGVuIG90aGVycyB3
aWxsIHdhbnQgdGhhdCBhcyB3ZWxsIGFuZCB0aGF0IGlzIG5vdCBzb21ldGhpbmcNCj4+IHdlIHNo
b3VsZCBkbyBhZ2Fpbi4NCj4gDQo+IFlvdSBjYW4gc2F5IG5vLCB0aGF0J3MgdGhlIHBvaW50IG9m
IHRoZSBleHBvcnQgc3ltYm9sIHJlc3RyaWNpdG9uLg0KPiANCj4+IEV2ZW4gZm9yIGlvbW11ZmQg
SSB0aGluayB3ZSBkb24ndCBuZWVkIHRoYXQuIFdoYXQgaW9tbXVmZCBkb2VzIGlzDQo+PiBiYXNp
Y2FsbHkgbWFuaXB1bGF0aW5nIGEgc3BlY2lmaWMgSU9NTVUgYWRkcmVzcyBzcGFjZS4gU28gdGhl
DQo+PiBpbnRlcmZhY2Ugc2hvdWxkIGJlIHRvIGdpdmUgdGhhdCBhZGRyZXNzIHNwYWNlIHRvIERN
QS1idWYgYW5kIHNheQ0KPj4gaGV5IHBsZWFzZSBtYXAgeW91IGJhY2tpbmcgc3RvcmUgYXQgdGhp
cyBhZGRyZXNzIGludG8gdGhpcyBhZGRyZXNzDQo+PiBzcGFjZS4NCj4gDQo+IElzbid0IHRoYXQg
cHJldHR5IG11Y2ggZXhhY3RseSB3aGF0IHRoaXMgc2VyaWVzIGlzPyBBcmVuJ3QgeW91DQo+IHNw
bGl0dGluZyBoYWlycyB0byBzYXkgYW4gImFkZHJlc3Mgc3BhY2UiIHJlcXVlc3RpbmcgcGh5c2lj
YWwgaXMgT0sNCj4gYnV0IGEgIm1hcHBpbmcgdHlwZSIgcmVxdWVzdGluZyBwaHlzaWNhbCBpcyBu
b3Q/IFRoZSBuZXQgcmVzdWx0IGlzDQo+IGV4YWN0bHkgdGhlIHNhbWUsIHBoeXNpY2FsIGFkZHJl
c2VzcyBmbG93IGZyb20gZXhwb3J0ZXIgdG8gaW1wb3J0ZXIuDQo+IFRvIGJlIGNsZWFyLCB0aGVy
ZSBpcyBubyB3YXksIG5vciBzaG91bGQgdGhlcmUgYmUgYSB3YXksIHRvIHVzZSB0aGUNCj4gRE1B
IEFQSSB0byBjcmVhdGUgYSByZWxpYWJsZSBkbWFfYWRkcl90IHRoYXQgaXMgMToxIHdpdGggcGh5
c19hZGRyX3QuDQoNCk1obSwgdGhhdCBzb3VuZHMgbGlrZSB3aGF0IEkgd2FudGVkIHRvIHNheSB3
YXNuJ3QgdW5kZXJzdG9vZC4NCg0KPiBDYW4geW91IGJlIG1vcmUgc3BlY2lmaWMgcGxlYXNlLCBJ
IHN0aWxsIGhhdmUgbm8gaWRlYSB3aGF0IHlvdSBhcmUNCj4gdGhpbmtpbmcgaW4gdGVybXMgb2Yg
YW4gYWNjZXB0YWJsZSBpbXBsZW1lbnRhdGlvbi4NCg0KTGV0IG1lIHRyeSB0byBkZXNjcmliZSBp
dCBkaWZmZXJlbnRseToNCg0KVGhlIGlvbW11ZmQgZGVhbHMgd2l0aCBpb21tdV9kb21haW4gc3Ry
dWN0dXJlcyB3aGljaCB1c2Vyc3BhY2UgY2FuIG1hcCBkaWZmZXJlbnQgdGhpbmdzIGludG8uDQoN
ClNvIG9mIGhhbmQgSSB3b3VsZCBzYXkgdGhhdCBhbiBpbnRlcmZhY2UgdG8gbWFwIERNQS1idWYg
aW50byBzdWNoIGFuIGlvbW11X2RvbWFpbiBzaG91bGQgbG9vayBzb21ldGhpbmcgbGlrZSB0aGlz
Og0KDQpkbWFfYnVmX21hcF9hdHRhY2htZW50X2lvbW11KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaG1lbnQsIHN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFpbiwgdW5zaWduZWQgbG9u
ZyBpb3ZhLCB1bnNpZ25lZCBsb25nIG9mZnNldCwgc2l6ZV90IHNpemUsIC4uLik7DQoNClRoZSBE
TUEgYnVmIGV4cG9ydGVyIHRoZW4gbWFwcyB0aGUgaXRzIGRhdGEgaW50byB0aGUgaW9tbXVfZG9t
YWluIGF0IGlvdmEgc3RhcnRpbmcgd2l0aCBvZmZzZXQgZnJvbSB3aXRoaW4gdGhlIGJ1ZmZlciBh
bmQgc2l6ZSBudW1iZXIgb2YgYnl0ZXMuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+
IEphc29uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
