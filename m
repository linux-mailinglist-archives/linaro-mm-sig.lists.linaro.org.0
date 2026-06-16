Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 267lF/EUMWpabQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 11:18:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAA468D73E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 11:18:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=intel.com header.s=Intel header.b=kOKQ0jWS;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC0E740A54
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 09:18:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	by lists.linaro.org (Postfix) with ESMTPS id 33A5A402CF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 09:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781601508; x=1813137508;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=/z4gfBjvaSCKwiZmEZfin2WxPQPTEM3/+W2Xi5y6O+c=;
  b=kOKQ0jWScPvKoyI9lvnHFbPrZGTRPiigVcbmz7KyulMjmTGLlDpTfoMv
   Ycj7tFoJ7T7YG43VGqokYwlE3XR2+c13vnF8lioImZTeiK+B2rPTdfrYL
   t3Utjdwm2KAhbdkMNdQsImk+1ltDzps9kDu0bqb444p4Oqexxp4ZxdVPx
   EWTCRhXiAe4NukGLC4MbqBqHMts4uh32nXstNZhDEN4aHnosBGeiYXaQk
   5xKOQSKYaoeADWuG64TCOJVow+RWkdWz0U60JthSsq/fA9dOEyMND7cG3
   XJyODV2ONb7Yrv46m0qaIgeKpZCYLol9cMpzvFT56+GiX6t0kv9eF5MLd
   A==;
X-CSE-ConnectionGUID: zzZYMIZqRLqwkQSHVakrjA==
X-CSE-MsgGUID: Sz387gloSi+hqZwGRCxsng==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82347141"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600";
   d="scan'208";a="82347141"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 02:18:15 -0700
X-CSE-ConnectionGUID: lZiJa12ZQ+S5E+tqjOGV2Q==
X-CSE-MsgGUID: RT9vP4HuSDODf8TWEaQkDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600";
   d="scan'208";a="249612518"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
  by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 02:18:15 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 02:18:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 02:18:14 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.43) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 02:18:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YCawg1uP8WwUDkwQnSsayCo/r9YUv9ZfiBO1NBkih66Duz6YD93O0/d0wXPi3ty7QP+R6wWOvsbytKFpq+3mEqAN9fWmBhm/MguKSjPa81R5C3Ea2MyX9FtOCcfZKbvBjOP3JlEeX73d3+t84ghOMk3ILelIcEU+g87m0V5+2sVm1d4pvbUUIFIWHcdhM2WungYNizhyhPV8HMFesPx6nYBPDHbTQDdq/kYcQl91YHRbgtdNMP5Ossi5t1kOPPhnpsVJ3U1v1OQg7NJsCIBhxsqcpvT5dRLsrLcVVRyH8vOoru/OumcfMdvV3rcDclltm1QxPjfgfuL23jYPlsUvwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DTu4Wz1X/swhQ5Wot1kQ81exdlvxuEM5CnXCP7yLkKI=;
 b=M7Z7421NCjKiUzSOEUNIUCvehGquBqwRaIGTQCZAQx9Ak0WNr5y6D+ybfhGWW5ud10jA5LrEXJgasucFpuYs5fyUIRR4vYJepX3QDDP0IPyr+WtCWg0qjLT5MMl210c8LABHCRoGiC4h51xCyDOOcAwmfEhwPpuSBxRuc1bZKnegITQHsSAsJsqPeJ0tmEpDFXF1K48iGo8S+nwYDQvNMMV1K+vYEkM9iHFGSwZQih3PZOt+5gK1R6PRqHTP9q3voX5LJweRRLvaj3r4U0oChS414fyPrbEccpqbamqMG2dKe6KumoE8qUE3F1CrQm/v3nfvqCMQmrvj8L1pXdmENw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3690.namprd11.prod.outlook.com (2603:10b6:5:13d::32)
 by CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 09:18:12 +0000
Received: from DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b]) by DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 09:18:12 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Matt Evans <matt@ozlabs.org>, Alex Williamson <alex@shazbot.org>, "Leon
 Romanovsky" <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro
	<amastro@fb.com>, =?iso-8859-1?Q?Christian_K=F6nig?=
	<christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, "Logan
 Gunthorpe" <logang@deltatee.com>
