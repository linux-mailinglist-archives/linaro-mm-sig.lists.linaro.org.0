Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 26OjOWoXMWoCbgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 11:29:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C60A68D8A3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 11:29:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=intel.com header.s=Intel header.b=RGNIhyJe;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DA3E40A6B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 09:29:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	by lists.linaro.org (Postfix) with ESMTPS id CAC90402CF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 09:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781602142; x=1813138142;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=pdx3BbQIYdibySzKarXaQfpDJIsxtrKkeBKJ6wtbFHo=;
  b=RGNIhyJeNL4xst7cbMq+A4ztSPt6DoshpsQZpXb0fdftU4jzFleNPrtv
   Ti7dVnl390lnzVTOdONg0vk+3cJ7UK30+6grmDrR+Nag3wuKeGU0v8F4c
   iZHC4ZOUmbfec4dM8+wB0gqWElBKSxsWoAthQuScen7RzsUmddNnD762H
   H+f7RdPqNIYgHzkZ2X8iZCyp7bFrF+cYvtjr7KtoLFyU0JHVEUet8icCN
   r7vZpAPv6gVU6oCOsaMaaqqEFxeaR9gp5ths51QAdELEpTlXg+/zV4ywN
   PLbykEheQYhTzDtFMkBUaqYlPx8eyLLUuLss4PqVZTsDx7SzBhO9qG/gj
   w==;
X-CSE-ConnectionGUID: fdhte3TBTqK/5bU8+fMQzw==
X-CSE-MsgGUID: JYtqqnlVQQWwVlQZQbi+CQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82261550"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600";
   d="scan'208";a="82261550"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 02:29:00 -0700
X-CSE-ConnectionGUID: 1ewsTyhPTwS1fXL8rovrUg==
X-CSE-MsgGUID: jSIG2K/qTwqfR17itQ+IUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600";
   d="scan'208";a="241338312"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 02:29:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 02:28:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 02:28:59 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 02:28:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JOh9k5iSh23zXZ6UQqFKlscKykL0gNkxM9vtIGJTqnGcoCzCe0Kn3h9CNoSH16Nku3huigK29sBJsjXpAecF+UOpStbNQq4LDb44mSJ1kbFdYVlQ+/qsNLQD4SLzwpNMxm3MwL854CVItzXzEPOck/4MlBFAfthG92eXOGWIWyXvpBywA8CXAKg7bLwItYFcnIBgyiWbgnKaUMPOkaDUr8mzLSGcS9vBMqfd1WcXNsfaTAsUTKTzdPZ7uL/DRPEcZX/woptnQcdd7DY+esv8Km4TffiEOQCgv+TS2I+0Fk4bziaxJSgCC1JwBRLRCkv1ZA3bJSACtMlbrJT3kYQntw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pdx3BbQIYdibySzKarXaQfpDJIsxtrKkeBKJ6wtbFHo=;
 b=NgtQHx5ewp40luHJ/k+lzvDIF8/Rg9gBH62j/jTA2gDkyP2b/oH95GDNzM96pKNmYX6ajFIsLlsUgQ54kuAmMKWFLg8ObUzoyqM9xJmci8tqtHcCMmO9cma2XQojv3p7XEOdi7aKaq+OJyBudNWz94MPYnREnoTxIY4u7JcjhYUcUvlKj8jAfBpYAPKfj2D89Vsz24/tbjfg9hnmumFcwtIyhIywQCgk5OXjjRaf/mFHxblHMRaRDXBeeIvz7/gsGGWMcwp8D7AW3e03c96R5s9XvQG0gAAoZJNg9MfW4zGiuJFsbEbQvvHgcBHvn7CZsg/EmiSB1HlAK4Eme6caUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3690.namprd11.prod.outlook.com (2603:10b6:5:13d::32)
 by SA2PR11MB4859.namprd11.prod.outlook.com (2603:10b6:806:f8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 09:28:52 +0000
Received: from DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b]) by DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 09:28:52 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Matt Evans <matt@ozlabs.org>
Thread-Topic: [PATCH v3 2/9] vfio/pci: Add a helper to look up PFNs for
 DMABUFs
