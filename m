Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HkjrOCVKKWpPTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:27:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCD8668C8A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:27:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=Nvidia.com header.s=selector2 header.b=E8edBwXz;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=nvidia.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7305640A70
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:27:32 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010011.outbound.protection.outlook.com [52.101.56.11])
	by lists.linaro.org (Postfix) with ESMTPS id EE4494010F
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Jun 2026 02:08:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jN2C1gLxWaUAvueW5BsjFVE0+ViUWfesGnWr9lx6n7xoysZG0B8uK0NLHxVeASMzuQ9oYUssdmT5LUn7NS9BAdmnjKdnexBAIlqPCnMszrkqsHADcisUAcIWKMWtamURcXOHlaVMje7wS5BmyEYJHfEuCHbdrUoZCbxI+HQ8WceMKnpePQwK5CGebst2zpsPROgGWpCl2VxeeA4rTZC5sodcAsEp+IbeqcqbLnbyygKh6RXKHTbksHCUJ0R1em6mKhlYP+fiVS1Z/It7O6aJmZSbddEGBVQ0yM6tTNhaSxCfs3wcDT0iCoQK/mG7zCO6QggUj8xbhVsZkjhtVsZWjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cgia69ft9TVk0pwbC09ySYu2gYb0KEnOYVnNofwaJYQ=;
 b=M6iZovi603Sz2HvpuIJ7BY5AlA118VTOsRUjjvm5gxuirQTT7JdQeneXmQ069Fu/VT6NMprvYm+jk1sGJD36rTviHt+VVfPLNJ5+NwMohQ1JOYBUXm/0cw0Mw1vO2iKnlGYLnjRKJG/sW225G7LHOgh2CEXlnrRcUZRt9wV39Vw5UQxBcaT6d2g7hkDkU/+NcsNDhytvBRyK0C4jkR+Y1MVGXiihaA+Vua5k/tOxKdQkYo4wdiovYN/ViblOiMcD6/Ioo+FB6sepfE671cnbKJ8Ij0E4icp4OJ3z1T3Bw6q/8VIc1brwMM+HbTQjsGPDaX3bM06fhKYOVbb8JQq2Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cgia69ft9TVk0pwbC09ySYu2gYb0KEnOYVnNofwaJYQ=;
 b=E8edBwXzMXrcANhVv6bVeHpgPHW8bFihcPJuG6yjzfsubyZfEiphRUnjgTYiQd42G/JP2GpfQ5nJhG1gASoVbLfaAg2+AO3/FPBMqvFGX6xWujFOULNXUTWMb9V9eYPLhAamYhPlz0SPqCYrREj5LPHh37MQhKWy8lP1dOEo/0PAtk+z1A3VIzM6+3FbXoHJlTUBJdgMnN1iyOLAaHjFSwtAcAVHopPNwjAwNKvMCJEazmQez7t0492BFBphLwqTgVqIGXAK648RCnXrwU/zPgFgKUui/LYYN2pJcgTS6swOFaQB6ISD8Ytv0gV8TtuI3y9tP+lbh3aZG/wYNvjVDQ==
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by CH3PR12MB8533.namprd12.prod.outlook.com (2603:10b6:610:159::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.11; Sun, 7 Jun 2026
 02:07:57 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.21.0092.010; Sun, 7 Jun 2026
 02:07:57 +0000
Date: Sun, 07 Jun 2026 11:07:53 +0900
Message-Id: <DJ2G8D0N6EK7.2PDDSC28O8K4P@nvidia.com>
To: "Lyude Paul" <lyude@redhat.com>, "Miguel Ojeda" <ojeda@kernel.org>
From: "Alexandre Courbot" <acourbot@nvidia.com>
References: <20260604192740.659240-1-lyude@redhat.com>
In-Reply-To: <20260604192740.659240-1-lyude@redhat.com>
X-ClientProxiedBy: OSTPR01CA0003.jpnprd01.prod.outlook.com
 (2603:1096:604:220::13) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|CH3PR12MB8533:EE_
X-MS-Office365-Filtering-Correlation-Id: fce2cb8d-f22c-4699-b16a-08dec439979f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|7416014|376014|1800799024|10070799003|11063799006|56012099006|6133799003|18002099003|22082099003|3023799007;
X-Microsoft-Antispam-Message-Info: 
	6aqiNRSld8iewhgbPwg4iRgxt/D/AH7/429zXC2ouBXOK8sdeGyAIQzMifO8oqP7JODDH50AYqb7Yv67zpQqOWFM2mitaOKbmR/zj1vnF1U1cOOqkvEGC0jwW70/2Fg8XyybcfoTsLsVVmgkr8HqMd/LYEQQ2Efm1VFBdRCEOoQoARsS5vCmlsO+aGS6+92cal8y/UidQspYGLvq2ZltiKvjE+dMS0N8ZMs5MfcE+7vryE0gQ4Mub7mIZDfam8qz+k3G4RHEtZOURVecIcl5gH8USlXvDdzZwkDIJtIaloeATO0zkb6sjIg9zR3rYZ1A5fYhz9fAT+wzaYQdVHyVDzJ7B5Qkl+5gU7/thHa3wMlGVy8eEtMS2tbYhJfHy4NSnzN/i882d2EfYPZIYhrLr83jZ+DX6WreOq4fjK8AHHfmD3XKpF1LMfcY9Dnk7OIKZfmeLXPgh9HhGnUB3ifHPOIRa/+XW5V6RMQDV8dZ8v9W2UPDZJ1WH1J3GVj6zNk0pcqcr904a1zpB3ELzGOnmrcqD1WVNHudfRsfFa2ilAneraAgV7QBn9kEG1XZQDgjQDLqD4toeOswvqonov19Qm1B5N+iKnFHO4Syl7BxQxVH0SAUTrOQhwbj8oN1IRDSMX3f21z6Wn6ChSyuUVPI7Ud9LaP++s3T7iEqbYDESgKQj27eL/kqX4E1vk3M/E1K
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR12MB3990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(10070799003)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OFFLdUFsTkkwRFg2VUJ1dHRoWXVicnJJQUFUSmNJMHpQQTJaV1hMT0NpT2dB?=
 =?utf-8?B?cVdJWG9Lemx0TUg1WFBsaldZTytRNGNxSEFHWUdmN09hU3M1U3ZYbC9sMFJL?=
 =?utf-8?B?U1NHdEJGam01dzFwOGNnUlRCT0dDN1F1ZkVtSHNLZ0lMR3hMWCtiUU1BaENT?=
 =?utf-8?B?NmlaRjlON2lJMmJSQXQ1aXBZZHVsOTJyVDhKekNiTUtiT1Z6aDhzMjNKbW9h?=
 =?utf-8?B?dkg2R0hOeDMxTHVsZ3ExcGlEdWI4SXN4ZnQvc2djOCt3MmdxUXRqSjhlVkFt?=
 =?utf-8?B?VFlhdzhlZHh0bFk1MzJSZTlXNmkvQ2VGQzFyVktiNlRxM0x2N1RlYjVFTkxi?=
 =?utf-8?B?ZHR0UE1wOHZXWEpJR2pUWk1ocFJtYWJkTTNsN0VyYmJacWJLUG52WTF3eHJC?=
 =?utf-8?B?S1FHS2NCWEsvSGVZc0kzdmtxT1VBTGZjb2ZLcGxQQVYyMlhtdjFsMzNsaUZ0?=
 =?utf-8?B?S0lkRGRUendvcmY3SUhqZHVPY0JGQVp1WFc1U0h4cVloRVRGNkdyVDlpT1B3?=
 =?utf-8?B?Q0hvQW1tSEYxS2MzNzNPZWkzaGJOd1kxTEw1ZnVkVlNpalhSY3BadWNhVUti?=
 =?utf-8?B?UlZZWm40Zk9MNVpDMTZsQ2lhemdVRk1oaE1sS3dEOVNnNnBvYXVRV2ptbWtW?=
 =?utf-8?B?dDViK1lnVmppcWlIVlJmc1VQZXBIRjQxWmhuMlhXZFRLcW1qcFBmREVkWklY?=
 =?utf-8?B?K09kVFFQY011MGk4N3RBTkJSS21qV2VjNS9tbjNzM2hXeUdUVUcwelRWcHh0?=
 =?utf-8?B?d3N0QzJ4Vmk0WndUVGlsZEZQZVE0cG9sUStiQ0Qyb2drNHlrM3Q2Wko3NGg1?=
 =?utf-8?B?anBjWncxeFlqb21VMnk2QkM1WTd3dmFUdSs5NEI5NlVFTUVQdGJzYVBzQmZx?=
 =?utf-8?B?VGtYNDBMc3FQS0paZlJuYTZQQlB0dXdHdG1TUWJHdjJvQ05pSnZxUjhpYTFq?=
 =?utf-8?B?dEZjTThjRkJxRUxUT3BVVWIvRGhqTmg3VzdkSlF6SDhyZGgvM1dBNm5RVmo1?=
 =?utf-8?B?Y3pNbzhPUm9LMmZseTFyUEVuazRSanhQb0xZQ0xQeGJvZmRzNXdFUDZTUWI4?=
 =?utf-8?B?Vm5CYVJOT2xwd1hLVm54K0hDbUxJbkNBM0k2QkErZFJPQldLeEtwd1JmVWVK?=
 =?utf-8?B?Ukp0NHJFQ2g3QXNuSTZaelN3WXFhc3V3ajlBMG9Yalo4M2ZSd3k0QW1IVDk4?=
 =?utf-8?B?empCTFVCdHRwQW9yZWNjMUZmVVNMWWlpZU4rMWN1ZVRsbUh4K2NDR25mV2hy?=
 =?utf-8?B?aUtySStCdFhJV01uN1c5dUk1dm9kZjNBcytpbkNpNDJXSWxBSW50UGxCdTJn?=
 =?utf-8?B?cVg3VXowYmlMWTE1OVd0UWh5bHYySTRvblE4T01kTnBUcGdLV2QrbjNIYU41?=
 =?utf-8?B?dmtYRjRaMFMyTnl0Q3l6M3dCNVd2OUlOUDRjaHlOcEVPdmM5MHE2QzBOd1NZ?=
 =?utf-8?B?cWwxTUY2aW4vaWNaZU50MnJSbFpmU3VYVDNKQU13eTV6YmJ2cWZCa2RpVUIx?=
 =?utf-8?B?SVBDNGR1Y0pwaU1ld0RGeWhWdVNrRHpjMjZXRE9HMTlOYjVZYjNlb09UWmlh?=
 =?utf-8?B?Mm04MHlaeFpodTRiaTdXUGRVYm96dC95VWtJNkVTZEw2UFFjNWRIaWNXZXVq?=
 =?utf-8?B?WHV4MkIxVUUvRUlQSE9aeGZtWUMrQ3NxVjQvUURFZlpHb1ZLbVAyOUZ5czhH?=
 =?utf-8?B?RkJvQ01VdFFkWHJkamFOSnFDQm1lczdvbVNVZUtEZ0VnczJockZxdkRyVXVQ?=
 =?utf-8?B?ZTNKZ3BGTTlJRVo2YzZFZDVwdUk1dmRzd1ZMZm14OVAzZU4vekJIcG92ay9E?=
 =?utf-8?B?UitkZUpKY2tmYUMzZFR2Szc5eFJGV3lZTzVUdG5uNXpyMDhUdllGQ04xcmVs?=
 =?utf-8?B?SitIY1p3dWtDbndlMjM0K2NzSjhhS0VIeEpBM3R3b2lGL3loSVNDeHE2WnhK?=
 =?utf-8?B?b1RPVHVSdFpLbC9mc1MrcWxsNUZTeTdaemVXT0FGOUVDSEVDMm11RmYyQzNl?=
 =?utf-8?B?QjhLQ1piOG1tTVFzaS8zZTlrMWx3bVZjODF6OXpUZHdJY3dERjNaLzBkdUFo?=
 =?utf-8?B?MHdQK3lZeHAvRXlxZ1NYOTZaQ1d3MkpOVmJWVEFhWGNua3hya3gyemFtRXU4?=
 =?utf-8?B?VUxjOS9HRkwybWVGNmpPRzNucnEvNGpZdXBUU09KcktaYmErd001cCtNcDdz?=
 =?utf-8?B?MFM3OWZMcnVrZ3pxazFaL21lakNUVEN1eGZmb0xOV0JDS002U3hBRm5XZHBO?=
 =?utf-8?B?Yy9kRVZrbURuQzIyVG13V0lMQllUcVlta3VKMmZLMWJDdEQzWWxPMno1WVJV?=
 =?utf-8?B?T2lHOXIvRTlFTkYzeFdjYnBRdnRmTlZJWFhhVkl6Sm0vQXYxTm10aUV0ZUdu?=
 =?utf-8?Q?26XN1+lXeG1SIPYK1cmul35+f0DKE+oagNKnPtyh1WbLh?=
X-MS-Exchange-AntiSpam-MessageData-1: EcLDATRyfpF9pg==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fce2cb8d-f22c-4699-b16a-08dec439979f
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2026 02:07:57.1786
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oBiL9rYz4bv7xOEC7Hy4pY9AiuXtn937OSLLuimBno6En/xZPcrhkKqjB7bOg78FejFSeaRGoktBT+hZJqRUyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8533
X-Spamd-Bar: -----
X-MailFrom: acourbot@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XV2IDFNSE2STAFCDCRVAMW5Q32LR77SE
X-Message-ID-Hash: XV2IDFNSE2STAFCDCRVAMW5Q32LR77SE
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:27:21 +0000
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 0/4] Rust bindings for gem shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XV2IDFNSE2STAFCDCRVAMW5Q32LR77SE/>
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
	DATE_IN_PAST(1.00)[81];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:lyude@redhat.com,m:ojeda@kernel.org,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:gary@garyguo.net,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
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
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,garyguo.net,amd.com,lists.linux.dev,linux.intel.com,google.com,ffwll.ch,linaro.org,kernel.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:mid,nvidia.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FCD8668C8A

