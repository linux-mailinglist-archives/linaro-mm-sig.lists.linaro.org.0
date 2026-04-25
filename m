Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LieJYQV8mmmnwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:28:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 33400495BA7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:28:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2AA6D3F7F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 14:28:11 +0000 (UTC)
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010060.outbound.protection.outlook.com [52.101.61.60])
	by lists.linaro.org (Postfix) with ESMTPS id EF7903F725
	for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Apr 2026 02:39:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=LR53k0IF;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of acourbot@nvidia.com designates 52.101.61.60 as permitted sender) smtp.mailfrom=acourbot@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UFRs05UJh9kFRMfNmbLm2MX/9obMqOE++n85K4UoZ+nHvDgL95x2G8Du1PgA17GgfpnRb3FSxO+zBH2GN2PNUsCsyh/ivVq9luHkRWAYQHGmfsTKVh1ZEJJvpSYp9qJ2Mx3D6yklInSwO2HozJKelW/ont3ONTH+Mq9eYbS82Jw1ugZcXOBv2FEnYXRDY9WGOZUrGujI9+ZX9wzKTF9nEgUTZRuCsjmJa8p5YQmQZEeZ/k4kbtqk8jHXElXnQ85rWQzgWovE10tFU1dC0Q2NoL8kc/bbrGvpCUZN28jQblNgZQFWaISLM4CkEg/PpgTKh/Ijw/K40vGzLb4EGd0/ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1q6t2h4PNYRXhd/4VhMpjcHBZevAaEvZEwMyDNHHXBo=;
 b=Cawz795AkHNaE+ZVqNWJ1jTkOyFP2d7JZJLLLrAxTRFBkuNkGO3mb4zJbVTYfYHPtuJvEaWl+tsu3mXLePithzKnP7pNrbdfaVpdE82BOLaikT8S0vEdNJVcvEz5yvJ9j08SNZgftdejCKVPL/+4hEN4uOFkBNVXVbJdY99hE+ZWRInZVfRCyCXEwxPubgMQ/KoYjb27284awTpNmcZZ/8OAYX9jkF4zI35M5JVGOUvFMIHZbSW71igwagLdIN6g5ZW7ztpeGd3dWEjVjwo4kNxAUheDSCmvg98OvYoJcGBtOpipnZcfzdY38BkJFecq7ekCbn5FEVR330C9JHNQgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1q6t2h4PNYRXhd/4VhMpjcHBZevAaEvZEwMyDNHHXBo=;
 b=LR53k0IFL71b6jPdB8LiyQFeTBJjcPILDi93VyFIs1zwawaljlY3OJ0yjBlE//Ok7KNt89StaJCCF3mycP2kd2qmQnlYzul42jTvbzc0IJYLdunTtCZc2To1ZGB3/tF69tVU3RtqyrC//hpvRJIEUxZMBA6tdvOC67ytm2zEutJBL1s12bFz+AXT5nwqTxa71v2PKQRxgQa6LTC8njYGrJ/xabx0upzDVgenXNV5ows6u3UaZ2sV3OJzysY51gHPcg62lAsKMgeaqCi+h1UtNgt4yCnXLHsPXjYrPlFBCq+6FhH7zNCwvniQt1k6NlA57niXISANpvmO3B7ZkmsuxA==
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by SA1PR12MB6774.namprd12.prod.outlook.com (2603:10b6:806:259::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Sat, 25 Apr
 2026 02:39:00 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.20.9870.012; Sat, 25 Apr 2026
 02:38:59 +0000
Date: Sat, 25 Apr 2026 11:38:54 +0900
Message-Id: <DI1VYOJKCD2G.1RB25DXWO0OK6@nvidia.com>
To: <lyude@redhat.com>
From: "Alexandre Courbot" <acourbot@nvidia.com>
References: <20260421235346.672794-1-lyude@redhat.com>
 <20260421235346.672794-5-lyude@redhat.com>
 <DI0MI6UF325Y.2TDWZGCN3WGIG@nvidia.com>
 <ed26658c461020547e058b237575324adcbaca59.camel@redhat.com>
In-Reply-To: <ed26658c461020547e058b237575324adcbaca59.camel@redhat.com>
X-ClientProxiedBy: TYCP286CA0022.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:263::8) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|SA1PR12MB6774:EE_
X-MS-Office365-Filtering-Correlation-Id: 90966965-151e-4dca-0419-08dea273cdad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|10070799003|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	mGVCEupSKjNRLrQmOY3/DeQv63XaN3e0+DxI+e/C0nq4RZRfOKuTJHCwGe5aix5y+OLxlKFb+V0oxZbehQvPtxoqJEy40hPFdTGOI3XPodnkdq75yn2QOgyKlsJrg35FVjtI16wZjCdcU9BFe9s0xguZmXOlVNNh55YjxXd5m+tOstr5aQh7P6zR3YebsQM4bqrnEmGcpuXor///fB4DgVzoGXCf3aJSncGrL2CljGaN5DVPUa4MKFD6NfioXGQOCfHKn2hOp3ioYtgBQpR2C8y+uG42xPKFYB9e9pCkpYRxnxmRm5uKGlHwgVxE63LZ4kWLw4pB0l3qaVHx6VbcUdhQ2XGRFPmK/NzdiSUhdKqPdVrthur5xPx/XKMRhOeuL4NHTHStgFsTrqRZgQMKP4Ww9kA68HjwWKwfmG/sezf7SUzK7dTo2cV723/ydtKdaTo7GLcrKR14wGHS1LC+iIUu+6VTnNQXK71cAFdlkfUCex4Q6HOaIJa8oTcYIu5Wr+1CiObXHqMij7XvtuM/noHb4oBatzNe+h3lhTPl4TtCVMu7PXQBrldoNdI8nZjJvQqZLIj0xx+WYFdM5PbtZZHW7UUfxbBP1DG59ggFEdLPUBfLbz87I00YPiwFqa/U/8wPx2tDZkuGutCHIC8IugG7QgWl7y/aCaByXOyRt8FECFwXhMey96SrQHqP8EqcCfDJv8oTgPWnuqVjJBVDwxJ1GF425qsSUBuALO1hcZM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR12MB3990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(10070799003)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VEMwS2NyMFFuMG1jM1QyMUdyNnNFUXFHcmh2K0toTkV5aUdhWWRoQm5HampF?=
 =?utf-8?B?ckRidHM4clBtMkhKL1ZmU1d5V0l3SWFZNWNmSXJRTUNMYmMwYkN4bUo3UDR0?=
 =?utf-8?B?YjZrT0FnNm82dUc1bWhDc1F3REhNbkdkVSt6UWhFdy9OSFIvS0JKeGlxVXVZ?=
 =?utf-8?B?OHdLdkt0VnJVRUJVdFd0TFNhZGpYbFVOM3JGcE9FYVFiZk15LytLYmhzUWRz?=
 =?utf-8?B?RTZDOFA4NFZyYkJJTDlzNTBzRFg3b2grcis3ZnB4c0haRTJjWVErM2JDcVA0?=
 =?utf-8?B?RGt5ZUpsZGNRcElVUnQ0dTVzV2twWEl5UHV2U25wVnZ2dHJ2UG1WaHNiODBr?=
 =?utf-8?B?ekQwODR0bWdxdm9XWDNjUWFMUlVqaUpVM0l3dldrWURTR1VrejdnMC9xQnRQ?=
 =?utf-8?B?aDh4QkhUMzVKTmFvU3dsTlNtbnhBYkxvTktiSzZYNmp5ay9RZFFYY1NtSmNk?=
 =?utf-8?B?N1h0NXphcjFWOW5iWjhwZFZoNEoxbEQySndvNnpackc5MVg2NHF2YXl3UDJY?=
 =?utf-8?B?cG5wdlFCWVNES0FHSkthYldGRlJhWXkwWkhhZmNFeDdwVXNVTUUzRUVrVmhR?=
 =?utf-8?B?YkNTaS90N0w0U2VZOUMvcU5iQmZnRkhrdkxUTHpHNVVGdjl1Q0l5aUdOQmNB?=
 =?utf-8?B?OUN1bnRPZkt4blRSSEdJN0FWTUNKVzczL3JGbmkvb1FrZXJ4YTFnbnpUejl0?=
 =?utf-8?B?UXc3SC9OYm91NWwrMkZkUEVjY3Q2YXJ0QVJtM296NUY5UDVIdFRtK1NmYWtD?=
 =?utf-8?B?aXZad0dVbk0veFZDZStBTERxR1Nubk0zUmp2L3I4VVJpR0xFSVVoTHdQTlEy?=
 =?utf-8?B?NVdBUXZUSXk1MitUMW5ieU1HVkczWE8vaHNEMHplNXBBcDd5UnBtbjd6eWlW?=
 =?utf-8?B?cmNnR2ZZaEZIVFFlSVdzNkZwZjdyNnExSzJ6cVVLZDJ4YkpnWHdHOUMwVGJC?=
 =?utf-8?B?cWRzUWV6SXY3N0t4V2VQRlBCK2haNHNqbE0vVVBhbTNyVjAveWZrNkRtdGky?=
 =?utf-8?B?ZEIrREdCeE1DaWtZbTJjZUNjWmhUYll1SVN1Z3Ywc1hyK0RQSllLN1BjNWdn?=
 =?utf-8?B?ZXB6MEQ5N3RVcnlza1dNbjJiVU9HUHNuWWQ0TFdudEpPRUNLa0owQVBlSjk3?=
 =?utf-8?B?YXUwcGJab1FEWFNoaWovQzdMQ2ZlYUtYbEJmS3lnMWtaUTFwQmxidGRxZ3p2?=
 =?utf-8?B?NnlEdzdOdG1kMVNpWVF4RldzcUtFeGw0Z09za2xIMXZrUGtlTTFnd01ianFQ?=
 =?utf-8?B?dE80VUNqZkZNU2VNRU1wckhLakN6UjcyWVlvQktsY0xMUVhTWkJZSGpzZExR?=
 =?utf-8?B?WEVNMWRMOW5hdXZxL2JIcElYa1FLSjFWMzdMZUN2dEluakRPNlV3QXBVR2hj?=
 =?utf-8?B?VHhKNzRCbG1TN3hZL1F4SUhjejZqNWoySS9sdGhHa1hLMytRQy9QT2lPQXE3?=
 =?utf-8?B?dGNvVTcxa0JPQTdiaGI4UVZ6aTJ4YjZiL2lNZ0puc0FHK095Snk0SjJkMGk1?=
 =?utf-8?B?Uzd4MCt2OEM3dk0za3R6WW83S3FQN2ozL2RqUXhMYS9qV2VwWVJ5TlJ0bml2?=
 =?utf-8?B?UHU1Um1QT01KQjIzcU15aU9KM3I2RXpXdlNFVUVWRm9YVHJCRUlTOUJlRndl?=
 =?utf-8?B?cEpONDg0NHhaUGp5aGovNmVESW9hNExTcWQ4RFZIOUhTdDFrNzNWRUNoK2N3?=
 =?utf-8?B?ZXBlc2RCc2U3d3kyNDR2UFdWQ1psNjZsTTZxK1dteGdxaTZMTmNPa1hOYWVh?=
 =?utf-8?B?aUovNXNDYWdTU2VJdGJnWmlYeld2R0JmTG9HVWFjc3Q3R0IyWTRXN1FTNjlO?=
 =?utf-8?B?b3ZwbGZXVFJqemFZa0pIbnV2M1hjQUJUVkdkR1I0cWYxcWZXZHBaeGk0bjhp?=
 =?utf-8?B?S3RMeDBDTEFRZWFBU3FjOVFNaDVackJ0QVNXdkYrVklkU2N1U1lPcDVvN3E2?=
 =?utf-8?B?cjlTVk1EWXlCdklJb2lwVTNGM3RsczhrNnppVjd3d2FFL1FFSEdLTWQvUnRF?=
 =?utf-8?B?Q0pDN0k3LzJHTXIrdEQ5WGRsYy80R05xOVJnZHdXazZmSk91YTk2UldkVDQw?=
 =?utf-8?B?b2NMOE85QlVNL09qcUlBNGtmWndsbWE0SFF5b2pTQzJ6VStlRHNQbUhtaTNo?=
 =?utf-8?B?UTh6ZGJwa3h0RllUQXJWeVZIRlBUWXA5SlJaZkhzQWtJUmJPWnh1U2x1ZmlN?=
 =?utf-8?B?b250OSsxTk1EQjIvcHU4OVJNMFFkV0pwcmRHQzNTSHhWc0ZvRzlzekdkQ3VQ?=
 =?utf-8?B?TlJvSzFkaGZncmJDdEtDQm8xYlJRSzNac0YybEp4c3dGMXVxNEJibEFLR2tH?=
 =?utf-8?B?Y0MxYXB4Y3NoVzQvNTR6eDhDb0J0K0wrM3FHNVlVd1c2QnIzbkozb2U1ZWhz?=
 =?utf-8?Q?RollLVCqNebKjwo9Iu3BGrLMxOf2sabbxPDdepjUCKrHd?=
