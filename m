Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UA/VIG1I6mkhxgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:27:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4BC454E1B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:27:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 512F2405DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 16:27:24 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012006.outbound.protection.outlook.com [52.101.48.6])
	by lists.linaro.org (Postfix) with ESMTPS id 5F80E4014B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 15:29:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=GZ84eIzi;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of acourbot@nvidia.com designates 52.101.48.6 as permitted sender) smtp.mailfrom=acourbot@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g8+8o1GaEY4NBIqYouMQq6L0DYWEDecud1I2d7eAZ5pyfFn2BxgDUQNuxTBMwMV+mxZy0zttuvttCHVrBS5qY/qDHSCRXmn21e0Z2zT571NMbB9lbAkY0I9K9c0MyBKIIQyRX526r6gh8bhpUs26M1bgJOJNeuzGw3HAvUgA0zj4p8sLKz+K1b8vahygkMnzJdPccUqFe78ARdMnzsSoh56417TkIlGe72wozzQLzM2bn+RaIeqYWn3YJxdjJlVZn7qvTXdLaPfsjmJJ70XEGN0tX9pc7ZUveKWW0Zd4aLV6G1wn7DebrZs4mSewdyvMiEJkGNRkB5cnRQeDlLBz5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S6ZJfTCMAzUjyli0jIb33VU82mNh0w/YKCORM6mv2UY=;
 b=WXb9cjoNVP7+3V08KmNV32HHG90V6e+ZNmBJoQeYtRCwm2Xvo1F4xj89qcyVopx3934hlxupVlcnyLclDEFbcmj9V1QBKhVPmv2bUtMwdf+YiHk1xRnckVvcI9VncBmhpCSJPBbaFjjs7KpaoOsJ/EsmsYtynETC7EZKiWggdskyrcy4aKlD5R0p+tRp7wdSyjsAVzAJwShPeTGSt4S5A8J/oQ4qQrK2LPdSLGn2S2JIc2GsXOM7IAGd0CeOmM+oAQx6o1xFuCNxCQFDhuitTpmadZWCCCMNHKBrkIyBBW1H589P6iQXq82DmLYUj8S/4LjcnmjSFZLIqzAaRcja2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S6ZJfTCMAzUjyli0jIb33VU82mNh0w/YKCORM6mv2UY=;
 b=GZ84eIzivEtk//jUKkHCPUCwOcpkfaPTHBX4P7ZR6TYdejOVvWOaNSAzdqgHEIlEUmryesviz/L/iehxkkUbbNiRgFE3uL0tuzPIQbSwHuJmqUbo/MtmAUHFWo9hd2UPyxVlUS8e4/Bc2S1eVo69BdSqbq/oijxUwzUd4p3Ghb1wHLOdyK2kpcz2V+XHWCDLQJJsLtzqafjabcesz3NWcA3dq7D7lwMOvn4yVBdIH/gODNiSfoORs672bMzoLA+TXT0wHzRgOc4bgmx0Hs/BoOjIDMIcsjQlIDdiPUtZYC1DMsOSbJ6t2gNHuA4YiWo5FcqHBr9YjVOS6jHTihOnRQ==
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by CY3PR12MB9680.namprd12.prod.outlook.com (2603:10b6:930:100::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Thu, 23 Apr
 2026 15:29:09 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.20.9846.019; Thu, 23 Apr 2026
 15:29:08 +0000
Date: Fri, 24 Apr 2026 00:28:59 +0900
Message-Id: <DI0N37WCTYBM.3CCQTKLZ6CGO5@nvidia.com>
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Lyude Paul" <lyude@redhat.com>
References: <20260421235346.672794-1-lyude@redhat.com>
 <20260421235346.672794-5-lyude@redhat.com>
 <DI0MI6UF325Y.2TDWZGCN3WGIG@nvidia.com>
In-Reply-To: <DI0MI6UF325Y.2TDWZGCN3WGIG@nvidia.com>
X-ClientProxiedBy: TYCP286CA0245.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:456::13) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|CY3PR12MB9680:EE_
X-MS-Office365-Filtering-Correlation-Id: d74055e5-6319-4fe8-bfc8-08dea14d100e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|10070799003|366016|376014|7416014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	A8NTlbHZtIzVwMHPJSUJzsrYdQT2U11H4Ywp3muuskoxwJXgCPakZ66M3XROeDgqsd1PbNouZwNS0eaoOWwmCitmBJKsALVVLldOyE8V+7c81Xy6wk5P+x0eMabygP+Iip2GlVQT5CB04QCYd5CSbejBdzUrEcHCEx8T61bjZcDRdCItkvIt3zAECwoCXwwUomBCm3MRaN5Wu6nqIc1VWQU/pmb4DDQA21EWcR1X4kem1r5/Kd+cqM4yYJxC2b6sA5Raxf4OPyjDmDLl7U1i7E0mAfbjl1W3PFMxhVkQMVyHAqGs5w+jjFvz6qP6QsgBocFL5t04RV7FyT2+b5qZsYpYLR8PkDfiXx4T6KRV7YnHf4Zxc+NLy8Wc7IXrs4n3hvSe/sLxnXVg92OVLjwncW88CtX4lm+EktGT+bqihB1x6Ky/QyBCjadYdvzdRAppbeuSxfjbutd9V2jQQdwaLMJysUn/Zq/vSBWPgIbLcx2k5U63IYl/MNZyCRHWVvsslz39V7aFZapSv5/E/LEyQmkP1KHGBZy1i+6cbTEWbUJ36ZMzrnxgL4lbrVT9I2nGZ7cKRgZvNjjYe3A4IuOxqDSY4fjUSDFCeWvt7VdllN9SLINQHStu9dH/14ogrmnM+K2aoZ44xwUhPqJXfOh5kR7IK2JEWL/+5YALaSV50r3Muv9m3+kQ/8L0r6piBkqlv0JsyLzDIKMbmDa3RiadHPFTPtkiVUXBIVASX1NdDY8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH2PR12MB3990.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(7416014)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S0REUFI3bitZN09nWlB5Zkp2bGpiUTYrVG1DZm9vTU5RWnp1N3AwakthOWt5?=
 =?utf-8?B?MlNnUnBXSGhXc2NSYllLckZuKzYxeXd4aHJCQWYvN2JJZEMzb1RraDlYYk40?=
 =?utf-8?B?TEVDVTZMVUtrUVFQS2xqZFl6ZHgyK3R4ZmxpTkd3R1M4VWZGRWU1ODdTNHMr?=
 =?utf-8?B?QVh4TElGenlwbm1ialhaNlRMZGMxNFdRVThMelEzcGZxNXU3ZVE5SHNDd0oy?=
 =?utf-8?B?amo3bjdxL0ZLVjhieHlFK1lTbmNzcC9TY1NpVW9uWU1ERTBIZnRpRnM2T0VD?=
 =?utf-8?B?UWk4SnhLem1nWkRtOWJNKy9mc2NhclBRQ1VMVVJFY2hscXRxV1VTb3lGb0pM?=
 =?utf-8?B?ckRsWUFLT3FuZlBKbmhUZzFTWlBKTS9KTVljMlF5YmxjMExlOUZpcnlzWW5R?=
 =?utf-8?B?QWhtUURUSzhkQXZDTjNwaTRGNnRKU2U5Y0hmcHBFY1R1bGxpbGpxdUhXbyt3?=
 =?utf-8?B?aHBUWlo1cCthNmhwdnMxTVZoSzNYRTQwNzJvODhKQzl4T2ZMeHZmY3ZRZ1p3?=
 =?utf-8?B?UlVrak5pUDR2QVdaQzVJMWhoR0UwVkRiTGJPR1BUMFdVUW00SjF0RVF5N2sx?=
 =?utf-8?B?cUwvQmQ1YXFLTG5jVlBPSkxOUXZmT2hvbThOK042WnBNUm0zcjFJazdLRnBK?=
 =?utf-8?B?V2tlaCtBMTlLUVAwL0tnZFFjZGkwbUxpTSthaTZUOTl0M25ESHc3bzJGVnQz?=
 =?utf-8?B?QjdkNUpvVVNZZVREdzRLUnowMXFZZVFiL2VoL2p5MzNqbFhobzNienVpRkJs?=
 =?utf-8?B?YkFWSGRIdzVsYno3ckk4QVZtb0NkVHVQaFdNdGVlUWkxejMwSTV5cURMdDBm?=
 =?utf-8?B?Mk5LU3RFaG5QdzQxaDhVNmFDWkErakViV2JOd2dhOWFRNkE3OGN3UFY4QWlC?=
 =?utf-8?B?eGxmVlVxMmdabUZ1ay9kbzBzbGJzU1psbElMYy9xVmlBeDVLVnowVlZ3UGdQ?=
 =?utf-8?B?WG9pei94ZWIxRVRIVnczcFVBSW43QkZTb2hZUk9hb0hRejRLKzFMc3J4WVcw?=
 =?utf-8?B?bE80ZEtRYnVCZ2ZxUmYvL1M3bUhUSk1nVVJjS1dSdFNqTEQrb0ZjQmQ5OC8v?=
 =?utf-8?B?N0RmalhYSmtrV04rd2JNcnU5Y2dvOG1zbG5sejVpbENPM0U3eDVZUnpaU2Vo?=
 =?utf-8?B?SzdpY1VpeDR3M2FlZ3RKYzlCR3FldDB2Tnd3c1J0em5HZlo5aFRsK2lVTUV1?=
 =?utf-8?B?bDU3VGNKZEtKd2JOMU53c0pJc3dPNGdsWmtzMU5vcEhFN1ptazVCUzJGaDd2?=
 =?utf-8?B?Q2xhN3pYU0gvWTRyd1NmenBKbHd3NHd5b0NrOUZJNWN0SDJhVC95aW40Vjlm?=
 =?utf-8?B?STk5bjBCV0VoLzF2WlQvRlQvTVluK2tSdEFCRlV2cktBMnNqZzRPSUVXNEFL?=
 =?utf-8?B?Q0JPbUQ1dGdMVWtNNXgrQ0ozNytCMDBjWkJ3U1FWZ0hCdWxXRVVMVnJORFB3?=
 =?utf-8?B?WHlObTdVa0J2T0tSYUptVkUvWGsyM1k3OFc4d09IMUZYWDl0UGdoeTFrN3Nz?=
 =?utf-8?B?OE1SNjhxMm8ydTdHZHVYcy8rLzNxUjRGengvY1MyVE9NbEtCYWpYc0V4Y2h6?=
 =?utf-8?B?bU9DRm02UTE1VFNMM05EWjUxV1hEeWpyeTlFQ043K3g2UXllTml4SWkvcmlQ?=
 =?utf-8?B?QzdPb000VHNNVkgwSXJxeUYweXhRV1lLbE92RWNRc1Z3c3NwMU1HNHBZM2hn?=
 =?utf-8?B?NjYvVGNoMWNsbjM0elZBZWtUTWpKRDdaTjZlejlUTUlEZEYxc2FSbHV4L1ll?=
 =?utf-8?B?R1RTd0E2ekNZTjBXNDVqRmlBVkxZTFJyMlp4U1F1NjduZ2VGY0lDMmQ1NDJU?=
 =?utf-8?B?NHBaQlZnQ0Jka3pMaHlDSHZEWXZaQ21zVThyZ3V4OWkwQ3IzS1FBSW1ZUEZK?=
 =?utf-8?B?VXhEWm5yVTdpQk5Nam9tUlRwdklSVTdiWGwzRm8xZFdIazFFN0tGOHdpUnd4?=
 =?utf-8?B?SWYzVC9PaWRJWitPdHdXTG9BUnl3emRNaVJkcWZPQnBTVGhTbnQ5Z0djTHFL?=
 =?utf-8?B?aGxudUVjeVR0SktMOGdsekFwT1ljVDdDT3NaVlJPUUxuNEkvbTlpTkREcDdS?=
 =?utf-8?B?UWJqY1NyL09WUUwyL0ZZcG5nc0l0M2VFampFNDJYNWw4bFYvNVVpbzBGQmR4?=
 =?utf-8?B?SkZKSitsS1pLdCtSRkRWRTBCRk8rYm9VV2ZkSjQrenhQRVkyWW9ZbGtoRi80?=
 =?utf-8?B?RWhtdmdIUkxiN29IU3ZvK2dGMjZ2eTlyQ2pnMXZQZ2t2d0ZKMVpCaXdQWFNl?=
 =?utf-8?B?dU0zS0dzZFkvL3FjQ0dFSWhLam1oUnRzLzFTS0xMclFPN0dwVmExcUhkdzlX?=
 =?utf-8?B?cmc0L1NxUGFUR3dmMU5lR2EyaTdvc1VFTUJKOG5nKytRdW82NHVmemszcGtY?=
 =?utf-8?Q?3qhxiHWw1XYtzsk/zcoGIcmBtdDhv3AFTxHcMChz6iEY6?=