On Fri Jun 5, 2026 at 4:24 AM JST, Lyude Paul wrote:
> Most of this patch series has already been pushed upstream, this is just
> the second half of the patch series that has not been pushed yet + some
> additional changes which were required to implement changes requested by
> the mailing list. This patch series is originally from Asahi, previously
> posted by Daniel Almeida.
>
> The previous version of the patch series can be found here:
>
> 	https://patchwork.freedesktop.org/series/164580/
>
> Branch with patches applied available here:
>
> 	https://gitlab.freedesktop.org/lyudess/linux/-/commits/rust/gem-shmem
>
> This patch series applies on top of drm-rust-next
>
> Patch-series wide changes since V15:
> * Fix some major rebasing errors I somehow didn't notice :(
> * Drop the dependency on LazyInit, use the trick that Alice suggested
>   instead.
> * Fix dependency ordering so that Tyr can get the vmap stuff first
>   without the other bits.
> Patch-series wide changes since V16:
> * Fix ordering one more time (SetOnce::reset() doesn't need to come
>   before adding vmap functions)
> * Rebase against the latest DeviceContext changes from me that got
>   pushed.
>

Not a problem of this series, but when trying to build it I initially
got these warnings/errors:

CLIPPY L rust/kernel.o
warning: gendwarfksyms: symbol_print_versions: no information for symbol _RNvMs1_NtNtCsjYlAz7NZ3Sw_4core3mem12maybe_uninitINtB5_11MaybeUninitINtNtCsbuTvttuFvbr_6kernel6devres6DevresINtNtNtNtB18_3drm3gem5shmem10SGTableMapNtNtB1K_5tests11KunitObjectNtNtB1O_6device6UninitEEE16assume_init_dropB18_
...
.vmlinux.export.c:8577:500: warning: null character ignored [-Wnull-character]
 8577 |   ...<U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000>...
      |      ^
