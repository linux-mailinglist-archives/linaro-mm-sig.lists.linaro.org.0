Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJAEEn/4Cmrn+gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 13:31:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4D956B939
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 13:31:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C53EC406B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 11:31:09 +0000 (UTC)
Received: from BN8PR05CU002.outbound.protection.outlook.com (mail-eastus2azon11011023.outbound.protection.outlook.com [52.101.57.23])
	by lists.linaro.org (Postfix) with ESMTPS id 30900404C7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 11:30:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=MjjQFquA;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.57.23 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aP/8P3q24W3GJYRtB8WD5Ta9iXj7xMxEMFAVtO+YgiaVRe48d9Nn01MeO7a0qYDYHm0WZlpzkbgoW09rHgg3vtGrA9kzN/NW86DDK2czTGCyCAZBwlvenOj4UBpUDNIPKoEjJ2V1yCLzmhF9Q0XIHEQ0+xbz/uoW2vnh5FLv81oKWyLZoBwgFpA73UH6JgvzSsxkRS1KDJIT/s423OBcX+nQJdI43y573m/Wmqx6uh4D5K0yk+4Jw9Pp11+HwGT6/IgUVu3i2RJiyAqXookHgVmHlah/9seRBmovUuvpXPq+srdRJEfDu2sY8UB7ICwgYmZBGOroKj8zyV/nBuTbhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XR04V0wq3TsCiGypHugn2nAIWcU1YlsnpFbG+BY/azo=;
 b=a06O6oKEK6AmKJbtO8pkIr9Jwi7uIqxFmwSSd5IJHYFGZcUvkbRLCuQ9hXtqH0+VbVM6sH/dU1WRyz8rzt54YuN2iPzDIrW4MEFyySrDxiZYo3DCrc27q92If6PCCsX+YKKvKDGFp8cKzPaPhLX9HALGsrxRVNBXJJ6FXIEgdK/JaSozJ1YF6b4aXICmHhyG7jKu2jCbnb9TPir5zyl9ED0FRz01CyJZqqSbiQGwT7kXC7vFBvWCdKhoB4mkTJWn1sJhtzsBMutCmRdUybaSASRK3Ho9iCYX1puH1z2BLxlA/TqXBn+j7agyVoFLlTRi+UcJ95Yo9nniBK2UsYXmlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XR04V0wq3TsCiGypHugn2nAIWcU1YlsnpFbG+BY/azo=;
 b=MjjQFquAz4ztM0TXZgmngmbYCd8VbvVMSHrWX7FF/miw1xRpCBtX833y12b3/7jJi/wmGam/McOjEpoJP9zWLEYaBdDxFtzDro0MBy67GFjNswH3tknDCvzcBdRIZeMu/E2V9vv0Tcpg2RYBVYzgwRj0IgOyvzSy596LL8Wj6Fg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB9211.namprd12.prod.outlook.com (2603:10b6:a03:55e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 11:30:56 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Mon, 18 May 2026
 11:30:56 +0000
Message-ID: <1f22999f-a9e2-4d95-9a2a-5880b06bee46@amd.com>
Date: Mon, 18 May 2026 13:30:51 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, phasta@kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20260419134943.54833-2-mcanal@igalia.com>
 <6389c57fd1453b545709c15c5fa74aa76a3d9afa.camel@mailbox.org>
 <d4267251-e113-42ae-b756-ea1ab63f9f7e@igalia.com>
 <3c616d25-381e-43a7-af71-73bf0b9ee063@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <3c616d25-381e-43a7-af71-73bf0b9ee063@igalia.com>
X-ClientProxiedBy: BL1PR13CA0169.namprd13.prod.outlook.com
 (2603:10b6:208:2bd::24) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB9211:EE_
X-MS-Office365-Filtering-Correlation-Id: e4875be2-e5f2-4f39-7f17-08deb4d0ed90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003|4143699003|11063799003;
X-Microsoft-Antispam-Message-Info: 
	iUwxtE+oNtXWyuVwgY64211p5gCbh62WbpCGC4OdfoXtD6be9jlKmeuC7v7bKl+RmmW66B0i8BNOwrqLK9Zy5zyIJyPP0t8Nb295Qt5Gml6WSYcfeHR5ITgQe8JezOSDXJ+4NVY6NJY2FzWagnCjUBuZcekS4RJMDB9rpIUkq+IKwIJj6trYY45XID0aTVS7QKYqLL1C6U7glEgXfA0WjGfACvcXQA6RstclkbrMAvbgaTIjMIvxvIY2H2YK5E9bZpglPRdcHlQ5qT86emQEitnri8hk0yMXm0MxfxJlYNPXsaGCCXU/uCfPQRUdbjQCl/9lvDEvx1FzBaMHHQRTMXombR6CNzFptZ8fWg7eaSDMaTZJX+sWyAwlgsBqaqPyW4LS0x9XVcsHmzYpVjeZKw3j/B1Leb0SOwSaU/Ur+BvIpY+v98Lm7GTI/ndxjBlaAeXJf9oivX67AybaqNM+7+BIaqWdo4dh7RYlew3DvW30WrWOnoVcS61m90Ph08Vr9D7+hsyDNc/iCovt87XjTz1UEPAnOmOvZPoCAZuJzYvsS64n+4I3Ke10gNPtXIUylhmMi03v5/H9bihUpVFK9IRG5m668ydOc2LYqMigcMU7sB1WC93mzr+cI3/tYhWXIMvjRoBxJK+F4wbUFhhFgMv9kDkbg+IfSTcGRm+FQY4QTFZsAg+XD9roEr0hhyMcwrN9VWaGQ83v1vauu+1J4Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003)(4143699003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UDRTZ0J3djJ5eXNJSVNwL0tTZVQzNnk3SmtFc0I5eERlVGVCQW9DWmRXdVZP?=
 =?utf-8?B?SkVwUTFUNWU0V2RRRGhhTTl1R1l0RTZoc1lvaG1IME9VSGM2VjFybXE2V0dR?=
 =?utf-8?B?SWVyMXRTdHNzVzU4emZoTzlDNmNZa2R1Ry9Ga3pRYjYvMXVCS0JyZGVmS21M?=
 =?utf-8?B?MU5uZVdPNlB5T296cUJkSUdhQ2ptSFRzWmtERFU4SmxobkZlVXR4dk9QUmd0?=
 =?utf-8?B?Z3lLUnBBK1pNT21PZElwYkhnZ2twSU1RMnF3T2tna09qT2lvQUI5NkUxZVVk?=
 =?utf-8?B?akFyc1NwbW5vTmJTcVp1UWNuMHR2L3BGdUExbzlOWEh6QzlVT0V4MlJEaTF4?=
 =?utf-8?B?NENrQ2N5NkJNc21DTko0Y3ZhaDFlYkpjMTR0cWVMQmtBOUVOdkRZL21ZcTNI?=
 =?utf-8?B?R1hzT0RpWmpNRzhvUFIzaWE2TmFrYmR3UnVkYndmR0FYZ2o4UThLWWlhajZi?=
 =?utf-8?B?d21aakJyRk5weDNlNmZyMWk1aCszQndyYUxta0NSajRqUGNKZzdkVURzV0Na?=
 =?utf-8?B?eTF0ZFJZVTJFdzcxbWFQQ1ljbXd0dDQ1VU5HRFRKaFREUVZrRTlvVEdOMFJk?=
 =?utf-8?B?WE4vUEs3ZUVSTmJnU0MxaEx3WDFYcitRY2JNNGlsN3dvZzl0eENXTHNvMnZk?=
 =?utf-8?B?QlF5YWlsck9ncTNJTlE0SkVCbGU1cHhQSDRCYXo2YTl4d05lSGNDcUhiU2JJ?=
 =?utf-8?B?NjFzNUdRdnJtTXdqMFdRMmNzTW1jRHlicy9lTlFvbTdERnBzOVNIRnBFZkdN?=
 =?utf-8?B?WEp4WHo3eWF2Qlg1aXl4REJiQVh6WHYwVGxPdjhPVkJ4QXpTSGVxU2VhTU5F?=
 =?utf-8?B?cXlmMnkwNHFaY2dIQVZKMUJrMTQ2emRXNlNzYUx0TytQNnZqYmxab1Bpd3hh?=
 =?utf-8?B?QWc5ZUx6RGxJVDZ6MmI0K1c2RkpRUTgwOUg2ODJNak9MOE5iNFRNL2tQdDdT?=
 =?utf-8?B?S29WZ2xpZnU4VWVKTG51WTJSdllXQis2NVo0OE44SmkrbVU2eDRvMTdpTVJL?=
 =?utf-8?B?OVVja3B4UVBjdHZjZkdyL08zbVlzZ2N5dzVkeGhWL2tsYUs5WVp2Z3ViOFhy?=
 =?utf-8?B?RHRRUzA4WG00RjhuSzl6Tk0zZVkzYkZUOHg3OGhvUTFxaGlRVDFNcmwwdVpt?=
 =?utf-8?B?VVVWVkpXRWJwcHcrZXRqZlRHSTVzUVgyNEltZTcyR0Z5VXBYNXlYOEVFTGd0?=
 =?utf-8?B?VkRKTUprRVdwOGwrdVFhV2laRG1pOXh3amdFNTR6OVhibWJwOVkxME9UTlow?=
 =?utf-8?B?VGkxYVd5THhtR1lZMEVEb0d4MGZyeU9Td0ZSelUxY2hwbEwwUCtwQXV2bnZo?=
 =?utf-8?B?Ym1VWU4wajI4MU5lbUZ6MEhJMFpmeUkrc2htUmlFR2ZNNGZCVHJSakxTTGhH?=
 =?utf-8?B?dDdoZ1U4TFJDbCtyZUJnY0FabTk1LytoamFjYmN1MUpaUEkxVkU2OTdqN3Y3?=
 =?utf-8?B?T1hvRFNoTjkvZkJ1MFZ6VVNvRElGU3FBYTJESDFxa0tXdldQU3B6RnJ5N2lD?=
 =?utf-8?B?emtLNHFvaGJ6bnpOSHhSa2FmNGIramFISkxiSFNGanpybWpXK0Z1MVU5eGpy?=
 =?utf-8?B?aDV0N29xMkg0dHJCVTNwVDB1bU16QUV0VWtlRmZkK2xjV2hHQm9Hanl5Smlw?=
 =?utf-8?B?T3JKL3RZWVBPUzluWk44TjF6cHFYWVV3QWRJQ3h5M1BldHJnSHJCdUJHK0E1?=
 =?utf-8?B?aVVabmRqWWdzVGxWbFVxeEY5b3gwUEx1UzcxK2xtTytsTTd1bEZ1Y2RjRVBj?=
 =?utf-8?B?TkZRRzZEK0xBS0FKczhuSFVoVzZzS2ZmaHVQeXZUT0tOai9LVlY1NnV2c3h2?=
 =?utf-8?B?TVlmOXVMTmd3UU5JRm5nMWM2cmd3cG9tWlZXV1ZZWkR6QVBzemp1YW9rWW05?=
 =?utf-8?B?TGR6cUk3b1VTN0tpRjFCWHVHcXJrYWlaZHE2Nkc4S1NQRUZueGlJeEo1djNk?=
 =?utf-8?B?VEQzRjZRVHl4dDFwanNPVjVrdHRiZkJnd2V0WHZkTHhGK3BoNzRkS2xacGNE?=
 =?utf-8?B?ajJZZFpjRzU1S0ZyWDlwZmViUjEvMmxna1NhWityMFd0bTZ3TW5PUTQ1YXZu?=
 =?utf-8?B?ejhwZG82SlRyZ0prNlYzRk9vdGVaRkVSK0ZzcHNwVkFzZWxLdituV2MyczEr?=
 =?utf-8?B?K0tXREsyWHZTV1padmI0UXlxY2lPMXpDZHVRR0RNVUlreis4OVFGYnIxSU5k?=
 =?utf-8?B?Y3hpb0dRKzNmQWlHd2VDNFVNWjdXTU9IbC9pUkIyY0l1ZFRVYU52aWFxL3JT?=
 =?utf-8?B?WHR3OGNPblhLbTNFQkxUVVJiWlpPZm1VU096ZUtUaTBtUTdVdXFxVUxlTFVX?=
 =?utf-8?Q?IvltiSe2fH9Yg3NtFN?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4875be2-e5f2-4f39-7f17-08deb4d0ed90
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 11:30:56.6401
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3XSd2htY8XnUh+MuWew5wC9Oaq1uDn+P5PqYTwFuTeMvFUxudz7yVNzBeTi9Jevo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB9211
X-Spamd-Bar: --
Message-ID-Hash: KTQSBHHGC7RLCL7VEARFJJB77BNPLU4Q
X-Message-ID-Hash: KTQSBHHGC7RLCL7VEARFJJB77BNPLU4Q
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-fence: Clarify external lock use case in dma_fence_init() docs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KTQSBHHGC7RLCL7VEARFJJB77BNPLU4Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: BC4D956B939
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	NEURAL_HAM(-0.00)[-0.913];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

T24gNS8xNS8yNiAwMDozOSwgTWHDrXJhIENhbmFsIHdyb3RlOg0KPiArY2MgQ2hyaXN0aWFuJ3Mg
QU1EIGUtbWFpbA0KPiANCj4gT24gNS80LzI2IDExOjQ3LCBNYcOtcmEgQ2FuYWwgd3JvdGU6DQo+
PiBIaSBDaHJpc3RpYW4sDQo+Pg0KPj4gV2hlbiBwb3NzaWJsZSwgY291bGQgeW91IHRha2UgYSBs
b29rIGF0IHRoaXMgcGF0Y2g/IElmIHlvdSBhcmUgb2theSB3aXRoDQo+PiBpdCwgSSBjYW4gYXBw
bHkgaXQgdG8gZHJtLW1pc2MtbmV4dC4NCj4gDQo+IEdlbnRsZSBwaW5nLg0KDQpTb3JyeSBmb3Ig
dGhlIGRlbGF5LCBwbGVhc2UgYWx3YXlzIENDIG15IEFNRCBlbWFpbCBhZGRyZXNzIGFzIHdlbGwu
DQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLSBNYcOt
cmENCj4gDQo+Pg0KPj4gQmVzdCByZWdhcmRzLA0KPj4gLSBNYcOtcmENCj4+DQo+PiBPbiAyMC8w
NC8yNiAwNjoxOCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPj4+IE9uIFN1biwgMjAyNi0wNC0x
OSBhdCAxMDo0OCAtMDMwMCwgTWHDrXJhIENhbmFsIHdyb3RlOg0KPj4+PiBUaGUga2VybmVsZG9j
IGNvbW1lbnQgb24gZG1hX2ZlbmNlX2luaXQoKSBhbmQgZG1hX2ZlbmNlX2luaXQ2NCgpIGRlc2Ny
aWJlDQo+Pj4+IHRoZSBsZWdhY3kgcmVhc29uIHRvIHBhc3MgYW4gZXh0ZXJuYWwgbG9jayBhcyBh
IG5lZWQgdG8gcHJldmVudCBtdWx0aXBsZQ0KPj4+PiBmZW5jZXMgImZyb20gc2lnbmFsaW5nIG91
dCBvZiBvcmRlciIuIEhvd2V2ZXIsIHRoaXMgd29yZGluZyBpcyBhIGJpdA0KPj4+PiBtaXNsZWFk
aW5nOiBhIHNoYXJlZCBzcGlubG9jayBkb2VzIG5vdCAoYW5kIGNhbm5vdCkgcHJldmVudCB0aGUg
c2lnbmFsZXINCj4+Pj4gZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLiBTaWduYWxpbmcgb3Jk
ZXIgaXMgdGhlIGRyaXZlcidzIHJlc3BvbnNpYmlsaXR5DQo+Pj4+IHJlZ2FyZGxlc3Mgb2Ygd2hl
dGhlciB0aGUgbG9jayBpcyBzaGFyZWQgb3IgcGVyLWZlbmNlLg0KPj4+Pg0KPj4+PiBXaGF0IGEg
c2hhcmVkIGxvY2sgYWN0dWFsbHkgcHJvdmlkZXMgaXMgc2VyaWFsaXphdGlvbiBvZiBzaWduYWxp
bmcgYW5kDQo+Pj4+IG9ic2VydmF0aW9uIGFjcm9zcyBmZW5jZXMgaW4gYSBnaXZlbiBjb250ZXh0
LCBzbyB0aGF0IG9ic2VydmVycyBuZXZlcg0KPj4+PiBzZWUgYSBsYXRlciBmZW5jZSBzaWduYWxl
ZCB3aGlsZSBhbiBlYXJsaWVyIG9uZSBpcyBub3QuDQo+Pj4+DQo+Pj4+IFJld29yZCBib3RoIGNv
bW1lbnRzIHRvIGRlc2NyaWJlIHRoaXMgbW9yZSBhY2N1cmF0ZWx5Lg0KPj4+Pg0KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPg0KPj4+DQo+Pj4gUmV2
aWV3ZWQtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQo+Pj4NCj4+Pj4N
Cj4+Pj4gLS0tDQo+Pj4+DQo+Pj4+IHYxIC0+IHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9k
cmktZGV2ZWwvMjAyNjA0MTExODU3NTYuMTg4NzExOS00LSBtY2FuYWxAaWdhbGlhLmNvbS8NCj4+
Pj4NCj4+Pj4gLSBCZSBtb3JlIGV4cGxpY2l0IGFib3V0IG5vdCBhbGxvd2luZyBuZXcgdXNlcnMg
dG8gdXNlIGFuIGV4dGVybmFsIGxvY2suDQo+Pj4+IC0gRGUtZHVwbGljYXRlIHRoZSBleHBsYW5h
dGlvbiBpbiBkbWFfZmVuY2VfaW5pdDY0KCkgYnkgcG9pbnRpbmcgdG8gdGhlDQo+Pj4+IMKgwqAg
ZG1hX2ZlbmNlX2luaXQoKSBkb2N1bWVudGF0aW9uLg0KPj4+PiAtLS0NCj4+Pj4gwqDCoGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDEzICsrKysrKystLS0tLS0NCj4+Pj4gwqDCoDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+Pj4+DQo+Pj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMNCj4+Pj4gaW5kZXggMWMxZWFlY2FmMWIwLi42M2IzNDliYTlhMzQgMTAwNjQ0
DQo+Pj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4+PiArKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+Pj4gQEAgLTExMDIsOSArMTEwMiwxMSBAQCBfX2Rt
YV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2Zl
bmNlX29wcyAqb3BzLA0KPj4+PiDCoMKgICogY29udGV4dCBhbmQgc2Vxbm8gYXJlIHVzZWQgZm9y
IGVhc3kgY29tcGFyaXNvbiBiZXR3ZWVuIGZlbmNlcywgYWxsb3dpbmcNCj4+Pj4gwqDCoCAqIHRv
IGNoZWNrIHdoaWNoIGZlbmNlIGlzIGxhdGVyIGJ5IHNpbXBseSB1c2luZyBkbWFfZmVuY2VfbGF0
ZXIoKS4NCj4+Pj4gwqDCoCAqDQo+Pj4+IC0gKiBJdCBpcyBzdHJvbmdseSBkaXNjb3VyYWdlZCB0
byBwcm92aWRlIGFuIGV4dGVybmFsIGxvY2sgYmVjYXVzZSB0aGlzIGNvdXBsZXMNCj4+Pj4gLSAq
IGxvY2sgYW5kIGZlbmNlIGxpZmUgdGltZS4gVGhpcyBpcyBvbmx5IGFsbG93ZWQgZm9yIGxlZ2Fj
eSB1c2UgY2FzZXMgd2hlbg0KPj4+PiAtICogbXVsdGlwbGUgZmVuY2VzIG5lZWQgdG8gYmUgcHJl
dmVudGVkIGZyb20gc2lnbmFsaW5nIG91dCBvZiBvcmRlci4NCj4+Pj4gKyAqIEV4dGVybmFsIGxv
Y2tzIGFyZSBhIHJlbGljIGZyb20gbGVnYWN5IHVzZSBjYXNlcyB0aGF0IG5lZWRlZCBhIHNoYXJl
ZCBsb2NrDQo+Pj4+ICsgKiB0byBzZXJpYWxpemUgc2lnbmFsaW5nIGFuZCBvYnNlcnZhdGlvbiBv
ZiBmZW5jZXMgd2l0aGluIGEgY29udGV4dCwgc28gdGhhdA0KPj4+PiArICogb2JzZXJ2ZXJzIG5l
dmVyIHNlZSBhIGxhdGVyIGZlbmNlIHNpZ25hbGVkIHdoaWxlIGFuIGVhcmxpZXIgb25lIGlzbid0
LiBOZXcNCj4+Pj4gKyAqIHVzZXJzIE1VU1QgTk9UIHVzZSBleHRlcm5hbCBsb2NrcywgYXMgdGhl
eSBmb3JjZSB0aGUgaXNzdWVyIHRvIG91dGxpdmUgYWxsDQo+Pj4+ICsgKiBmZW5jZXMgdGhhdCBy
ZWZlcmVuY2UgdGhlIGxvY2suDQo+Pj4+IMKgwqAgKi8NCj4+Pj4gwqDCoHZvaWQNCj4+Pj4gwqDC
oGRtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1h
X2ZlbmNlX29wcyAqb3BzLA0KPj4+PiBAQCAtMTEyOSw5ICsxMTMxLDggQEAgRVhQT1JUX1NZTUJP
TChkbWFfZmVuY2VfaW5pdCk7DQo+Pj4+IMKgwqAgKiBDb250ZXh0IGFuZCBzZXFubyBhcmUgdXNl
ZCBmb3IgZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVuY2VzLCBhbGxvd2luZw0KPj4+PiDCoMKg
ICogdG8gY2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2ltcGx5IHVzaW5nIGRtYV9mZW5j
ZV9sYXRlcigpLg0KPj4+PiDCoMKgICoNCj4+Pj4gLSAqIEl0IGlzIHN0cm9uZ2x5IGRpc2NvdXJh
Z2VkIHRvIHByb3ZpZGUgYW4gZXh0ZXJuYWwgbG9jayBiZWNhdXNlIHRoaXMgY291cGxlcw0KPj4+
PiAtICogbG9jayBhbmQgZmVuY2UgbGlmZSB0aW1lLiBUaGlzIGlzIG9ubHkgYWxsb3dlZCBmb3Ig
bGVnYWN5IHVzZSBjYXNlcyB3aGVuDQo+Pj4+IC0gKiBtdWx0aXBsZSBmZW5jZXMgbmVlZCB0byBi
ZSBwcmV2ZW50ZWQgZnJvbSBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KPj4+PiArICogTmV3IHVz
ZXJzIE1VU1QgTk9UIHVzZSBleHRlcm5hbCBsb2Nrcy4gQ2hlY2sgdGhlIGRvY3VtZW50YXRpb24g
aW4NCj4+Pj4gKyAqIGRtYV9mZW5jZV9pbml0KCkgdG8gdW5kZXJzdGFuZCB0aGUgbW90aXZlcyBi
ZWhpbmQgdGhlIGxlZ2FjeSB1c2UgY2FzZXMuDQo+Pj4+IMKgwqAgKi8NCj4+Pj4gwqDCoHZvaWQN
Cj4+Pj4gwqDCoGRtYV9mZW5jZV9pbml0NjQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0
IHN0cnVjdCBkbWFfZmVuY2Vfb3BzICpvcHMsDQo+Pj4NCj4+DQo+IA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