Thread-Index: AQHc+PAQRqml0ikcREqACcjq+Arri7Y6mQ/wgAVXxwCAAQHA8A==
Date: Tue, 16 Jun 2026 09:28:51 +0000
Message-ID: <DM6PR11MB36903B0203CFFF97197676138CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-3-matt@ozlabs.org>
 <DM6PR11MB369091A6F1E32054A95AB6788C182@DM6PR11MB3690.namprd11.prod.outlook.com>
 <4d75b948-3b74-4970-97f2-72e54f9c9694@ozlabs.org>
In-Reply-To: <4d75b948-3b74-4970-97f2-72e54f9c9694@ozlabs.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3690:EE_|SA2PR11MB4859:EE_
x-ms-office365-filtering-correlation-id: 5e36c4c9-6625-4d7a-7dbc-08decb89adce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|23010399003|22082099003|18002099003|10063799003|38070700021|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: WKG0sX9Q62dV144qXL6tQsJSiiNAycVAKCWKwwVSy/X3rsaNZx6o0LwFtAjOEdk1mEby2pQSCehNV0KYx0jSM4d47s6NvQgTqSBGDjlFKFEtb/IVmwJyUNNW19LpxBumG2fvN2ghzcVaZ4Yu1dR5bBbw4IFuqG+UJwREcscFDOERtdsRu8X+lZZ3LAoXKgsRftO5ON4OE/WYSSRLAtDtIw4CRS6jgjNfJF8psh4nICiZFAjYhTStDt7NzXEoLQbNR9vWYLQm4C6z8ZE5B/b2UoeN+fdTuouoITbaTJI0uDjGpRbVtjKhtTGFWcyxEoi4KBp2nwvbf/nYm7wVfuJubxVylXGquNl/YPYe4Hpmf7LF+aZtDrJtIjC+1qgS7BteOJThTLhIHm4GwLlgV2yyQ54WuhGs5zHCYtyLf2zJmm8LaWe/92tnxHe5hh5ezlB7qt5962m6qRpk5I6X/9yOfIGynXaqwOvW4u7WiCksneP47zM+/Pw9WkyRgt9yQeeDwRgjjA5laXFXHFiqpO4QPxi+qnmNw7oou1iPYb56cEmhhWiDrc4hazBiCbbG2v6VsGT0VO0tY0IxPU3vjETgrvW+5DC4JqL/4q6/R9eTf7LvykqC0gZyR98Hl6BAP6sR3jDkPqk/B15x3TegmjDidmONCtt6i6jG2ThTPW38FmQ42f2P5iomZ65hBrK9NSC7YmphRC2Xo/dfu/RN9xt/ze86hYmc4SFtDqBfD95MNJrObgnBDcXrQJSH88ggdzmq
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3690.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(23010399003)(22082099003)(18002099003)(10063799003)(38070700021)(4143699003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U0pCSDh0SHJiS0gxR0w3ajVHZUVlK3VPSHZTYkVuM01pemZMbURpczJVZDJF?=
 =?utf-8?B?TnYwTWx2b3R1T3piRlNiUVZJRGtydUUrSzZRaFlwVDVxeloxTDM5aDNLaEJM?=
 =?utf-8?B?MGxmTFpFRU9yTG9ZSUZJR0wrdUFEVWsyTm8zZE5Qelduc0czQmtpZU13blU2?=
 =?utf-8?B?WUpLY1VUVkZvdHo1eFZQUUxsRjBqY0ZjY2hsZ1ZQVHY1MG1GTkUzYjJxWEs1?=
 =?utf-8?B?Z0hjUk80ZEJ5Nlo5bTY4UmNydk1pem1tRmhrTXBMbU05YkFzZlo1SXJ2WnBu?=
 =?utf-8?B?Z0dDMkZXMW5TSWdtVlAyd2YzY3FldUlhclQxR0k1MWZ0L0tiNzFqYUVqSUky?=
 =?utf-8?B?NFRjb2NUUUVLTXRSbTV2ckNKZnVHK2hZOHFIeXU4TTBlbVNYY3JlZjk4Tm9u?=
 =?utf-8?B?U0ZLcUJ5ZkdXbkZsd0pWNWVaMmtWdlB1dUNoV2xKUW90d3lqMUdMcDVDeVdZ?=
 =?utf-8?B?L2pJUWs5K2R0UGNSREZ3YnVrVUU0N1RYOVI5N0FrR1RBMTVzSU9idmlyZnVX?=
 =?utf-8?B?TVVucm9ISnRQcWRQa1FjREh4V2c2Nk9zcXlSM3ZXUlh1N0NuUEx2NWxoaEE1?=
 =?utf-8?B?cmdOMTZGQ3V6RU1hV0hmTjVqekJabUFJTDgvbWhGTEtXbnJCV3RpQlEzVmJv?=
 =?utf-8?B?MEJmNk53ZCtxWk5ML28wZnc0akNSM2ZrTUxKM29HLzNUUlQzMlBOcXFPV1dz?=
 =?utf-8?B?TUx5a0JaSjg0UXdCNWF0SEVUSGhEaDJzR2EvS3F3WFFyV2V4dmNVUVZXbzN4?=
 =?utf-8?B?TkRSTmRtZWFGNkJOYllYbVQ5K3dmQU5HTTh1R2VrRDlaY1VUVjlpNEZ6Ym9Q?=
 =?utf-8?B?bTFYWHpha3hRSmFEYXRtWG1QWXBkRVpkNDBIaUxKSXRYS2JhQnNjUGdHUnlw?=
 =?utf-8?B?NTk3bUp0cDRmUDUwRTl2VHZNdDhINHdOVEVONmV3T1NnRGlXdnZuU0ljV2R0?=
 =?utf-8?B?RkxnT0VLTmlaYVBGQWoyaDlBSFBtK2tvNWpCYnVWL1pPWFhwUWRPQ0VsTGR6?=
 =?utf-8?B?UTFtYTFUUXRPdVhiSDJ4eS9MeVVZUkRFdWxnVTB1aVltd3hCeGZTOTlGbURP?=
 =?utf-8?B?Sll3dnNoNjVGd0dGWlZFR2g2OUlKelA2a1YvTTlBa3B0ekg0ZkEybzBVd1Nt?=
 =?utf-8?B?SGhsNGVHZHFUczlEc3Nna2xsMjVLSGxHeXB0S25nZjlrbk9UZExKb1Z5UmdS?=
 =?utf-8?B?M21MZEFKQlY4MlhocG1KZVFMVlM2eUZBUTBkK2dVdWFiY1o4aUVTbndpeVpC?=
 =?utf-8?B?SXFHaEFnVmo4a2tGL3ZaT0w0RWlkWC9WVDA3R3U3clRhVWRsdlA5d2g3bTFz?=
 =?utf-8?B?WU40T0JGRVAwNXQ4R2xjOGZOQXdVNEh5K1JsZUxlSzZRd0xEZkRuNlRQUUNp?=
 =?utf-8?B?dkNhNUprWWxaMEY3RkJHTlBYYTBNT0NyMEVIZXRsSHNmems0OFp5NldrREQ2?=
 =?utf-8?B?bDVJOTV2dFhscU5ydzFPOXJZWXViVVpydVI3MVY2ZW9PMkhJb0M2UitmcFZ0?=
 =?utf-8?B?Mk1tanF6OFBaK1RId3g4YlZCRHB0eXNpMHlSeGhBanZlbHVYMEM4OWViYlpB?=
 =?utf-8?B?dGVsWUlGZXJyTzNOdkVqRlZPdThVUXZWYjJnQjIwNTQ4NkJCdCt6NjhwOFVx?=
 =?utf-8?B?WkRyTUFtM3YrMXAvLzBXVUtLR05TdjZVL2k1SS8zdDZNakcwNlVDWklXVnJL?=
 =?utf-8?B?M0ZnOE4vL0lGeCthcTN0VWpDZnduT2xXYTBBUkNVdHA5NkFWWldkN2dnK1VW?=
 =?utf-8?B?QmdoQUc2MGZVWDVHb0lYTUhtVUpsNkVsQkZTTFdhMTRzRVM3YVowWUtDN1VP?=
 =?utf-8?B?UDhpTk83Ly93aTVsSDBvTVdTaTUvR0FocE1XdjhEY2k0MkVDbTBBMTFKQWY2?=
 =?utf-8?B?eG44VjFMZ2swUVBvemdRZjZ2TTV4bEswQzM2eUV2dis0SVI5NjZHTDdMeDc0?=
 =?utf-8?B?ZzM4ejkrU280SFZ6amJwNGhFZ0piNkpjbk5YdXVwdVFaLzNsbzJ2L1k1TW9V?=
 =?utf-8?B?blI2NktjM2Y4OEx2c1FoakJUV3QxS3RKR05Zb1cwNE16MEJrcC80elExcHZD?=
 =?utf-8?B?aEdGdGtScmlPS2hzR1VGY3JDVlhVOG12NzNHSERpQVlUNW1DYTh5NzlDSWlH?=
 =?utf-8?B?ZGxxdDZoSVdIWDRyQTRxV2ZuZS9zeXViVGVxaXBTY2JxM010UUhxT0UzTTZL?=
 =?utf-8?B?SVRqckhDMGVaRTArNWFWYkRpV0VpR2JOaXppSVhCS2FZejNuYmF6bkdEODJv?=
 =?utf-8?B?MTlEdzhiaG40d2NUT0QraU1IR1U2VkM5Q3JsVmcvbTZrWVJOTG1ISWhwRVNk?=
 =?utf-8?Q?oJrgxoOvGIfpH6sA+k?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kkQCT5lesgFXOvcAqoTvV2oN9SWbkUgDiIBpkvA2aY7OF1wvXM8cFaMpswuegHbjGw735gOH60Q1Rl/vo3O3/HLMA3sJAP0xlhwfhAre1Ytx6xjp/WArqQiz64ify2WnhCbfxWoGXdlG6MLwoTZvrhC8pMKKFcdB/X4cIPO4KkHlrwREniiLuUFWfmqyUmsILuGGx4sdQZvN4KNH/3P1R+7FlPwrG/n0408UkRKE6QQbp1LRQcxz9scQXxScawtVXX2dr41O8pBdm2R96GEJv9yyGIYfGUsHCfof/SwLCVB5z7vXKgiKHFOOYj+4fNzTzZ7RdoT8wBeXAGFcQzKleA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e36c4c9-6625-4d7a-7dbc-08decb89adce
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 09:28:51.9821
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IROMyF0gRB8ir4CWC1ByBD5/oIGo5nBMzAW9fAcqObr5r1njGdkHcwgR/iETXhf8dpBqq4mVhxh2D/M4uD+2OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4859
X-OriginatorOrg: intel.com
X-Spamd-Bar: ------
Message-ID-Hash: YH6QHWXSW4J2AEA5TJOKBZKEFEPH7AA6
X-Message-ID-Hash: YH6QHWXSW4J2AEA5TJOKBZKEFEPH7AA6
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>, =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/9] vfio/pci: Add a helper to look up PFNs for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YH6QHWXSW4J2AEA5TJOKBZKEFEPH7AA6/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:email,DM6PR11MB3690.namprd11.prod.outlook.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,intel.com:from_mime];
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
X-Rspamd-Queue-Id: 4C60A68D8A3

