Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 52xpEH9KKWqaTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:29:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E04A8668CCE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:29:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=Nvidia.com header.s=selector2 header.b=i1BiVh3H;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=nvidia.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B43640A9E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:29:02 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010047.outbound.protection.outlook.com [52.101.46.47])
	by lists.linaro.org (Postfix) with ESMTPS id 8BEFF4010F
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jun 2026 07:58:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wmudnHHlkapnfB+eT+5PAlDbOtkOC4rc5TqEO69318gI5MzepufPISi25IQD+uBPnrOWw92/WYW2OYXdL2wuvn7wgT32+Tp+bi8etnmowYQFOTCxL0rMzLRTCY8Eu6w1UQjl5w6HPjvWqNHrKM4OB89yMds3ySDUrd54r7lwSgWJRogYAZnZ2Gv1CYMU5jhIRr0ahh/kThxl3/IH7YfqmHLQm7TG4xL/YBMAY0dgBB7vl7SdboYbpJSEvPj52H3bgA9+uUtSrn38JVhHs5mDkIfStsMgea3O0cjBjLLVoKI/X7EVhjjIKPM+9oe907nbtPxrVvzfeHPTva1u1sOX4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bM54h9ZaS2NOw4LfC73Vm8YxAN62HCpdfCMH/9SFRV8=;
 b=ITcRiOOcVL/3zIYsxnhsy8b3BXxHUiVVROj5Koj6xivSp+bVlL/SpVcTXeip0zBxoYQaBBf1/XgehPrybkTj11HdHbuNAfwyRpN5bP8TM9YFa9Gtc4XO2Gth85YYEhN899zm3KPddooMWX40uegAwszkCiSaXRQPy83tVIx1SBIHroVnnE/oe/KR1g1ZPxSnqLC6tEWsfVOflHiBOGdv7lpGQl1B0+AWrUxlbDU9XC8WseNU8+hg2Du9lDUaT1CTYPeGnMgN5A5fVcGPpcrs2k+xpY5g0NVEZEnGf5ta5ehhmaqoBUEsW+GOcvjt2KzLLmXyibBPb5KTclKRS8cCvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bM54h9ZaS2NOw4LfC73Vm8YxAN62HCpdfCMH/9SFRV8=;
 b=i1BiVh3H5PJfdeWKktLgmF6qB/3EKLycO6j24ad7ZsRGu8HqTmGOan9+fsDB1ahI3CQ217isC4yUfHgWvgdGEiifmmw9LqkCjTddkd9mh8Ysfc1ENgrxH6iJbPdDFVs4kdL3iTyLQwmAFOoPZ8v/Sc9Qt7O9/ZV3toQExiGlkKHN0il+RmxvWuekdP7tcF4yXpgkioeUycAMr+GorVmuQTCZVGVf3DxffpIiqhEUhBeiqcK5nazIXUpoRbhi+DQ4kETYVsq//ur/wWEP0VahJsiJeKOg0kwvvp+uzrA2f84zZvLwgawGaRRxSgDAPjKikfnup4YnqQgTwopdhyX7bQ==
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by DS7PR12MB5766.namprd12.prod.outlook.com (2603:10b6:8:75::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.11; Mon, 8 Jun 2026
 07:57:54 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 07:57:53 +0000
Date: Mon, 08 Jun 2026 16:57:47 +0900
Message-Id: <DJ3IAT8FZQJ8.2QCZB2C5IEMCV@nvidia.com>
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Lyude Paul" <lyude@redhat.com>
References: <20260604192740.659240-1-lyude@redhat.com>
 <20260604192740.659240-5-lyude@redhat.com>
In-Reply-To: <20260604192740.659240-5-lyude@redhat.com>
X-ClientProxiedBy: TYCP301CA0077.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:405:7b::19) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|DS7PR12MB5766:EE_
X-MS-Office365-Filtering-Correlation-Id: ae2e70ce-eda8-4c45-0f56-08dec533a391
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|10070799003|1800799024|376014|7416014|366016|18002099003|22082099003|6133799003|56012099006|5023799004|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: 
	qxI8NkOms9iPaWl5w75fXKyciCUHiqwtryzWVRlg8PPhl2icllQMAKIY+XZXcNtsr4/iyorBDWeDS/nv31DbgS3mMf1twbyVl9nYoqJ1dhePOfNj5kLOd3viRN79q4OrwfitkDfv/TECWOmJLFTWvyNjSjkzOm3Hdy360e1SqMYf2Mv0LIOnZbxenUpBNHTeP5I5sSHXUZJmiZVdqiRgVfkZ3OeJki31JWeIK+AkzqvKXSAUJx8rkWwamfd4gVPpAs0a00O20+Gn8CJ4wtwH9YSJekchpvkr8+oSfw6l3Rzo/c2/TzBSxD5HzIFSv93NH2MRTVVQhRsc/TCotLk5PBwjzoqt7u9KvGSjzFb11VRsvxPf+YruFiAePsOvUc4dEgXxoWKvhZAdqTLiYEPZs0uQjtPlz8GNCfAMS/1UWSiUgTbekf6UofktIytxcuWkTTYzhrYeVNlZLEJFlm28zrzCCPgT+j+H7aHuUlpGL3paviArJz19xFXZJW1kr67dZ9GS83QKyiP77KTXiLj84hxgFrEJ2XfqOyxoJzf2yh7hFMdhn1A6CoSDn7kf+Ps4KEZE+dA7z6SJ5pL4xO8gzztP9UtPKZBke0M05OklyiD34Lwm7AZEUpGlPONwtSWgNO32s2FwbvFo3bLoQAbKubmhiTb0HbbvW61ILIeLcFv+yXnUpBC1WNjOHk+NAV0Y
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR12MB3990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(376014)(7416014)(366016)(18002099003)(22082099003)(6133799003)(56012099006)(5023799004)(4143699003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WS8wTTNrRHlvaVA2WHJuelZFU3Zrd1d2dDRKd2lhRWRsaUlhSVdrMkZEU05D?=
 =?utf-8?B?bFJzVXdHejRqVTFmZTZOMmFUb0hHYXR5KzRwTzdQYis2cDBIZVUxSXZRTC9H?=
 =?utf-8?B?b0hlZEpXQk5FMU5rNmhWOUF3OENoMTZWMXFwbDNwNzFqOTFtM2N3WmRRN0g4?=
 =?utf-8?B?NkZFNjJQaXRjVjZuQ09GUnNqSkppSXZzRWh1R1YxWWdBV0M3M1g4SHdOS0Mr?=
 =?utf-8?B?bWs0RG5WVnNBTlRXVHN2azZPL3EyTlJnbW5QbEdva2I0NFZPS3hsN1lCK0ti?=
 =?utf-8?B?SUhzR3NpQU56MVFQSTZFK1pTN0Q5c1pWRE95azNWazYrK1VKOTdtVVh5MmJZ?=
 =?utf-8?B?S2Q3T084dzlPalg1SmF1bU5FQkQ1K0RHYkJnUWVNK2J3bXpEQ04wL2hSalBk?=
 =?utf-8?B?d2l3Q09QTm4yK2JlL0RDNDMycVNENC9Wek1qRXduQkxyaVFXTzlDL0FRNnNu?=
 =?utf-8?B?WC8wMGFjMGFDVndaN1dncnVwWUdGbTFFb0MzS1Rvdy9NWnpXWGRLQjFPWTE5?=
 =?utf-8?B?bWUxWm8yNXM4OGtrM3BPRXU0Z00rZFlqRjFFc1NkUnNTZHNNckRPWEZZcUNF?=
 =?utf-8?B?TjR6WUtYSTA5aW9iU2F3Wk9ySDlwZE5RQ2l5SGdLM2lUWnhMcDE0NUhJOWY4?=
 =?utf-8?B?ZFp2d0pwbWh4MjBOZ2pIRUVKRXRGRE1iRlRxbU1xVWRiSVh5MFVYNW1SNWt6?=
 =?utf-8?B?Y2FQRnZ1QmljVGJ5dnpURUdxMU5CU0g1QWpvUCt5MU42bEM2dWhpc01Wcldt?=
 =?utf-8?B?eXF3eWZ4MitaZ2dYUm85TllOQ2VENlZ4ZUxMVGdPMjY0NWhmdEpiRkhvTEJL?=
 =?utf-8?B?VU55TkpVQ2dsdlJ4U0dISUJEM3U3TDBYdE1BSXd5SE93enRXejBpSTgraXdp?=
 =?utf-8?B?ZVhaOWFqVFRDZFNmcUE0OUdRY2JVYnk3NXA3SDJXZUtVQXVyMDIzUm1iUzFt?=
 =?utf-8?B?QVI1b2cycms5OHBKZ3dGc2Y5QnFuNCtlSnNyZWkwWEVoTWdDT2lOTmIrdmVy?=
 =?utf-8?B?OXVrbXZUZWhPM3JPaUZVL0FpUExUQzR0TWxUcldJTlYzRzVTREJ6NDJuRmRN?=
 =?utf-8?B?RkZSOTBzSGRwR2JKRXppaG5DYXNldkhmQ0owYXp3dWV3NDJ4dVB3UmhBUmwx?=
 =?utf-8?B?Vk9SQ1lZMEk1dlg4RDhhcHhtZSs5OFdPaFhsUzNDd2EyS1JjbTEraytKSWlr?=
 =?utf-8?B?cEZvV1BIbkVxM0dUUDE1cHdadiswVDFLUzJSV1FHbzh5Q3pNTFdmWitUTmZI?=
 =?utf-8?B?OVdmd2tzS3JPWmNyZ2lhbmpmVGlreUpycUJvMTBEOGFkcWZEQzJpQ1JobU0y?=
 =?utf-8?B?Vnk5eVIzalUvamNuZ2RUcjFneldRMXFtai95NHdrbE05Z2d1Q2dTdzZ5UEpE?=
 =?utf-8?B?NFlTTmEydlBRMzJDTStxT1l0NVlJdTVLRys5YWh5dkpydE0zV3JvK3ZsRW9I?=
 =?utf-8?B?a3oya2xRVVVMdjF3ZFF2VC82QTkyWEtFMm4yZVBEejBDd3lOUkd6N21IRVUv?=
 =?utf-8?B?bUJCTVY3bnV1eTBIMjFyL3ZpRFYxVnR0NUZXbU02bGoxMGNRaHBJcjVVQWF4?=
 =?utf-8?B?bXVSWWdXOVN1OGd0TUlxNUxFMjhtSkl2UVlhYzRHcXNPS0hJdmlpNnNQRDVv?=
 =?utf-8?B?cEIvc0hXTi80RTdhNk4xNDgyL3d0WDVTdWROL21RNnp1QTdnZUM0TjNtVGNx?=
 =?utf-8?B?TnYwd0tXc2hid0RnSHRmcEVnbXdvR1VDakpTbDQxZ002REM2NnhoV04wMFhW?=
 =?utf-8?B?ajN4V2M1bHZ3YVZtd0NJYVVkcFpQOTJ6TDZSYVlWOS9COFY5OE01SkRnVGpq?=
 =?utf-8?B?VFNCRDROdkxWZnhOdlN3b3pHT3F1azZCc3ZXMVk0eXpHMTY0WEFvNWFvQlJx?=
 =?utf-8?B?a1RkNWpjRmVDQnRVU2g1cmQzUjBMVUhPWmJQRGNOVS8ydXV0enhvU3JaU2po?=
 =?utf-8?B?d2JyZXdIR1AvcnNuaituYUkzMnQzdlR0Z00xTmJqUTFzT2ZjdGttN0xndG0r?=
 =?utf-8?B?SG9rSnc1U1pweTNIaVJXcmUvWllpQm9yKzRYUGlBeEdaNm5IVFIxcUFhMlc2?=
 =?utf-8?B?QjVLR09QOUllcHJ4UWNtWE5KQmZscnE3QldDQmRFRlZvY2NnVm5NVGFGb0hk?=
 =?utf-8?B?S3Yrc3BtZVlWUDlxS25GN3Uvd0dDUFErMHg2N2Z6YmZtaTNHTmttaDdSVHo5?=
 =?utf-8?B?NjFEL1RsWnNzb1FlKytvUU5HZ3lLdldobkpwYUNNTlRqdkdsNFNBSHNsSlI3?=
 =?utf-8?B?Z2VPa0pDamFYejNGN0ZJRWNSYXZYbmROR0JOM1FndHlEMlFybmdyY05kVFhw?=
 =?utf-8?B?VEZFWFFRR3VQTHJidmV3QWxjby9seldIeTFsNEprdnlGSGJaWGNIZi9wMXZY?=
 =?utf-8?Q?3wb9DRSruVo6mplmSw1ZQK50JPJUE3bU+Ix+LiZwDGRPq?=
X-MS-Exchange-AntiSpam-MessageData-1: zOqX+wCRgBNfww==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae2e70ce-eda8-4c45-0f56-08dec533a391
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 07:57:53.7062
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b+/p+Unkl+G2JcrN8leiZjlulgT0UIBIzFXpJdFCpMKM8TThpu3lP/B3oK9rHoR5HAhx0dMpeCHiCOxkcoB8CQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5766
X-Spamd-Bar: ----
X-MailFrom: acourbot@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZFO7O6SIJO747FUJNSWPBM5AB3HCKK47
X-Message-ID-Hash: ZFO7O6SIJO747FUJNSWPBM5AB3HCKK47
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:27:22 +0000
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 4/4] rust: drm: gem: Introduce shmem::Object::sg_table()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZFO7O6SIJO747FUJNSWPBM5AB3HCKK47/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	DATE_IN_PAST(1.00)[51];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:lyude@redhat.com,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[acourbot@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,nvidia.com:email,nvidia.com:mid,nvidia.com:from_mime,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E04A8668CCE

On Fri Jun 5, 2026 at 4:24 AM JST, Lyude Paul wrote:
> In order to do this, we need to be careful to ensure that any interface we
> expose for scatterlists ensures that any mappings created from one are
> destroyed on driver-unbind. To do this, we introduce a Devres resource into
> shmem::Object that we use in order to ensure that we release any SGTable
> mappings on driver-unbind.
>
> There's some other slightly unfortunate caveats of this:
>
> * Drivers don't have explicit control at the moment over when unmapping
>   happens (which is exactly the same as the C side atm, so it might not be
>   a problem).
> * We can't just return `SGTableMap` to the user through an Arc to attempt
>   to fix the last caveat - because that implies the gem object would need
>   to hold a reference count to the scatterlist mapping, which just leaves
>   us with the same problem.
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>

I really like how simplified `sg_table` has become!

Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>

With the customary final nits below.

<...>
> +
> +    /// Creates (if necessary) and returns an immutable reference to a scatter-gather table of DMA
> +    /// pages for this object.
> +    ///
> +    /// This will pin the object in memory. It is expected that `dev` should be a pointer to the
> +    /// same [`device::Device`] which `self` belongs to, otherwise this function will return
> +    /// `Err(EINVAL)`.
> +    pub fn sg_table<'a>(
> +        &'a self,
> +        dev: &'a device::Device<Bound>,
> +    ) -> Result<&'a scatterlist::SGTable> {
> +        if dev.as_raw() != self.dev().as_ref().as_raw() {
> +            return Err(EINVAL);
> +        }
> +
> +        let sgt_res = 'out: {
> +            // Fast path: sgt_res is already initialized
> +            if let Some(sgt_res) = self.sgt_res.as_ref() {
> +                break 'out sgt_res;
> +            }
> +
> +            // Slow path: Grab the lock and see if we need to initialize sgt_res.
> +            let _guard = self.sgt_lock.lock();
> +
> +            // If someone initialized it while we were waiting, we can exit early.
> +            if let Some(sgt_res) = self.sgt_res.as_ref() {
> +                break 'out sgt_res;
> +            }
> +
> +            // If not, finish initializing and return.
> +            self.sgt_res
> +                .populate(Devres::new(dev, SGTableMap::new(self))?);