Thread-Topic: [PATCH v3 6/9] vfio/pci: Clean up BAR zap and revocation
Thread-Index: AQHc+PAbYETvhcTyrUu/DN8Pu72QKLZA7eCw
Date: Tue, 16 Jun 2026 09:18:12 +0000
Message-ID: <DM6PR11MB3690CA709415069FFA5121838CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-7-matt@ozlabs.org>
In-Reply-To: <20260610154327.37758-7-matt@ozlabs.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3690:EE_|CY8PR11MB7777:EE_
x-ms-office365-filtering-correlation-id: 476c51f0-b4f8-49dc-147d-08decb883066
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|1800799024|366016|7416014|376014|38070700021|22082099003|18002099003|4143699003|56012099006|3023799007|11063799006;
x-microsoft-antispam-message-info: eRNi1u3C/BYF+ENG9WQg943nCU5pX35J6PFs5APrSH7lgnoiuSm7/KPN/OE+23PDBLeKCqYx4JvYk+y2OQQwWQqqx08AA9Gw2XsyMJVJgIt6Lb0uMuXG0lIeXGkbuy+K+egk4ccUhW3KmkpsBr6vskQJQTjlKoH1W4h9HMPBtzTLpEYwGw7GoyQ4f31KhlVYK9Iimc6+kzpfp0mDu53wkLf3YaJQ1f/kCgegRLuSMx6vfnxyiHeXW5NuESAix77WUvm3fDCWMyJKDtw/E+gK7SBNPgZ1Kbg/xV2IF/PJXHkrYr0qEhY86ajuqrNNLVA6WCxcbodsoWfa+cBZNVLcrNIBUn9S6uPfh70N4twkrhMXpxPqxKWcneNKZmcCJN0vIV0pMh5Q/CPboyPfgzDkk1AkukqySn8WjCcH4e7V8UH6ZuDfhbLHQe9pu5mQYkijCRj5875TikWJc4qPDx6sB5NnWqbzLbegtPsOlOgm4Uv/bKsI1Lg+yG4cmSRnv3pucGA5tTtj09uzJqDdE5wqFAQ9CoZ51Fg1AGn+erQEQg21TLDh4ezo44CvdqMS6cADWBI6wSb4zriYmTfcMdFghJxSbL4laD1vgGR/DUUpzCRcQ0N8juiWOU2SRFTQ02BM/6ARuZuSxev2q2R7bvJN0iNH21zgCvVDJKLGy4+Nikrtbgif5yfp6PhOzNUk6DRD0qY1PsmlxaGrIlW9t86Ygj7k1p3r7DoyykYoBJuoF4YxUD6dWaI4Ff4t9k4b6aOv
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3690.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(366016)(7416014)(376014)(38070700021)(22082099003)(18002099003)(4143699003)(56012099006)(3023799007)(11063799006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Q1UblXzsvVxn+5jtbJpcIus+SSNFqbORyDEJUcC3Ae/C6QCUdJNJjeMYVW?=
 =?iso-8859-1?Q?1wuXMtSRfKCZueU8ha1O2mAxcpiB4N2nrl/4K77U2O05TV3qv5tvmZ+tpt?=
 =?iso-8859-1?Q?/7xJXqNLLxakXCstDKGQlOxEdOa8wgOlUOb2OtAs/dQwvg5eiAQHxa0QsP?=
 =?iso-8859-1?Q?HKDxCoB/nGrWaTG5S1Xp4nbKVIwMJ4SqPk6P+xomKc7Ef2tYYqLA0zjnLQ?=
 =?iso-8859-1?Q?W2zfQSoUeOMyG7qM3Zt6jQwW0+Pz/oQt3X5tdfRo6oIHOd7VWc6RmjZlcQ?=
 =?iso-8859-1?Q?bfivhySiC1MyyY3s0F2czCOXSvU/KVdt+xMzkeyN5jiRaBeOAMLq5ZhCCT?=
 =?iso-8859-1?Q?WFNc3hbGe73GDY3cV3HK+fDAl/bhKLFwE7xab0yuAyLIp/FPwh9FjGK12v?=
 =?iso-8859-1?Q?j8QALYt7FlZuQSBVIR0T00ep1tiAXKAaMgsfroC8RcRvy5KjvrqxjNadZB?=
 =?iso-8859-1?Q?LkE3sTZoSF1sXyC3hcjH87WjqNuU6HOKyybwgKjUK+19WhDWZkK9Aly16J?=
 =?iso-8859-1?Q?ttMSaqBqX0Qds3iO+i9eDiOjLiQD0s6pUpL9QvSt7UlIzo84Wd5U8JtutI?=
 =?iso-8859-1?Q?UWpzYSOPNJ+iPTwhPOxcfdVjcaaY7aZtu+3gKmzsLx23gmozqxmTqk/E47?=
 =?iso-8859-1?Q?7jAvD9eMrKet8FdI+X5eP0v/C0S6NftNhGp3pBNBXBm9pb7xyOboSEyT0p?=
 =?iso-8859-1?Q?nHX5zS5a9FeCNboN2GxmCR1w0g+FH0kfYJvMlvcewA3NAL191IUJzJASIB?=
 =?iso-8859-1?Q?p5VMbsxjlrAD7sUZWTDTvEjtgMobxS7jYFqQuAmmHjDemL/MD6Eh+9mrBP?=
 =?iso-8859-1?Q?9wy4Dug7wsln04p7zyCp3CC0qYboIVES0eGdctXsY9geYzKpnLYQsFoCHr?=
 =?iso-8859-1?Q?lQIGTywFWGOazLMlbrZcuUZPVLe67dlS4ceeJ+STWVhYqCkzuyHeeG9den?=
 =?iso-8859-1?Q?Dqf9NYE0ZhBDzgrSZF6NkCz4GJlc5JgyjJFSsxBEcMqU0yLLz7ggUyS+uy?=
 =?iso-8859-1?Q?PUDhyy46t48Ir6aUP/LYD5KuILcSi9YdkinWva9dr47xgpI9WGhZFDkCRd?=
 =?iso-8859-1?Q?kfWLa+ama12B6UPWD/ESEviiHB04n2LS/9SIjw1nKHWVUQNfbsLkoWMS5v?=
 =?iso-8859-1?Q?ETbtM1vpKwJiwoKdpEkbLd0TKnXwqg0C0YZuUXJ9+eqkzDR7NbNCbCVNGY?=
 =?iso-8859-1?Q?ejRcJDpw5NhDUopFlYi5s51a/6gQ5A0inUMZCnuB52LMxfTUoPWP3OKWUY?=
 =?iso-8859-1?Q?TRKeQTnnzP6go08YtanNqJySKJ+FG4Lwy0d9kt3y5EH8kAY7hAPdqU6Cgh?=
 =?iso-8859-1?Q?W3+RNWRPu+Yd2Ru/ao7LSDWmA9PypmusUIsLVIAdfJiRJ/rd5nFMJLqYrJ?=
 =?iso-8859-1?Q?H6/H2KinLYzlAd2H/Asn3TaZumKUeiTQKrVWLMVPJ1vhMBHw/2gdOOhzab?=
 =?iso-8859-1?Q?uw7Hf2zmMSAOeODxbHR/MQ7xj1cC2GhINKhsHCEkwwfa8h4CbpH1Bu1JAb?=
 =?iso-8859-1?Q?LATT+5IuG3dODkyC7u5fMeBJzKEeU1jINQtcykr9c1cMVudTtbeVlUuuKj?=
 =?iso-8859-1?Q?mAcetttbF+RV82BHNK+baRPGFA9BZlczi07jxEhe/cnzgvrs13yWlvqvnS?=
 =?iso-8859-1?Q?XT03Woi/3ljRLBZQvRvErm82UTnFxMlPOngz0WvVkIhvLzpkyU/CjMhc7C?=
 =?iso-8859-1?Q?BrYqIjUG2nGG2pKWeaisjQ7HJireYlmpKwYY93SYty/AUY3oVnFzPSWsct?=
 =?iso-8859-1?Q?Fo8/4ztnbHXlFIHUJBbVMEW+qbTFI/5VapCb32w5c0JKlorknSz3Wv1cAN?=
 =?iso-8859-1?Q?ufYD0OOhCA=3D=3D?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HoIdOWK34CoOozZENlb8GGrt/a3xR9IhmVONUDUb+uF0nJxti/5POpqqAcSB7Ou70BtgHWycdS0UEIqtB3SvHWuTxvbtFMYQeqLpGl6VBh4Q6VII2EGvdsPgO6a3vFJ5roukA4uBXfldFl4e6aYh0CvDqxciVw8mYYk6Zq/zzlf42Na8pYbSiP17I1RurZ5atp4CusU5aEA9KM9F5xDxgCH8T+xu6BNATjNiOvK8D9b6De3fGBhVFT573lNp+pNY/biyQD39FctiopFMBKLXIM3YoadYJ5HNONnQUpJHXjJCoMzxHua90CEiYk5neeksmeA+USRQ8gbR7QVX1WG+Mg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 476c51f0-b4f8-49dc-147d-08decb883066
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 09:18:12.0735
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dUGHXJUQWP/vQtqRe966HKl0HbvIlJXLLBdwiyLhju2UtazPq1EBnWX9y3OGambjMTOEmhv32bhqfZ/DyS1C/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7777
X-OriginatorOrg: intel.com
X-Spamd-Bar: -------
Message-ID-Hash: D6ICT4F2S32CZA6BXPSK4UUE2PCXGLTD
X-Message-ID-Hash: D6ICT4F2S32CZA6BXPSK4UUE2PCXGLTD
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 6/9] vfio/pci: Clean up BAR zap and revocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D6ICT4F2S32CZA6BXPSK4UUE2PCXGLTD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kevin.tian@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM6PR11MB3690.namprd11.prod.outlook.com:mid,ozlabs.org:email,intel.com:from_mime,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevin.tian@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CCAA468D73E

