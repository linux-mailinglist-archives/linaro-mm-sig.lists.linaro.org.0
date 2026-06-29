Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q7QvFrgwQmoY1gkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 10:45:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B51046D7A0F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 10:45:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=Bal8FNjL;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C331B40A9E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 08:45:42 +0000 (UTC)
Received: from BN8PR05CU002.outbound.protection.outlook.com (mail-eastus2azon11011040.outbound.protection.outlook.com [52.101.57.40])
	by lists.linaro.org (Postfix) with ESMTPS id E80AE3F798
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 08:45:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G3iPGhjzgHzR/i8+JLN+tvpHR5Wir3e1ZEnQciwL5CNR7i8enkA5vQcDifooDw3lYkI93ATyUDPTjB/KsYjunMveUVq0lmGuKKnKBY+l3LSyX7KHu7MfHn1GUtUyWuL87ilkU0nG2JEaqYffyMDxdDv439XD1jvd0Hs0FQ9jY9CP4CzHDTWk1x0oZbJ7ueOeF7d8QP98AEooaKb0gphA5Jvdkum9MawYYzJJcMMY5GsEW9Fohzi9bjlon3KUCsrrp6X0R7J7BaCk1R9KDcfXE1vk2XAyUEoM8awwSm8jsN0WR71nSauVC+Nb9nL40nj1C4HVOjeBlPpihvS6ww8NVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FyFi4cWhfmG6yEHKDlBzlSjelEj8KABaqY+V2GEuBAA=;
 b=HOrxNVBGKb7vjTdcxLLhjy4fXXJe39dmB3KIgy7OpKgX7U4+Rob6uWKEshllIwAL8mGzxMUdA5750AhuQrp9iI/JLPNJUWhsqttwzej8YFu4XZbWyHY28YclWOKLdRggjDkxqzpI5RJhh/jCcuo3Ni/WCCcLoyyiVn+32HxGWlUvP9QaHPWdPtAxJBCuTqzmovUXwSZNzcE4/4WkTvZK2THweribIgspzofd4mW/rnbL4DPj9qvXioxrEeSMmFO/kewa7k8/9B5y4m/qcl/xfsj3AzCBUyJDk1b9Mu2M6tSQlwJVdTJgKcRWzMqTXEm08ohmr0XpS+xUN3jEwFFjiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FyFi4cWhfmG6yEHKDlBzlSjelEj8KABaqY+V2GEuBAA=;
 b=Bal8FNjLBv1jOkp5IPFlTxHf+JoE91Y3o76PKdtEUIXz1LB5tVVdE1fJTLbVH+uUXDhhG+jlsSvwca1Ge4L7XCVcGdWnblzMRwcU7HClWap4oUPdN13dPqATEavI+do4M7moAw8mikqI5VcOw9c4oKwUf5u/ks6kYMFKA9tuqEc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB7643.namprd12.prod.outlook.com (2603:10b6:610:152::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 08:45:28 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 08:45:27 +0000
Message-ID: <becd29b5-9e40-4104-b6c9-3d91e2ddddff@amd.com>
Date: Mon, 29 Jun 2026 10:45:23 +0200
User-Agent: Mozilla Thunderbird
To: Baineng Shou <shoubaineng@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20260629031346.3875683-1-shoubaineng@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260629031346.3875683-1-shoubaineng@gmail.com>
X-ClientProxiedBy: BN1PR14CA0009.namprd14.prod.outlook.com
 (2603:10b6:408:e3::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB7643:EE_
X-MS-Office365-Filtering-Correlation-Id: 383a54a2-bdc5-4241-0323-08ded5bac4de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|366016|7416014|23010399003|1800799024|18002099003|22082099003|11063799006|56012099006|6133799003|3023799007;
X-Microsoft-Antispam-Message-Info: 
	Ld3jOEIOUE+6zjqgiFOdDIthMie+Nl3Wpi9+fv7m8abCUyMVUP/DjesKPQT+l0D+a05cWjIZGQLyJr8i0eMIrImxjiAQ4JWtsUZbWu1IN0YV2UBtGLDgqmvOjiQtvQazUfnHaRErWPIJJPSuSYTe3Ui3xEEWQvZUUEuyWAmledYCPxze3pf9V9cd8ZYT/lovZRgdQ9w21xAHnkuUh2GfIgSfmRFWMrFvxCkgaT5fnRbmecBvCXRntDftejiZAkGW6Vgo9aERJzcUgjvkQZ8PpY8BQqswr0xgcWHkKb0/DQbLZuOXZxSJTXGuAAyJ+hi34EmE68uDKiTDLh+c6JgvfZY0oY2s+/cN2/lKTjmlPwBUHxThcDWBH+np+jwGaGlfYQ0CoKjsZNwX7lD+SAsDbFPhLggwRxYxTbOzkIUile0MLjTTMVBi9FdE8vfHeXc+a+xAibZ9/2RMvK61aTQcLsNsfzmQUc/gnSor8zjjtfWuoqH/9mBIVlh+mGV4NGM/kA2IWRC/rcUeaBJCAZRkQfYLe5jTaFiERjLhXDLKtiXYs0BoNdY5+Uly9BCRdIwXGNaiZzKyzKBDcpoK1/G7u9qG5XIPaM4Bt2/WESOLLt08Kj8cbCkjxLtCJi1ns2pjZ585/CPGqfUCm8tgU2jwMNxfLoazrMxjTlXLMOsMt6c=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(7416014)(23010399003)(1800799024)(18002099003)(22082099003)(11063799006)(56012099006)(6133799003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ckUxYW05ck9Zc0V1U20yMGxPYm9KdE43UWJ5UW1LMEFYUC9vREZTbnJqSE55?=
 =?utf-8?B?VUw5Y1U0WHlYS3IrUkZmZUdldEF5YjhvS2kvZmxPdjc0YW1VUjBvbk0rTXhv?=
 =?utf-8?B?THAzbmtiK1FuQWQzTVRlcXR3SWNadWt0YjFhczF2YnpJdi9TSVJubFRaNEZN?=
 =?utf-8?B?aTRTM2xkQ3RDNjllVEFlWHpmS0ZGOG5JQlRCRUd5N3VBVjdwR2FnYk8yRG1C?=
 =?utf-8?B?Ym1PcHlaTVorNHUxRzc0SzRuSjBCM25Lbi9IR0grK3ZRZC9Vd1ZGdTBMdFp1?=
 =?utf-8?B?alJqTW5aWlV6Ry9FRHV6WEVhcDVGV0hNTWd5V2JpbkRrRmQ1aEp4ZS9qVFpt?=
 =?utf-8?B?WnRNUzBGV1M3bjJlWldxRmxsSlhEaDVBRHBYL1ZzUytJZjQ1UzIrMlpzNDlu?=
 =?utf-8?B?WFYwZnRDZ2xOMHQwSUhvVUR3ajJTS3N6dDhpbWM2TVd5SnkxdWtWQk1SQWVt?=
 =?utf-8?B?bUZqL28xalJrYmMxa0RZMWRTYU42YUpaZWVoemw0VGxpOEJ5bzFUd3EwVHdh?=
 =?utf-8?B?SEFOaEFHTHoreHh6T0kxK1dIUGFqbW5KUmp5UWxDUCtIeXpDK2N6VXRiRnMy?=
 =?utf-8?B?ZmFjVjg5djFTM1VjUEVlc1BKcFFyeXhVTFhrVUhUdytjc3gwVnRpdjhzWW9s?=
 =?utf-8?B?UWhzVVFvb3EvanNsOUwxL3puTUNKbU00NWxwSHZMKy9qcUcyMC9PWXZDSzlu?=
 =?utf-8?B?aGswZzRLWmRZQUpsRjYvQU1nRC9VVkovU3ZlZXg3MjRMOVNQbWxzNXlwMFI0?=
 =?utf-8?B?YWF6U3B4QWsvVDBjWDlPMWZ4cDBXZ1NxTjFtTitmYXFwL0hCb09LZG8wVUxH?=
 =?utf-8?B?TlFFS0xPQjJSNmIvU2ZNWEd4dUp5KzRmQ0VobklSa1RkRitDWnhOZ2FIUFZH?=
 =?utf-8?B?YWk4QVZsaExLNXZCRFFxQUQ0MzNSTDZoaWxjVi9GZjRIaXFXdmtTYnJDZnRC?=
 =?utf-8?B?TUJGd2lmb3pSbFV1Tm9qa0svMnhFcFBxcVJSdDMwMys3N0FNM0ZlLzFtdDE4?=
 =?utf-8?B?cW0wWGRNNzkvdmFNZ0ExU05MYlhhWDFUaHpIUEhQMVQ3ZVBYa3d6N1VxMmI3?=
 =?utf-8?B?TnkxQUVRYTFLSlhybytScGZ5R2xHZnByVVNNWEZkcmVwaUJrN2FsSGtYcVho?=
 =?utf-8?B?VjU4ek9oY2VCanZ2ZnZnTEFyamJTSjl5U3V3UUN1T3VLSFlxNlRQOERxUGVy?=
 =?utf-8?B?WFlxdWVvVENSWXMzOVBYQllMeUlZdHM3b2dzRVQ0WGFPU3BoandNcElJanZL?=
 =?utf-8?B?bVZTaWtITjUwVWsxUEpKVldZR2lJM0tZSDBHVDlVQXZNMnFKQ2JkWDZ5UzR1?=
 =?utf-8?B?TEhsckJwdXV3OTRqZjhKbXQwVi9uTXI4U3pQd3RINHpuSk5tMDBsbjcyekFV?=
 =?utf-8?B?NXRBMGxjT0xqeXJoVGhFdEpaWHBndjBpVncvUzM4Y05aMDdmbGtpV1h3bXVi?=
 =?utf-8?B?N0FXL0VQbEppTVI5L0hQYk9mUkdpWTJUc0luMi9BOU5MY1Z0Z3ZGQWllL2x0?=
 =?utf-8?B?OVZzZE1FTHNjZ0NnV0FweXk3QlVCSVFmS05naEE1RGpjNkIzaUhnczUzWmpr?=
 =?utf-8?B?MEJUbVBTNWpsOHQyamtrbEVKMFpLeEdxNkhaTER0dDVFLzhPM3lXOFdPcUw5?=
 =?utf-8?B?bEZxMllUbGxjUyt6Zmt1QlhkU2xqWDVyTFZQUUdFS2xkdXpUV3YrdlltTUpy?=
 =?utf-8?B?VklwYkNnWnhnWnE2YUpMWFNiVUZGSm0xVVE5QXgzbHF0cHM4MEZob2hVSHFF?=
 =?utf-8?B?M2xkVDQ4aFE2OXhzamlUNE1USitBTG9qUVdFNit3SzVWWjM4K2dpVlJlTTlv?=
 =?utf-8?B?RkREdGV5WlRFdW14Tk14UUJLOVk1ZDI4U3FacjJSNDJmSmNKUVJWOTdzNmVs?=
 =?utf-8?B?TjdHZGRJNWRocTJqbEV1Sm0rcTd4L21xMTF6RWwvZzVvLzVxbW0zajMyNFFm?=
 =?utf-8?B?Q29GdTJyeWhLS0YxVWlVcGJMdTJueVYyZDhEWnlNN0JtS0pmYk9tWkxtMGZJ?=
 =?utf-8?B?eHhWd255OWZBMmowR2lwZ1hBemRQbGFkdUFrNXVXSWM3SWZXcXJ6RitmZWMx?=
 =?utf-8?B?M3FtVDd3OHZWeGN2WFc4QzNDd0F5bVdpK1hmVUUrZE1aQkpwVHlUdjhrRmxV?=
 =?utf-8?B?K0NxL1N6MUEzc2UwNnBpemdFenYyU1V2VXg3bjdLamF4aTkxU0xaVmlPS2gz?=
 =?utf-8?B?bnlDN1RWTHBhQUpSYm5Fb2ZJaVZsUllEZExJekVrdVczekttWXN4RkZuLzQ2?=
 =?utf-8?B?QldlZjJZSDA1M3U4T0Nxa3hPNVpKb1ZhNVdJbkV4VitTNmNvNDN3N3pOSU1r?=
 =?utf-8?Q?QZ7pKGJ8p1SNvX1RSc?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 383a54a2-bdc5-4241-0323-08ded5bac4de
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 08:45:27.8193
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rGv8LXfdfTH//CRHOR7UUtLuxh077pJqaKm6PAq3SfNlisPKnFwfTUYRc7CYzPkT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7643
X-Spamd-Bar: ----
Message-ID-Hash: WQDGBXW4VUD7BPB4SDHFLJT7POXS5QBE
X-Message-ID-Hash: WQDGBXW4VUD7BPB4SDHFLJT7POXS5QBE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Philipp Stanner <phasta@kernel.org>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Make dma_fence_dedup_array() robust against 0-count input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WQDGBXW4VUD7BPB4SDHFLJT7POXS5QBE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:tursulin@ursulin.net,m:phasta@kernel.org,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid,amd.com:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B51046D7A0F

T24gNi8yOS8yNiAwNToxMywgQmFpbmVuZyBTaG91IHdyb3RlOg0KPiBkbWFfZmVuY2VfZGVkdXBf
YXJyYXkoKSByZXR1cm5zIDEgd2hlbiBjYWxsZWQgd2l0aCBudW1fZmVuY2VzID09IDA6DQo+IHRo
ZSBmb3ItbG9vcCBib2R5IG5ldmVyIGV4ZWN1dGVzLCBqIHN0YXlzIGF0IDAsIGFuZCB0aGUgZmlu
YWwNCj4gYHJldHVybiArK2pgIHlpZWxkcyAxLiBUaGlzIGNvbnRyYWRpY3RzIGJvdGggdGhlIGtl
cm5lbC1kb2MgKCJSZXR1cm46DQo+IE51bWJlciBvZiB1bmlxdWUgZmVuY2VzIHJlbWFpbmluZyBp
biB0aGUgYXJyYXkiKSBhbmQgdGhlIG5hdHVyYWwNCj4gZXhwZWN0YXRpb24gdGhhdCAwIGlucHV0
IGdpdmVzIDAgb3V0cHV0Lg0KDQpHb29kIGNhdGNoLg0KDQo+IA0KPiBBbGwgaW4tdHJlZSBjYWxs
ZXJzIGN1cnJlbnRseSBmaWx0ZXIgbnVtX2ZlbmNlcyA9PSAwIGJlZm9yZSBpbnZva2luZw0KPiB0
aGlzIGhlbHBlciAoX19kbWFfZmVuY2VfdW53cmFwX21lcmdlKCkgYmFpbHMgb3V0IHZpYSB0aGUN
Cj4gYGlmIChjb3VudCA9PSAwIHx8IGNvdW50ID09IDEpYCBmYXN0IHBhdGg7IGFtZGdwdV91c2Vy
cV93YWl0XyooKQ0KPiBjYW5ub3QgcmVhY2ggdGhlIGRlZHVwIGNhbGwgd2l0aCBhIHplcm8gbG9j
YWwgY291bnQgYmVjYXVzZSB0aGUNCj4gYW1kZ3B1X3VzZXJxX3dhaXRfYWRkX2ZlbmNlKCkgaGVs
cGVyIGd1YXJhbnRlZXMgbnVtX2ZlbmNlcyBzdGF5cyBpbg0KPiBbMCwgd2FpdF9pbmZvLT5udW1f
ZmVuY2VzXSwgYW5kIHdhaXRfaW5mby0+bnVtX2ZlbmNlcyA+IDAgaXMgZW5mb3JjZWQNCj4gYXQg
dGhlIGlvY3RsIGVudHJ5KS4NCg0KVGhhdCdzIG5vdCBjb3JyZWN0LCB3YWl0X2luZm8tPm51bV9m
ZW5jZXMgaXMganVzdCB0aGUgbWF4aW11bSBhbW91bnQgb2YgZmVuY2VzIHdlIHJldHVybi4NCg0K
SXQgaXMgcGVyZmVjdGx5IHBvc3NpYmxlIHRoYXQgYW1kZ3B1IG5ldmVyIGZpbmRzIGFueSBmZW5j
ZXMgdG8gYWRkIHRvIHRoZSBhcnJheS4NCg0KPiANCj4gSG93ZXZlciwgZG1hX2ZlbmNlX2RlZHVw
X2FycmF5KCkgaXMgRVhQT1JUX1NZTUJPTF9HUEwsIHNvIGFueSBmdXR1cmUNCj4gY2FsbGVyIHRo
YXQgZm9yZ2V0cyB0byBwcmUtZmlsdGVyIHRoZSB6ZXJvIGNhc2Ugd2lsbCBnZXQgYSBtaXNsZWFk
aW5nDQo+IHJldHVybiB2YWx1ZSBvZiAxLiBEZXBlbmRpbmcgb24gaG93IHRoYXQgY2FsbGVyIHVz
ZXMgdGhlIHJlc3VsdCwgaXQNCj4gY291bGQgZGVyZWZlcmVuY2UgYW4gdW5pbml0aWFsaXplZCBm
ZW5jZSBzbG90IGluIHRoZSBhcnJheSwgc2luY2UgdGhlDQo+IGNhbGxlcidzIGFycmF5IG1heSBo
YXZlIGJlZW4gYWxsb2NhdGVkIGJ1dCBub3QgeWV0IHBvcHVsYXRlZC4NCj4gDQo+IE1ha2UgdGhl
IGNvbnRyYWN0IG1hdGNoIHRoZSBkb2N1bWVudGF0aW9uIGJ5IHJldHVybmluZyAwIGVhcmx5LiBU
aGlzDQo+IGFsc28gc2tpcHMgYW4gdW5uZWNlc3Nhcnkgc29ydCgpIGNhbGwgb24gYW4gZW1wdHkg
YXJyYXkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBCYWluZW5nIFNob3UgPHNob3ViYWluZW5nQGdt
YWlsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCg0KSSB3aWxsIGFkZCBhIENDIHN0YWJsZSBiZWZvcmUgcHVzaGluZyB0byBk
cm0tbWlzYy1maXhlcy4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQoNCj4gLS0tDQo+ICBkcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jIHwgMyArKysNCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLXVud3JhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KPiBp
bmRleCA1M2JiNDBlNzBiMjcuLjM2NGNiZjc5YWQ3MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLXVud3JhcC5jDQo+IEBAIC05Nyw2ICs5Nyw5IEBAIGludCBkbWFfZmVuY2VfZGVkdXBfYXJy
YXkoc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlcywgaW50IG51bV9mZW5jZXMpDQo+ICB7DQo+ICAg
ICAgICAgaW50IGksIGo7DQo+IA0KPiArICAgICAgIGlmICghbnVtX2ZlbmNlcykNCj4gKyAgICAg
ICAgICAgICAgIHJldHVybiAwOw0KPiArDQo+ICAgICAgICAgc29ydChmZW5jZXMsIG51bV9mZW5j
ZXMsIHNpemVvZigqZmVuY2VzKSwgZmVuY2VfY21wLCBOVUxMKTsNCj4gDQo+ICAgICAgICAgLyoN
Cj4gLS0NCj4gMi4zNC4xDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