.vmlinux.export.c:8577:501: warning: null character ignored [-Wnull-character]
 8577 |   ...<U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000>...
      |      ^
.vmlinux.export.c:8577:502: warning: null character ignored [-Wnull-character]
 8577 |   ...<U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000>...
      |      ^
.vmlinux.export.c:8577:503: warning: null character ignored [-Wnull-character]
 8577 |   ...<U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000><U+0000>...
      |      ^
...
.vmlinux.export.c:24529:2: error: embedding a #include directive within macro arguments is not supported
 24529 | #include <linux/module.h>
       |  ^
.vmlinux.export.c:8577:1: note: expansion of macro 'KSYMTAB_FUNC' requested here
 8577 | KSYMTAB_FUNC(_RINvXsi_NtNtCsbuTvttuFvbr_6kernel4sync3arcINtB6_9UniqueArcINtNtNtCsjYlAz7NZ3Sw_4core3mem12maybe_uninit11MaybeUninitIN...
      | ^
.vmlinux.export.c:8577:1: error: unterminated function-like macro invocation
 8577 | KSYMTAB_FUNC(_RINvXsi_NtNtCsbuTvttuFvbr_6kernel4sync3arcINtB6_9UniqueArcINtNtNtCsjYlAz7NZ3Sw_4core3mem12maybe_uninit11MaybeUninitIN...
      | ^
../include/linux/export-internal.h:62:9: note: macro 'KSYMTAB_FUNC' defined here
   62 | #define KSYMTAB_FUNC(name, ns)  __KSYMTAB(name, KSYM_FUNC(name), ns)
      |         ^

This is fixed by [1]. Maybe we should merge that one patch separately
and before the rest? I seem to be seeing these long symbol problems more
often recently.

[1] https://lore.kernel.org/all/20260605-nova-exports-v4-1-e948c287407c@nvidia.com/
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