> From: Matt Evans <matt@ozlabs.org>
> Sent: Wednesday, June 10, 2026 11:43 PM
> 
> Previously, vfio_pci_zap_bars() (and the wrapper
> vfio_pci_zap_and_down_write_memory_lock()) calls were paired with
> calls to vfio_pci_dma_buf_move().
> 
> This commit replaces them with a unified new function,
> vfio_pci_zap_revoke_bars() containing both the vfio_pci_dma_buf_move()
> and the unmap_mapping_range(), making it harder for callers to omit
> one.  It adds a wrapper, vfio_pci_lock_zap_revoke_bars(), which takes
> the write memory_lock before zapping, and adds a new
> vfio_pci_unrevoke_bars() for the re-enable path.

It's unusual to have three verbs (lock/zap/revoke) in one function name.

I wonder whether it's simpler to have:
	vfio_pci_zap_bars_locked() 	// caller already holds the lock
	vfio_pci_zap_bars()

'revoke' is just a side-effect of 'zap', not necessarily to highlight it in
the name.

> 
> As of "vfio/pci: Convert BAR mmap() to use a DMABUF", the
> unmap_mapping_range() to zap is no longer performed for vfio-pci since
> the DMABUFs used for BAR mappings already zap PTEs when the
> vfio_pci_dma_buf_move() occurs.
> 
> However, it must be assumed that VFIO drivers which override the .mmap
> op could create mappings _not_ backed by DMABUFs.  So, the zap is
> still performed on revoke if .mmap is overridden, using a new
> zap_bars_on_revoke flag.  A driver can explicitly opt out; the flag is
> cleared by the hisi_acc_vfio_pci driver, since its .mmap just wraps
> vfio_pci_core_mmap() and so still uses DMABUFs.

the cost of unmap_mapping_range() is trivial when there is no mmap
on the device fd.

so it could be simpler by always doing:

	vfio_pci_dma_buf_move();
	unmap_mapping_range();

and remove the flag.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
