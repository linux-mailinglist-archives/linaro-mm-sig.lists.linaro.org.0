Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kP+FK2se8mm/oAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 17:06:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BAE496865
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 17:06:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D2975401DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 15:06:09 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012039.outbound.protection.outlook.com [52.101.53.39])
	by lists.linaro.org (Postfix) with ESMTPS id AE6D7401DB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 11:19:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=nSFCNnKy;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of acourbot@nvidia.com designates 52.101.53.39 as permitted sender) smtp.mailfrom=acourbot@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fwXuQWFI77/FyQ8q6dlrnCuCMNP+XNQ7/f2MCkduAijshoOkFaTTzJOf+HwoKG8lpmhHgk3xUoYenc4TickOhlgEMnm/UeXCkl5gibmbhj3rvFCRONfkKukitwIJchAxjVsobyd5taQrO4OsTOWHYdaWJKcZkI22wyuEMVe2a+lHXsREtZWYQO88fsObvWEa8NjPakSkJOn1asN7wT7oI4N6Xp/SABzeNptsRlTEABL/RlbmIx6/m6rEwQQjPkZGhndg5WlbwHsc0wU4vpQ5YqXlHnkuYRTyDaBWM/GBmaVsP+cvdTU6IxePlyHrykjXsPs8+c4LmeICI4QmK70XJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a4BermCwGs5AMMVbOPDeSvzOOKKqgWuoTlPSUhFB+Dk=;
 b=KtgbFkEUR6XVs6LrwINSr+M6WtfNGOH+wcnj2p2v4ePnts5xcoOWuXzd8DgWJEhsGVtKL3gz2XIl/NoZm8sgD8iC857vWCw7ooVxPhrLuPhpRUbIBJYNKmOsLhE+sv5v3bZzyvVDHKxw3aa68BTzuuqecDr/EKV27vxvVOE3V/q3t77oZWKNaW3TVSPla8ZyNoxD11NKGlfoyA1/MPJcrnIxmfk/NcTq+x0klvUWzS6VPi9b62PjYdmz29gb5aKeEH6tCtXjhSfiAXHvQJzAgx/anNcORUnPUlj/ZdbeNXkDimdbD6LWllPsjfs89YRMTsngnMb7KDfkK+8IB+rUbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a4BermCwGs5AMMVbOPDeSvzOOKKqgWuoTlPSUhFB+Dk=;
 b=nSFCNnKykcZ5wQnBzIaVCAXi/TIeoFTdxnIghT+XPcXfMdTa9GaBI2hNs6UAyqpAc5XKNNIGz4ezf4xjQlp302qFcFlkgV/bHkHmoySnS3Gf2kQyfl1pb6n66+/qyuumcfDBLt+fnzbewtVeO+Fc9rITRzuP2MFZGC+DT3hjJ95dyE6qrkWsl9o1RZgIbFnnHzz6xfjJoY/32OjKR7YcqYNiJZcuUDg60KPWpa/qK4j5I8d43JM0kQtwdwEpcC+P2w3NZi0DPhvVK73hyoCBvEklaafaoeeJ2aECMqhVVN267Q7vFMrQdrD6hCNIqArMgnlT5shNJHc375aLkKB3Dw==
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by IA0PR12MB8695.namprd12.prod.outlook.com (2603:10b6:208:485::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Wed, 29 Apr
 2026 11:19:04 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.20.9870.013; Wed, 29 Apr 2026
 11:19:04 +0000
Date: Wed, 29 Apr 2026 20:18:59 +0900
Message-Id: <DI5LJ2R3YSU1.1SBRV7KQ1XWFP@nvidia.com>
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Alice Ryhl" <aliceryhl@google.com>
References: <20260428190605.3355690-1-lyude@redhat.com>
 <20260428190605.3355690-4-lyude@redhat.com> <afG9MTFxCbKE8OOZ@google.com>
In-Reply-To: <afG9MTFxCbKE8OOZ@google.com>
X-ClientProxiedBy: TY4PR01CA0100.jpnprd01.prod.outlook.com
 (2603:1096:405:378::6) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|IA0PR12MB8695:EE_
X-MS-Office365-Filtering-Correlation-Id: 59ba0c0c-7700-4008-6a99-08dea5e11ebb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|7416014|10070799003|376014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	L1WGFFt2xzK6+2Wc1SJcraVsG9hgdMUyOeb8YHPAOXjseS8QLEbWVQ/vNnVpMzXcaU8BWbwXeExcbEv7h1/MrW+gAS/Jl9sMkxTFrtyzFyeBpVh9ZDeDKI5KFVGlAlBTGCIjgkmudOU/hexUFu01NV3590fWorH4u3TiNHs3UAJEOztqPlK10rBqlqH/LtdhnQwMSS2T07ICd2IWmhoV6/FqFN191o6WHwWrzA0fAec5qbnwAc7EqRlE/AWOzeIfUNKFNxOUXDFQCyUzsMKAFqjAV3Tw5XiyW+kaeYEa3LRF8auP+ZGYJ74olRoqu2lqkrh+KQmSbv9sf4FeZxr7Pd3XVPlsYSGBvwU/piKBUEAyA5eFLcUjXFIInl/tAV4CoHmDDLsvimi9xQukdfgumg0MeKd/t4bN/Y1tq3GS8rkFmJK3wJcCequbTmF3gpu9KGAPMcFt4I4KD8M7DYYzVCk8ysm1UxumoV+psQfxrtU9VZMsfHK73OvhA8Y7jBQ6LT9FChMjynUzAub5ycjBlmTXgMIxeZHIQyyduZEYvhjHdXgywTGTyE8trftNO3qMT+qqHetMY2hZEI3tiINFuIiNI1kYIjaujC07VRz5QJXpy0Oyu7NmCF0/0a+SQZZlhBJEUoJegVcqRk1kQKuLIuaQh13loxuFUIFpjVRvjn/1WKtpsRavkdNbSOhSHD8uIRn36KMvV85LWYPjQ+lpg95ppg3+swmdMcoycBsO7G4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR12MB3990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(10070799003)(376014)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SVFEN1BieGY4UnVXMUx2MkZBdjh5STBjWmpHanBPNWh5dG1RbE54eXptQXdv?=
 =?utf-8?B?RmcyRkVaczA0dWZXZnJETzFndHZZcEF6N2tDZ0w2SVlBcnhJUkszcGN6Qnk4?=
 =?utf-8?B?VVNUeFVKWllUcW15SXEzbG95M2JaRkx2S3p2bnplRFJDcW01Rkx4RVJOakND?=
 =?utf-8?B?NTlmYzdPZ3JIaU9HVmZWZXZuOEdubk9OdnloZlFMSFM4bVBCSkFhZEprYWVW?=
 =?utf-8?B?Wm92Z0R3Q0lxSzlOWDYzUmh0MXZvZjIvMFlCbHZWSWY1TVBVYVlQdEVJQlpy?=
 =?utf-8?B?Sk96MzEyUHovanVCdTBzcTZ6enphYmVFazFsRlkzaGJqVjBvaGZMSU9aTUEx?=
 =?utf-8?B?TW5CZ2d0d09LZVh3M0Njb0owQ2NLR0tTOG1BUFo5M1FvOUt2RkZhKzVqdmti?=
 =?utf-8?B?aDUzNlUwb29lRW04WlRjU0ZwYm1nRmJyTHlFUmNudnljQXFhR05YblVwRDJw?=
 =?utf-8?B?bkZEakF3dzBESHFzbGVUdFlwcGI4cFdsL0U4YlNWenNiRmthdmZLNzl5NFZP?=
 =?utf-8?B?V0pmaitDajlvNXhCZ1hIUGJQejhGYVpFV0VzakZCN0ZXNjF6QXZtNXR2Z1BG?=
 =?utf-8?B?Q1NWeFN5amFWa2tJNWtJTmlGLy9BYjFoM2V0Yk9WdmtQOWJ6a3EyamQ0OUdN?=
 =?utf-8?B?SHJKQVNta1BDZG1rVXB1YmtHWkdBSTdTUC9YLzVvRU5BNVFBSVhhSXhzcXhq?=
 =?utf-8?B?T2I4SUxyVkFXMkYxWWpySHFJR3gxSmRneEFVMkpRUDZwOHdXb3dZOTluMnE2?=
 =?utf-8?B?dDVpUXI0VHVHd1RQZmRiaUllaURySEliSnAvK0l3em9ZRjFwQVRNay9hMjk2?=
 =?utf-8?B?UXkrZzNPaXNNU3RRbUtFSlh3TEpKcTRiZStVd0poSHBoYVZRc3JRbnFGVURk?=
 =?utf-8?B?U3VLTGFqQWp2eU9iVmxpL3UxWFB0cThIVzFSTEJzbGRSSmwvR0hjRjZoWjdT?=
 =?utf-8?B?YjNtTHhINGpycHdHRjhKMWxTbTFLNGlNdk9KVGxPbkRXZmw2MThpNkFXa1lX?=
 =?utf-8?B?aUVLTEFZWTZCb21HUlp6VEJhMkNzcnpUR2pNRlJRZ2xQUDVZdDI0VmUxeUth?=
 =?utf-8?B?SlhpV2FnU05WWEpSYnhuN2tmUU5jTTB6aUlxRzRMMSswWjN5eS9mZTJLeWlk?=
 =?utf-8?B?aDRDc2tWdndLZGxDRGs4TVNha3hQZEFiWitKMGNNNUNSY1Z0YTUxZDRTa3gx?=
 =?utf-8?B?K3cyS2dLNmdoVzZnQVNFY1QzWEJnMTh1aUgwWUR0Nkxpak82azMrZ2E5bktM?=
 =?utf-8?B?bnVXNXBMVVBONmhmMHA0bXVYRUVlN2xhQ2p1VzJKSy8wMGdVQk96SzFhblRy?=
 =?utf-8?B?dVlxRFRjcGEvdUtDVHBsTWcxSUREelQzQm9rcW9Mei9DaGdzOHhxWWxzSmtl?=
 =?utf-8?B?aStoNTR3ZFIzSFJvNE82MVRwR2drN0NOK2JCV09TYTNTMzcxdkVjeGRFUU5Q?=
 =?utf-8?B?WXhwYUllamM2bzhKcmMyQ0lwMEhZcFJEMk9vVU42QndUelBtbU5IdThXVGZi?=
 =?utf-8?B?N2V2OENDL2tRSUF1T2dFenM1NEh4S0N3TzVYbUJTRjJyd2R6M2s4amVBcThB?=
 =?utf-8?B?a2tZcTQ5YWdUTmR6OHJVaVIrWTFuQWlobVA1b080enZUY2RuL3V1eTVNN0FT?=
 =?utf-8?B?c0lPMHd5LytVdCtLUlhSZ0g3dFFRRnk5by85QlNqcDk3czJpcUphQ3lKZEVT?=
 =?utf-8?B?a29USWFSd1N4TWp4N1JSYUM2YWp6dmtaMW50aW8veDNrZDZ3dkVjTGVrdkRB?=
 =?utf-8?B?TFZ1UHp0Mm1jVFlEQTBzbVQzcEVkcGNMYnl1ZFlock05VjBSWENHQU0vbDl5?=
 =?utf-8?B?TFY5d2JEMzVNMkkyODltcG8xa3ozcU4xU2pldC9GVVBXMWlJSE81L1ltRVZW?=
 =?utf-8?B?NmtQdGdtTEo1L3lBWHdRbElCSkJtT25OL01qTUlJYmZjTzZxTUdKUk8xbjA3?=
 =?utf-8?B?NUZZR2dpVjdJRHdTdWdMNHd5ZlQrajRTTmViVWhpKzJJRGE1YmdtbGlPSk5C?=
 =?utf-8?B?N1FnellaSVNHL2NPZ2c0K2x2T05zR25WZHdwTmlVQU9VLzlHZTR3cUkrM3Yv?=
 =?utf-8?B?N1hVSVBtbC93Qm9xK0w4d2FLTWdqSmNnd1pITFF3M0hRY2VKSUVueHVHU0Fu?=
 =?utf-8?B?UEQxcmJCNk9vTmxZNnA4SHN6NVR4eVFWM1ZMV1ZlL2txT3ZYTjZtbUNvOVkw?=
 =?utf-8?B?d2lFdkd1V3BZRVdQNGowRzZBWEhWTDU3TkF6OEVTakFKWjg5KzJpMGRmR2NV?=
 =?utf-8?B?WUJPUEZQbmovUkJhWHkxeEdSN2JJei9HTW8ySmpvT3NJU0Nxbi83bUZrWWgv?=
 =?utf-8?B?blZTdVVMSERESVNLY2xOeTFzUjIzazFoUEdTWU45OWhGRnptVmZRdzZ3dDhW?=
 =?utf-8?Q?mya2M4qFaqbJsPFsjnKLrGo04A9reAbcaNl9q6HFjGGjx?=
X-MS-Exchange-AntiSpam-MessageData-1: YOU1XtfPO2ZYrw==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59ba0c0c-7700-4008-6a99-08dea5e11ebb
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 11:19:04.0883
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ru5eT2ITrNYaUv8LJpCLYPiQEcAjWl4llIPcEbgrx4btu5oo7PPrjuDHgZmo95Jc01Hr0EXoNFcVziwD4o6hLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8695
X-Spamd-Bar: ----
X-MailFrom: acourbot@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5AKZX7CLVPQFYTJ6Y5S73GGW7HSAMSKS
X-Message-ID-Hash: 5AKZX7CLVPQFYTJ6Y5S73GGW7HSAMSKS
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:31:09 +0000
CC: Lyude Paul <lyude@redhat.com>, nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v13 3/5] rust: drm: gem/shmem: Add DmaResvGuard helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5AKZX7CLVPQFYTJ6Y5S73GGW7HSAMSKS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 54BAE496865
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.010];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

On Wed Apr 29, 2026 at 5:11 PM JST, Alice Ryhl wrote:
> On Tue, Apr 28, 2026 at 03:03:43PM -0400, Lyude Paul wrote:
>> Just a temporary holdover to make locking/unlocking the dma_resv lock much
>> easier.
>> 
>> Signed-off-by: Lyude Paul <lyude@redhat.com>
>> Co-authored-by: Alexandre Courbot <acourbot@nvidia.com>
>
> Needs Alexandre's SoB.

Signed-off-by: Alexandre Courbot <acourbot@nvidia.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
