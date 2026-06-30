Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9DX6Emd+Q2o6ZQoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 10:29:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E996E1A91
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 10:29:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=yQxkijbU;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE1BD40C2C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 08:29:25 +0000 (UTC)
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013011.outbound.protection.outlook.com [40.93.201.11])
	by lists.linaro.org (Postfix) with ESMTPS id 56751401C7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 08:29:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q0Cb4afXEQellDsTOLMNwpkqWK9y9vmBy573zoKWfwjeL/hy2mZkqWKPcKe9Ud0GLIQ11x9a24jaQjEdhzQu7fsGVQLXjyf7kRCXeL2yZVvqfdgFWDRYx5tuj48osfk0gh4sh9gU1AzydDQ/bNzrrq22UQrkADSyUpP1MpGF/fUguhoOZBp9PI2eI+EGcfV9zOI8piKM6M5Dgli2BETgApxO3LqTWT5oZ2W4Bhw1CUesufC/Od35VJph1v4mHZ69Ovrm2rSfVahQlF+umzeA7tfgpKJgdurjoxRtPPK33isbsT7sX+xakksceAz8Dwi81Zhsc8jsI/tMo4fU7xKNrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d9Hl4+nU1qMdgMJMkvS2tCJNlK2D9wEoft1eNLD/v9E=;
 b=P5xGISLqKkXE+y9CrgpPpu+q0rWIOmk+I6f+Jr8HTwqYEoNzFYL/ph9GR4rJYpVmsJ5zsPhPNHPoRkkF2FcgH5C+cWyxIGR9Gkitj4LyZjNe8NCExOdvGZr1sr0JtQT3DCSo4+C/7yrED00BwwuZP8kRqqjyjkXox0sWxRubPxd45SGs50RNuokHNZbO3WOX4d7e/EHE96PBTCOLjXKH7y8Et+mypfS8pFaBnSMhk06YY5Kz7qUPfiRkyEQk69q2iiQ33RKCpVRU/WQmzRvbIqqif8aFiZpETZ49PlH8T3hX8yTYk93d2iOxT9Fs7iKI8apZIk36C5BwVi1ODnNHPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d9Hl4+nU1qMdgMJMkvS2tCJNlK2D9wEoft1eNLD/v9E=;
 b=yQxkijbUea8rnXpG9/XciOHken/yzoSA//W35PgwnxTPX9VfxOlir6L+7kG2F0t9zkm64BHJ4a1vjqKKOui3JAMFpEyg1XfyEWRhBWf5GIYnWWgVXN3m0YYdifvu0xh+j7u15qHcUqWLr1uSgXBNz0LBv/T+voB1WqU9firTzVg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV2PR12MB6015.namprd12.prod.outlook.com (2603:10b6:408:14f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 08:29:10 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 08:29:10 +0000
