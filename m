Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yL2ENl34DmoSDwYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 14:19:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1F85A4AD9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 14:19:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 444C040984
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 12:19:40 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010059.outbound.protection.outlook.com [52.101.46.59])
	by lists.linaro.org (Postfix) with ESMTPS id 0133C3F985
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 12:19:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=2YWBfu4G;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.46.59 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A/WHCUxg7uqsHKzKA8Sj7k/XN1w8BbNFe/EXi5G+micd3lIXAg92BmgFtYSFsEpkxvw6c1M4U0qVb6uQrrUOGpL/S+jZX2P3Bp+0MEkXf6I4J3G8DBq1ZNLNaPNcGHBkwESlNxgJL2DJ3ACFzYJWLR4DajOF1A8oP0nJ+wGZC++Fl2Eg3E2JCW0G85edvQ6WcRYG6qMcFiJJAuGCyf4C12FWLMNVEGoyuXlxxSn4quOTlIFqxKmHUu53B5A1SJOAtxxEv9v5bYI1VmfrXTS6p0atAuTQgtBYibnqUco8X7fUH0j4W6sw4ax5fwHnQedW8MWDRP/HM+sEg2kAxxUIgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cq1j5axLZP6I8uQ7fCZBjWPF/2TSBgqr8zLjjoBZbSA=;
 b=NqadLA9czqwJWqoOl8OlVpdT18VTys96mKB74mbLBoNiFplEpeErzslmkgLLCXOqx25wOU2XsaaugA4PyUtq62k99gS0i+VhhqqIp2xMZX7C9l9h+7+Wkr/3wWNcFyaYevYTekbpLUKcxkeyvvn2SJE1E36P6It6OftDXSZqyKIqufAQe/rgOQ3iTc5mzgvWNBv3tsGg3gqty9RjY+UIdVoY+M7COZIBuvOTAdZWY9w5knHtO0HoZ/BehlysxICvaftPBltgREATZFKRxvndo4Egj9F3fvN8GVtY3MbNds9fSOIcVgU9eK0PnCt+3YicRFmdmPWBr2TZIZZ7h0mKXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cq1j5axLZP6I8uQ7fCZBjWPF/2TSBgqr8zLjjoBZbSA=;
 b=2YWBfu4GpZjuNCP5JUZ4ctgLeLv+B46JGspfcMxTmedVsLgSeqCixBVqdja3hUXlIVWFCFoxa/sMRgiB7tUmYT/CZQP45a40BGsDmi+vX7ld2eqj3TOnKvuLbK0gMj261X1/CLA56wutemga8UROzFsv4ckD9J5Q0rRmEkw/GQU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV3PR12MB9186.namprd12.prod.outlook.com (2603:10b6:408:197::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Thu, 21 May
 2026 12:19:16 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Thu, 21 May 2026
 12:19:16 +0000
Message-ID: <219d9501-c46f-4d20-be92-a19965e64e5c@amd.com>
Date: Thu, 21 May 2026 14:19:10 +0200
User-Agent: Mozilla Thunderbird
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com>
 <20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
 <03a57011-e734-4a74-aef2-e3a6016e15fc@amd.com>
 <20260518111456.30ba9bba@fedora>
 <a9ee80aa-0c9b-4bd7-87bb-d3e228357b18@amd.com>
 <20260518161531.331cab2d@fedora>
 <d793568d-9611-4174-b9e9-c71ffec5ae93@amd.com>
 <20260521105402.4bc4b1e5@fedora> <20260521110100.598baadb@fedora>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260521110100.598baadb@fedora>
X-ClientProxiedBy: MN0P221CA0025.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:52a::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV3PR12MB9186:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d947266-98fa-40e0-088f-08deb7332d4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|18002099003|22082099003|56012099003|11063799006|5023799004|4143699003;
X-Microsoft-Antispam-Message-Info: 
	+FpdX3vH/6BsMB/b4r6AJNBWFfKvmgSBIyVbHIO+kynR1FiKUXpamWRg9faDvEXD2/9G6XHMLP3uy06gGCnZMEaEJZj3RDC3+VmiR9f09DsoVEhtsJbw9dyDehs6bCws5NcrgqJeqk7YbKzYNpl27zhGBEJFlr66trWNDsWKtiWfbJiZ+Wy4BAWjfRdolFTVGtDkC9hkCy/PMVsUjS71lR19SOhOvzckxajBIGmdW6mRMQbNYfr25PppFeNGqYqgcSmYzyiEQdFga2phmyddOT4Ww/Raf63xe0yDjlfOX183c49dd8KQ10NbrvGl+NKoT8xVgKaxnPKH72jMcm4r2m7asUXRkDAOPztOiwabNRMMlf4L07OQt17NlFrI0A3wKvbf3B1TM+3+dBwMR1OSUjvpROewJtZk21++aRE9L0LvjLBIHsrl8uy5WIAbn8hwmNN0BG4xH9T8DI9csMEPrNEt809c69UyI/3wTiKMAQfUDWudGfqZiyXUnlLpYVLWzz12UvYR1FQpqLL/t5iPc6I95UAzHSWWlfG5IiFMhVBo7M26DpgNwi53AqJoWpe5g2oYEf1UsWRYxsx5KqqUWy9bw1B6COPK+Q7DBo2+IeeAU/HQQuOvZmwmzVl58lpqZN3F4KK1Hg4P+/kVocN6Kg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(22082099003)(56012099003)(11063799006)(5023799004)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NHVteW1kV2VZc3U3WWluREtXQ0c4SFVyYmdjZmVtMlp2RU5EcGFoTXdaMFFv?=
 =?utf-8?B?S0NUUVNpTTRGOWg3SHg2WmEyb2FGOG1vZFl1VEpVZGZ3YWRiY3djS3pwTHE2?=
 =?utf-8?B?eGluNk1CZVFlaTZLdFA3cHdwYk9iNGRIVFdTSjAyRkhidnJ0bGEzR2FKQnZ4?=
 =?utf-8?B?a2srMXB2dXNzaVltYzliU2E2UUdxTEdWMlFITVUzNldoTFE4UzFpa21ZaFBy?=
 =?utf-8?B?dnVmUVluMEg5eEwrcjhUVTZuMnhzMlNGMTJXSVBRYmZlTVJzdWZkOTVwYzV0?=
 =?utf-8?B?SXNEdExJTnNIYWZ5UVEweG1TR1MycldTWWVBNjJxVmxEdFZDN1hFV21FZW93?=
 =?utf-8?B?eU9BdFRMclFlVXNRMHJIZ3BIUTROK1J5YjV1SGIzL1YrTkpHVEh5QkpvYWJS?=
 =?utf-8?B?U3A1d3g4Si9uWVkrbk54MzBGSmZ6N2JrL01HSmp3TlQveHd2R2RwaEM0bkhV?=
 =?utf-8?B?VWZoL3cwczIzNVUwbjRGVXNEUkNjU2RxQklybEpnYk9JU0lheC9jcVQwdUlV?=
 =?utf-8?B?dDJFQnV3azdrN09vcWlUeFErUHRtYXE0ZFVXYVN1UnFsbGV3WWUvS0RSWVBm?=
 =?utf-8?B?QzFVRnhhRnI1QmR4dHVuTzFzeWpVbm0xYWFxQk41VlJBdDk5ZVp3VWs3UFFP?=
 =?utf-8?B?R0FpWWdUNkJPcElNMk1pQ1dtRk1TQmF1dU9NMUlvMkt6TXdFSHZvbWo1VFdG?=
 =?utf-8?B?R0ZMaVRFMHUyS2RSeTd4VWRJbE1maUdvU0VnR3BxbnhkVDhkVHh3Y1FCUmJ3?=
 =?utf-8?B?ZjRsU2orZVQxOEpqYUZMMjZFNXhvUXVHdlR5ZURZVytzUzZYaXorbFUzbEhJ?=
 =?utf-8?B?MjN3SlgyY0J3Y2tuSUxrNlNyVVN4UzQycUEwRmM3Ump1Y25mY2RoTkxmcEo2?=
 =?utf-8?B?eUxENlF0L3ZMSDMrcERxMmlVMkgxOEpaYzZueDRpN3hJd1Y4bDlqem1tVE5i?=
 =?utf-8?B?Q1VUVlN0NnNrdWYxUWVvdHNYNGJ0bk9OMGh1MUpRbUhDS2RTcFNlb1k0ditu?=
 =?utf-8?B?NnMxSmMxdzVlTC9NQWhtdVd4ZEJNZFFrMnR4emlVYndlTloyMGs4NGsxWkxT?=
 =?utf-8?B?Y29rOVJmRCtySHRsRE1waEJLRERwN08rejFDWkY0OFozdjdoRnhMQVltcThy?=
 =?utf-8?B?d0E2TnNKNGQ2TEJoUWlrUDBIemVTVGQ3QUtIa1RCQU4xU0VWOHMxd0JFMGtG?=
 =?utf-8?B?empTUHgxVGZrYjMwUkk5ZGkyZjFXb0JGZjNQT2EzdVNla05Yek12a3piTU9X?=
 =?utf-8?B?S1pnUm1Ed3lJUVgwNzdkN2JGZGc5Q3MwZmxuUkZ2SGx3c3hGZHlaN1JxSERS?=
 =?utf-8?B?Y1FkcW9OK2gxbE9xYWtEWEdEY0pScHM5TThMMWN0TkdzUDU0Ti9WWjRjOCtJ?=
 =?utf-8?B?eURiL2NpT0NNcXk5ektSd0NUeHZYdGxrVFM4QTVjR0lTUHQvaVZ1SFg1MzBk?=
 =?utf-8?B?R21NNjMwcEhkQzVqeVhyYm15T280Z1YwV3JBY1JBTkluNjNGMHUwampWU3FE?=
 =?utf-8?B?cmR3SEttaW1GbE94QWxKYVJxbzZ3T3FhcElCUGZKa3B0bmV6WW82N1NpYlZB?=
 =?utf-8?B?ZXh3UHVoUFRlcktJdzVuMjBBYitrTDVrM2M3RU11Mk1udGJ2SldhRzB2K1pV?=
 =?utf-8?B?a1Fpdm5yMWpVMWRBZXFPUEhRSjRESi9uTjlZdEo2OVhOeEJRUnJsa2tMS1F1?=
 =?utf-8?B?LzRWR2tHTWhibzd2bm5tY2FBWXE1M2tGcUVhS3RWY0dkc2laNmY0MWNVcWwz?=
 =?utf-8?B?TzVOWkJEZWZpVVlZV1N4c2lZVEt3QzN1UlVHL2dpQTBJTXhyUVBvektQbWtE?=
 =?utf-8?B?RFY5bTZNU0RKNWRaMW8rSDllaTV6NlFpVlRoUXc3eld6dFNBdCtJV0lPbk4x?=
 =?utf-8?B?UlJESzRhYnY0N0VGMU5mei9BSnJOYW5QU1dPT1I5RGpEcnR2SzdkRStYbktJ?=
 =?utf-8?B?OWg5dmlUdmxJYy90VFZEc3ZxNHY2bzdSMmI2VE1aNkJIdTVMQU5WQlo1MXV3?=
 =?utf-8?B?MDExYjBlcncxUy9NS244U3M3MzdabGxVK3drNlBiV0VxeE93ZkNaZGt6WnIv?=
 =?utf-8?B?ZFlKNVY5KzcvV2piZHRuV3BhWjJEaHdWWVk4MWt3eDFWWUl2aFNPYll2bVp4?=
 =?utf-8?B?bkR5eXJPMFpIcUsrWVVwaThYODUzZVRHT25OQlJObm8vSElubjNPekpDaC9k?=
 =?utf-8?B?TDdvMDhkL2FBbldMZGhWS29tejlucUszYXhJdUIzOTh1SWxZUkYyNDVZVS9o?=
 =?utf-8?B?a0xsVy92SHdYaVU5N0tLYkFiN2RHV2YxbkRpbWZINGlTaHIzdFNZckNMb3ZY?=
 =?utf-8?Q?0pM7cEpkEwejUe2Kxx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d947266-98fa-40e0-088f-08deb7332d4d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 12:19:16.6048
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xKCPDV5Db0U/izFa4hcdpMXczfP+kaa1qfeE93ZjbTDks4glmWJYuS/zFmRgozSA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR12MB9186
X-Spamd-Bar: --
Message-ID-Hash: 2D472XT7APCUBX3LJJHN5WCQ5C3JHLKV
X-Message-ID-Hash: 2D472XT7APCUBX3LJJHN5WCQ5C3JHLKV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] dma-resv: Define guards for context-less dma_resv locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2D472XT7APCUBX3LJJHN5WCQ5C3JHLKV/>
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,amd.com:mid,amd.com:email,collabora.com:email,linaro.org:email,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 5C1F85A4AD9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8yMS8yNiAxMTowMSwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPiBPbiBUaHUsIDIxIE1h
eSAyMDI2IDEwOjU0OjAyICswMjAwDQo+IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9u
QGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPiANCj4+IE9uIFRodSwgMjEgTWF5IDIwMjYgMTA6MzY6
NDcgKzAyMDANCj4+IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4g
d3JvdGU6DQo+Pg0KPj4+IE9uIDUvMTgvMjYgMTY6MTUsIEJvcmlzIEJyZXppbGxvbiB3cm90ZTog
IA0KPj4+PiBPbiBNb24sIDE4IE1heSAyMDI2IDE0OjE4OjQxICswMjAwDQo+Pj4+IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+Pj4+ICAgICANCj4+
Pj4+IE9uIDUvMTgvMjYgMTE6MTQsIEJvcmlzIEJyZXppbGxvbiB3cm90ZTogICAgDQo+Pj4+Pj4g
SGkgQ2hyaXN0aWFuLA0KPj4+Pj4+DQo+Pj4+Pj4gT24gTW9uLCAxOCBNYXkgMjAyNiAwOToxMDoy
MyArMDIwMA0KPj4+Pj4+IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4gd3JvdGU6DQo+Pj4+Pj4gICAgICAgDQo+Pj4+Pj4+IE9uIDUvMTMvMjYgMTg6NTgsIEJvcmlz
IEJyZXppbGxvbiB3cm90ZTogICAgICANCj4+Pj4+Pj4+IFdoZW4gdXNlZCB3aXRob3V0IGEgY29u
dGV4dCwgZG1hX3Jlc3YgYXJlIG5vIGRpZmZlcmVudCBmcm9tIHJlZ3VsYXINCj4+Pj4+Pj4+IGxv
Y2tzLiBEZWZpbmUgZ3VhcmRzIHNvIHdlIGNhbiB1c2UgdGhlIGd1YXJkLXN5bnRhY3RpYyBzdWdh
cnMgZm9yDQo+Pj4+Pj4+PiBleHBsaWNpdC9pbXBsaWNpdCBzY29wZWQgbG9ja3MuDQo+Pj4+Pj4+
Pg0KPj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxs
b25AY29sbGFib3JhLmNvbT4gICAgICAgIA0KPj4+Pj4+Pg0KPj4+Pj4+PiBSZXZpZXdlZC1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+Pj4+Pg0KPj4+
Pj4+PiBIb3cgZG8geW91IHdhbnQgdG8gdXBzdHJlYW0gaXQ/IE15IHByZWZlcmVuY2Ugd291bGQg
YmUgZHJtLW1pc2MtbmV4dCwgYnV0IEkgdGhpbmsgSSBjYW4gbGl2ZSB3aXRoIGEgcGFudGhvciBz
cGVjaWZpYyBicmFuY2ggYXMgd2VsbC4gICAgICANCj4+Pj4+Pg0KPj4+Pj4+IEV2ZXJ5dGhpbmcg
UGFudGhvciByZWxhdGVkIGdvZXMgdGhyb3VnaCBkcm0tbWlzYy1uZXh0LCBzbyBkcm0tbWlzYy1u
ZXh0DQo+Pj4+Pj4gYWxzbyBoYXMgbXkgcHJlZmVyZW5jZSA7LSkuIEJ1dCBJJ2QgbGlrZSB0byB3
YWl0IGZvciBtb3JlIGZlZWRiYWNrIG9uDQo+Pj4+Pj4gdGhlIG90aGVyIGRybSBwYXRjaGVzLCBh
bmQgdGhlcmUgYXJlIGEgZmV3IHRoaW5ncyBJIG5lZWQgdG8gYWRkcmVzcyBpbg0KPj4+Pj4+IHRo
ZSBwYW50aG9yIHBhdGNoZXMgYW55d2F5LCBzbyBpdCdzIGxpa2VseSB0byB0YWtlIGEgY291cGxl
IG1vcmUgd2Vla3MNCj4+Pj4+PiBmb3IgdGhpcyBzZXJpZXMgdG8gaGl0IHRoZSBkcm0tbWlzYyB0
cmVlLCB1bmxlc3MgeW91IGhhdmUgYSBnb29kIHJlYXNvbg0KPj4+Pj4+IHRvIGZhc3QtdHJhY2sg
dGhpcyBzcGVjaWZpYyBwYXRjaC4gICAgICANCj4+Pj4+DQo+Pj4+PiBXZWxsIHRoZSBETUEtYnVm
IGNvZGUgaXRzZWxmIHVzZXMgZG1hX3Jlc3ZfbG9jay91bmxvY2sgICAgDQo+Pj4+DQo+Pj4+IFRo
ZXJlJ3Mgbm8gdXNlIGluIGRtYS1yZXN2LmMgdGhhdCBjYW4gYmUgY29udmVydGVkIHRvIGd1YXJk
cy4gSSBnYXZlDQo+Pj4+IGRtYS1idWYuYyBhIHRyeSwgYnV0IGp1c3QgbGlrZSBmb3IgcGFudGhv
ciwgSSBkb24ndCByZWFsbHkgbGlrZSB0aGUgZmFjdA0KPj4+PiBpdCdzIGhhbGZ3YXkgdGhyb3Vn
aCAob3RoZXIgbG9ja3Mgc3RpbGwgdXNlIG1hbnVhbCBsb2NraW5nKSwgc28gSSdkIGJlDQo+Pj4+
IHRlbXB0ZWQgdG8gY29udmVydCBldmVyeXRoaW5nIGF0IG9uY2UgZm9yIGNvbnNpc3RlbmN5LiBJ
ZiB5b3UncmUgZmluZQ0KPj4+PiB3aXRoIHRoYXQsIEkgY2FuIGdpdmUgdGhpcyBhIHRyeS4gICAg
DQo+Pj4NCj4+PiBXZWxsIGRlcGVuZHMgb24gd2hhdCBldmVyeXRoaW5nIG1lYW5zLiBJIHdvdWxk
IG9ubHkgY29udmVydCBkbWEtYnVmLmMgaW4gb25lIHBhdGNoIGFuZCBub3RoaW5nIGVsc2UuICAN
Cj4+DQo+PiBCeSBldmVyeXRoaW5nIEkgbWVhbiBhbGwgdHlwZSBvZiBsb2Nrcywgbm90IGp1c3Qg
ZG1hX3Jlc3Ygb25lcy4NCj4gDQo+IEJUVywgSSBhY3R1YWxseSBkaWQgbW9yZSB0aGFuIGp1c3Qg
ZG1hLWJ1Zi5jIFsxXSwgbGV0IG1lIGtub3cgd2hhdCB5b3UNCj4gd2FudCBmcm9tIHRoZXJlIGFu
ZCBJJ2xsIGRpdGNoIHRoZSByZXN0Lg0KPiANCj4gWzFdaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2JicmV6aWxsb24vbGludXgvLS9jb21taXRzL2I0L3BhbnRob3ItZ3VhcmQtcmVmYWN0
b3INCg0KWWVhaCBsb29rcyBnb29kLCBqdXN0IHJlb3JnYW5pemUgdGhlIHBhdGNoZXMgYnkgc2Nv
cGUgYW5kIHNlbmQgdGhlbSBvdXQgYXMgcGF0Y2ggc2V0IGdyb3VwZWQgYnkgbG9jayB0eXBlLg0K
DQpUaGFua3MsDQpDaHJpc3RpYW4uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