> From: Matt Evans <matt@ozlabs.org>
> Sent: Tuesday, June 16, 2026 2:04 AM
> 
> On 12/06/2026 09:42, Tian, Kevin wrote:
> >> From: Matt Evans <matt@ozlabs.org>
> >> Sent: Wednesday, June 10, 2026 11:43 PM
> >>
> >> +int vfio_pci_dma_buf_find_pfn(struct vfio_pci_dma_buf *priv,
> >> +			      struct vm_area_struct *vma,
> >> +			      unsigned long address,
> >> +			      unsigned int order,
> >> +			      unsigned long *out_pfn)
> >> +{
> >> +	/*
> >> +	 * Given a VMA (start, end, pgoffs) and a fault address,
> >> +	 * search the corresponding DMABUF's phys_vec[] to find the
> >> +	 * range representing the address's offset into the VMA, and
> >> +	 * its PFN.
> >> +	 *
> >> +	 * The phys_vec[] ranges represent contiguous spans of VAs
> >> +	 * upwards from the buffer offset 0; the actual PFNs might be
> >> +	 * in any order, overlap/alias, etc.  Calculate an offset of
> >> +	 * the desired page given VMA start/pgoff and address, then
> >> +	 * search upwards from 0 to find which span contains it.
> >> +	 *
> >> +	 * On success, a valid PFN for a page sized by 'order' is
> >> +	 * returned into out_pfn.
> >> +	 *
> >> +	 * Failure occurs if:
> >> +	 * - The page would cross the edge of the VMA
> >> +	 * - The page isn't entirely contained within a range
> >> +	 * - We find a range, but the final PFN isn't aligned to the
> >> +	 *   requested order.
> >> +	 *
> >> +	 * (Upon failure, the caller is expected to try again with a
> >> +	 * smaller order; the tests above will always succeed for
> >> +	 * order=0 as the limit case.)
> >> +	 *
> >> +	 * It's suboptimal if DMABUFs are created with neigbouring
> >
> > s/neigbouring/neighboring/
> 
> Ah, not a typo. :)  That is en_GB and AFAIK is permitted.

I guess you meant 'neighbouring' and 'neighboring' are both valid.

but here lacking a 'h' should be a typo? :)

> >> +	 */
> >> +
> >> +	const unsigned long pagesize = PAGE_SIZE << order;
> >> +	unsigned long vma_off = ((vma->vm_pgoff - priv->vma_pgoff_adjust)
> >> <<
> >> +				 PAGE_SHIFT) & VFIO_PCI_OFFSET_MASK;
> >> +	unsigned long rounded_page_addr = ALIGN_DOWN(address,
> >> pagesize);
> >> +	unsigned long rounded_page_end = rounded_page_addr + pagesize;
> >> +	unsigned long page_buf_offset;
> >> +	unsigned long page_buf_offset_end;
> >
> > what about "fault_offset[_end]"? page_buf is a bit confusing.
> 
> I went round several times with these names, thanks for the input.  Just
> tried it out and your suggestion is clearer.
> 
> >> +	unsigned long range_buf_offset = 0;
> >
> > could this be called 'range_start' then the 'range_start' in latter loop
> > is renamed to 'phys_start'?
> >
> > Not strong... just feel such naming helps me understand the logic easier
> 
> Anything that helps helps, thanks.  I ended up renaming this to
> range_start_offset (as offset is IMHO important).
> 
> I'm a fan of diagrams but this is too large to include in a comment.
> But for posterity on the list, and using the new names, an illustration
> of a DMABUF with 3 ranges in phys_vec, where a mapping's
> faulting page offset lies in range [1]:
> 
>                                fault_addr--+
>                                            v                   VMA
>                     +-----------------+----------+-----------------+
>                     |                 | Faulting |                 |
>                     |                 | (hg)page |                 |
>                     |                 |          |                 |
>  |---- vma_off ---->+-----------------+----------+-----------------+
>  |                                    .          .
>  |                                    .          .
>  |--------- fault_offset ------------>.          .             DMABUF
>  +-------------------------+---------------------------+--------------+
>  | phys_vec[0]             | phys_vec[1]         .     | phys_vec[2]  |
>  |    .paddr               |          .          .     |              |
>  |    .len                 |          .          .     |              |
>  +-------------------------+---------------------------+--------------+
>  0                         :          .          .     :              L
>  |-- range_start_offset -->:          .          .  -->: range_len
>                            :          .          .     :
>                            V          .          .     :
>                            +----------+----------+-----+
>                            |.paddr    | PFN      |     |
>                            |          |          |     |
>                            |          |          |     |
>                            +----------+----------+-----+
>                                       P
> 
>  P = paddr + (fault_offset - range_start_offset)
>  L = sum(phys_vec[0...2].len)
> 

yes, much clearer now.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
