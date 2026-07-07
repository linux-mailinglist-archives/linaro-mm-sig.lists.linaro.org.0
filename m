Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TtidIcHBTGr0pAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Jul 2026 11:07:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1055B719836
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Jul 2026 11:07:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=lgOYhPxP;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D30BC40A7A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Jul 2026 09:07:11 +0000 (UTC)
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012045.outbound.protection.outlook.com [40.107.209.45])
	by lists.linaro.org (Postfix) with ESMTPS id A28B8409B0
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 09:06:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XxZ4vg2e0RkXbUMzsQuvy0+uIMsh28AlVsTXTudXf+4E/3gvs8hOyzjhthe0kprjJ4dFOq0aFIqSWrUhiucVfphRoJVVKRSmt7KlNFI7wvn86ggibxJ6HKGQzWXEH0pml1oJeIOTV+fjgxFXkNTHea5lDa3pzWKkZN8lrIa0ROazADAo1J5ZZfKqy1j3nNBqnyBhnozcPc5BjT/16s/emKJYhQ3FF4wmxExJUbSVw/c+IuArYIehmuZhT0OwgVI8JJpieAjqOQ2M4z3Gm1xcFA/Gn+K4rnH7+rF117jODLcmJuCxceJBTvPerPpp0ixM7hEGdIefk5cplwa6z40GPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Xy6Gzryvi8zoBnUmvbtNx5jXU5V2sEi+R1eM9hZ9XM=;
 b=JGcAT+W+s/O3WYdN3pYSjZ6PsN7F9z1sMdBJnvbSc+fnL2dWPILjpSGyBjsONFG9WMw2Ei7LwHbAQfDdfGFlPViunZWEJpp577MfOO4arZ9v9KHvXQchOx90yUtUaYanTXIZ1H4g2XbBSOh94oUZJ8feTcpQi8Ueeppclq+AV67hsdj2RYeuVjpzNX/hVK8qWnUayYQMcaFc4PupgfDQ01qt1YrJILujhKLZ+pPCG+6f5kdL/VWV8EP9BYo2rHZHIw1t0CtuRTP/J5WMn83J3t3IQmW03JvD8kWHrn1CVvYpDXy6TjF5PrXhsFvAuiGqzoV2sanyxKxa8gUqNpmLEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Xy6Gzryvi8zoBnUmvbtNx5jXU5V2sEi+R1eM9hZ9XM=;
 b=lgOYhPxPku40mfIS9B4wJ7qjsHEmeydJ+HHT/EcTylZ0ti6yq8byAkq7PV4l0F+RypTARh5TFtGjIScuBpJskl2pWmcZK+N5xwxvWIVuZYxeCaq66Hq6KIlaoqhvEmEkpQJGfLN9J5FvSOgPSJYodJBtuzEWkMUTld9q7I4cmio=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4333.namprd12.prod.outlook.com (2603:10b6:208:1d3::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Tue, 7 Jul
 2026 09:06:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 09:06:46 +0000
Message-ID: <1293fd6c-4af7-4025-9624-aa35a6b0d4a1@amd.com>
Date: Tue, 7 Jul 2026 11:06:39 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 sumit.semwal@linaro.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 lizhi.hou@amd.com, Max.Zhen@amd.com, Mario.Limonciello@amd.com,
 airlied@gmail.com, karol.wachowski@linux.intel.com,
 Simona Vetter <simona@ffwll.ch>
References: <20260630080112.1117341-1-christian.koenig@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260630080112.1117341-1-christian.koenig@amd.com>
X-ClientProxiedBy: FR0P281CA0119.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4333:EE_
X-MS-Office365-Filtering-Correlation-Id: 1273d22b-a155-4721-76f1-08dedc07123e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|1800799024|23010399003|6133799003|22082099003|56012099006|18002099003|11063799006|921020;
X-Microsoft-Antispam-Message-Info: 
	7A0gUtzDxaKkuSdTftZ40Eh2kq/wzSzTLo9v+8ZcgSErKLNS73tsvQE8Xrz8Mnal92bu29CgspbElJALNHTpyKTgKIkY5kiScH+cE4dkUz3YQNSa6k7d2IF8jjTGNMvabQ4nBg58TopfqPW+p0KZNSdhQJtgFHSdcyuT60yV2cooXiSaKPg3q5DX3SiN0Rcm78LFFyjqU6vQuEmHAukYJQdauTPsrZRvkNF9UmkZ0oywyUBso3qQ+cxGMjsiVqreHBzheHimWtJmHo9jytBmJIMRYDSoAUEr9N3dq7wRIFgJl7BnBSEqfRxfnBug444hQxyEw6Ub7te2DyCLTb0tS1CxNbxJtvezMHb0GsuYuHSs/oIvYU5o4nknpis8FdKBuuSw528Tkc2C1NZR663Leu8IoyB18ZUEiVkyBMS4V36wpdhnaXET6KRvPdIx6hbgV5wgk9uPXcJu4CNSOBg1Pe/hL3YL9xyiQzk3+Po5eKqVBmws7g2BuZ3bMQu/0Zfxeb6Kc+jLDafWfMlXMruHa6E5LWIXwVFjXktNil63Yk7ws0r7ihFWGF8FoRPxgzdQk4TnwnJ9qf0Xkl/11VVRjqSF9QXhSlF/ai3ACC5VdglXQ2lCXpL4r3wzTfiNz5XFOTlPRjqCwDEPh7x67dLT6HPPcPSoD6tFXiuCTfzepHj+GB+PXFsSlB/WW4n9wzn9T6PGs8kovLGHlcoyfduH6Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(6133799003)(22082099003)(56012099006)(18002099003)(11063799006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eTBRbnFnbDNLNGZwT1BVSm5mdWxWNzhwSGx1ZUprSHBvajA4Nk1JUDF0c2xC?=
 =?utf-8?B?M3pyZTlBNUNXSElMMVM4SW1PdlJZSG8rdkJNMW1LVk9yRW1MQkVteXZNNk8x?=
 =?utf-8?B?OUZPMXBKdllXTHdxQ2pheHZhQzFISERTTWd6Y2ZQWGRtTHQ2TXpjQzhPenRT?=
 =?utf-8?B?SUFMaXlqQkhJeThZTlUrTXdaMXNXN2N6Y2VxZmlGcXlrRURQU00wMm9PbjVt?=
 =?utf-8?B?d29XK2V1T2srK2ZrcnFKV3pwR1lzME9WalJXcngzTHZyVkE0WlNJakM3b0Vo?=
 =?utf-8?B?ODUwVG41Ynh4UlI5UlJQYkJzbVRHRTRBcytodG9jRGY4a1djNk1XQmt4OGJ1?=
 =?utf-8?B?TzdWWWVZaGRhN24yYUt5OU9NMmhTZjVNd1RWYWxUd3ZFeHNKVnUzd1l2VjJq?=
 =?utf-8?B?bGM1dzNwR3hBNk5SMzVybnZ4Z21pcWpOVVJEZENKclg5ZGJOVWxlODgxWDBr?=
 =?utf-8?B?Y0RLTFlYWHYzL3lKODdqV2Q3UWZadFBjeUtxSW9GM2o0T0toQytxNExmWUVk?=
 =?utf-8?B?Wis3Z2lwYmEvNGJzK2pxRnhWaUcxU09tR1dxTHo2WkJHRC9jbXpEc25UT1ow?=
 =?utf-8?B?S0ZRbnJrTmQzaWh5QW1WZmJXVU4xdmZxMEdWTlh1cVBGd3YxUW1hQ0Y2MjJx?=
 =?utf-8?B?dUd3Yk5EU1lSMll4dVgrMStJZGNJbGhmdk45bW14a3FHY3dKUHlvTHZta1Zj?=
 =?utf-8?B?b2d0S0s0cHJZcWVuMVJrM1VHRWZVQmd4QUN0M1A3VzhNNHRqb2VETXFkeE1q?=
 =?utf-8?B?Ymw4Mk1YaTdIa1FPdTBBaERLZ2dQZTN4L0hFM0E5T0dpQWpTR2h0NnhESE1r?=
 =?utf-8?B?cSs1eUR1U29lc1FXaGIwdW1MM0VHNFNOZWV0Mzc2WTQzdGx2REswUDJDcDhG?=
 =?utf-8?B?cVh3aXBXQUQrWjVteHNoNkhnbllEeUVzZTR5T1VHRUFLUkU5R1BEdWlsdzYw?=
 =?utf-8?B?a24wUXJlMTNVL2RlU0E0RGhYQmttTkFBR0lJK2VWaXhqaGVieldWMUE1bjRa?=
 =?utf-8?B?eEpzQ0hWZmlndWloK0NXU2xJZFFhT3p4UUJ5NS9KbVFBa0FhOVArSGI0NDFR?=
 =?utf-8?B?SlgyaUljcklRT1FlWEJEcEk5OEp5UjNRbHljbUZEUWptNTZyNlJob2ZPVWRl?=
 =?utf-8?B?WGkrL1lNdHZLRlJLYVN1cmJsalVSSHNROFhoSlhsRFI1Rk9TUEUrRXJsMFhH?=
 =?utf-8?B?S3hzMVJHL3VzM0Y0NW5CWmZhQ0l2bU14cW10a3U3ZUhQRExlaXpBWFpXUlMr?=
 =?utf-8?B?dzJhaWVWbnZhemZUL1Q4dDNmT2NHK1FBcUNVRHlOVzY1MFZoaFBhOVd6c0w5?=
 =?utf-8?B?Rzl3NEliVFQwdDhCd1FramFiQ21YNUZLMCtmekhjUXF6b0RxblVHelVmaUNm?=
 =?utf-8?B?QTlEeWZMU3BiL3pqVjREczBnd0hUWTdCV3JwR0F6dStDQlgxaml1aERHTGlt?=
 =?utf-8?B?WVFKeDVzcWY1eVBxQmpzdjFhZU9zZXB0WGpncXk5UlV6enlKUlNHTTF1bnht?=
 =?utf-8?B?UmxNNGN5Nk9ETEdWNGZjNDl0d1QzQXV2U2RRTnVqbFc4Zjc2RE5ZQlpZdXFw?=
 =?utf-8?B?L1gwbE5aV0Q1M1FnSzQ4dnhwVFdSRjJjZjJ1amlYUUdFbWdSRDk2d3Q4RmZR?=
 =?utf-8?B?V3d4VXhsSFRvNDdlVVJTYWhVOTNncmxKcHd6TE1PS2xBRmFnQzBwOUdJWlFE?=
 =?utf-8?B?OW1kQS8vUlM1VXpDUWZmWmIvRi9XWWlid05Ed01BZTFjakZlOXV3TkFGaVIz?=
 =?utf-8?B?c2lhbytQcWtSRlJNVE5vZDN6RWxwazhUZk1VMjYwTndLZk9aUGNyUzA1YkNZ?=
 =?utf-8?B?dVJmNDhnaEc5bCtkcURmRjhnMytXV29oYnNJM1BYdWQyTGFqSFg4S0VIR3lm?=
 =?utf-8?B?ZkI4RTg3K3FPMENIWHhKNnZnRXBSUllwaGplZThLOTd5YW1SOFBRTlB1VHJv?=
 =?utf-8?B?eDhpZ3doMWdmWEZZbHJqTzluVVJqWmNxQVdCaHdVQ0pHUTVlbWJuOHRNbnJj?=
 =?utf-8?B?N01leDduWTA3UndoNzhQNHord3VYOU9uNlNWdzdFOUp5dVJOWmtxQUhNci9S?=
 =?utf-8?B?cnp1TjVyVmIxaEsvT1h5UHdDWG03a0ZoVithQlYzSEQvakdzSzlBY0xiZE1m?=
 =?utf-8?B?S0MyOFRWQ0pma29BMC91WUpkeDJubE91cWJCYnBhTWFCbTYwTG1xNFE5SVRV?=
 =?utf-8?B?ZHFMVnJwd1Zmd3JVOW84MkllQ2MxQ0VsWTE3NlVuTTN0cHp1djUzRGhJekpw?=
 =?utf-8?B?M0MxZ0h5NkRaN2xEM2xpUU4rMFZDNHdaT21ZZE9KczkyT3BqRXY4aVVIZmtv?=
 =?utf-8?Q?4HQhbKSTa4tbU8azRm?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1273d22b-a155-4721-76f1-08dedc07123e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 09:06:46.5639
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TVy4ZoL6rkbU8qUDNKQZ7wzYFQbdlDS4lO8aPpWfJyyuv0JaWrDSPJSlvSnsTM4h
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4333
X-Spamd-Bar: -----
Message-ID-Hash: CKUHONTRMVS2LMJAU76WXEP6T6L3Z2W5
X-Message-ID-Hash: CKUHONTRMVS2LMJAU76WXEP6T6L3Z2W5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: explicitely forbid exposing pages from get_user_pages()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CKUHONTRMVS2LMJAU76WXEP6T6L3Z2W5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com,linux.intel.com,ffwll.ch];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ckoenig.leichtzumerken@gmail.com,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lizhi.hou@amd.com,m:Max.Zhen@amd.com,m:Mario.Limonciello@amd.com,m:airlied@gmail.com,m:karol.wachowski@linux.intel.com,m:simona@ffwll.ch,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:from_mime,amd.com:email,amd.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1055B719836

R2VudGxlIHBpbmcuDQoNCkFwYXJ0IGZyb20gdGhlIHNwZWxsaW5nIG1pc3Rha2VzIFNhc2hpa28g
YWxyZWFkeSBwb2ludGVkIG91dCwgYW55IGNvbW1lbnRzIG9uIHRoYXQ/DQoNClJlZ2FyZHMsDQpD
aHJpc3RpYW4uDQoNCk9uIDYvMzAvMjYgMTA6MDEsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+
IFdlIHJlY2VudGx5IGhhZCBhbm90aGVyIGluY2lkZW50IHdoZXJlIHR3byBkcml2ZXJzIHB1dCBw
YWdlcyB0aGV5IGdvdCBmcm9tDQo+IGdldF91c2VyX3BhZ2VzKCkgaW50byBhIERNQS1idWYgYW5k
IGNhdXNlIHF1aXRlIGEgbnVtYmVyIG9mIHByb2JsZW1zLg0KPiANCj4gRXhwbGljaXRlbHkgZG9j
dW1lbnQgdGhhdCB0aGlzIGlzIG5vdCBzb21ldGhpbmcgZXhwb3J0ZXJzIGNhbiBkby4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgOCArKysrKysrKw0KPiAg
MSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IGluZGV4
IDcxZjM3NTQ0YTVjNi4uYWE1YWY0ZjQzOWMyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gQEAgLTY4
NSw2ICs2ODUsMTQgQEAgc3RhdGljIHN0cnVjdCBmaWxlICpkbWFfYnVmX2dldGZpbGUoc2l6ZV90
IHNpemUsIGludCBmbGFncykNCj4gICAqDQo+ICAgKiBGb3IgdGhlIGRldGFpbGVkIHNlbWFudGlj
cyBleHBvcnRlcnMgYXJlIGV4cGVjdGVkIHRvIGltcGxlbWVudCBzZWUNCj4gICAqICZkbWFfYnVm
X29wcy4NCj4gKyAqDQo+ICsgKiBJdCBpcyBleHBsaWNpdGVseSBmb3JiaWRkZW4gZm9yIGV4cG9y
dGVycyB0byBleHBvc2UgYnVmZmVycyB0aGV5IGRvbid0ICJvd24iDQo+ICsgKiBhcyBETUEtYnVm
LiBUaGlzIGluY2x1ZGVzIHBhZ2VzIGFjcXVpcmVkIGJ5IGdldF91c2VyX3BhZ2VzKCkgb3Igb3Ro
ZXIgaW1wb3J0DQo+ICsgKiBtZWNoYW5pc20uIE5vdCBmb2xsb3dpbmcgdGhpcyBydWxlIGNhbiBj
cmVhdGUgbnVtZXJvdXMgc2VjdXJpdHkgcHJvYmxlbXMuDQo+ICsgKg0KPiArICogSXQgaXMgYWxz
byBzdHJvbmdseSBkaXNjb3VyYWdlZCB0byBleHBvc2UgdGhlIHNhbWUgYmFja2luZyBzdG9yZSB0
aHJvdWdoDQo+ICsgKiBtdWx0aXBsZSBETUEtYnVmcyBhdCB0aGUgc2FtZSB0aW1lLiBUaGlzIGV2
ZW50dWFsbHkgY3JlYXRlcyBhbGlhc2luZyBhbmQNCj4gKyAqIGNhY2hlIGNvaGVyZW5jeSBwcm9i
bGVtcyB3aGljaCBhcmUgZXh0cmVtZWx5IGhhcmQgdG8gZGVidWcgYW5kIGZpeC4NCj4gICAqLw0K
PiAgDQo+ICAvKioNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