X-MS-Exchange-AntiSpam-MessageData-1: OPJrWlpaae7gfA==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d74055e5-6319-4fe8-bfc8-08dea14d100e
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 15:29:08.9085
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F8Sw8cmtNUWsQz8YypcXySCZozNRi2hJwuRB88ZniHcGP6XqkQaf/M748G5Pk9OG3vdfjtHSCcDpn1akosGHRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY3PR12MB9680
X-Spamd-Bar: ----
X-MailFrom: acourbot@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3P2R7S4PUYMNP3HSDETSB7PTEMN5J52A
X-Message-ID-Hash: 3P2R7S4PUYMNP3HSDETSB7PTEMN5J52A
X-Mailman-Approved-At: Thu, 23 Apr 2026 16:26:53 +0000
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 4/5] rust: drm: gem: Introduce shmem::SGTable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3P2R7S4PUYMNP3HSDETSB7PTEMN5J52A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:mid]
X-Rspamd-Queue-Id: 3E4BC454E1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri Apr 24, 2026 at 12:01 AM JST, Alexandre Courbot wrote:
> Hi Lyude,
>
> On Wed Apr 22, 2026 at 8:52 AM JST, Lyude Paul wrote:
>> In order to do this, we need to be careful to ensure that any interface we
>> expose for scatterlists ensures that any mappings created from one are
>> destroyed on driver-unbind. To do this, we introduce a Devres resource into
>> shmem::Object that we use in order to ensure that we release any SGTable
>> mappings on driver-unbind. We store this in an UnsafeCell and protect
>> access to it using the dma_resv lock that we already have from the shmem
>> gem object, which is the same lock that currently protects
>> drm_gem_object_shmem->sgt.
>>
>> We also provide two different methods for acquiring an sg table:
>> self.sg_table(), and self.owned_sg_table(). The first function is for
>> short-term uses of mapped SGTables, the second is for callers that need to
>> hold onto the mapped SGTable for an extended period of time. The second
>> variant uses Devres of course, whereas the first simply relies on rust's
>> borrow checker to prevent driver-unbind when using the mapped SGTable.
>>
>> Signed-off-by: Lyude Paul <lyude@redhat.com>
>>
>> ---
>> V3:
>> * Rename OwnedSGTable to shmem::SGTable. Since the current version of the
>>   SGTable abstractions now has a `Owned` and `Borrowed` variant, I think
>>   renaming this to shmem::SGTable makes things less confusing.
>>   We do however, keep the name of owned_sg_table() as-is.
>> V4:
>> * Clarify safety comments for SGTable to explain why the object is
>>   thread-safe.
>> * Rename from SGTableRef to SGTable
>> V10:
>> * Use Devres in order to ensure that SGTables are revocable, and are
>>   unmapped on driver-unbind.
>> V11:
>> * s/create_sg_table()/get_sg_table()
>> * Get rid of extraneous `ret = ` in shmem::Object::get_sg_table()
>> V12:
>> * Actually move sgt_res in this patch and not the next one
>>
>>  rust/kernel/drm/gem/shmem.rs | 192 ++++++++++++++++++++++++++++++++++-
>>  1 file changed, 190 insertions(+), 2 deletions(-)
>>
>> diff --git a/rust/kernel/drm/gem/shmem.rs b/rust/kernel/drm/gem/shmem.rs
>> index 11749c36e8695..a477312c8a09b 100644
>> --- a/rust/kernel/drm/gem/shmem.rs
>> +++ b/rust/kernel/drm/gem/shmem.rs
>> @@ -11,25 +11,38 @@
>>  
>>  use crate::{
>>      container_of,
>> +    device::{
>> +        self,
>> +        Bound, //
>> +    },
>> +    devres::*,
>>      drm::{
>>          driver,
>>          gem,
>>          private::Sealed,
>>          Device, //
>>      },
>> -    error::to_result,
>> +    error::{
>> +        from_err_ptr,
>> +        to_result, //
>> +    },
>>      prelude::*,
>> +    scatterlist,
>>      types::{
>>          ARef,
>
> This fails on master:
>
>     error[E0432]: unresolved import `crate::sync::ARef`
>       --> ../rust/kernel/drm/gem/shmem.rs:36:5
>       |
>     36 |     sync::ARef,
>       |     ^^^^^^^^^^ no `ARef` in `sync`
>
> Importing `sync::aref::ARef` seems to be the correct way now.
>
>>          Opaque, //
>>      }, //
>>  };
>>  use core::{
>> +    cell::UnsafeCell,
>>      ops::{
>>          Deref,
>>          DerefMut, //
>>      },
>> -    ptr::NonNull,
>> +    ptr::{
>> +        self,
>> +        NonNull, //
>> +    },
>>  };
>>  use gem::{
>>      BaseObjectPrivate,
>> @@ -61,6 +74,11 @@ pub struct ObjectConfig<'a, T: DriverObject> {
>>  #[repr(C)]
>>  #[pin_data]
>>  pub struct Object<T: DriverObject> {
>> +    /// Devres object for unmapping any SGTable on driver-unbind.
>> +    ///
>> +    /// This is protected by the object's dma_resv lock. It needs to be before `obj` to ensure that
>> +    /// it is destroyed before `obj` on `Drop`.
>> +    sgt_res: UnsafeCell<Option<Devres<SGTableMap<T>>>>,
>
> I didn't like this `UnsafeCell<Option>` since the last time, but only figured how to replace it now:
>
>     sgt_res: SetOnce<Devres<SGTableMap<T>>>,
>
> It's actually designed for that! And lets you remove at least one unsafe
> statement, while simplifying `get_sg_table` quite a bit. With the other
> suggestions I have below, here is my version of `get_sg_table` for
> reference:
>
>     fn get_sg_table<'a>(
>         &'a self,
>         dev: &'a device::Device<Bound>,
>     ) -> Result<&'a Devres<SGTableMap<T>>> {
>         let _dma_resv = DmaResvGuard::new(self);
>
>         if let Some(devres) = self.sgt_res.as_ref() {
>             Ok(devres)
>         } else {
>             // Only called for the side-effect of populating the GEM SG table.
>             // SAFETY: We grabbed the lock required for calling this function above.
>             from_err_ptr(unsafe {
>                 bindings::drm_gem_shmem_get_pages_sgt_locked(self.as_raw_shmem())
>             })?;
>
>             // INVARIANT:
>             // - We called drm_gem_shmem_get_pages_sgt_locked above and checked that it
>             //   succeeded, fulfilling the invariant of `SGTableMap` that the object's `sgt` field
>             //   is initialized.
>             // - We store this Devres in the object itself and don't move it, ensuring that the
>             //   object it points to remains valid for the lifetime of the `SGTableMap`.
>             let devres =
>                 Devres::new(dev, init!(SGTableMap { obj: self.into() })).inspect_err(|_| {
>                     // We can't make sure that the pages for this object are unmapped on
>                     // driver-unbind, so we need to release the sgt
>                     // SAFETY:
>                     // - We grabbed the lock required for calling this function above
>                     // - We checked above that get_pages_sgt_locked() was successful
>                     unsafe { bindings::__drm_gem_shmem_free_sgt_locked(self.as_raw_shmem()) }
>                 })?;
>
>             self.sgt_res.populate(devres);
>
>             // PANIC: `populate` has just succeeded, guaranteeing that `sgt_res` is populated.
>             Ok(self.sgt_res.as_ref().unwrap())
>         }
>     }
>
> And if only we could populate the `SetOnce` with a `impl Init<T, E>`,
> then we could even remove the DMA reservation acquisition on the fast
> path, because `SetOnce` comes with its own locking and the DMA lock here
> is used outside of its intended scope. I'll try to push the necessary
> work for `SetOnce` and maybe we can do that as a follow-up patch.
>
>>      #[pin]
>>      obj: Opaque<bindings::drm_gem_shmem_object>,
>>      /// Parent object that owns this object's DMA reservation object.
>> @@ -117,6 +135,7 @@ pub fn new(
>>              try_pin_init!(Self {
>>                  obj <- Opaque::init_zeroed(),
>>                  parent_resv_obj: config.parent_resv_obj.map(|p| p.into()),
>> +                sgt_res: UnsafeCell::new(None),
>>                  inner <- T::new(dev, size, args),
>>              }),
>>              GFP_KERNEL,
>> @@ -176,6 +195,100 @@ extern "C" fn free_callback(obj: *mut bindings::drm_gem_object) {
>>          // SAFETY: We're recovering the Kbox<> we created in gem_create_object()
>>          let _ = unsafe { KBox::from_raw(this) };
>>      }
>> +
>> +    // If necessary, create an SGTable for the gem object and register a Devres for it to ensure
>> +    // that it is unmapped on driver unbind.
>> +    fn get_sg_table<'a>(
>> +        &'a self,
>> +        dev: &'a device::Device<Bound>,
>> +    ) -> Result<&'a Devres<SGTableMap<T>>> {
>> +        let sgt_res_ptr = self.sgt_res.get();
>> +
>> +        // SAFETY: This lock is initialized throughout the lifetime of the gem object
>> +        unsafe { bindings::dma_resv_lock(self.raw_dma_resv(), ptr::null_mut()) };
>
> There are 4 sites where we acquire and release the DMA resv lock, each
> of which require unsafe blocks and carrying the risk that we forget
> releasing the lock in the end. For this method in particular we need to
> jump through hoops a bit and store the return value into a temporary
> variable so we can unlock the DMA reservation.
>
> Let's do ourselves a favor and implement a small, private guard type:
>
>     struct DmaResvGuard<'a, T: DriverObject>(&'a Object<T>);
>
>     impl<'a, T: DriverObject> DmaResvGuard<'a, T> {
>         fn new(object: &'a Object<T>) -> Self {
>             // SAFETY: This lock is initialized throughout the lifetime of `object`
>             unsafe { bindings::dma_resv_lock(object.raw_dma_resv(), ptr::null_mut()) };
>
>             Self(object)
>         }
>     }
>
>     impl<'a, T> Drop for DmaResvGuard<'a, T>
>     where
>         T: DriverObject,
>     {
>         fn drop(&mut self) {
>             // SAFETY: We are releasing the lock grabbed during the creation of this object.
>             unsafe { bindings::dma_resv_unlock(self.0.raw_dma_resv()) };
>         }
>     }
>
> There here you would just do
>
>     let _dma_resv = DmaResvGuard::new(self);
>
> and write the rest of the method without without having to worry about
> not returning early. It also let's you improve the flow of the code a
> bit, and requires less unsafe blocks overall.
>
> I am not sure how much of the TODO at the beginning of the file this
> solves, but it should also make it easier to switch to something that
> acquires a reference to a Wwmutex.
>
>> +
>> +        // SAFETY: We just grabbed the lock required for reading this data above.
>> +        let sgt_res = unsafe { (*sgt_res_ptr).as_ref() };
>> +
>> +        let ret = if let Some(sgt_res) = sgt_res {
>> +            // We already have a Devres object for this sg table, return it
>> +            Ok(sgt_res)
>> +        } else {
>> +            // SAFETY: We grabbed the lock required for calling this function above */
>> +            let sgt = from_err_ptr(unsafe {
>> +                bindings::drm_gem_shmem_get_pages_sgt_locked(self.as_raw_shmem())
>> +            });
>> +
>> +            if let Err(e) = sgt {
>> +                Err(e)
>> +            } else {
>> +                // INVARIANT:
>> +                // - We called drm_gem_shmem_get_pages_sgt_locked above and checked that it
>> +                //   succeeded, fulfilling the invariant of SGTableRef that the object's `sgt` field
>
> s/SGTableRef/SGTableMap? (several like this through the patch).
>
>> +                //   is initialized.
>> +                // - We store this Devres in the object itself and don't move it, ensuring that the
>> +                //   object it points to remains valid for the lifetime of the SGTableRef.
>> +                let devres = Devres::new(dev, init!(SGTableMap { obj: self.into() }));
>> +                match devres {
>> +                    Ok(devres) => {
>> +                        // SAFETY: We acquired the lock protecting this data above, making it safe
>> +                        // to write into here
>> +                        unsafe { (*sgt_res_ptr) = Some(devres) };
>> +
>> +                        // SAFETY: We just write Some() into *sgt_res_ptr above
>> +                        Ok(unsafe { (&*sgt_res_ptr).as_ref().unwrap_unchecked() })
>> +                    }
>> +                    Err(e) => {
>> +                        // We can't make sure that the pages for this object are unmapped on
>> +                        // driver-unbind, so we need to release the sgt
>> +                        // SAFETY:
>> +                        // - We grabbed the lock required for calling this function above
>> +                        // - We checked above that get_pages_sgt_locked() was successful
>> +                        unsafe { bindings::__drm_gem_shmem_free_sgt_locked(self.as_raw_shmem()) };
>> +
>> +                        Err(e)
>> +                    }
>> +                }
>> +            }
>> +        };
>> +
>> +        // SAFETY: We're releasing the lock that we grabbed above.
>> +        unsafe { bindings::dma_resv_unlock(self.raw_dma_resv()) };
>> +
>> +        ret
>> +    }
>> +
>> +    /// Creates (if necessary) and returns an immutable reference to a scatter-gather table of DMA
>> +    /// pages for this object.
>> +    ///
>> +    /// This will pin the object in memory.
>> +    #[inline]
>> +    pub fn sg_table<'a>(
>> +        &'a self,
>> +        dev: &'a device::Device<Bound>,
>> +    ) -> Result<&'a scatterlist::SGTable> {
>> +        let sgt = self.get_sg_table(dev)?;
>> +
>> +        Ok(sgt.access(dev)?.deref())
>> +    }
>> +
>> +    /// Creates (if necessary) and returns an owned reference to a scatter-gather table of DMA pages
>> +    /// for this object.
>> +    ///
>> +    /// This is the same as [`sg_table`](Self::sg_table), except that it instead returns an
>> +    /// [`shmem::SGTable`] which holds a reference to the associated gem object, instead of a
>> +    /// reference to an [`scatterlist::SGTable`].
>> +    ///
>> +    /// This will pin the object in memory.
>> +    ///
>> +    /// [`shmem::SGTable`]: SGTable
>> +    pub fn owned_sg_table(&self, dev: &device::Device<Bound>) -> Result<SGTable<T>> {
>> +        self.get_sg_table(dev)?;
>> +
>> +        // INVARIANT: We just ensured above that `self.sgt_res` is initialized with
>> +        // `Some(Devres<SGTableMap<T>>)`.
>> +        Ok(SGTable(self.into()))
>> +    }
>>  }
>>  
>>  impl<T: DriverObject> Deref for Object<T> {
>> @@ -226,3 +339,78 @@ impl<T: DriverObject> driver::AllocImpl for Object<T> {
>>          dumb_map_offset: None,
>>      };
>>  }
>> +
>> +/// A reference to a GEM object that is known to have a mapped [`SGTable`].
>> +///
>> +/// This is used by the Rust bindings with [`Devres`] in order to ensure that mappings for SGTables
>> +/// on GEM shmem objects are revoked on driver-unbind.
>> +///
>> +/// # Invariants
>> +///
>> +/// - `self.obj` always points to a valid GEM object.
>> +/// - This object is proof that `self.0.owner.sgt` has an initialized and valid SGTable.
>
> The comment mentions `self.0` and "a valid SGTable", which don't seem to
> apply to this type.
>
>> +pub struct SGTableMap<T: DriverObject> {
>> +    obj: NonNull<Object<T>>,
>> +}
>> +
>> +impl<T: DriverObject> Deref for SGTableMap<T> {
>> +    type Target = scatterlist::SGTable;
>> +
>> +    fn deref(&self) -> &Self::Target {
>> +        // SAFETY:
>> +        // - The NonNull is guaranteed to be valid via our type invariants.
>> +        // - The sgt field is guaranteed to be initialized and valid via our type invariants.
>> +        unsafe { scatterlist::SGTable::from_raw((*self.obj.as_ref().as_raw_shmem()).sgt) }
>> +    }
>> +}
>> +
>> +impl<T: DriverObject> Drop for SGTableMap<T> {
>> +    fn drop(&mut self) {
>> +        // SAFETY: `obj` is always valid via our type invariants
>> +        let obj = unsafe { self.obj.as_ref() };
>> +
>> +        // SAFETY: The dma_resv for GEM objects is initialized throughout its lifetime
>> +        unsafe { bindings::dma_resv_lock(obj.raw_dma_resv(), ptr::null_mut()) };
>> +
>> +        // SAFETY: We acquired the lock needed for calling this function above
>> +        unsafe { bindings::__drm_gem_shmem_free_sgt_locked(obj.as_raw_shmem()) };
>
> For symmetry, I wanted to suggest moving the call to
> `drm_gem_shmem_get_pages_sgt_locked` to a (fallible) constructor of
> `SGTableMap`.
>
> It's not only for cosmetic and code proximity reasons - once you bind
> the call to `drm_gem_shmem_get_pages_sgt_locked` to the successful
> creation of the `SGTableMap` object, you can remove the custom error
> path of `get_sg_table` that called `__drm_gem_shmem_free_sgt_locked` if
> `Devres::new` failed since the destructor of `SGTableMap` will now take
> care of this for us. This simplifies the last complex bit of
> `get_sg_table`.
>
> The problem is that it would also normally require `SGTableMap::new` to
> acquire the DMA reservation lock in order to call
> `drm_gem_shmem_get_pages_sgt_locked`, but we already have it in
> `get_sg_table`.
>
> If we stopped using the DMA reservation lock as a lock for population
> `sgt_res` and instead switched to a regular Mutex, we could then move
> the DMA reservation acquisition to the constructor, attain symmetry, and
> simplify `get_sg_table` to the point where it becomes trivial. That use
> is also fragile as the `SGTableMap` destructor acquires it, so we must
> be very careful to never drop it in `get_sg_table`.
>
> I think that would be a good tradeoff for the time until we make
> `SetOnce` capable of being populated using an `impl Init`.

Another benefit (I guess) of using a dedicated lock is that you could
also call `drm_gem_shmem_get_pages_sgt`, removing the need for patch 3.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
