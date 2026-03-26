Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BthKQ3vxGnv5AQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Mar 2026 09:32:13 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B1133162D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Mar 2026 09:32:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 869063F786
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Mar 2026 08:32:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	by lists.linaro.org (Postfix) with ESMTPS id 715A63F786
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Mar 2026 08:32:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=lbDhP2lA;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of oliver.sang@intel.com designates 192.198.163.15 as permitted sender) smtp.mailfrom=oliver.sang@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774513928; x=1806049928;
  h=date:from:to:cc:subject:message-id:in-reply-to:
   mime-version;
  bh=1G20wEi8xJfEJKa1L00MdUY72df8E05Uv1eeGIaSWSQ=;
  b=lbDhP2lA9RNBaesUAiv1s4rgiB/eBGiqUJLsrVtMLvV/UMjJXn3+NHsE
   z41OrmnXLHCUWiKI1muZzvmcRyF/5mxoY1X+iY7B5x+2xachLOR3jTD8y
   PmkqQFEyCALUf9cIJraFmc8IoKJaMrHVK/Lm1cb9oAAlAei6VoqYYnSvJ
   FN1XhZ8L4ARrRUDw3wgAYZAO0JtU8jxS4VhngWpsUIi6dwzJMriQ3PFUI
   cdY5fTQ4+vIY+F+NMX2aSZ2VMBeg+0qziCScHocXYaJx/uSsC26RdPqmS
   aPrPW+rrZ+/+W1v9y8dAc8Oy6KaHVXmcEQ1xqvMFZnm7bYZCINcJFPg+2
   Q==;
X-CSE-ConnectionGUID: VT2cL3tyS+KaPb3Z5YAa0A==
X-CSE-MsgGUID: ME4ZjqAUTPGbHrJoFMTLeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75677792"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000";
   d="scan'208";a="75677792"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2026 01:32:04 -0700
