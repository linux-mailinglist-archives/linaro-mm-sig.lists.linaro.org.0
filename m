Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cH3RBCD61GmgzQcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Apr 2026 14:35:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 787773AE79F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 07 Apr 2026 14:35:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 65CCD4046D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Apr 2026 12:35:42 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012018.outbound.protection.outlook.com [40.107.200.18])
	by lists.linaro.org (Postfix) with ESMTPS id A84A93F904
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2026 12:35:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=HC5VYDTo;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.200.18 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YM5l6aglDOJn+HFwlTvfuJiJwbj3o4NXtFPVV5LXP/LLxdjbNfdSzbry/4jw9DJQp+dFB6i1efkb08MryjV4vrZxqLdghnt83Sg9u2s5hD/dkmhB59iIcq8Wp/BggvwCTUibjyp8MfBursar8CxoNSlWPRQEWTz6knvJidjzPnimhbJAUIf27A9/DrjhvNr/uDCvhS3RHMNTkT15QssLJz8tYBQDUYW/GXNHp4sB2/3Fn/AKJDU3ml7A48/BbiNBEwqvk8NMD/IBBlat2aqGExQk89748ad/SfBnQ+46q9mvjJeLy9oKaDSRidb2SaFP2YUqjA/azs0CpIFaFegmXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GWv55mxEEKfHjGexondYGX8JivN3oN0uSlgsq+1qlV8=;
 b=QzQ0BWx7NyPRGA9Jph3kfY702P85KVFerjVw2Ffn8WhoCyIEisSedUCme98zWnlNeefY1PsM2LicORik5671R2UHKw/is1qOI8rZhU1t2E1BOsG2+NSKU4AaiRg21amomPqfEUqkKmjFYsS6PHoVgyE26fosW2ihVf1Ox8APJo3LivXIiU0FJWqYXBWRrl8q443wgz9Sgd80oazS/m1m6DIt2uWJYgqtiR5UZO3jwoNoDTkw6AvjemhIS7i25lCwbfqLpWm1GgdJWVc0tSmv+TjE/tDfjH7pv5GyI+UF7v4qtCtHIUwPqgujubicNhIulgrJs+CwXRE6yLTyShl88g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GWv55mxEEKfHjGexondYGX8JivN3oN0uSlgsq+1qlV8=;
 b=HC5VYDToNcI8MR+QU5k/eOpohciMLizfPvTvKr/pkNELLh/Ny7CZkwP41EQmkRosoBQKzPft68Ib8aQSJQVyg0ZGNmiiitHcuOt94KKkFXa5G7kovdUMDjCMQbDfH+bkO8x3t6TOLH+BA5wdt3VC5adWkSb3PjHIrckUCz0TwXJiMUGNFQeOhrR7+wXvFH7B0psjkNyBnDHgxWgQz15ELRDgaTn+oDs27RyLw2RycnvaL/BjdOK1r3/Xcm2DD61e+AzueAgTfFmdaARWmfA/GfCcvTmX6/Hp6/7U2TppzXTZrVn79YFpXXdsBSXeMjhh4G9MePcM8GK5V0zKNzXBWQ==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by SA1PR12MB9247.namprd12.prod.outlook.com (2603:10b6:806:3af::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Tue, 7 Apr
 2026 12:35:34 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9769.017; Tue, 7 Apr 2026
 12:35:31 +0000
Date: Tue, 7 Apr 2026 09:35:30 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260407123530.GA3395114@nvidia.com>
References: <0-v1-0a349a394eff+14110-dmabuf_kunit_jgg@nvidia.com>
 <7c30f527-abc4-43a9-a11c-9233015b0a59@amd.com>
 <20260302130113.GV5933@nvidia.com>
 <c088698d-0bb2-4b0a-acad-946ec3df5777@amd.com>
Content-Disposition: inline
In-Reply-To: <c088698d-0bb2-4b0a-acad-946ec3df5777@amd.com>
X-ClientProxiedBy: MN0PR02CA0023.namprd02.prod.outlook.com
 (2603:10b6:208:530::18) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|SA1PR12MB9247:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d4e8650-770d-40eb-cb20-08de94a227ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	Hw5ViQVwNfqXa3dyBxkhQFZSHzx9+SN9ZX2NieUHaIXOv0aYmZO7GjPoTb2MPPcW9RhpRBqRor9Lgm6HDzaKVK+ZcPfbeqmI+vQJ6TSnYb8w9YiHNIwtWaOUpEgB0rHAQseeiVDEhEcFFAWwxQYAfEdoig8+fsr8zVJGN6O6a6pR4hJ12a/QkzwwyJSRG49Jvlfv7hjs2iiqVDcaqoTpb3H5l0OX5YTjPv80T3KlRKEDfpkdYt/dXa14BBS/7Zte512040XwR5477qWEqnRJ4jrewnUEc9DJhq/pvwGW1tqRlCr0ttfowUrt+Q9OdS86PvVhWHQIdStZzvj9YhokMcv4CpoCNR+KRzY6S+YWWE5YasQeil+LhrI2uQ3gVnXkVWAd2G8kRzloSgPQyZ9P91QBtConTommX6uvm+/SkibcT+eJCV1jw8gxf+BVXAI7NlWFkwElBJJAz78roev3dBmJfuZqWtvfgJcciBDQya/JwC9Nw84MFFipgpUwkPSoqjMKNAXMFUAkZ3L/fKAYq5KVjxmiFV0FC7o82p2oAjJ3m58roJ1XmWv56obC2g2L2bWGD92r/7LbCbW6NjIEVcj0k29OCX5KKcufhYkUS7yAixJCw2ZssKsowcwM6mFvXWxGoHZRZeZsU0xOiJMkLu02s+D8UYWQjdKzW/k7+RJDEHZK9BNjSNUuApMAQ3qd0DJw9skX1M0/FyajzM+2dAvW/PSwnx4l7hEa6ARMDcM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RHNuNmoyWmErZnprSkxoeEx2SnJzM2lVdXBsNzllbUZzN28xbFJoZGd6Vm9D?=
 =?utf-8?B?R05LbWZFV2UwZUp5a3oyOUIzUnpOb0tpeU1ScXQvUjFkUFpKUEpsQTQxalI4?=
 =?utf-8?B?T2xUUDRNaW9ZaTREK2VKK2RPUG5CMnVYQ2pscUVsMiszeHlVSEtxeE9WRG5D?=
 =?utf-8?B?TXlsM3Awb28zd0wrMmFLK0Rid3RBOGd2dVBnUHI1c3Z0NzRZbC9KK1VHdGlI?=
 =?utf-8?B?UW5QMVhHK1MyaWNmRUFaMGZvdlZaZTBGMU1lMkI0N3lWZ045dWpKUnFzQWM4?=
 =?utf-8?B?VHUxSEdrbnpNSWtjSUxLaHNkL3NTMnJsZEtSZ1FQd21ZSGF4YmM5RXM5b1hM?=
 =?utf-8?B?bDdsNm1XYlhYdTR6MkRQVC9JWWFnSk1LS1llL3phbVdDbDlMZTVkNEMvSW8z?=
 =?utf-8?B?bXYwWHc3YnlTZFNoa1R5dGNiemFoV0V3MUlRRVlMYjlxaTdWVmpKcVhvVEJK?=
 =?utf-8?B?WEY0VlE2Uzh3bFVObHJSd0tBUWdNSlRTZytEZDcvbno3aXd2YmdpSisyQUxZ?=
 =?utf-8?B?QUtwK052TGJGMURDUXZYb01SckZnR05OR1JBcm1JMUl2NFkrU1ZFekNlZGZM?=
 =?utf-8?B?M1Z6d2R2SzNIVTc1dDNlM21RbjRMWmZIZTZZOE1kcUc1MGhEU0llNmlreEZ4?=
 =?utf-8?B?UVR0N0xpYTRNbjIvS2NZUW9kYjJTNnR4QVZtVlNXVHJrY0h1dUY0UVBDbXVN?=
 =?utf-8?B?bFUrWjZnazFzNTNLM0p1bzdxUllDZVZhSVlkZTlTLzJJNW82OGVXeVFEWEoy?=
 =?utf-8?B?SFhQUXAwb0QvUmk0UzBpek5KNEJGdyt3TXFrZWQ4TWtzU3RZYVZvOHJhS1Vx?=
 =?utf-8?B?M29HZmE1bnpERjFlQW5BWnZzUzF0N1RVUndhTHFXZ09OcHdtTHJYNFF0V28x?=
 =?utf-8?B?OVZrcmNqQm1sVW5HblBPR1gvZWdFWm5ldDlUMllaSnIyYkk1T1JmcXUzMTh0?=
 =?utf-8?B?L3AxcXR4ZEU1Z0lQcW4vSFNkMkU3RjY0QWdoOXpUalh2b2NDNDdNQU13b1cx?=
 =?utf-8?B?d29DU0RaSnpjZWwvNjhka2dpaSt4TkpqRVNWa0tKTTNuSGRNZUFsemR0Smpw?=
 =?utf-8?B?TVVmZW9JOTR4OVFmVDlETVVOdGwzMVhwbW5pc1BPUGhobXMwYmxBbkZzUzJ1?=
 =?utf-8?B?SFo3MHd6cW9IR0I2UGQycDIwamJJcTlnVGVEWEhZbytsYjRUV2h5MTk0cUho?=
 =?utf-8?B?RUJsdDYyS0FRMUZ5cHh5OCsxK1Q1SVI1TVg2Vlg0ZXF3cE13SXBycjhUaE9Z?=
 =?utf-8?B?SW8vUWpJdStGRzVMQ3Y4andYTDBVQ1kvZHNIaVJTR2h0cXlrNFJybVhjUnJE?=
 =?utf-8?B?MWp2eGp0SzBqYnJydXBjc1hLWGxhOEhRRDhicTJzU0xCUU1iQkhSRURvd0lQ?=
 =?utf-8?B?NVBCNGhmVmxNcUVoTG84a2xZWE0ybzVzZW03MUlKT1hrWUE0dlNIVWxYOGhM?=
 =?utf-8?B?ZW51b0cwV1VGd3RYRmIvdjRMY0p3Q1NEWFJFeFFGcnZwVHUrMnpLTFA0cmIy?=
 =?utf-8?B?akZBcnJWNE1XR1FocXdBQmV0cUN0SCtnUVFQeWQySGQ1U1hqaU1ZV2laQVVB?=
 =?utf-8?B?V3FRak9HdXVPSk9HeTcyMjA1T1VqaGRxazVBSjJ6bThYVVN1RDlnSjByNGY2?=
 =?utf-8?B?MEorNGhiYmw4b2dMN01CdGtndUo5SEU3bkt3U2pSb3QvVG8wNWk5eFVKSUl5?=
 =?utf-8?B?Nk81N1I2UmNLdGJWelAzVHd6aGxCWkplSGk5WHQ5TVZqYTIxRVBRWUp2WkRV?=
 =?utf-8?B?ZDZIUVV3a3pkZUxEdFM3RmNVdkt1VWtjYUE3dHhQaTljSjFlL0tsa0hwMHo3?=
 =?utf-8?B?clVmazU1eHNoak0yVGgvQzFMNWdmeXRxdXo2T2dXaUJVZ2QxNVA5bzJpTldi?=
 =?utf-8?B?eC81TU53bGR6M2xYRWNCRnQ1akJXOE9JY3dZczd0MVJyanUvOWZYc2l5ZXd1?=
 =?utf-8?B?SWd1NEMwUFZacDVQekRRUUpUTTNBU1JvM05QbkxhUnVuSFZrRDVpbm1ZQk03?=
 =?utf-8?B?TGV6OGxkVElnNnFYd1ZRT1EyS1BWTWgxK0RibWdKKzNNbUFZR1NCMXNCaldB?=
 =?utf-8?B?aHg2UU4vTHlpNFl6UTl5Y2FmUHlXYks0VUo3WnQreXhpNi9DRTl6RGloVUZR?=
 =?utf-8?B?U3c1ak1zWVhrU2RuZkUwWmVaR0pkUldpeFVFRXN2R0g4bjZnOG4rU3l2cUNY?=
 =?utf-8?B?T0wzcGJBVVZHVVA1U3lVeGczcW95MmNudzVsODNOSXg1YTBZNW1Ta3VTS1F3?=
 =?utf-8?B?citEZ1ZUeHkvMjFsOWNDRTdQTWliSnVQUnROUmlxU1lZRjRBRVB6cStYRjZy?=
 =?utf-8?Q?4ykTtG2JM19L7xP7Fn?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d4e8650-770d-40eb-cb20-08de94a227ef
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 12:35:31.1115
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W4WPNTkTW6uKIuvAj/QzabbVjOwz3R7TNXYhrGTAl9eFgJTYgWJ+MHTikTRCP6ZH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB9247
X-Spamd-Bar: ----
Message-ID-Hash: KZIOQQK2D5QTRK5O4JLCQ2G6JC6QSFQ5
X-Message-ID-Hash: KZIOQQK2D5QTRK5O4JLCQ2G6JC6QSFQ5
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Airlie <airlied@gmail.com>, dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Tvrtko Ursulin <tursulin@ursulin.net>, patches@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/5] Replace the dmabuf custom test framework with kunit
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KZIOQQK2D5QTRK5O4JLCQ2G6JC6QSFQ5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.922];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,linux.intel.com,lists.linaro.org,vger.kernel.org,intel.com,ffwll.ch,linaro.org,ursulin.net,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 787773AE79F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXIgMDIsIDIwMjYgYXQgMDI6NTg6NTVQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gPj4gTm8gaWRlYSB3aGVuIG9yIGV2ZW4gaWYgSSBoYXZlIHRpbWUgdG8gcmV2
aWV3IHRoYXQsIGJ1dCBmZWVsIGZyZWUgdG8NCj4gPj4gYWRkIG15IEFja2VkLWJ5IHNob3VsZCB0
aGF0IGdvIHVwc3RyZWFtLg0KPiA+IA0KPiA+IEknbSBjb25mdXNlZCBieSB0aGlzIHN0YXRlbWVu
dCwgYXJlbid0IHlvdSB0aGUgcGVyc29uIHdobyB3b3VsZCBzZW5kDQo+ID4gaXQgdXBzdHJlYW0/
DQo+IA0KPiBTdW1pdCBhbmQgbWUgYXJlIHRoZSBtYWludGFpbmVycyBmb3IgRE1BLWJ1ZiwgYnV0
IHRoZQ0KPiBkcm0tbWlzYy1uZXh0Ly1maXhlcyBicmFuY2hlcyB1c2VkIHRvIHNlbmQgRE1BLWJ1
ZiBwYXRjaGVzIHVwc3RyZWFtDQo+IGFyZSB1c2VkIGJ5IG11Y2ggbW9yZSBwZW9wbGUuDQo+DQo+
ID4gSXQgaXMganVzdCBhIGt1bml0LCBJIHdvdWxkbid0IGV4cGVjdCBhbiBpbnRlbnNpdmUgcmV2
aWV3LiBUaGUgdGVzdHMNCj4gPiBzdGlsbCBydW4gYWZ0ZXIgYWxsDQo+IA0KPiBXaGVuIHNvbWVi
b2R5IGVsc2UgaGFzIHRpbWUgdG8gdGFrZSBhIGxvb2sgb3ZlciB0aG9zZSBwYXRjaGVzIEkNCj4g
dGhpbmsgd2UgY2FuIHB1c2ggdGhlbSB0byBkcm0tbWlzYy1uZXh0IEFTQVAuIEkganVzdCB3YW50
ZWQgdG8gbm90ZQ0KPiB0aGF0IEknbSBvayB3aXRoIHRoYXQgYXMgbWFpbnRhaW5lciBhbmQgdGhv
c2UgcGF0Y2hlcyBkb2Vzbid0IG5lZWQNCj4gdG8gYmUgcmV2aWV3ZWQgYnkgbWUuDQoNClNvLCBh
bSBJIHN1cHBvc2VkIHRvIGRvIHNvbWV0aGluZyB3aXRoIHRoaXM/IEl0J3MgYmVlbiBhIG1vbnRo
LCBJDQpkaWRuJ3QgdGhpbmsgdGhpcyBzZXJpZXMgd291bGQgYmUgYW4gaXNzdWUuDQoNClRoYW5r
cywNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