X-MS-Exchange-AntiSpam-MessageData-1: NUtcD6p44izxXA==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90966965-151e-4dca-0419-08dea273cdad
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2026 02:38:59.3013
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IOI19q/7DZHI4YDE7O7Sp8pVFYGYqln0SRfhwWUKQFNKxsxhXKG1+m8TcYpX2KQUtXb3jHv3jKm/HnI6Af0r+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6774
X-Spamd-Bar: ----
X-MailFrom: acourbot@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2K2X3NMJDF4IL6SGBIMJN6GMECG2ARCE
X-Message-ID-Hash: 2K2X3NMJDF4IL6SGBIMJN6GMECG2ARCE
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:25:47 +0000
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 4/5] rust: drm: gem: Introduce shmem::SGTable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2K2X3NMJDF4IL6SGBIMJN6GMECG2ARCE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 33400495BA7
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [6.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	DATE_IN_PAST(1.00)[107];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.611];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	FROM_HAS_DN(0.00)[]
X-Spam: Yes

T24gU2F0IEFwciAyNSwgMjAyNiBhdCA4OjEwIEFNIEpTVCwgbHl1ZGUgd3JvdGU6DQo+DQo+IE9u
IEZyaSwgMjAyNi0wNC0yNCBhdCAwMDowMSArMDkwMCwgQWxleGFuZHJlIENvdXJib3Qgd3JvdGU6
DQo+PiBUaGVyZSBhcmUgNCBzaXRlcyB3aGVyZSB3ZSBhY3F1aXJlIGFuZCByZWxlYXNlIHRoZSBE
TUEgcmVzdiBsb2NrLA0KPj4gZWFjaA0KPj4gb2Ygd2hpY2ggcmVxdWlyZSB1bnNhZmUgYmxvY2tz
IGFuZCBjYXJyeWluZyB0aGUgcmlzayB0aGF0IHdlIGZvcmdldA0KPj4gcmVsZWFzaW5nIHRoZSBs
b2NrIGluIHRoZSBlbmQuIEZvciB0aGlzIG1ldGhvZCBpbiBwYXJ0aWN1bGFyIHdlIG5lZWQNCj4+
IHRvDQo+PiBqdW1wIHRocm91Z2ggaG9vcHMgYSBiaXQgYW5kIHN0b3JlIHRoZSByZXR1cm4gdmFs
dWUgaW50byBhIHRlbXBvcmFyeQ0KPj4gdmFyaWFibGUgc28gd2UgY2FuIHVubG9jayB0aGUgRE1B
IHJlc2VydmF0aW9uLg0KPj4gDQo+PiBMZXQncyBkbyBvdXJzZWx2ZXMgYSBmYXZvciBhbmQgaW1w
bGVtZW50IGEgc21hbGwsIHByaXZhdGUgZ3VhcmQgdHlwZToNCj4+IA0KPj4gwqDCoMKgIHN0cnVj
dCBEbWFSZXN2R3VhcmQ8J2EsIFQ6IERyaXZlck9iamVjdD4oJidhIE9iamVjdDxUPik7DQo+PiAN
Cj4+IMKgwqDCoCBpbXBsPCdhLCBUOiBEcml2ZXJPYmplY3Q+IERtYVJlc3ZHdWFyZDwnYSwgVD4g
ew0KPj4gwqDCoMKgwqDCoMKgwqAgZm4gbmV3KG9iamVjdDogJidhIE9iamVjdDxUPikgLT4gU2Vs
ZiB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vIFNBRkVUWTogVGhpcyBsb2NrIGlzIGlu
aXRpYWxpemVkIHRocm91Z2hvdXQgdGhlDQo+PiBsaWZldGltZSBvZiBgb2JqZWN0YA0KPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNhZmUgeyBiaW5kaW5nczo6ZG1hX3Jlc3ZfbG9jayhvYmpl
Y3QucmF3X2RtYV9yZXN2KCksDQo+PiBwdHI6Om51bGxfbXV0KCkpIH07DQo+PiANCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgU2VsZihvYmplY3QpDQo+PiDCoMKgwqDCoMKgwqDCoCB9DQo+PiDC
oMKgwqAgfQ0KPj4gDQo+PiDCoMKgwqAgaW1wbDwnYSwgVD4gRHJvcCBmb3IgRG1hUmVzdkd1YXJk
PCdhLCBUPg0KPj4gwqDCoMKgIHdoZXJlDQo+PiDCoMKgwqDCoMKgwqDCoCBUOiBEcml2ZXJPYmpl
Y3QsDQo+PiDCoMKgwqAgew0KPj4gwqDCoMKgwqDCoMKgwqAgZm4gZHJvcCgmbXV0IHNlbGYpIHsN
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy8gU0FGRVRZOiBXZSBhcmUgcmVsZWFzaW5nIHRo
ZSBsb2NrIGdyYWJiZWQgZHVyaW5nIHRoZQ0KPj4gY3JlYXRpb24gb2YgdGhpcyBvYmplY3QuDQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2FmZSB7IGJpbmRpbmdzOjpkbWFfcmVzdl91bmxv
Y2soc2VsZi4wLnJhd19kbWFfcmVzdigpKQ0KPj4gfTsNCj4+IMKgwqDCoMKgwqDCoMKgIH0NCj4+
IMKgwqDCoCB9DQo+PiANCj4+IFRoZXJlIGhlcmUgeW91IHdvdWxkIGp1c3QgZG8NCj4+IA0KPj4g
wqDCoMKgIGxldCBfZG1hX3Jlc3YgPSBEbWFSZXN2R3VhcmQ6Om5ldyhzZWxmKTsNCj4NCj4gSSB0
aG91Z2h0IG9mIGRvaW5nIHRoaXMgYnV0IGxvc3QgdHJhY2sgb2YgaG93IG1hbnkgdGltZXMgSSB3
YXMgYWN0dWFsbHkNCj4gZ3JhYmJpbmcgdGhpcyBsb2Nr4oCmDQo+IEJUVyAtIHdhbnQgbWUgdG8g
anVzdCBnaXZlIHlvdSBhdXRob3JzaGlwIG9uIHRoZSBwYXRjaCBmb3IgYWRkaW5nDQo+IERtYVJl
c3ZHdWFyZD8gU2luY2Ugb24gbXkgYnJhbmNoIEkndmUgcHJldHR5IG11Y2ggb25seSBqdXN0IGFk
ZGVkIHR3bw0KPiBpbmxpbmUgYW5ub3RhdGlvbnMsIGl0J3Mgb3RoZXJ3aXNlIGlkZW50aWNhbCB0
byB3aGF0IHlvdSB3cm90ZSBoZXJlLg0KDQpZb3Ugc2hvdWxkIHJlbWFpbiBhdXRob3Igc2luY2Ug
SSBkaWRuJ3QgZm9ybWFsbHkgc2VuZCBhIHBhdGNoIC0gYnV0IGlmDQp0aGUgY29kZSByZW1haW5z
IHRoYXQgY2xvc2UsIGFuZCB5b3UgYXJlIGNvbWZvcnRhYmxlIHdpdGggaXQsIHRoZW4gYQ0KQ28t
YXV0aG9yZWQtYnkgd291bGQgYmUgYXBwcmVjaWF0ZWQuIEZlZWwgZnJlZSB0byBhbHNvIGFkZCBt
eQ0KDQpTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcmUgQ291cmJvdCA8YWNvdXJib3RAbnZpZGlhLmNv
bT4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
