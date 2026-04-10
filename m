Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFOECQNl5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:40:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E7085431C17
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:40:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2B354062A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:40:17 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011037.outbound.protection.outlook.com [52.101.52.37])
	by lists.linaro.org (Postfix) with ESMTPS id E531C400F6
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 07:55:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=NrfttNV9;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of acourbot@nvidia.com designates 52.101.52.37 as permitted sender) smtp.mailfrom=acourbot@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qAPZE2lrgKiQug8u6u64THoMJ6CK+EhjMbLhNf0h4oY//E39CNgRCdVfCcduliI9Wkeg+V5dDhWm+mdiXufRISRqYxcQMbj66PRgBaMsJgtqhOSt4O6xXjJLKGtjs50xb4ypg/qQhG7r803dbSrvjdFJIW/wM8FDX3xzYzkh8nobx/jgWWaS0CLc81TqdQb+R3DIoIwl+Wo3fp2m7mlpGXLyLR0E/L+ONc1sVE8DKcW3FssycXWJw8DJwGiQ/Hv7U8VtBvWNCrHZQqc6oCbwFCxNevFzZaLMwrgfCOsbCT7Igi01D+Kpv2Sa0pmXVcuIGDNYsk07dIcsHrQFAaV0bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T+tRLy47TPGBNhcYYlRDu8gYBXmi+6VZHjytvWYzG9Q=;
 b=IwUP1kWTjcao8WXic2z+nPr4I7V6K8WEbV0LddkM1D/IcYicHywsdz2ERKdplBsLGUoXM2DDfNe2lP3yJQCAAYfZYWabI6FdqLXULQNK52YwUF67p657VmPiu/HybstiKnMBPtGxHa14yQEprmRzvLeAmJ1VoGN6UpFjBiGuW+19jm51xikTWXjbsWBf6cUuvBtvhqLR4PDdJNinknPK0FmJHSTWytkPwttEE0SADQch0iRr/oIpOik/Ax1uSPoatxGMhpVtYJ62d10Weto3Yq7YfOA89VIb0r3kNdOcouJRppyHK9dPwkp+aMVVVW+7dLFJDsbjSMIbjrsEK8fV2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T+tRLy47TPGBNhcYYlRDu8gYBXmi+6VZHjytvWYzG9Q=;
 b=NrfttNV96jjJabNfj8hIU9kl5x4zZmprgj5szmhzxCfd6jllrzNlvgEEKnfO9uRDqeAejduycPL6H82P8imb0WYAKzwUsDxoVUuA1oTHMD9/hUHSl0AYCPXWRztxLU0UHrHzxT7J06zrN9fkjpK1q3eJDyhKYgoNy6guWsQeFo1O/SO9an6YvSJ8ahugAZdKdBe+SJT7BkOrCXdBBW7jH8ZGcpHDoAysCtaZNjlz9iPmlahpqv0yRrQ2EqpifqIIfT0QjDx4iKZMEwaLHWyRtp8jK48MiR7q+SbcvPJHo+p9Qrr+fTOtoIWszYFnRFJGVrUa29yDdNijkQFYTnXdXg==
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by PH7PR12MB8156.namprd12.prod.outlook.com (2603:10b6:510:2b5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9791.34; Fri, 10 Apr
 2026 07:55:10 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 07:55:10 +0000
Date: Fri, 10 Apr 2026 16:55:05 +0900
Message-Id: <DHPBALU3B2OF.3DXI4S0P1CC3E@nvidia.com>
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Lyude Paul" <lyude@redhat.com>
References: <20260409001559.622026-1-lyude@redhat.com>
 <20260409001559.622026-4-lyude@redhat.com>
In-Reply-To: <20260409001559.622026-4-lyude@redhat.com>
X-ClientProxiedBy: TY4P286CA0125.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:37c::15) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|PH7PR12MB8156:EE_
X-MS-Office365-Filtering-Correlation-Id: cac5277c-bd91-46d9-c3c8-08de96d67c9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|10070799003|366016|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	QR2havHlOfqJ1KkYWn5Jj2Dc0mj0/qIkeu1Pt7SXDtrNExrDMUlsquQGUwzype5J6BaTk7ZGhwREsQ3mI/xV9hyjwLMRqL1bsYEN1l9Kg2lNiny9mPPXL3Cff8Wsv9/5rRWNyCN6SAqlgp3sGmel5ww0CBfmR0RDkp8oXXd/JzWpJ+qsMSbWr89YYAXB30lTSBjo6FBVDCqcKmzg+bCelJYJ/2hE6DJbvIXD0/zTz3lbjR2ocPiMnE3M8/2DgVQ+VKFjPWHOlu0YrsA6uE4jITQCw+UpQXSH3xu6PpU5wXulDNJ0++l+O8/pseWxz9592NBqsNJUXw35tcmgl20OB5kkMMqBTSoQ5shd/b5eQosm+zvluMTruwhIVncEB74gIoOJQ3gTB88I9lIAwWFFkwTu0Flt4x+gPGr3N9teqlbuwFweozLYnsmgtL1B45+0MfR/P8S7vHWz+FZ1x/6a4/Hfsci18y1PkMsPmcuzo3Wb4+MWeMQHM4y6HyfTHi+YloOjUayi6tu7znCqdcbINIFYm8Kc+mjFA6Fo4Qpy/Nb2KBrwIPK4GgtiMjgojW/Xj1v2M1P1QuScg1aJPHTBQd9t1GfLpC/lWYCpBzmHrH4iO5yCci1BIszio2Lj5UXpmkMEU9eljgkpD0YN5Dlsr9/Y8p4CAlPhgB1CW3AWe67PXBLypzH1UUVkJgfMBwzCklCdAIGb+ra9FBM+sUP0udUhS+4lLLMemcO98eZRlPY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR12MB3990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(10070799003)(366016)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dk5PQzRPZDFhQ0JJZE9uTzZXN2Vjdnh2M3hicWUxWVJhZ1BuT05PaVo2SlJr?=
 =?utf-8?B?OUlBL0Z0QmJ6ZnR1Q09SUllRc0ZPc1U3Qy9PRXZhVDNjbzdRRFRxc3hxM1ZL?=
 =?utf-8?B?dllVRmNsNHdNRkxGT24zVVEyUmVuQUxTTVNsQmNOVzJIMUZrK0s4dHgvTVZi?=
 =?utf-8?B?NEFJMVRESGdTa1Y2Z0MrQWxGNEhpUHJjelhVQ2twQkxlTWdlb3BxZjQrN2Fm?=
 =?utf-8?B?TzdmV1FERzQwR2Z5TURWT3pzbjIxZHM4NHV2T3ExZWZaZm4vZGh3SU80Tk5p?=
 =?utf-8?B?MW1KYUlQUm9ZWmU2RFJZcjVWTVcxSWM1V2NYMnJ4RE14cUVvYVdJMkFCbnV5?=
 =?utf-8?B?eEFOWGZodzhtNE5VaHBoMlFTU1MwZ3dMd2hHSUlRUThUWGl4VzVZT0EraGp2?=
 =?utf-8?B?dXFyc2M4UW9zNFhxTjM5b08zL2tEYUpCdXlULzlscWM4RStnYkRZWTlXZ2s5?=
 =?utf-8?B?OHZkbEd3bE5GVzY1eFM5WjhDWkRnaGVwdXZYcXJObGxnU2VZVmVuTExGVGty?=
 =?utf-8?B?SXNVdFMyMnBnc3NsY3J0aEYxMlZkMTl4Q2ZsbWxOOUZxWDlwMG5lcUo1TFdo?=
 =?utf-8?B?dnR5TkUxUUR6Q1A4ci8rcWFYTU1kM3oxdHJIWU1GZjhuUlVLbkNUY3N2QUQy?=
 =?utf-8?B?NmJWbTZOZTRjQVNHNEVHUmxBVUNtc1UzdUNRQjZZdVFCUHo1aklTTGpORUpa?=
 =?utf-8?B?aWJPM0N5VGx1THJ0SEgzMDJUQU1HdndTNlpjUG1mQllqd3lNN3NEWlhFRzNT?=
 =?utf-8?B?SmhoN2xoRHIyeVZLSEN5Y1ZRZ3NnODhqQ1A2cnVrVi9ldzlOeHhScFFsY25Q?=
 =?utf-8?B?QUNMSmJhUWFnWFQ1M1JENld3UUJYSG55NzNiYzFhRlh2NmQ2a3JmcGg3bUtI?=
 =?utf-8?B?S3g1UFNOZ3ZMWWVUNVJtK0szRWNFVEkxTWM0SHdDdnlsaitCYmptYmw2Mzl0?=
 =?utf-8?B?cDJ1eHNKM1p6RjBZM2NFTXRPYjh6R3I1MUFLSURxTWtOd2xrV2ZKeVYvQUgx?=
 =?utf-8?B?QjVVUXFCQlMvVlNqYTJXRVhldCtBSVpoRmlVWUdMSlI4ajdKdFVIZzdVRkph?=
 =?utf-8?B?cnFIa1pOZzQ5eXRNYk02UVJhTGViYkoyeWtpNWNYY1gvdHBOd2ZzaFpCUEtx?=
 =?utf-8?B?Q1RqZFBkV2ZMdFNid2Rmd0JDVmR2WExJU2VZckZhbm1JUmRITExCN01DS3J2?=
 =?utf-8?B?dk5UZmxMWkFjb0dHOCtDNXl1OGNrMUVjOUY2a1VPRTZnWUk1NGZWdVoxNjRv?=
 =?utf-8?B?NUVBSjhaNG9XMFZjUmRPc0lHRnFnWlhBMVBkU0NycTM5Y090S0NoUzB5ZWtv?=
 =?utf-8?B?RzZLWG80VVovV0toOWcvcCtIY2M3WTFBOHpOM0EyMHh5TC93UGJRTFphY1RN?=
 =?utf-8?B?ZUxlTE5KT2lqODN6QnlEV0M4a1NkZjlIUkJ0SzJtbjNObjhhZ1lNQlB2cnJU?=
 =?utf-8?B?dUhIem5NWGtRZnhlcElPd1BEVlA4cWZOajZzMWU0dVd3NThIZDFZdWcwd1RD?=
 =?utf-8?B?YUxoRXNnY0RhM0NrQ2EyR3cySUh0c2VZMU1yZUxIMjV3WCtwcnN1M1NpeW93?=
 =?utf-8?B?V2VwaFNUWVdYS01RQnBGb2IvTysxQ0tKOWdwZFdZSEdubWZPUWVIbU04TitT?=
 =?utf-8?B?MjhDUXhiVERxKzFvODgxaXR0ZGFSTWdiZ0dYUUhYUWhRMjhzanFsVE9xKzBG?=
 =?utf-8?B?UGFtd0t1SE40WU5uZWpHVTZhWjRGNDVpMExaMGZEZmd1Ump2SjhtMkNRNDRF?=
 =?utf-8?B?N2x3cmVmYWNGUnpsUGJXWXYrYXFBKzg2K010bnVHRERJTkEybTM2U09uUm1n?=
 =?utf-8?B?RUJhRjk4UkZuQ1ZneE1uS3lwNWl2TGFndmNSS2ZTbW1wTExkUmpBamdVN0JV?=
 =?utf-8?B?M2VjRHBaeXJXQVVKbnYxMDRWcmdTcVhHRWNZN1ExM3A1d0ROemxqbVFiL2ts?=
 =?utf-8?B?VjlQOXlDVzBiMFhDOUFVdTRBaTRTN0pSbUZWczlsbGI1WmlKUDlLYVllMVBU?=
 =?utf-8?B?K1RSTWRsZTRTeml2cnNOaTdaUnVuMTVpbjI0Qnh4b1VWdUM2a0NkS1JBRHZK?=
 =?utf-8?B?ZHhyNVYrRkxPcHdZaUJmdHh4SHdVR2RraEY0elZ4MW84NURwY2R5d1FFNlc2?=
 =?utf-8?B?Q01LWk91bXBSdjJHUHlibUdkSnM4MWdaOXMvR2FmSFdsNXdhaFFaQ29jYUhv?=
 =?utf-8?B?MHlvVmVIZ2dFdnNZdnJPWmVwb0FSZk9RS09RSVB3NnQ4cXMrSkt1Y3NTWUlN?=
 =?utf-8?B?UnMrbWh1cXlVUVQxR2FCcDdscEwrRFpINk51dTlxUGtLSFh5U1pDekdBUG1R?=
 =?utf-8?B?bEhTR2sxOEVrMWRLbXZtV1VVcUZ4ZjEvZVUwZng3Q1hEeDlybFV2enVweEtG?=
 =?utf-8?Q?MG1DzF76vj4RzS8qrm2O+wqwnph+plKuotgDbJzU2FOSr?=
