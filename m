Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hfWeIxzzM2qSJgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 15:31:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F07E96A08CC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 15:31:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=ZEVc6j22;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FEB040ABF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2026 13:31:07 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012016.outbound.protection.outlook.com [40.93.195.16])
	by lists.linaro.org (Postfix) with ESMTPS id 78EAC3F853
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 13:30:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ebt+n/zutTVeweY3QZFGmOCm83xVOGGZsr51aRJlXH6dr/WjqeQDoRAWuPKQ1oymFnirXjaHNFtBn6oFIBqNiRyMRkjpQ1eEDa1WiJ9XGDFsymgFhAwwwF7y+WH0i7llPUV5VOHxZqqV/M8s8BQ7iN7BWInZt/QxLlogWPwh7NQAoK39kTrpF4m6rFDWCbi2L9I49eUkpOUSJiW+nMvEhy2U5Y8ij4gsuW9HrSRAJtlGWsCVJcWOA9njkXwmUY7teULaqUL2qCl0yar5do5fUvSF2zBotc77P9NGH5I1zp1mFH4d87RpcUMS7v7hGOoKIy47qInk7mS8qMyeali9RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=523uGqr3hkd6Edk7MI8EhXOuaEmOd/y4Vwb14kHf+dc=;
 b=Lv9tyhRhiJXUpZ71t1Pnx2ScDSmcmUT2q7K4fWDakMMZHYxCBwll+LtgZhBHZK4Q5Qx9qD1fueECOqIN97rt6NxsVOLBtfu+JwSXfofdj3rIT3Ne/pSNkdJWyQcubcGwZgiH0gar4JE1O+fG5IFc1qqiGkwnNV4xCmwXsd3R/puJ/NkS84Qhua6dPonsxxsERcTs25N/ks20zP+JOc8IDtrJe0Ga7z3wosDMXa3u3JAIHH5eVr0SpokTsuLcJYihdyUPjo7ucYunLKlXyOHRTWbYkR8JTnO6HIpzaq+TH656IPVWYKJT2Chw1MjOdCAl02NhkXcRSZnamD+I6DE10A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=523uGqr3hkd6Edk7MI8EhXOuaEmOd/y4Vwb14kHf+dc=;
 b=ZEVc6j22sdgRv34/ZGNdnbpPUJK7SvsVt3YR2XyTZemp4dL04+48UtF7ruNHNnr04RiXILQ2vm8EEZTmoZ9XrQi0Z0Yi35VtUMm46Neg8VCo9zcBsTwe2EdJTvYhYlUSnP5gRGFMrqPgiZGidHJvU6KGa1SOOkPD4sOr+N/K1Fw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA0PR12MB8421.namprd12.prod.outlook.com (2603:10b6:208:40f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.12; Thu, 18 Jun
 2026 13:30:44 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 13:30:44 +0000
Message-ID: <923343e7-1f11-4e29-8278-917fc65c75eb@amd.com>
Date: Thu, 18 Jun 2026 15:30:35 +0200
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <phasta@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexandre Courbot <acourbot@nvidia.com>,
 Asahi Lina <lina+kernel@asahilina.net>, Matthew Maurer <mmaurer@google.com>,
 Lorenzo Stoakes <ljs@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>,
 Burak Emir <bqe@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>,
 Krishna Ketan Rai <prafulrai522@gmail.com>,
 Tamir Duberstein <tamird@kernel.org>, =?UTF-8?Q?Onur_=C3=96zkan?=
 <work@onurozkan.dev>, Eliot Courtney <ecourtney@nvidia.com>,
 Mirko Adzic <adzicmirko97@gmail.com>,
 Alistair Francis <alistair.francis@wdc.com>,
 Shankari Anand <shankari.ak0208@gmail.com>
References: <20260618132628.3811068-2-phasta@kernel.org>
 <20260618132628.3811068-6-phasta@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260618132628.3811068-6-phasta@kernel.org>
X-ClientProxiedBy: MN2PR11CA0008.namprd11.prod.outlook.com
 (2603:10b6:208:23b::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA0PR12MB8421:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a7e656c-616d-4148-f15a-08decd3dcc8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|23010399003|1800799024|921020|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 
	uqAV7HxmCbtEYyqkEhbggntUNNNEraKL1SaptGU1I5RZ3sy+uP5rOeaGL3H3M/7bw5+qqHzrElwtHIqCd2UaUMzRoLBUupKiE8CxV8S7d2vWPoDM7Sq/XWhoCxeAvuYud+aOhAAUcwozNf1CsIM2W+qaKeXtlVeUQx2Y1CBYTQRAtQWXTh2NJzgoHsiXzP8juflTyM0aVKS/JTophOAYZ22mrh1HGR5UnfO5pIj8SZcnoh9sKhQwu4xX1e3iS7Vj22heT0FzLGLv5HI6iGGEFVx/owzcAral4mTgrdh/uQ3/lSNARPFkuiHUXKL4S3j80yhQdUT/Sl+1OuCct6KVJN5Nj8y8KjCY8MPzKyZhlcyLk2FYpP+85MDPzIndfx+2LAGiOg5K/wF87RyV9wDB3x6sZwWE8lneOpl7/SB++DVqYWrlIaqG2ugVtY/TywugL5Zga6vlWDDA6K6ZeUrzOWUKfa0SHk0aN5kVCgB7bs2bUvmSxEtRoE5Kp3y65Y3i3+LXOXEPnO3dKEI+Pi4xX0bu0pvQqrEdcQXozcod5w8xQIOfRcgkeri3n3BMMBGkpK3oUDsgWTiu0c5OF1Ina9rFOTbLJ9yF++peyP/FuzqVCsJB/phks6Y4Wlg93SZ+iQJ5m/MLakHtvzCTF2U+qMwZpBfjKRWkQfwamJWIeohUeWm84KWfP5k/ZmOjUEOqQ++9lc/tqKMz+sMH9Tiq/OchZd8MgDfqj2ZWEjLufz0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(23010399003)(1800799024)(921020)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QUdET1lhOGExbkI1YnVJWVIyV0NOdGtuVzdDOC93dUhtS0NRSmpFMDZsM0Fr?=
 =?utf-8?B?QXMzUXRla09MNzR5ZXR5RkRPYzFjdXc3Y2lqdmRSbS9wdUsxY1FHRmR2amtU?=
 =?utf-8?B?NTBYM1c0SDhaZHlrWXp6WFZWeVY1a3V1ME5KeDBxVFZGYW9Fb21OazRtME1K?=
 =?utf-8?B?eTVFcWptUW9XNzJhdFh0VXpJLzZIZEsyb2pkZ2FHaXBuM0NEMlo3TUhvbHhM?=
 =?utf-8?B?aU5ad3B0cGVWVWUrRnZ1eHFhWktvZ3MxVkJHUlRNRzdVdElERlBSMUpoc0RQ?=
 =?utf-8?B?bmdWWlBIUndFNUFvRnAzMUR6R1V3LzRRd09OZUo5UGlvangrNU1Rb3ZOYUl4?=
 =?utf-8?B?Qy9YcjlYalBhNnlrOW53Y0xYcnZEdzF6YXY2VE5Tb1JoTnUxeVptazBhcDRv?=
 =?utf-8?B?ZHhMaTAxblZmWnM5TjljNjRsM3RBampiRkc2blhOcHRPaHMzbHBab3BPTWpT?=
 =?utf-8?B?T2ZrNGVtSmx1R2EwQjBMbjE1ekxXYmF6UURnQThrUGNaUDQvcURSUFJRaEts?=
 =?utf-8?B?dENweWxXaU9sdmI2MDUyVW5XSitrcG1TSmlOMUF2NS83RnZvVEFldnRXN2pW?=
 =?utf-8?B?b1pzSTRBZGFDM3dpb2U2aE9EYUVzSmt2ZWpxOHYwTHZtOFJ5R3RMMU1MWTlD?=
 =?utf-8?B?d2pnY2w3NDVKNklUZmQwclpuUjVocVZiU0dGS3VydEdoQ1JMRXhIVURUQ08x?=
 =?utf-8?B?REFrZHJkODNieXFUL2pUZ2dWS1F6SVNrSWcxUlNQYjVzaG1GZTFjelIxY2E2?=
 =?utf-8?B?NUxtam1WLzRKc3E2TVBVV1p2NHJ1Vll6V1lFVW5rSUVEcHpCNWNDZUpRYm0y?=
 =?utf-8?B?NCtCWXNNWWNuMnNmd1NHNW9JM3c2NHRXWGlsNzZFQUw1WTlIN0owRmFGeXV0?=
 =?utf-8?B?VXFBbEtSN1ZTWEhDZlBoNkZxNEFTSVRvUVpYTGpVQjVXQWYxUHpIREJPWU1F?=
 =?utf-8?B?dHZDU0lSZkFBUjQ2NEdKbVVtbHYrRXVOc2hMT2tDOTRtWm1ucHB3Y1QyL2RJ?=
 =?utf-8?B?T2dkQ040RFBudEw2V2s2WTQ1N0pKdTZUK1puT2ZnbTY2M2xsbnArZmsreWRT?=
 =?utf-8?B?Q2pHZXNnVlNvUDFWRWNBK2dlS3pSQVgySTBQUit2NVhhWnA0dFVTR0RKTE9i?=
 =?utf-8?B?bU1RbjlCaTh3VHF5N3gwTDNmek56MkxMODBsSGVsNXF0K2d4aHlaVnJ4N0lG?=
 =?utf-8?B?ZmR1MmwwaUdVYVFiaGtpY0RVTEFNNFBqTVJ2cTArUGdJOVJoZVROQk5iY0pN?=
 =?utf-8?B?UmxlVHBvdjVkazBEcytmQWpYRkhhQkZLVDZEMGlQYVRqNjRPV2lFNEJxRFhU?=
 =?utf-8?B?b2tNYnpBVzVaa0RKQUJLOGZWWTJsWlUyT0E0ajVRS2ZtRWIwYmpLbm4xTm5P?=
 =?utf-8?B?ZEYvY2Z5dTUxRy9iOC82SkZGUGdXZEFMclExcU53SHdCM2JKdkExdFFIRmpE?=
 =?utf-8?B?cDFiQURPdjMwOVRLczZHbWYzQVJ4NHViaFZiN25uRWFEQkN4ZytWejNZcGJh?=
 =?utf-8?B?dUdZSGtEM0NKZ21GSUlsVmZaMmlYam0xd1hUNjVCQWVZZ3RLS2h5N21talU0?=
 =?utf-8?B?Wk82OWY1RlU3ejFDZnB2UFkzMWZDb2pwK1cwMC9kRkRoVnRHRzhYWGUvU2ZT?=
 =?utf-8?B?N0xDbGRhUjMxK2R3Q2tVWGhqc09ubU92Vlhoelk4Nk10NmgzK3diNm9sY1I1?=
 =?utf-8?B?cGpUcUR5MWpwL1pQNXRmUVZZYTNwRW9ibzdwc1c3YjZ2VDF5b3g1d2dQYTYv?=
 =?utf-8?B?eGQ3UXd3RFRJNjRLWUx3U0cyNEYzNFd4d3ZHb0F3Z252bjE1ZkM3Y1FyUU1v?=
 =?utf-8?B?a1Mzb3Q5ZVc3R2U5WFpFMFlZajU0U3A2ZXVrd28xbStMSm1SMUV1am9sa3J2?=
 =?utf-8?B?OTNkN1lpeUZDeXFma21veUd3TmZUM2E0N1hPV0ZHSDU3R0Z5blB6TFl3VUln?=
 =?utf-8?B?SDZRSHJiV2Q5dStNNC9mY1BIZTNCZXBuYWloVmNTa3NRWk5wVEE2T1NSb0tj?=
 =?utf-8?B?M2Q2UnErVDhoYVZZenEyTVFkNzhteE9IM2syQUZtYWRNQ2JFYTdJQkR5ZDlY?=
 =?utf-8?B?SEpPQVl4bUNVRFJEbXJWWGlXTzYxeUN5cjBBZVorRC9Fajcwd3FkajY3SzQ3?=
 =?utf-8?B?VXJqNER0S2hWZktnSFRabVcvZG1SOU5PUFpSRmtQQXg4L1FGRVEzRG1Ydk9o?=
 =?utf-8?B?TW9YZElaL3ZoZDI3SGdJb3hZWjVYOUZ6WUpqbWM3ekt5OEhYbEZ3VVBZckIw?=
 =?utf-8?B?VTZ2eU5MZEh3R1Z0dFM4T2d5TnpLaHR5MU5mbDFKME9uUk94b2EyalZ2U3gx?=
 =?utf-8?Q?q05kQxhXJPauM5CZd6?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a7e656c-616d-4148-f15a-08decd3dcc8f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2026 13:30:44.3721
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8DfUYwXvs56n+KsauFzwM+EMWtareSTC9dzHesgFyi1mfYEDBRZl3+pUs9BQzy2d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8421
X-Spamd-Bar: -----
Message-ID-Hash: QPTHXGL4AIOO4GXLQTGXMGRASWKJEMFX
X-Message-ID-Hash: QPTHXGL4AIOO4GXLQTGXMGRASWKJEMFX
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 4/4] MAINTAINERS: Add entry for Rust dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QPTHXGL4AIOO4GXLQTGXMGRASWKJEMFX/>
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
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:acourbot@nvidia.com,m:lina+kernel@asahilina.net,m:mmaurer@google.com,m:ljs@kernel.org,m:joelagnelf@nvidia.com,m:bqe@google.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:tamird@kernel.org,m:work@onurozkan.dev,m:ecourtney@nvidia.com,m:adzicmirko97@gmail.com,m:alistair.francis@wdc.com,m:shankari.ak0208@gmail.com,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:lina@asahilina.net,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,collabora.com,linuxfoundation.org,nvidia.com,asahilina.net,gmail.com,onurozkan.dev,wdc.com];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,lists.freedesktop.org:email,amd.com:email,amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F07E96A08CC

