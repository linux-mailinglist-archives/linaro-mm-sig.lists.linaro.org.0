Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u107IXN/K2qN+gMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 05:39:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A2A676735
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 05:39:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=intel.com header.s=Intel header.b=gzV4u7Ty;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07F7040A6B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 03:39:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	by lists.linaro.org (Postfix) with ESMTPS id 1EE3340A42
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 03:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781235558; x=1812771558;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=wfz/AzXTu1IhXzHTub7K51GDJmxNomEZLH6i5pSZvSk=;
  b=gzV4u7Tym6FVHEItD4vihaJnxx3JWGYJI0TKPsJDqqA7nzLlr7zmtWIS
   HThzgo5eTi2KizlnQHK9XsBii7wRRpTCr7wn0KVpc0hEcB/Ol1Y8H+c69
   H8bFGhG1WNIoCZdV0SzfD9lbTreuzkG1Wr3M8Wne6ob7err6/E6I32aeP
   y/i/rmlJ5VBDR3XhVYiCatiY5JhtKyBn7GQzwg2i1Sopb582rOnri6mrg
   kN3qfoKO/n5Hi+0cvSMjmDm0ZbsmkQJTTINKehONSHTOKOzGIha71ukU3
   Y74lMOLQBLAJsYHWf6FkYo7D0e+oyajVNODe++wgF/v8Rc2FeDbbFLa/O
   Q==;
X-CSE-ConnectionGUID: AzuADJ1hR/i7u6iljVRObQ==
X-CSE-MsgGUID: a18CCRFFTm+SwslLOBhI6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82109850"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600";
   d="scan'208";a="82109850"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 20:39:16 -0700
X-CSE-ConnectionGUID: vmW8c1uVSpGkNtWSk91sog==
X-CSE-MsgGUID: +MgXKHYzTXSJopAJRgH+BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600";
   d="scan'208";a="246735447"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 20:39:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 20:39:13 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 20:39:13 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.61) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 20:39:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zMgHLE5KfzMQD7Urgls2di+/venYHNZUVr6+75inQeUWY0PmCz24AM8ynJM3yq/1iEM1M8YLvRyuG7wDBBASf8Wtnu65Y3e1s+B2uDXW2te/BLeBQ7nGU8dL5jqThn9jUaZM7vTwu+dJv3DHg3xZD6mMi9eeDxa9XdFDI1v1L7A0OhvrFQuE80fMLWAtJ1EAN6J6U/5TtYvwyP1HNEP51hTEqiEV3ZDUMlwhJBz2KiViwEYeFUSfZ91l07nhbBatPz+6R6F8t0BAY41mwXJZP/y//JltUbuqk8dOrwWI1uUnG5FQNDGIjXXA2+NpoVmVLSrqB092NyVdYjY3M8+lbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WM4NmxmeUgcNBzJzjzSIIXVO+bCKZ8FjnhsZOYXRtRk=;
 b=nxM/0TlGETLcv2O7szWoLUQ4d3Tpri8lgn3u3aiEas3VpiR9gM7CFcHuxTwPfUZjl86tUzS4N/+uIYo1Dy7YkXkwf7V4cTnly8AySLLK1WZU3qkKnxO3tw3/8MmW+Os3DZuCiDMJ7LmmdtkPz59vP0FiofaD/EnG+ftLI8Tjz+1qexT5EPw7EQb1nXeyI/rnRjqId0gWwqqsTmYs1cGx3N7RDJYaKGQsRQ/3J3GOm1+Hm54AxkZ+9W1MFNbQuzbDM3QdXmLbIMBlSQKVyej9ovxznHos7L8UIlOmiLHdSLHwgdPx3thd/mDJihgM+3lwoHLnGpz+9Mr7qpdD8NuYxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3690.namprd11.prod.outlook.com (2603:10b6:5:13d::32)
 by CY8PR11MB6844.namprd11.prod.outlook.com (2603:10b6:930:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Fri, 12 Jun
 2026 03:39:10 +0000
Received: from DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b]) by DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b%4]) with mapi id 15.21.0113.013; Fri, 12 Jun 2026
 03:39:10 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Pranjal Shrivastava <praan@google.com>, Matt Evans <matt@ozlabs.org>