Maybe add a comment explaining that `populate` cannot return `false`, as
its invocation it protected by the mutex? This helps understanding that
the following unsafe block is ok.

> +
> +            // SAFETY: We just populated sgt_res above.
> +            unsafe { self.sgt_res.as_ref().unwrap_unchecked() }
> +        };
> +
> +        Ok(sgt_res.access(dev)?)
> +    }
>  }
>  
>  impl<T: DriverObject, C: DeviceContext> Deref for Object<T, C> {
> @@ -474,6 +545,63 @@ impl<D, R, C, const SIZE: usize> IoKnownSize for VMap<D, R, C, SIZE>
>  #[cfg(CONFIG_64BIT)]
>  impl_vmap_io_capable!(VMap, u64);
>  
> +/// A reference to a GEM object that is known to have a mapped [`SGTable`].
> +///
> +/// This is used by the Rust bindings with [`Devres`] in order to ensure that mappings for SGTables
> +/// on GEM shmem objects are revoked on driver-unbind.
> +///
> +/// # Invariants
> +///
> +/// - `self.obj` always points to a valid GEM object.
> +/// - This object is proof that `self.obj.owner.sgt` has an initialized and valid
> +///   [`scatterlist::SGTable`].

The SGTable is not in `owner.sgt` anymore.

> +pub struct SGTableMap<T: DriverObject, C: DeviceContext> {
> +    obj: NonNull<Object<T, C>>,
> +}
> +
> +impl<T: DriverObject, C: DeviceContext> Deref for SGTableMap<T, C> {
> +    type Target = scatterlist::SGTable;
> +
> +    fn deref(&self) -> &Self::Target {
> +        // SAFETY:
> +        // - The NonNull is guaranteed to be valid via our type invariants.
> +        // - The sgt field is guaranteed to be initialized and valid via our type invariants.
> +        unsafe { scatterlist::SGTable::from_raw((*self.obj.as_ref().as_raw_shmem()).sgt) }
> +    }
> +}
> +
> +impl<T: DriverObject, C: DeviceContext> Drop for SGTableMap<T, C> {
> +    fn drop(&mut self) {
> +        // SAFETY: `obj` is always valid via our type invariants
> +        let obj = unsafe { self.obj.as_ref() };
> +        let _lock = DmaResvGuard::new(obj);
> +
> +        // SAFETY: We acquired the lock needed for calling this function above
> +        unsafe { bindings::__drm_gem_shmem_free_sgt_locked(obj.as_raw_shmem()) };
> +    }
> +}
> +
> +impl<T: DriverObject, C: DeviceContext> SGTableMap<T, C> {
> +    fn new(obj: &Object<T, C>) -> impl Init<Self, Error> {
> +        // INVARIANT:
> +        // - We call drm_gem_shmem_get_pages_sgt_locked below and check whether or not it

s/drm_gem_shmem_get_pages_sgt_locked/drm_gem_shmem_get_pages_sgt.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
