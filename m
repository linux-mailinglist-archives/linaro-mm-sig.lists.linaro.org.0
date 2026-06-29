Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qcguFFdAQmr02gkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 11:52:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C596D87A7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 11:52:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=bPETxYt4;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E86C740A7A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 09:52:21 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013026.outbound.protection.outlook.com [40.93.196.26])
	by lists.linaro.org (Postfix) with ESMTPS id A8DF53F70E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 09:52:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rg9XRbBSbftOASUoAhys+pzatDJzjvSbCf7wEFMjDGoM+eyV29JVZe6tMKGyX9FRffR8E+Q7gphC/h2W5q4JICBSydGUnzUhBOKlTdmjF/WeBQ5gO/Cw6OIixNH2Ndanx/wWpiHEyIgAwwXYo/uXwQOkfaTBp1YMaUJDyWjQCUDn0ex6iVQmwLKMYzJ5No47SQ2xXJ1lrajw8UqW+zNDliMOSXOzOzjWF0susSPrptPCTDUTh9Tu5EKy8szmkJWEhDynsjmCYbKCW1LntdIkIViIMkbsNutJQPSi4TKhAhOIxUfmZZP+26gJ0WZP3/lfAZouy8TnG2S3Fk6uIfgXVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ff4+wMCnhJZStZXc1KtF/zH7gL4Z3N7SOuVbLPJ7Hs0=;
 b=V4JLBCPvfRHmvM1ZEg7Vpvm767eom0O0r54l3ZiIlklD/kdqFt0A8SefN4MUKbpZ+FvQ0zivnQoxCGYDrhBjVCrZQt5XxxuPzv9fOEFCCj+Xt/XDIordghCQpM738XZJvW4bsYT1FicasHJ30VmqPru80Hif+Kaxmcy0cP4zLiqQYtwUKGF7sGPE/sydwhQ8EjJFlpglbDf1CmgYvKVz9iaGJIHfF3ljLQ7FhNAHY4FRlGdWfJdzQ9hdF4Vo/jsTmWQjodIIL1aSwkoY8ix5syjwmP0h4A+tE1W6GYULbaP1+vYU2oXi3dc/LvGCbe30VSZMxtJGoVYMhXq1Fab4QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ff4+wMCnhJZStZXc1KtF/zH7gL4Z3N7SOuVbLPJ7Hs0=;
 b=bPETxYt4xSxxRU/Ufh2PO1L50fRgKKCih6DKQAa0TFlKeKd4y9sh988/Hve15HmdmHJxvZBWOt9VFYzQ1F+Yct0gV7cdZKlhledTJr7eILelT88fI1Y7e7yvebbpdh3TlvdVB+CiL/P12utnw/ZhgDQeRFzG4hI+50Edh3e2SuM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CYYPR12MB8730.namprd12.prod.outlook.com (2603:10b6:930:c1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 09:52:08 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 09:52:08 +0000
Message-ID: <349ada65-c788-4c5e-9992-0278cf1382dd@amd.com>
Date: Mon, 29 Jun 2026 11:52:01 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Baineng Shou <shoubaineng@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20260629031346.3875683-1-shoubaineng@gmail.com>
 <becd29b5-9e40-4104-b6c9-3d91e2ddddff@amd.com>
 <058f4bb261e408cf17deca9ff7354460675eacbf.camel@mailbox.org>
 <66344c20-ea97-4dfa-ac42-c9d6e061eb95@amd.com>
 <7dc78d8ae9903c215ec492ee39b27cc504da8307.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <7dc78d8ae9903c215ec492ee39b27cc504da8307.camel@mailbox.org>
X-ClientProxiedBy: BL1PR13CA0366.namprd13.prod.outlook.com
 (2603:10b6:208:2c0::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CYYPR12MB8730:EE_
X-MS-Office365-Filtering-Correlation-Id: 445fa15c-25e2-40d0-ad25-08ded5c41534
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|366016|23010399003|7416014|4143699003|11063799006|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info: 
	54tqqNH+USogJWUkxwKsnzZPdq/Qfuxw4L0yJO9FM8f5k7Ed9gWImoGTc1r0nxjOvLp5m8aPaB051cc2EXZgLDgITw7Mrw1R9U1V5eCYkq0V4eeYU2D1gyNN/451qPJjn+Ov06i5OM6K/rKfkY3x9owg8ysooXAbbbv5K4G1QHYPNA3OuwESQ8Zy07nNB3yGZNfW0idcy0UdqiT658RAIrH6CGD++XRSDvg2wW0spM2JfP0Mi+iLOQgmDVZuuqTCxJ+d2x/TeZJiVndE58nNd0P8P4P4Z5ZhsEsW//chCy/kZmmza0PkIHiXS5oOfO1aWRbv+5Mu7/ZPuLowV2kgOjqTrKxuWFoekEqR8iZs9S10JJ4WxzKy2FLBFHWKV0uFKViJObx7mLKrCWJmOzV5PiT4zm3t0D6GkvsuP5sEiBU90olj/08yPQ+HEv04AGCXPYr7HQ06m+udcpPUYApv8N8kARx2TLoHzVO43bf14wXhaEAvm/wmu7gE2k9inzhyqawJ1YERN2Pl6CzMiGKswpc82pcvqA6zJmAJzFqIUMOPcBN9sV9Fj8OlBb7w5yqrIcQLbncNBLc8shJrdgnNLkPJ6Hn6jJXnNlUJhs2FiT9O3yk4JtTMFCG71aevVfgn44NKUqEZC/Cot9kdB+17LjjEbVpn/K4YUUkg+NrMWHs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(7416014)(4143699003)(11063799006)(18002099003)(22082099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MVhlbWh5SExWNlNaRGhGREh0MEg2Sjg0V3pMWW0rMkZtSk5Lb0JnbWE5ejBh?=
 =?utf-8?B?VUYvODNkTEVQd05aTk9KSGowV3ZJemhXSThwSTBaQ1ZVdllhWDlDRGFXU2Fm?=
 =?utf-8?B?Ymo4QWRQNlBhVk5HQ2ZTV2Y5dTZ6dE5IaEp2d2dzamZELzNLblJGdm9rYmMx?=
 =?utf-8?B?Y3dYMm11NUNMSExlZGM0Mm40REw1b3laUEw5MWlsMnM4UWFpSTFieVE0UmZ0?=
 =?utf-8?B?YmpCQ0NzR2RucHN0RUhId3AzVGVwcEd4UDRxVWlkRERrUTUvamQxRjVQRFNy?=
 =?utf-8?B?RWtoS1V2QXBDNmQrV3pkeVI5VXYxQ3RHaUtPQ3JMS1JFclNsc2l1NEZTVFZo?=
 =?utf-8?B?TW5TZUpvZkxOUFg3M1NYcXg1Z2VtcjhYYmVLRG5KYXhsTnF0aXV0TmR5WXZX?=
 =?utf-8?B?V2g3MkF3d3Q3MVltUERaTmdXSzRzbHJyejh1d1ZMdjRjYys5OVJDQjVzaVhl?=
 =?utf-8?B?L0E0MXpMQTZnOGc5aS93WGwzMi9lZUNQTHRhY2w3N1hlQUtwc3h0YXpLM3dX?=
 =?utf-8?B?U3lTM2lrWUJkQWx1WjhPcFFNSGVGQkVPbUhuUjRiNWVSSXdod082VWZVV0xw?=
 =?utf-8?B?ZjFFaXdNTUlRZy9sTFZ5VmlQN2tyMi95YUEyMmkwSmtwbElQeUwybVh0czhx?=
 =?utf-8?B?MkJtWTVyNkZHbi82Zm9qa0I0aWplQ2MvYWJOZFhHeDcvOEJFWEVraDBlbXhH?=
 =?utf-8?B?VFM1N0pmK09CeXVPUStHQXh3V2c5OW9hQ0NCaWsxV3hXVEFtV2pOOE5zdTFI?=
 =?utf-8?B?bXN5WlZKVmdZVWRVMnJkdFlKdHVHTUE2c0dpSTZjaHVYQUNiTi9ZSk9QbW5n?=
 =?utf-8?B?LzR6bTVjYklhdzc3SjhIUk5oNEF3ekJrY2pVOEY5dkMyQWlNcmlXNnhQRVNJ?=
 =?utf-8?B?TkFwWkZMMGVhMTJoMGZnZk1sVTJnQVFDem85eFUwSmdiTzY5elF0b1VDUFNh?=
 =?utf-8?B?QU1aUXVDeEhlZFEySnNrNHhZNVhwbDN4VDVaVCtUMHpDdjdXN0lJQjE3eTEw?=
 =?utf-8?B?dlZVVUg3SUN2dmE3WlFOQ0RZbElmWlVBZ0pUMmF3bUduWkovK1RzcWZKVnh2?=
 =?utf-8?B?THlGWGRSb25DMHVBTFRHTHd0VndvM09JYnFqY1pjbzJpRUExQWJJNGFyVTNJ?=
 =?utf-8?B?M05WN1NsZmxLVmdBNHR6bTE5RGMzM2paT1hxS3luN3V0Yit1bHJjM0YzOWh3?=
 =?utf-8?B?TGhLQWRJQU9OVUlSdGVETnhzVHhMcjFKQ1VxZUNpUnZWZ1V0NldPakUxUllZ?=
 =?utf-8?B?QnVLclNrTVFETm56Y1NabTcrZEFSR3Y3REZhdU5obURjOHI1UUNtYnpHelFS?=
 =?utf-8?B?dXVyRXNxcFNFa3pzTjYxYVdJcXNabndZU1pYbllBbCsyWVVNbEhtZVRXdllI?=
 =?utf-8?B?TER5M3lLVlM1emVvbzhQaVphck5hbFJlZ0FVcVo1amtaSi9QL1JQa0RzNkV2?=
 =?utf-8?B?cHM4ME0rWVRmS3NHampyYUI4Sjk4K1hiM3creTVpMjE5amlyd00xVUkzdFJZ?=
 =?utf-8?B?S2kwb3k5QlFzcXRaaGd5RWhyT2pqeFFaTENTam5OUTYyRTJlM1ZGdnJRMmlJ?=
 =?utf-8?B?ampqRnp2MG9IdEYxcUR5ZFU1ZnU3VHZNa2tEUUs1cllveHZVNzMvQmdxSSts?=
 =?utf-8?B?WUppT1oweitvdTZybkdORGR5SzcwSy9QUTJmV1p0dE1BMjNHVWkzeU51ZkJk?=
 =?utf-8?B?akRnZFc1UFEwWnJ6VzI0VFpTc3h0ZHZhMlBwY3Z5dVZjSXZwOW43QS96NXY5?=
 =?utf-8?B?ZlFGdzd2THcycDJLd2E2cnErZUFrWUJvUEw0b1Y3TUYxMVhjMWNYK2luRjhH?=
 =?utf-8?B?NkJBMjFscjdicjdCNjY1UTZKZTBNMW4rSDhHMFpQMDBIaDhkdUhwbzdhWFV3?=
 =?utf-8?B?TU5rZ2hSeUVtTklQNVMwclhlVlV6VVNaSElrUVdsUlloc21iUW4xWTQ3N3o0?=
 =?utf-8?B?dkdtME5DVTQ3WlBpZUpia21LWUlSTXZramdjaXpFSGRIV2JON0JDZE5ZK3Jx?=
 =?utf-8?B?Ty9QNjY2YnBYTEJXZXJKbnZBcklFbnNSbElzWjEwZnBCRjBFNXVhclU1K1F4?=
 =?utf-8?B?Um1hbGxrR2RCaitIenB2eVBlRmNmRXpHTHFtdlR0aFA3b2xScFJ5cVptYmRu?=
 =?utf-8?B?dkdsRGVTNnlEUUxodGJaUlRraU4xVDR4NW9lVGFUOWt3VFZ4dXE0c2JvdkRy?=
 =?utf-8?B?UnN0N2QxN0JjUjBhak9pYkV6b3hVMlZiRmdZTDY2T1BaT0JqSFhEYjMvMjg0?=
 =?utf-8?B?WlVlK2lBWnRDR3l0V1VZbk1qdG5FRHo5VXU1ZThyVElQZWFUSXVjQ3FvaUFD?=
 =?utf-8?Q?KiQVSCjXSVRrTpU7Mq?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 445fa15c-25e2-40d0-ad25-08ded5c41534
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 09:52:08.1698
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yCccjJSRH7X/ts4CJKsrsxUEMCv/LpSEw5mRS0Y9Cq1FNfChoqLDY3Gr94Eu7Taq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR12MB8730
X-Spamd-Bar: ----
Message-ID-Hash: 2FIUDLGCPWCWJFEIDFYB5EGFC6RSSXET
X-Message-ID-Hash: 2FIUDLGCPWCWJFEIDFYB5EGFC6RSSXET
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Akash Goel <akash.goel@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Make dma_fence_dedup_array() robust against 0-count input
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2FIUDLGCPWCWJFEIDFYB5EGFC6RSSXET/>
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	URIBL_MULTI_FAIL(0.00)[linaro.org:server fail,lists.linaro.org:server fail,amd.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:tursulin@ursulin.net,m:akash.goel@arm.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D7C596D87A7

T24gNi8yOS8yNiAxMTowNiwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBPbiBNb24sIDIwMjYt
MDYtMjkgYXQgMTA6NTIgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBPbiA2LzI5
LzI2IDEwOjQ5LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+Pj4+DQo+Pj4+IEkgd2lsbCBhZGQg
YSBDQyBzdGFibGUgYmVmb3JlIHB1c2hpbmcgdG8gZHJtLW1pc2MtZml4ZXMuDQo+Pj4NCj4+PiBO
byBvZmZlbnNlIGludGVuZGVkIG9yIHRha2VuLCBidXQgZG9uJ3QgdGhlIERSTSBydWxlcyBzYXkg
dGhhdCB0aGluZ3MNCj4+PiBkbyBub3QgZ2V0IG1lcmdlZCB3aGlsZSB0aGVyZSBhcmUgb3V0c3Rh
bmRpbmcgY29uY2VybnMgb3Igc2lnbmlmaWNhbnQNCj4+PiBwb2ludHMgaW4gcmV2aWV3IGZlZWRi
YWNrPw0KPj4NCj4+IEkgaGF2ZW4ndCBzZWVuIHRoYXQgYmVmb3JlIHdyaXRpbmcgdGhlIHJlc3Bv
bnNlLg0KPj4NCj4+IEkgdXN1YWxseSBnbyBvdmVyIG15IG1haWxzIHRpbGwgdGhlIGVuZCBhbmQg
d2FpdCBhIGNvdXBsZSBvZiBob3VycyBiZWZvcmUgcHVzaGluZyBhbnl0aGluZy4NCj4+DQo+Pj4g
V2hhdCBhYm91dCBteSBjb21tZW50cz8NCj4+DQo+PiBMb29rcyB2YWxpZCB0byBtZSBhcyB3ZWxs
LCBidXQgSSB0aGluayB0aGF0IGlzIGEgc2VwYXJhdGUgaXNzdWUuDQo+IA0KPiBCdXQgaWYgd2Ug
a2VlcCBpdCBhbiBpbnRlZ2VyIGZvciBub3csIGFuZCBpZiB0aGF0IGNoZWNrIGlzIGFkZGVkLCBh
bmQNCj4gaXQgbW9zdCBjZXJ0YWlubHkgc2hvdWxkIGFsc28gY2F0Y2ggbmVnYXRpdmUgaW50ZWdl
cnMsIHNob3VsZG4ndCBpdD8NCg0KTWF5YmUgd2l0aCBhIFdBUk5fT04oKSwgYnV0IG5vdCBhcyBy
ZWd1bGFyIGNvZGUgcGF0aC4NCg0KVGhlIHRoaW5nIGlzIEkgdGhpbmsgd2UgbmVlZCB0byBiYWNr
cG9ydCB0aGlzIGZpeCB0byBzdGFibGUga2VybmVscywgYnV0IHN3aXRjaGluZyBmcm9tIHNpZ25l
ZCB0byB1bnNpZ25lZCBpcyBvbmx5IGEgbWlub3IgY2xlYW51cCB3aGVuIG5vIHJlYWwgdXNlcnMg
YXJlIGN1cnJlbnRseSBhZmZlY3RlZC4NCg0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBQLg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