X-MS-Exchange-AntiSpam-MessageData-1: IHL4wvmaC2qQMA==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cac5277c-bd91-46d9-c3c8-08de96d67c9b
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 07:55:10.6395
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aett+p+DS/36s4jp4nl6bMUCuv9QBCI8FKlqcHvLgcMWh2m+LsHj/AEDS9/YmK5Un9pJ3I6/9kj/XUyxCyXbTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB8156
X-Spamd-Bar: ----
X-MailFrom: acourbot@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZG4V7AYZ2T4G2NOM4PM7S4SQVBQYDIE7
X-Message-ID-Hash: ZG4V7AYZ2T4G2NOM4PM7S4SQVBQYDIE7
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:39:02 +0000
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 3/5] drm/gem/shmem: Export drm_gem_shmem_get_pages_sgt_locked()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZG4V7AYZ2T4G2NOM4PM7S4SQVBQYDIE7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[249];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.921];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: E7085431C17
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu Apr 9, 2026 at 9:12 AM JST, Lyude Paul wrote:
> We will need this for implementing a set of SGTable bindings in Rust for
> gem shmem objects, so that we can use the dma_resv lock to protect
> additional resources in the shmem object.
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/drm_gem_shmem_helper.c | 16 +++++++++++++++-
>  include/drm/drm_gem_shmem_helper.h     |  1 +
>  2 files changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
> index addf8c1e5341e..15de7f6cc4981 100644
> --- a/drivers/gpu/drm/drm_gem_shmem_helper.c
> +++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
> @@ -786,12 +786,25 @@ struct sg_table *drm_gem_shmem_get_sg_table(struct drm_gem_shmem_object *shmem)
>  }
>  EXPORT_SYMBOL_GPL(drm_gem_shmem_get_sg_table);
>  
> -static struct sg_table *drm_gem_shmem_get_pages_sgt_locked(struct drm_gem_shmem_object *shmem)
> +/**
> + * drm_gem_shmem_get_sg_table - Under dma_resv lock, provide a scatter/gather table of

The function name looks incorrect.

> + *				pinned pages for an shmem GEM object.
> + * @shmem: shmem GEM object
> + *
> + * This function is the same as drm_gem_shmem_get_pages_sgt, except that the caller is expected to
> + * already hold the dma_resv lock for @shmem.
> + *
> + * Returns:
> + * A poitner to the scatter/gather table of pinned pages, or error pointer on failure.

nit: s/poitner/pointer.

Otherwise,

Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