X-CSE-ConnectionGUID: Bwf2Od8fRoSjJp8JnmKhlw==
X-CSE-MsgGUID: oo0UdV8FSlKx7DUpZHEFcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000";
   d="scan'208";a="224872465"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2026 01:32:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 01:32:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 01:32:02 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.48)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 01:32:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c+YyTrSId6J92cMo8a2EgNHwhfScLkyT29u1ooVBUiaJe6KXrfoxo/KACWZuq+ZrAxwgl0Tbd8c6OkOopeUGeWODiwJceW2DzLNcZ/jsO49fTCeZxVrOIPE8ngmxB0YEdOOAO9KvTwgYgwyw18L+P+CnCyEFEEoBSDTZUMLdN562B2BhtcJJ4OmoCdiLcQB7OILOk/3XD1WTEteQ4UrBGbI+TdemjwxFTb494s2LH2orPfFBUKq6H7BVh0/Ds5rn+TSgreQL6G/i9TovfRokiwISkb9GLCswNgcTU8KjeBV4vfVFupOgzxcBsimtvnaeeT/CdWKepOyDkPphTPBoNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OG7K0MVwaeIvk0V+GC64fgVUaKGkQ9AFdSSybwgD04o=;
 b=Ax9xyjRKgQsqbabV09Bz5ESN69dgijVL8snRhtnPZbgkXGkqzhbbkW+hOByCGXh6X7QBQZpUkyRMyspsQtdDJqCCeQE9RMQ2eTMrzDt4tnL0NGLTxFDcClVG9gBmHul6DhgrjtJJkF/MoTkRbRPuOHxlZhfTtb5Jinr185U9jl5y+FzsmBDOw1GBToe1G72tOjyWXCFVejnoGlmh3jWjRrdYVXj3g0tPzWT2xDelMy16l/Wk9sLbftZzpqZ2jrg5SWbEMoSu1NgrDXJqklZQdIGrKrJWOtfeJaGPjvvfocEit1aSmkktTVpsDEkBy+41o1gd2NEoiKWEphxt1qkElw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5832.namprd11.prod.outlook.com (2603:10b6:510:141::7)
 by DM4PR11MB5995.namprd11.prod.outlook.com (2603:10b6:8:5e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.7; Thu, 26 Mar
 2026 08:31:58 +0000
Received: from PH0PR11MB5832.namprd11.prod.outlook.com
 ([fe80::106e:78dd:4c96:d707]) by PH0PR11MB5832.namprd11.prod.outlook.com
 ([fe80::106e:78dd:4c96:d707%3]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 08:31:58 +0000
Date: Thu, 26 Mar 2026 16:31:50 +0800
From: kernel test robot <oliver.sang@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <202603261503.3e8f7afc-lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260317145039.2418-1-christian.koenig@amd.com>
X-ClientProxiedBy: SI1PR02CA0011.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::19) To PH0PR11MB5832.namprd11.prod.outlook.com
 (2603:10b6:510:141::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5832:EE_|DM4PR11MB5995:EE_
X-MS-Office365-Filtering-Correlation-Id: 0742f861-8c62-47a0-66fb-08de8b122568
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: QgLdaqNCRhIUqPOIWQeziQhbJMZYyTS6FR9swIhaeA8zIj1ejyDNHv+61yx8IxKSkZLs5aQ9gHJ/bTyCuQinOc3v4x+hUBJg4kyoq3WIVr4RakCW7qbwjnkRA/qIANOY0Z/shWlyKIbgI8k2jmaXRJIhLSmiktKue1zNL9jdviqI2wJSEaxbARnvVkrwlBNUxgiDXhGrdyAghrP35oDrQ9kGvRj+JcaAKa6A3LRz42WYAQJo8vPPuM7cnxu++Jj7J8GqMN9fzoqKpc9Ut1IbpyxuQkKmlVHw/WXez6PkvYd4F5nGIBjQCwbqkCiTQlgrkC+NcECHrzz0LDh6vqhzX6eYvwi1VxAjzuFdreVZfGpSoG2qcGYkT10vzc4cVhP1omNR1+5eZKXqlj+NxD4Sz2PBMuIV8M+V0xoVGojTcqNyaKJu1cdQaXnEPd/KSUxmNJ/5yyXRyRB5YJk/NPT6CyvHhdgmkZS4VbvRB3wyaDz8S3cYnI/KwDe4M8RF4CNTL1MqRXMaA5sGjcILD3euaETDq+7D/1Ow8ibZSl5G8gICE/XHn0dbS6Dxs/E58wqAK8j1KAcrC+3hb5BmjZJmq41OKeOGCEJgeK2cfe1UQStDgj+U5E2+IJg7r53TuL67npQG/QVVxsUtQXWFDBjAaKlau3MmOFlC6np+a6dAPN+UFsLQK45v1NcHZdI91df13R0YcIqkNN7sIKL/u2kEYA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5832.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1JlKNC0I2n66I7WYyiAiWYahxa2M2Xwxfg7mpsKv+j/B0dF2n0KkI0JtwmEW?=
 =?us-ascii?Q?jiWBnQ9t6DPPIefPfmajgVNvm8q2LX6id+m7PsYh/6DykVjlOrYYmUCHZ1E3?=
 =?us-ascii?Q?EqSqrjvZU/clu8MFpddfzdnMRqXDcOwbUqWPufIO0G9sycMnR4f+q/NSHUgv?=
 =?us-ascii?Q?3vFsTmftiTdiZ4FpH5OnSBx1K5YsRAvjLFuwQQher3aWA9K+UHH4XaXLb3SR?=
 =?us-ascii?Q?Szn3ANkvvB8G/p9fDxcQdpoNCY2uTonCzSlwAm8o9zRnUyI1RFBMekyiRyJV?=
 =?us-ascii?Q?odsuQcApCM3PyT0EentONL1Yc4419K/dhOIEAwYYsNYAfBjq0M8EUgp1UbrM?=
 =?us-ascii?Q?empgWe5fbUlkA+jm0SkW5GBRebUDPyTx6I5Qtsd2OQqBCo+O+jPf42jiiGko?=
 =?us-ascii?Q?zd8w7Uj6OhifxH+yxCTk12z0P3Ca+BvMKsr5b2x6+ArzU9jDIcL+kP32+oJY?=
 =?us-ascii?Q?Tz+QWB/azwUMgPaPmiaL3AFIp6TllPRcg7hRrziC3RvYk7QVD8qK9CjVlZ14?=
 =?us-ascii?Q?+6eCZOYn98xF8y4cF5xd8pHR63HYeXZT5Hn2YBvzT3COm8+2zB1J4QdLMUEV?=
 =?us-ascii?Q?WNlBAujdkEQdNSWh5FzIBcyoRGEWMkohUy2TCv1rw24YjgGOg61HshzpHB5V?=
 =?us-ascii?Q?eKwPAi6tDQnyUnjC1FviQ2iCCW4190+ycjeDfNqVockHgDELE+XHTgwsu79C?=
 =?us-ascii?Q?TOSqk/ypG1XMCTK95itk9biPvOFVZRTR+RzbDRing2xwTtPqmNjbVCWzQG9r?=
 =?us-ascii?Q?Ad1ZWIC43SLkOnz8FWl4scwzyjFtqL8v5ibnbo8C95/CerzEy1fE6e9G89RX?=
 =?us-ascii?Q?A9m1UPKh/ohq6KVLXmQOqv+ZaRRJRduRBEFyMpyvqXnaFjTIo8InmTYayt85?=
 =?us-ascii?Q?TvLkYCinRJz95E++kFazNLNCDJWmJYijwF629MYPMaZxdvyYU15S7aMBQDse?=
 =?us-ascii?Q?TEXu+bmbJUMaCcX/40DMqcL70xdXDECKcvEwffEYit58S2iEXoKAfDgbkDaS?=
 =?us-ascii?Q?yQ5/2tEoaYcIicO3Sp+mVaMF6rVntBAqq/k5VS3s/KLdFi09K2wJO/F+27H/?=
 =?us-ascii?Q?mXPIYEnyLiZmxBW+TmmT+qWyZoTw4JHnnxvQjvqtMF5FK4N9velW00Tr7zJj?=
 =?us-ascii?Q?9XEHct2hibQnrSOQAS/8yldfwaFW1gMXo3a53tccPUQnwA5Th0qTFHBzzn99?=
 =?us-ascii?Q?GGhDCqnqvj1Ht/ihnyo75Fn69d975tWWMc3shE3ZlHV4qZi10pRU4Gsna+Io?=
 =?us-ascii?Q?u7d4POA4wEx6zJ1cyp5ls+5XMhpLlQECXa5xTCuqX0ydPYaZDJq4vyE6N1Ei?=
 =?us-ascii?Q?yIEzZS7558UTtIEhNJWvpFBVkQl/pN9aPaJyr9/BBe+sgvwiVu+LXw2PIzTA?=
 =?us-ascii?Q?oDdjzJkPMOi4cY95etVa4BRWbJcOz+2uju7T9KhM3DBPvuowJZlD9UuqQf1a?=
 =?us-ascii?Q?InaPP8ssd6/gJ1JlmqNLr6aPtnxD5a8uG2w6V7kJobnx4Eq/NS+6xV+CgTCI?=
 =?us-ascii?Q?CcDJPRSXAzSvxAhBpmWwyFqhmX9Z7KxpU1+eUzfoRU6SRokLq+vrmZLrqXxW?=
 =?us-ascii?Q?StXy3qgV3ijgERtRC+/3J/OgENH7J43G7HlXiKvKd3UhaIQeMgwiHu0ordbr?=
 =?us-ascii?Q?kZbwY4KfDFgphq8oYgxcmLW2S6nQ6RVUFm/IWUpmpQraOEGhyg4Lwfa0y8Z6?=
 =?us-ascii?Q?cP3QgbGGOi68mqLfA2NYcOQFDlFrbYXz0xCcDFlzGevPQIstxLZy/EunEdXs?=
 =?us-ascii?Q?A5Ts5my2Ew=3D=3D?=
X-Exchange-RoutingPolicyChecked: mOAFjiz5HVYxZdi5Eu7lWw6IpcB1MAI5vjX7+xcasSKzUABOaGU7bbMYkDw6onlpQ2WefY3wGZcB1KqZd5qRfOtRMEkA83/X5EHJpbbZT8XqNywF2+9NI/iBwQHkf2IbhYLnzCxW2Ew28MYNhJgyjSME5cP0LUS+F5j8wpLXxj2JfXBK2dae/lSk1B1AZM0H/wL/9pjDORoMTLYYQ4pSRG8b1Y/HYYTN9CMlmUs1o1kVahUgBR3Noj0+KReuFxaZPO0GceL3v8EyO7uRsxI8R3gmgFSPDRXrojLE4pzH+AG0EryyN215q2z2iCycCqhqzQ+HDH6T9K2hkoN8NT2bfQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0742f861-8c62-47a0-66fb-08de8b122568
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5832.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2026 08:31:58.7724
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pSRCcu9jNSk9AhabkAxFELugB8x5/uNiB27mz5ZL5OT7vRt8eri/j7UQ0qhUE5CRibi8700pFpzVsy9AsDyblQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5995
X-OriginatorOrg: intel.com
X-Spamd-Bar: ------
Message-ID-Hash: JAFM3574VOQAFD7WW4XRG6TDYPUFHQRE
X-Message-ID-Hash: JAFM3574VOQAFD7WW4XRG6TDYPUFHQRE
X-MailFrom: oliver.sang@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-lkp@lists.linux.dev, lkp@intel.com, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-kernel@vger.kernel.org, tursulin@ursulin.net, sumit.semwal@linaro.org, oliver.sang@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma_fence_array: remove unused functionality
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JAFM3574VOQAFD7WW4XRG6TDYPUFHQRE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,linaro.org:email,gitlab.freedesktop.org:url,lists.linaro.org:helo,lists.linaro.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[oliver.sang@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.003];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 01B1133162D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



Hello,

kernel test robot noticed "kernel-selftests.sync.sync_test.Testing_sync_framework.test_merge_stress_random_merge.fail" on:

commit: 26fa53bf886f191e90f8149224b10cda533e601d ("[PATCH] dma-buf/dma_fence_array: remove unused functionality")
url: https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/dma-buf-dma_fence_array-remove-unused-functionality/20260318-024706
base: https://gitlab.freedesktop.org/drm/misc/kernel.git drm-misc-next
patch link: https://lore.kernel.org/all/20260317145039.2418-1-christian.koenig@amd.com/
patch subject: [PATCH] dma-buf/dma_fence_array: remove unused functionality

in testcase: kernel-selftests
version: kernel-selftests-x86_64-c369299895a5-1_20260323
with following parameters:

	group: sync


config: x86_64-rhel-9.4-kselftests
compiler: gcc-14
test machine: 36 threads 1 sockets Intel(R) Core(TM) i9-9980XE CPU @ 3.00GHz (Skylake) with 32G memory

(please refer to attached dmesg/kmsg for entire log/backtrace)



If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <oliver.sang@intel.com>
| Closes: https://lore.kernel.org/oe-lkp/202603261503.3e8f7afc-lkp@intel.com


TAP version 13
1..1
# timeout set to 300
# selftests: sync: sync_test
# TAP version 13
# 1..10
# # [RUN]	Testing sync framework
# ok 1 [RUN]	test_alloc_timeline
# ok 2 [RUN]	test_alloc_fence
# ok 3 [RUN]	test_alloc_fence_negative
# ok 4 [RUN]	test_fence_one_timeline_wait
# ok 5 [RUN]	test_fence_one_timeline_merge
# ok 6 [RUN]	test_fence_merge_same_fence
# ok 7 [RUN]	test_fence_multi_timeline_wait
# ok 8 [RUN]	test_stress_two_threads_shared_timeline
# ok 9 [RUN]	test_consumer_stress_multi_producer_single_consumer
# # [ERROR]	Failure waiting on fence until timeout
# not ok 10 [RUN]	test_merge_stress_random_merge
# Bail out! 1 out of 10 sync tests failed
# # Totals: pass:9 fail:1 xfail:0 xpass:0 skip:0 error:0
not ok 1 selftests: sync: sync_test # exit=1



The kernel config and materials to reproduce are available at:
https://download.01.org/0day-ci/archive/20260326/202603261503.3e8f7afc-lkp@intel.com



-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
