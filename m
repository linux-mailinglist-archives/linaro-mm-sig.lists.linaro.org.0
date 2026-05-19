Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFcVOXyJDGo1iwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 18:02:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B15CF581E3F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 18:01:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4B02401C5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 16:01:58 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010029.outbound.protection.outlook.com [40.93.198.29])
	by lists.linaro.org (Postfix) with ESMTPS id C335C3F930
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 16:01:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="A/apEJ2Q";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.198.29 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iS9S8ia92Ce/udbv2pAgh+YFUkLBoZ8ZmmkM17s5+a4CKx8JfilAj1vDHt3GOD1BdVNWc1BolV3gl6fhN1asXvdz/ttTo28s4CzWLctP5+6SWPd2BdeIvPkGZQV4qkzY69v2UDyuMBL7rnjH/EuXlsPULasU5M/eEL0owxfwsghZvYBFoGMFCaY+qFG+WwPATeieF1+a9umVc87r7/rzTyq8UHmhZygyRHK2LoNAU4ZYECXS79vtZarVeLJif2AUqKSoCxAtBlO/O5TAkdLH5vyv18nFpjT9KIiYvYjkD5v7HdY2oXhnxGSHllR3tGK3N76VC/z0Yfuw3hLKTzbfew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yJBAZMonto8kFM+S2DQQvr9Q5kCNnJ/IZCt8qwLLwLk=;
 b=KWNGZSHbM9q7POwxZMn/ZXKf5KUsAWfZUUeCN07XOpLQimyy4FzcKc6cMw2jRVpCgdZzIRP+Mu/V3FiZtnC/gpulFEFRnIhWAjAJYCPEj6aL5hQxFAadFZvjEV+LWHti5Ib10yDBMEVpXJWFVX99lD4xTMD/bR8Bs8qoiOE+PYT5N6EIcVH9NmIOiIW9Ol7DyxiFPNZaSHraFPgPmH1oyRtZNgwRMrIXrHh/EwYJ5P9LqoUP7VysiZmyTCdfqTTpJr4AS5Lu2OCttQ/jy/WxOEUVVIL4L8hQZ7tcncAz4GoplSuiRevM6jOwJieGUdLiRBaU3B1Fja/YQmJqnnUhvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yJBAZMonto8kFM+S2DQQvr9Q5kCNnJ/IZCt8qwLLwLk=;
 b=A/apEJ2QkcaqwKAZrGgPbjWS+3p5IlZfubJGRU5gfu0fYXjhpRefPhajPyMML2aEpXG4ETePEVCdKn+mRg9PnYLHM/yZXgukadWzG/8I1UeqYIO665BsTLbSmrTu+J+TpV4+i3EM6cDqrpQqP5YnRldeBBEXywfoD559albXPxs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB9529.namprd12.prod.outlook.com (2603:10b6:208:592::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.19; Tue, 19 May
 2026 16:01:04 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 16:01:04 +0000
Message-ID: <dff60378-4e47-4753-8878-feec6e1c2690@amd.com>
Date: Tue, 19 May 2026 18:00:57 +0200
User-Agent: Mozilla Thunderbird
To: Xaver Hugl <xaver.hugl@kde.org>
References: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
 <c6c91de9-a34b-4b50-a3c1-d42bf7631f8e@amd.com>
 <CAHijbEUzWZC4GAMU6YGV42gOYkrQaMZZPiwS4Erb4H1J-fh_8Q@mail.gmail.com>
 <69dcbcc1-da58-4d34-bfb0-5c8d33b75d59@amd.com>
 <CAHijbEWqc2+kSkk3i_LxB2PQ6XwUetw1UkdUdXJfdv3zgKd1kA@mail.gmail.com>
 <38551bfe-75e1-4978-b57d-adc43cebc85e@amd.com>
 <CAHijbEWHp960qvZFoK7+9ppHAqkAR7=UQhtMUccqWzGd_pFPQA@mail.gmail.com>
 <5ee6d5af-ac48-41d7-a19f-e08a3c5b7d19@amd.com>
 <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAFZQkGwmeipZnvmBkcE7KhvUSMkSE=fzLBZtiMyhv3mM04Vudg@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0268.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e8::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB9529:EE_
X-MS-Office365-Filtering-Correlation-Id: 237c7ba7-b248-4dc6-7eba-08deb5bfd437
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|22082099003|56012099003|18002099003|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: 
	ZOAjKR5rYMflddddzYJ9bdsebehaBLqcfOYfkzxzarKJ5yr8ppEH7cuMfY9PHMEeyigrzdatr3Pfin1jxDpbyO8rgUGU8OT1crCB8MF9EDm5S/dRwdRnTTebxUrjykrhL34gTk6JXpK8+teCEFVHPx3ECFp7Rdkllnfcfd740+SMMI6WyhKVbKY/6IZzi7WfCVVaigM5VPYzpeNqLFB5C2VKr668NJltH2rtivl2uZbNIDpPdo4BRTqGifF1ZOFk2uRWyHdfdY6Oru5mIVhldy+jY7dG7+pS+yFTu1wI1SvjRhbyQPx5DMxPE5ZbeqZJv8onsAWC9FeZMotU1hTC+B/K69vZtpPYABVs0rPMwOasJLKTXYDNrhdY5JsTGgbTQswdJhGbLvyKadEbeP2c0cBuhoEhFq2EZ0xiap65tEcWArYQhZi2hYPNMM/jXDEJbmADRwiSEfsPzE7yxDgZO+5h6O6azpdNSdsF5GOK0TTNkrobojr0uZ3jGx06dKA62Mdt15fxYDwlMFELtsJaW7Y5b6GxStV514qGbM+4McMPGexcmZ9aRToqkDlLbQjQLtgI48K/9srTSbMpB4AqZddEuzDh+r2RfSJfhNpv41xlIjbU9Yp/ZMFKQEIJmcfgT5UC6Qq/8MO8AUZyID1OU+30fAlaFWnRVIT6g7E4gx+g2GZC5PzcTjLlWKk8pI62
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(22082099003)(56012099003)(18002099003)(4143699003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QldpbGMzVk1tMTJCQkxseGdneE5sb1dHNVlWem9ZTk92Wk9IaXdhL2p5a2ox?=
 =?utf-8?B?T293d0ZYZVpQNTFIdDhlQndlMzNYZHNZcnhXeHhBSFpUZkMrRG53Qk1Hd1Vm?=
 =?utf-8?B?ZG8rS3N0TGVsTXcyVVpXUm9KeWhjRWE5ajBLT2ZWQUl4OFZGVG1nSWx5WE9G?=
 =?utf-8?B?ak4wcDJuUFBzNmhITUszS01jWEZZTDl6SWZVcVg2Y0laTnhka2NrQ0JEd1Fh?=
 =?utf-8?B?dGNwVGxxdk94YVQra3p2SUZLeW5YV252WHREc0NDU2RsREJVaWZGSzBicVJz?=
 =?utf-8?B?cm5KaWkxUEhYQ2c2NHRIN1Eyb3hsQXhsTHo2blFzeVBLc1BaOXBlMEhtcmV4?=
 =?utf-8?B?b3p4Ym9SY1JJK3JDYURSYzY2ZkFIeDF4akZ5ekhXN1dQV20xN2M5VFBnZW9Q?=
 =?utf-8?B?TitzOEIydFg3OWN2dFFSeE11QzJBU0dQYlJtNHFQZ3hNbDFMTlhqdUhOMkRt?=
 =?utf-8?B?TmFvRG5KMnk5V1pBU3VWdkRCdlM2RUtHM0RRcWs4a3hxWlpjUEpUSnZ2TC9t?=
 =?utf-8?B?bHkzZHJxM1E3N1BkNzNWdlA2bzRweW4rdTFmemhnZ0NuOWh6Ymk5WXBiSUph?=
 =?utf-8?B?ZE13Ukk0Q0g2UUxyaHVzTUtGSW1zUG9hUG1BVGR3MS8weTlwOHhSZG5tZE9Z?=
 =?utf-8?B?ZEV4M2V4NzdTOFdFSVRWZENqRDNicm8zWnFrcDhmRUxuSThuUmhrdzQ3a1hh?=
 =?utf-8?B?NDJmd25vaWg1c3ZSTit2Vmc3REwzSkIrK0JpSS9jV2Z1dm1TOWNpTERWbldG?=
 =?utf-8?B?WGpkNmFIV21kRjVGYVdGcjJUVmxNbWlDK3ZvOFZGK2NDeWlVN2hONFhVTG1X?=
 =?utf-8?B?Mm13TG9QWEo4UE4zbWVjalRLUXR6akkweG9OMWZralBOL1lKclRyamkxOW1q?=
 =?utf-8?B?aFhHMHVZRlAwYWM0SnpoZnMzZVY0Y1NFa0xIcGU1MTNKOUoxb0RTTDZZRVVn?=
 =?utf-8?B?Yk9zWFJiNmRMamFrY2FxZitjTWVSOXBFTWZ2Y2pBZ2pTaTJXWmUrTjJCZ1pp?=
 =?utf-8?B?NERQNjNpdG9TKzk4Z3pXZmRkUlM1OWVaUEp6R1lYNXoyVVRKUEJjSkl4TzIy?=
 =?utf-8?B?bUdzelh5RXcxTm04TWU1T3NiNTFoNEQ3NWZRUlFnc0hKM3g3ekpiYytzZE16?=
 =?utf-8?B?YWl0R09BbDMvdlJXaFZBKzFRZXJoVkswNlpNOTY1dnB0NzBDTllPWkhoQTl6?=
 =?utf-8?B?WEtCQTRPdEZIY29sQTBlYTJqZlpmbUZVcVN4MFdFZ2NCMGZoR29aVThxY1lS?=
 =?utf-8?B?Tm9TQmhRMGZJa1gvNG9RSzJBVWxCcUpMLzhPOWxrWHoxeEo5M3RtWjZlei9y?=
 =?utf-8?B?R2E0WDJlVXNOOTZXMi9hcHIvMXkxZWJVbUxPWjhjYlBCWmZlL1lYb2JpaTZo?=
 =?utf-8?B?NXRxTDRtRFhuNUdpbERRb2E3Q1d1RFB4TCtlOXZWWG9SaXJ0c2VmalZRSm1K?=
 =?utf-8?B?UUlFSE54V29hbU9qOS9sQWFQbWpCK09rWXVFQUVLUWpKeUtSSzhudWtSWkcv?=
 =?utf-8?B?NENtajBhaGNJQkR5RVRyZEJaTEgxNXNORmZrbkM0d1FyTlZtaldKZHNselJn?=
 =?utf-8?B?K1ZsRXV3amdGbys4UjIzZHZGUzN5UklDelZzbjkwUnRhdzA3YkE1MkRaeStn?=
 =?utf-8?B?KzBqSjJLMnNMUWZOTmpSVzR5blptR1V0QW90dFNmNDdLTnQ1Qm9LSzcxcGMy?=
 =?utf-8?B?TFVKTVYvckJpbU5kS3dPVGViZXF0azRjWUdBeEdxTWkzTVhoRGxUY0FPTzlS?=
 =?utf-8?B?SEZ5VVcycXI1OHc3NXpQU1o3TEF0MnJoUWxmdjJ2R1JoalZWYWdaSE5mYjN6?=
 =?utf-8?B?dVI4Uk8wcUwreWVnZktuVDN3aVJwSzU1NHN2UDhUM2hyVldNTFZpa0lqNll6?=
 =?utf-8?B?alN5b3ZwMDd2ZXIvQ3h0YzVHMVk4RVhMUzdPUXAxcmRvcjQ0K3IwUlVBY1o5?=
 =?utf-8?B?bHhrNmMwSWhabU1sUlFldjl1QU96Y0dzUFhSOVhGRVpiNnp0cWkwMm9SYzA4?=
 =?utf-8?B?SE5SK2Y3cnRGYm1qbWRJZ3BvS3lZTUtaSkJnMnpQYWJEczVmbzhWN2xaT2J5?=
 =?utf-8?B?bkhGT1ZxOTMzM1FBWG9XbCtHUlY5VHN1cjVqZ3BMTlk4QksxTUM2dmFiYW1L?=
 =?utf-8?B?aWRDSmJ3WGREUTlBWlNWUExuRm5aMWhUcGZTeUVvYmpHQU9xNlkxa3REUEsr?=
 =?utf-8?B?dHpFRitKRlgySHFsM25ka0tvSEw3YkpXcFhhZTJra3E3SjNHTU1GZElhMHdq?=
 =?utf-8?B?eHlYR1BZSHpZbDNidU5HWGVzZVc2UVRFNGFKL3hPZ0hQOXl1dDVkY1plcm8v?=
 =?utf-8?Q?Z/YG7ESBqYwUe3wcc4?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 237c7ba7-b248-4dc6-7eba-08deb5bfd437
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 16:01:04.2813
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /MCQR0oYk7unyi/NOgZJRZlkqp62PzzOK39PJzrB7+4w0ZR+bvVqN7bw9lIpGu8A
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB9529
X-Spamd-Bar: --
Message-ID-Hash: ZXVYIQAFICOMP2SLQHNP6LQGC6EG25KG
X-Message-ID-Hash: ZXVYIQAFICOMP2SLQHNP6LQGC6EG25KG
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Julian Orth <ju.orth@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZXVYIQAFICOMP2SLQHNP6LQGC6EG25KG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lwn.net,linuxfoundation.org,arndb.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,mailbox.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RSPAMD_EMAILBL_FAIL(0.00)[linaro-mm-sig.lists.linaro.org:query timed out];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: B15CF581E3F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gNS8xOS8yNiAxNzozMSwgWGF2ZXIgSHVnbCB3cm90ZToNCj4gQW0gRGkuLCAxOS4gTWFpIDIw
MjYgdW0gMTU6MjkgVWhyIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPjoNCj4+PiAxLiBUaGlzIHNlcmllcyBtYWtlcyB0aGUgYWJpbGl0eSB0byBt
YW5pcHVsYXRlIHN5bmNvYmpzIGF2YWlsYWJsZQ0KPj4+IGluZGVwZW5kZW50bHkgb2YgYXR0YWNo
ZWQgaGFyZHdhcmUuDQo+Pj4gMi4gSXQgbWFrZXMgaXQgYXZhaWxhYmxlIHVuZGVyIGEgY29uc2lz
dGVudCBwYXRoIC9kZXYvc3luY29iai4NCj4+DQo+PiBFeGFjdGx5IHRoYXQgaXMgYSBiaWcgbm8t
Z28uIFRoaXMgaGFzIHRvIGJlIHVuZGVyIC9kZXYvZHJpLg0KPiBGV0lXIHVkbWFidWYgaXMgYWxz
byB1bmRlciAvZGV2IGRpcmVjdGx5LCBidXQgSSBkb24ndCB0aGluayBhbnkNCj4gY29tcG9zaXRv
ciBkZXZlbG9wZXIgd291bGQgY29tcGxhaW4gYWJvdXQgYSBkaWZmZXJlbnQgcGF0aC4NCj4gV2hh
dCBhcmUgdGhlIHJ1bGVzIGZvciB0aGF0PyBDb3VsZCB0aGlzIHNpbXBseSBiZSBwdXQgaW4gL2Rl
di9kcmkvc3luY29iaj8NCg0KVGhlIHN5bmNvYmogYXJlIGFjdHVhbGx5IHRoZSBEUk0gc3BlY2lm
aWMgd2F5IG9mIGRvaW5nIHRoaW5ncy4gVGhlIGdlbmVyYWwga2VybmVsIHdpZGUgd2F5IGlzIHRv
IHVzZSBzeW5jIGZpbGVzIChzZWUgZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jKS4NCg0KQnV0
IHRoZXJlIGhhcyBhbHJlYWR5IGJlZW4gdG9ucyBvZiBwcm9ibGVtcyB3aXRoIHRob3NlIHN5bmMg
ZmlsZXMuIEUuZy4gdGhleSBkb2Vzbid0IHN1cHBvcnQgeW91ciB1c2UgY2FzZSBhdCBhbGwgc2lu
Y2UgdGhleSBkb24ndCBoYXZlIHdhaXQgYmVmb3JlIHN1Ym1pdCBiZWhhdmlvci4NCg0KU28gdGhl
cmUgYXJlIGFscmVhZHkgd2F5cyB0byBkbyB0aGlzLCBidXQgdGhlIExpbnV4IGtlcm5lbCBzbyBm
YXIgdG9sZCBldmVyeWJvZHkgdGhhdCB0aGlzIGlzIGZvcmJpZGRlbi4gVGhlIERSTSBzeW5jb2Jq
IHdhaXQgYmVmb3JlIHNpZ25hbCBmdW5jdGlvbmFsaXR5IGlzIG11Y2ggYmV0dGVyLCBidXQgdGhl
biBiYXNpY2FsbHkgdGhlIHNlY29uZCB0cnkgdG8gZG8gdGhpcy4NCg0KPiBUaGUgcGFydCB3aGVy
ZSB3ZSBnZXQgdGhpcyBpbmRlcGVuZGVudCBvZiBhdHRhY2hlZCBoYXJkd2FyZSBpcyBxdWl0ZQ0K
PiBpbXBvcnRhbnQgZm9yIHVzIHRob3VnaCwgc2luY2Ugd2UgY2FuJ3QganVzdCBpZ25vcmUgZXhw
bGljaXQgc3luYyBvbmNlDQo+IHRoZSBkZXZpY2Ugd2UgcHJldmlvdXNseSBpbXBvcnRlZCB0aGUg
c3luY29iaiBpbnRvIGlzIGRpc2Nvbm5lY3RlZC4NCg0KQ2FuIHlvdSBlbGFib3JhdGUgbW9yZSBv
biB0aGlzPw0KDQo+IEJ1ZmZlcnMgY2FuIGJlIGZyb20gYW55IGRldmljZSBvciBhbGxvY2F0ZWQg
aW4gc3lzdGVtIG1lbW9yeSBhbmQNCj4gYWNjZXNzIHNob3VsZCBiZSBzeW5jaHJvbml6ZWQgcHJv
cGVybHkgaW4gYWxsIGNhc2VzLg0KPiANCj4gSG93IGV4YWN0bHkgaXQncyBtYWRlIGF2YWlsYWJs
ZSBpc24ndCBhbGwgdGhhdCBjcml0aWNhbC4NCj4gDQo+Pj4gMy4gSXQgcmVtb3ZlcyB0aGUgbmVl
ZCB0byB0cmFuc2xhdGUgYmV0d2VlbiBzeW5jb2JqcyBmZHMgYW5kIGhhbmRsZXMuDQo+Pg0KPj4g
VGhhdCdzIGEgcHJldHR5IGJpZyBuby1nbyBhcyB3ZWxsLiBUaGUgZGlmZmVyZW50aWF0aW9uIGJl
dHdlZW4gRkRzIGFuZCBoYW5kbGVzIGlzIGNvbXBsZXRlbHkgaW50ZW50aW9uYWwuDQo+IENvdWxk
IHlvdSBleHBhbmQgb24gd2h5IGl0J3MgbmVlZGVkPyBGb3IgY29tcG9zaXRvcnMsIHRoZSBoYW5k
bGUgaXMNCj4ganVzdCBhbiBpbnRlcm1lZGlhcnkgdGhpbmcgd2hlbiB0cmFuc2xhdGluZyBiZXR3
ZWVuIGZpbGUgZGVzY3JpcHRvcnMuDQoNCldlbGwgd2hhdCB3ZSBjb3VsZCBkbyBpcyB0byBhZGQg
YW4gSU9DVEwgdG8gZGlyZWN0bHkgYXR0YWNoIGFuIHN5bmNvYmogZmlsZSBkZXNjcmlwdG9yIHRv
IGFuIGV2ZW50ZmQuDQoNCj4gRlRSIGZvciBtZSBhdCBsZWFzdCwgdGhpcyBwYXJ0IHdvdWxkIGJl
IG1lcmVseSBuaWNlIHRvIGhhdmUsIHNpbmNlIGl0DQo+IHNsaWdodGx5IHJlZHVjZXMgdGhlIGFt
b3VudCBvZiBpb2N0bHMgYSBjb21wb3NpdG9yIG5lZWRzIHRvIGNhbGwsIGJ1dA0KPiBpdCdzIG5v
dCBpbXBvcnRhbnQuDQo+IA0KPj4+PiBXaGF0IGFib3V0IHVzaW5nIFZHRU0gZm9yIHRoaXM/DQo+
Pj4NCj4+PiBJZiB0aGUgdmdlbSByZW5kZXIgbm9kZSB3ZXJlIG1hZGUgYXZhaWxhYmxlIHVuY29u
ZGl0aW9uYWxseSB1bmRlciwNCj4+DQo+PiBTb2Z0d2FyZSByZW5kZXJpbmcgaXMgYSBjb21wbGV0
ZSBjb3JuZXIgY2FzZSwgSSBkb24ndCB0aGluayB0aGF0IHRoaXMgd2lsbCBiZSBlbmFibGVkIGJ5
IGRlZmF1bHQuDQo+IFRoYXQgc2ltcGx5IG1ha2VzIHZnZW0gdW5zdWl0YWJsZSBmb3Igc29sdmlu
ZyB0aGUgcHJvYmxlbXMgd2UgZmFjZSBpbg0KPiBjb21wb3NpdG9ycy4NCg0KVGhpbmtpbmcgbW9y
ZSBhYm91dCBpdCB2Z2VtIGFsc28gaGFzIHRoZSBzYW1lIGlzc3VlcyBhcyBzeW5jIGZpbGUgbWVu
dGlvbmVkIGFib3ZlLiBTbyB0aGF0IGlzIHJlYWxseSBhbHNvIG5vdCBkb2FibGUuDQoNCk1heWJl
IFNpbW9uYSBvciBEYXZpZCBoYXZlIGFub3RoZXIgaWRlYS4NCg0KUmVnYXJkcywNCkNocmlzdGlh
bi4NCg0KPiANCj4gLSBYYXZlcg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