Thread-Topic: [PATCH v3 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
Thread-Index: AQHc+PAJt/yTpFL68kOaE02G6F2lPrY5sOKAgACWrqA=
Date: Fri, 12 Jun 2026 03:39:09 +0000
Message-ID: <DM6PR11MB36904ED2E1D2C646644F67668C182@DM6PR11MB3690.namprd11.prod.outlook.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-2-matt@ozlabs.org> <aisAc1HRn2Wa4F9p@google.com>
In-Reply-To: <aisAc1HRn2Wa4F9p@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3690:EE_|CY8PR11MB6844:EE_
x-ms-office365-filtering-correlation-id: c9c05b9d-1d64-47ce-a634-08dec83429f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|23010399003|7416014|376014|366016|38070700021|22082099003|18002099003|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: pO9ZbO/8isvvxdD+wlbUrbcUgwJ7PNjXOrexlH502ItmfMwGDIbe3fA9XYby/VtzmEUhIhAOFaoskSNy5LCjxephuhVPRkeZIDyynGy+ORA5IUDr/lnwOZA4mYxQhkG7XDNbEGUmu05C6pLOZDGZ2k5aqNps0G77deZ2DMAYniEIF8c7k0MRYgOnzG9LpehqyJlDHTAz4uFsmshxKX8LVZVhyUtQMXSfD3e+Hps19wX5LjJre9K9/0jZcFY3NPJBcyHzPqaVBHVSi4qkeGQqTz9vu3CMv6AMuR0C+eRio91DCHMsKnW1efNnwmKQCyZrRABBb9OhzN4Dxf6O0Pe/AMRK0re8CJdZoB3xA1tOEEbT1SCq3p8bUIxfTCO9acm8AFzGoiBniC8uqAEt8dM7IrvnZANemYo1U+lLONMWe5xaP10Yy7FNKiAELQH4YmXJe1pwPCjykuc4sERAH7z39tCERCe1gRebSI6VzC4DwEnHyud+rRSsWHoyxMTcViex66ryzSk0OL/ry+etWLN8W9TmGfidJ8asQN2JyKiPcRBEMqOeSXHWN4upa1V1EXx5BJ87J/dYQJ3xepBb/boiC/sgdEF869pHcmyzhVp3V5od7pCE41a+gjy3jv5uljmcr8VlgPk3xuGLLlKL68GJ1Pon8JZjrOnwUzF9rv5obRM9cP+5UKva2o0B66q/6b9HA/i61LSZ2XGxNahzdPuiaeKFvOS69e9Dfd0fN1hwho3BrC+5FYfXeOSXHcqYpZYj
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3690.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(23010399003)(7416014)(376014)(366016)(38070700021)(22082099003)(18002099003)(4143699003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?FWXaYqTaAzGFPzX3aUbN687dWoKHlW3aZtcEBCIBZVegU339NH19lPn411?=
 =?iso-8859-1?Q?Lqhdf6sZ1C7vwbXx+OO8vxCWoUp3hBuhTsz2/JVIo/x9OeTyHm+ztWszkv?=
 =?iso-8859-1?Q?zeBpZsdCwCNSC9nppAy0tXoEAuLHdUF9JvU6oXhaTaUG508nzJcZIOcNWM?=
 =?iso-8859-1?Q?AoBdETSLYlZG/PdAYxdYVZAx+1lY+Kyyq45g9i0qSVAxqrVXrQnIKJgTRm?=
 =?iso-8859-1?Q?9m6uOJs86xE8itTvakqnVQ7kmNsdVWi6q90+75JBZU6wbenIlDI0fukkZS?=
 =?iso-8859-1?Q?GyJ9sKeEQsIL17oBknl/KesO3hWtTb+NXDRquS8qhkN1tYnXTtlACTukNs?=
 =?iso-8859-1?Q?1s4m3JhEILR2DTCNtXl9zN4kSd9LK8c4zqljLZYRVS3tg2XPoK5k4x5eiw?=
 =?iso-8859-1?Q?mFWOUextQMwqgVyT6Tjr3YPCr8Yq4qWs/gnmpaUKy3/bfvOeS/uuQYJvSF?=
 =?iso-8859-1?Q?SXmi4xP684RPhjFu1nbLuHOtLvG0zyeky0tC7yBHBPWK5s/9ayjIV3I6Xu?=
 =?iso-8859-1?Q?3zZzawQ2zJ08IcTFpzRqfwd1c4/A2PA9BRphG+NNjDpIRycIWNe5C0j8gw?=
 =?iso-8859-1?Q?LrAAZ5IcsI7hf7b9jZUp9zavWu2jyAOc6IcGjGFykB2uEmFCXNLKubTlCW?=
 =?iso-8859-1?Q?zGVD3rAmwT+1ljzDVvlDXa/8EMSP1Uhn9AMEyCTF86XLQq0+mbxwR0jCFC?=
 =?iso-8859-1?Q?+7U3SKtwEAkpMWAm/3RhqSNj2BPbsvFlQpOZKNaB5Dxa5vkWtPfqlAQeGR?=
 =?iso-8859-1?Q?1YGabJWi/oz8U3eAKMoWURQKNbIzj0JA7m9NdSpo541NaFw16EmVsTR9AM?=
 =?iso-8859-1?Q?WPaNAwp/FlKKcr95Nk+qT2hAua2uSVrR4qwTox1tFyPuVJgK7firf3L9BK?=
 =?iso-8859-1?Q?ZVyQPVOD+LtTfZKNcU3DMWfnpySp3HLXRRPCU5AIVsoHdKf4a5zTjS6/BP?=
 =?iso-8859-1?Q?g9wfvMi5O5FyMM2iQ+ZmuJLgLmiVLsweIqCBaPr8EoPES6gxIT0GLDHoU6?=
 =?iso-8859-1?Q?OhREg2ms5gQIGKH3VoPfskj4JLg2UH9QPBn3txiqP2mloH2bynpUT8QH8Z?=
 =?iso-8859-1?Q?9SENnAw8xVs55zEDAdKudjmqCg2As7g0KGJ+ehzR67pasgSySJcDfUFjjW?=
 =?iso-8859-1?Q?yX1f6814gf93bcyk/1lNXWaOdrAqbJ8KlYlEowfGN7mrVHmRAIH2tZOM6Q?=
 =?iso-8859-1?Q?Y6rM4TGAyaJP7NA7zJ0BaJv4X8YYEorUZ5GxvuPvpLZ6uPXZGlCB8u7tZR?=
 =?iso-8859-1?Q?VayYSpQO9k0gDpNNTRibkMwwqiIOgh0tlobPvtckMptgXDfp5z3r5FeJGS?=
 =?iso-8859-1?Q?2fU0gJIdQIYAz9gc8gFbSOag67m3o8JQ5+G1DvhblBej6LohsS3m+8N/BM?=
 =?iso-8859-1?Q?YdsMtVuK1+oO8sGtq3vurfQPLAJUQ6MNO6UaYmQjmewejPNjv9ZPbreZ0y?=
 =?iso-8859-1?Q?+gBAJK+TZxgbwKX0svNTUG5OOh6Wnpg/e9pPg/alcn7MHg8fbxElnhZK3j?=
 =?iso-8859-1?Q?YU1kPImhq9+XrtUF6V4mtMx91Tz1N4v6h3cyWiQ0KQIjVeIG5N32pQOxCW?=
 =?iso-8859-1?Q?AB8+n5/wW9qgQqs26Ac+F0EZczEI7hX4AgQTTnoS2xs6DVMM23E/dA9zht?=
 =?iso-8859-1?Q?wA9HmTSKPExhJslTWHgbws/zN3oqlxU40x58gPU6hy3Kt/8kdEXdZKvujR?=
 =?iso-8859-1?Q?28Ssj4pXg/MtcHqzqI4F+xYlhwx3vtojrJCoYM7eMeXLUZZoZq3rskIVz6?=
 =?iso-8859-1?Q?x0jYkGnyTblK8boTUdoUTvUHOvrIaWTV+93IKVxlakAuUu?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gTIwBQAiQMupz868XkevrW0XhN0W1MH0T2heu+8AQEBodHtzMBUGXoGWGUGU7ZRI+jyeOw8wBnWDBI457G0Cop/TYevVferQr3VUfKlsqTfQ9mJ9Li4jMC5CbNxmswKSueM6eBpgcl9KeG6PzPy1yMgpHnThXd0hCll0i01p3e0Rgw/SW5DNmPDOew2+8hhEReo7A120Y/BcN5sRAQJTq66BqbnlBRLWk91Wiv4HmqecWHe6UoskZC94egMS1r6+Ldl4piXi9S6ZZHg8RM64nz/qwIan1SK1HpWp+3DMpBpzpq3hZZsNvecxLXk1GvaHm2f9qomSruBbZF0wG8FrwQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9c05b9d-1d64-47ce-a634-08dec83429f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2026 03:39:10.0383
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QzViVlnD0osL0tQ5Ab5oqxMvWjyOd31mpspxcHSF8TcS1kdzm9lHTL3Az+GK+3lLNne6rwEJobkyuBFaIMNlmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6844
X-OriginatorOrg: intel.com
X-Spamd-Bar: -------
Message-ID-Hash: 4LSN7NOW4ORY2UUWVSANRRO32ZJIF2PL
X-Message-ID-Hash: 4LSN7NOW4ORY2UUWVSANRRO32ZJIF2PL
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?iso-8859-1?Q?Christian_K=F6nig?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4LSN7NOW4ORY2UUWVSANRRO32ZJIF2PL/>
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
	FORGED_RECIPIENTS(0.00)[m:praan@google.com,m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kevin.tian@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,linaro.org:email];
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
X-Rspamd-Queue-Id: E4A2A676735

> From: Pranjal Shrivastava <praan@google.com>
> Sent: Friday, June 12, 2026 2:38 AM
> 
> On Wed, Jun 10, 2026 at 04:43:15PM +0100, Matt Evans wrote:
> > --- a/drivers/pci/Kconfig
> > +++ b/drivers/pci/Kconfig
> > @@ -206,11 +206,7 @@ config PCIE_TPH
> >  config PCI_P2PDMA
> >  	bool "PCI peer-to-peer transfer support"
> >  	depends on ZONE_DEVICE
> > -	#
> > -	# The need for the scatterlist DMA bus address flag means PCI
> P2PDMA
> > -	# requires 64bit
> > -	#
> > -	depends on 64BIT
> > +	select PCI_P2PDMA_CORE
> >  	select GENERIC_ALLOCATOR
> >  	select NEED_SG_DMA_FLAGS
> >  	help
> 
> Nit: Did we drop depends on 64BIT intentionally here? I guess the full
> PCI_P2PDMA stack still selects NEED_SG_DMA_FLAGS? IIRC,
> NEED_SG_DMA_FLAGS
> doesn't select 64BIT?
> 

seems that comment is stale. According to the commit msg:

" it would make vfio-pci only available if CONFIG_ZONE_DEVICE is
present (e.g. 64-bit systems), "

so it sounds a redundant dependency hence is removed.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