Message-ID: <0a02f85f-088c-4479-9e58-3b564931bfd6@amd.com>
Date: Tue, 30 Jun 2026 10:29:05 +0200
User-Agent: Mozilla Thunderbird
To: Baineng Shou <shoubaineng@gmail.com>, sumit.semwal@linaro.org
References: <20260630060436.1527498-1-shoubaineng@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260630060436.1527498-1-shoubaineng@gmail.com>
X-ClientProxiedBy: FR4P281CA0154.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV2PR12MB6015:EE_
X-MS-Office365-Filtering-Correlation-Id: aafadf8f-df87-4ae8-4b9d-08ded681a886
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|366016|1800799024|23010399003|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 
	oiwInPi8DM24mnPM0qGkDU4t/43z3+lbP2ay5y+YauQee+LEyCzjcaVNtfGaTwpOefDCQdRRZsaSB3wZ70AcZZ0VFPr3r981YunycVHkDzoAQSlNUXhPGvv7dsIH/hMJITft2tWOQxr9ur55WcNo/bi3H/cys+E8SfFl0QSQbfqkl8ImgCCQ2800JReyJGISebGCTybTlp34yCQDjP2QGfQ8G6m3oMh0Z0Bjk3rfQO5B83lBpKe8wS3UTvtkHCC6NStMd6Qof5XrCkyJ7K3kIZ1Atf04mgTIoFVGOSoF2I4uhSH6keawElDtITzXjOddSreSj1AYnxPIbS+cWgg7QaduMzm+UoPNNwvNcL+NP03V4eXRRF0VZYAFBrq49D1N1MuwloJI2KDbl39UfC6wLiz81uvzrGqurzyAzHzS2gCXwQXnslXJ2hbYx+sOyuWtQuI7EvRGFN45kezQQmimcw2VPQ8WYMpMEhIAxexNU5iXtppnKOXneYEn5erAiLdMYy26yrjoJzv1rQCQkEpGBBaicDfgfnTgBlkL2vE5RarB/uZwAyGffojKzF0qgYna2TDbLS0+Z8HJM6XSte6SAbOlj7P+6+kiPWRw8M9aCwqsnLR4d84zUfIfYmJphCLXnC8W8u5BoDu0HJE1hsaj5xexk9smYYguu5ga9YpROx4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RjhzckJYYWw4T3JLZnhZMnQycldtaFVqUDJ3MnhEMXorK01aNnFRczRnSVpt?=
 =?utf-8?B?c2Q1VWdLdmRDeEI1U3RGY1Q0cng1QnZTT2pGWC9oZXowRGtqd043eTFFRWVC?=
 =?utf-8?B?VklWcVlxODJUZy9MTnVKWmhycVdXQ25XcDJIaHVLalZaSmVjL2FINzdMdWVp?=
 =?utf-8?B?WGNqR0UxQU5ieDhETlJteThKdUN2TkVzU3JvY3F3cjM0ZEF4L1Q4eWMrQ3Z6?=
 =?utf-8?B?anE0MnlvQjBsK0xLa0ZMLytkWlpDUWtaQ1FBTm4yc1JURDlKYVlZKzcvRHkx?=
 =?utf-8?B?TThSREp5MmUzTzlUSWtoUDh4V0tsOVVGTTVOV1dGNk9GalFRYzVDUUdhRnVU?=
 =?utf-8?B?WjFKSEY5NlE1ZnVCRmpYeGt5NFR3N3NUSzJ6bFpWMllRR0IrME82aFdpNXZM?=
 =?utf-8?B?REtCVUI0bzBEVEVmS0JoZ2N0Mkw1eUZYUlh6TDZ0U0hXNWRNZXcwM0lOdG9r?=
 =?utf-8?B?a1lqaHpyb3owcjUzM3F5djJ6T3BHdkVIMlNKb1FtV2ZrRjhrZ2ZxV0YzeUxq?=
 =?utf-8?B?aDRSRk9vZzdteXdCYm1QY3ZoMXBPbkdIYmpqTzk2dkNEa25JWGpITDB1Q25a?=
 =?utf-8?B?cFczcTFSalRYREpmRjVFUThIZGk0S2pKNmlXM09BUTlyNDJ6d0duM0UxanNp?=
 =?utf-8?B?Q3pUaTRaaUVIMjdtYWRheDJ3M2FCRmZGZmlacWNXaTJYbThOSkRYWndKMmly?=
 =?utf-8?B?NVAwNXd1SkZnYmFjL2hDWVQvRUNHYU52Mm0rTlRSdnBHa3g2SWVsaUt6SWdV?=
 =?utf-8?B?RHhBMktGMjk3VjZyNksvOTZ2ZG1NTVBReFY0U050akt6NG1WSTBEWEZCenNv?=
 =?utf-8?B?MHBrejRVTGNDT3RBOTIvcGF5WGl2WGZ2RXdTb1M1YTJaYVo5U2owdkRFaTdz?=
 =?utf-8?B?ZUJrZ1JLYlQ1ZnhMQVJWWFBrMG1tUHhobHFaeURSRWRoeDRiTXBQU1FvcFZO?=
 =?utf-8?B?a0kxNXB1Y1R5OVluaklpaFhUL0FIS3ByZkJsR2ZIZmVJVUVQN3pCMXFoaGo4?=
 =?utf-8?B?aWJmTUlTQk1HdWxoMXJSa3h4aEFVSklIU1ZjYmZ6L08rSFByZjA0d2RpYnhR?=
 =?utf-8?B?NmZEbVdiWVNWOHJUK0R2UFNDS0l6QmR1elBNOHBVaXN3N0E1VFpuc1RuVXBT?=
 =?utf-8?B?OGVNbjJaRW54WlhOTjNJOStKeTY0Rk1RYm5EKzB4cVFsOEhJZmpuT1JHeHhj?=
 =?utf-8?B?NEF1NW1zOExOU3huY3hPM3VjTlBjcEFORnlKcmNBYnEveE9Ua2cwWkplaHR1?=
 =?utf-8?B?bUxKdlpDTUk2a0pzVWw4aDlyRVdsZXJDa0FtMFZaRDVBQnZGSlhTc3ByeXdB?=
 =?utf-8?B?bldyeGtLZllMOHJWRXpTTXEzTDd4Z0dHNnEyVWZSelNOS2JPWTFQWDRIVWdr?=
 =?utf-8?B?ZWhZWE1ubjNZdmhKY0VIa2J6S0IxeCtxQURtUEpFUHFaOUNkdk54RVhkZWFk?=
 =?utf-8?B?dDBOVUVxWGxCVVMrZUt1dkhxR3RMNmlHd3VXbUVVWTlnUXRXY0JjR05lVXNk?=
 =?utf-8?B?RU1UU2xLRDlXSlJ2TFgvUE1NZzhTNG9GdE96VkNKUERsdndCQ09VMmpHR1dM?=
 =?utf-8?B?VE5MMmFxVVlNUzVzN1FXRG5Hc09IbmhIcTdUdUdYTXdiMTBkY1FJeXhCUHA0?=
 =?utf-8?B?dktON0F5ZlE1Q2tEakVGTUxvNVZHeEpTMXNIYURGWlViR1ZyQTJhS2ZNUllS?=
 =?utf-8?B?UHRSZEltQis2UGF5ZTlIL3lUSDFBdkE2TWszQlp6dGxoT0dOd1IyRWNka2xV?=
 =?utf-8?B?bmxYeWFJaWxTK2JYYy9TQ1dFeGc4VVR1MDVNTVNtRmxIYkhqUXQ3cVFEMG1x?=
 =?utf-8?B?a2lhUXV0NFJOdnN3RWFsSG1STDJTRk9acytFMVpjcFN4dXMyTFlHOGJnTkFm?=
 =?utf-8?B?andrMFhvaW5jV2s4RmRmalBNUVphaUZQVVRDcDVsaEhxWTZKQmRCaEQxRDlS?=
 =?utf-8?B?OFZTakJuWW45NVhUYTZERkl6TmFRWmZ2VnNaSHVmSnlSMTl6NGNENFlqK2V0?=
 =?utf-8?B?a1htS2tsazg5Q0RneldsLzUzREIraGduajB1eGo3OWg1aXpsSXN3K2w0eEQx?=
 =?utf-8?B?NnAxcWt1bG14cGJtQ2ltOExxQ3kwczkzQkpNS3UyNXoyZDFIekgvanVXbGYz?=
 =?utf-8?B?WHkycDN5NHBzUWtSZG1UT3g4aTd4cFo5MFZ4clpyQzRUSXJnN01TZ0x0ckFw?=
 =?utf-8?B?cThCUEJlNUdWQmR1cmYrbVNuMWFRZW9ud1N6WEdvUnhDSEtYOUlnNDlKdm1T?=
 =?utf-8?B?OGRjWGZsQ0pUSEVPcW41Q2ExMVhIWTViSnlGaUkrQXZwbHJQWnI2d1hJMk9j?=
 =?utf-8?Q?wC9iASiJBISNDxcWhZ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aafadf8f-df87-4ae8-4b9d-08ded681a886
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 08:29:10.2697
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BDlKV9s51psxH7MVxldz3FOCOO+7Gt4m/ts3Z2YDmgr8zs8XFueBMchb2jiLbZXk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB6015
X-Spamd-Bar: ----
Message-ID-Hash: 5EI6RKH6IMXVE5HBQ2BXZ5LPZJS3Z46H
X-Message-ID-Hash: 5EI6RKH6IMXVE5HBQ2BXZ5LPZJS3Z46H
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, phasta@kernel.org, tursulin@ursulin.net, akash.goel@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/test: add KUnit case for dma_fence_dedup_array() empty input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5EI6RKH6IMXVE5HBQ2BXZ5LPZJS3Z46H/>
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
	FORGED_RECIPIENTS(0.00)[m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:phasta@kernel.org,m:tursulin@ursulin.net,m:akash.goel@arm.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,amd.com:mid,amd.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B8E996E1A91

T24gNi8zMC8yNiAwODowNCwgQmFpbmVuZyBTaG91IHdyb3RlOg0KPiBBZGQgYSBLVW5pdCBjYXNl
IHZlcmlmeWluZyB0aGF0IGRtYV9mZW5jZV9kZWR1cF9hcnJheSgpIHJldHVybnMgMCwNCj4gbm90
IDEsIHdoZW4gY2FsbGVkIHdpdGggbnVtX2ZlbmNlcyA9PSAwLiBUaGlzIGxvY2tzIGRvd24gdGhl
DQo+IGNvbnRyYWN0IGRvY3VtZW50ZWQgaW4gdGhlIGtlcm5lbC1kb2MgYW5kIHByZXZlbnRzIGEg
cmVncmVzc2lvbg0KPiBvZiBjb21taXQgNzdhOTI5ODc0MWY4ICgiZG1hLWZlbmNlOiBNYWtlIGRt
YV9mZW5jZV9kZWR1cF9hcnJheSgpDQo+IHJvYnVzdCBhZ2FpbnN0IDAtY291bnQgaW5wdXQiKS4N
Cj4gDQo+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBCYWluZW5nIFNob3UgPHNob3ViYWluZW5nQGdtYWls
LmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCg0KR29pbmcgdG8gcHVzaCB0aGlzIHRvIGRybS1taXNjLW5leHQgbGF0ZXIgdG9k
YXkuIEkgYWxzbyBwaW5nZWQgb3VyIGludGVybiB0byB3cml0ZSBhIGNsZWFudXAgcGF0Y2ggd2hp
YyBjb25zaXN0ZW50bHkgdXNlIHNpemVfdCBmb3IgdGhlIG51bWJlciBvZiBhcnJheSBlbGVtZW50
cyBpbiB0aGUgY29kZS4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+IC0tLQ0KPiAgZHJpdmVy
cy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYyB8IDEwICsrKysrKysrKysNCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVu
Y2UtdW53cmFwLmMNCj4gaW5kZXggNGU3ZWUyNTM3MmJhLi43MmRlYTYwOTFkNTggMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtdW53cmFwLmMNCj4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS11bndyYXAuYw0KPiBAQCAtMzcwLDYgKzM3MCwxNSBA
QCBzdGF0aWMgdm9pZCB0ZXN0X3Vud3JhcF9tZXJnZV9zZXFubyhzdHJ1Y3Qga3VuaXQgKnRlc3Qp
DQo+ICAJZG1hX2ZlbmNlX3B1dChmMSk7DQo+ICB9DQo+ICANCj4gK3N0YXRpYyB2b2lkIHRlc3Rf
ZGVkdXBfZW1wdHkoc3RydWN0IGt1bml0ICp0ZXN0KQ0KPiArew0KPiArCXN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlWzFdID0geyBOVUxMIH07DQo+ICsJaW50IHJldDsNCj4gKw0KPiArCXJldCA9IGRt
YV9mZW5jZV9kZWR1cF9hcnJheShmZW5jZSwgMCk7DQo+ICsJS1VOSVRfRVhQRUNUX0VRKHRlc3Qs
IHJldCwgMCk7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyB2b2lkIHRlc3RfdW53cmFwX21lcmdlX29y
ZGVyKHN0cnVjdCBrdW5pdCAqdGVzdCkNCj4gIHsNCj4gIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwgKmYxLCAqZjIsICphMSwgKmEyLCAqYzEsICpjMjsNCj4gQEAgLTU5NSw2ICs2MDQsNyBAQCBz
dGF0aWMgc3RydWN0IGt1bml0X2Nhc2UgZG1hX2ZlbmNlX3Vud3JhcF9jYXNlc1tdID0gew0KPiAg
CUtVTklUX0NBU0UodGVzdF91bndyYXBfbWVyZ2Vfb3JkZXIpLA0KPiAgCUtVTklUX0NBU0UodGVz
dF91bndyYXBfbWVyZ2VfY29tcGxleCksDQo+ICAJS1VOSVRfQ0FTRSh0ZXN0X3Vud3JhcF9tZXJn
ZV9jb21wbGV4X3NlcW5vKSwNCj4gKwlLVU5JVF9DQVNFKHRlc3RfZGVkdXBfZW1wdHkpLA0KPiAg
CXt9DQo+ICB9Ow0KPiAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