T24gNi8xOC8yNiAxNToyNiwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBSdXN0IGRvZXMgbm93
IGhhdmUgYWJzdHJhY3Rpb25zIGZvciBkbWFfZmVuY2UuIFRoZXNlIGFic3RyYWN0aW9ucyBhcmUN
Cj4gcXVpdGUgY29tcGxpY2F0ZWQgYW5kIHJlcXVpcmUgZXhwZXJ0aXNlIHdpdGggYm90aCB0aGUg
QyBhbmQgdGhlIFJ1c3QNCj4gc2lkZS4gVGhlcmVmb3JlLCB1c2luZyB0aGUgZXhpc3RpbmcgZW50
cnkgYWxzbyBmb3IgbWFpbnRlbmFuY2Ugb2YgdGhlDQo+IFJ1c3QgY29kZSBhcHBlYXJzIHJlYXNv
bmFibGUuDQo+IA0KPiBQaGlsaXBwIHZvbHVudGVlcnMgdG8gaGVscCBtYWludGFpbiB0aGUgZG1h
X2ZlbmNlIGFic3RyYWN0aW9ucy4gQWRkIGENCj4gY29ycmVzcG9uZGluZyBNQUlOVEFJTkVSUyBl
bnRyeS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5l
bC5vcmc+DQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQoNCj4gLS0tDQo+ICBNQUlOVEFJTkVSUyB8IDMgKysrDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlO
VEFJTkVSUw0KPiBpbmRleCA0YWU2OTE5NDU0YzMuLjhiMDNlYjJjNTc4YSAxMDA2NDQNCj4gLS0t
IGEvTUFJTlRBSU5FUlMNCj4gKysrIGIvTUFJTlRBSU5FUlMNCj4gQEAgLTc1MzUsNiArNzUzNSw3
IEBAIEY6CWZzL2RsbS8NCj4gIERNQSBCVUZGRVIgU0hBUklORyBGUkFNRVdPUksNCj4gIE06CVN1
bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+ICBNOglDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+ICtNOglQaGlsaXBwIFN0YW5uZXIgPHBo
YXN0YUBrZXJuZWwub3JnPg0KPiAgTDoJbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+ICBM
OglkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ICBMOglsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcgKG1vZGVyYXRlZCBmb3Igbm9uLXN1YnNjcmliZXJzKQ0KPiBAQCAtNzU0
OCw2ICs3NTQ5LDggQEAgRjoJaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gIEY6CWluY2x1ZGUv
bGludXgvZG1hLWJ1Zi8NCj4gIEY6CWluY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KPiAgRjoJcnVz
dC9oZWxwZXJzL2RtYS1yZXN2LmMNCj4gK0Y6CXJ1c3QvaGVscGVycy9kbWFfZmVuY2UuYw0KPiAr
RjoJcnVzdC9rZXJuZWwvZG1hX2J1Zi8NCj4gIEs6CVxiZG1hXyg/OmJ1ZnxmZW5jZXxyZXN2KVxi
DQo+ICANCj4gIERNQSBHRU5FUklDIE9GRkxPQUQgRU5HSU5FIFNVQlNZU1RFTQ0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
