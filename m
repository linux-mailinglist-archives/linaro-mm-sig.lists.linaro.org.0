Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDQrB+L+4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:23:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BE75D4109B8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:23:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBD6C404DD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:23:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
	by lists.linaro.org (Postfix) with ESMTPS id 4D1903F6C2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 07:58:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=IXhYszVD;
	spf=pass (lists.linaro.org: domain of kevin.tian@intel.com designates 198.175.65.17 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763625508; x=1795161508;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=AJV2C3FTPvi0F5ciW6it3/fRy9/+nFwqf6lex1qttmU=;
  b=IXhYszVDCRd6Rj09a393p9X8fk2BZZANUCKJEfASs6oOu08EtVp5zsSn
   vnem2YCOtVZ6QSw5wyPZp2P1L2xwkHGQ/2Oq51MQYX27fXOAvUPJ87ix8
   eLPjoGHTC9pazADRJJJW1NpT6+/fhA1WlYDJB6vATkWnb6EvQ6WnTnxKM
   Qrm+5RYekBJA/RGlxCD6r1DRPLwV+WJx6r6uJc/3m6Gu8DlgSDQIlqju3
   BcoBBIGq0baWgIrD1N1eDK5ExHftYVZNTrL2cJxgPk/LO7e11b66U7MRP
   C2JvXBgDDpu5RhL8Hh6hNzlEtXEpwP14AnI+nkb1dsCkIHSZ2IKc3pCvl
   g==;
X-CSE-ConnectionGUID: tI39R9uySVWLAQB8AMCmBg==
X-CSE-MsgGUID: VWbZtL2CS22aNN8It59NsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65624458"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000";
   d="scan'208";a="65624458"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Nov 2025 23:58:27 -0800
X-CSE-ConnectionGUID: tsExCfrwQp6cN2JJjXtvFQ==
X-CSE-MsgGUID: GhysoegaTDuFm3vpwbNWdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000";
   d="scan'208";a="190566484"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Nov 2025 23:58:28 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 23:58:26 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 23:58:26 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.25) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 23:58:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JaClTn301YnCOBlmvbDODzc/vFq3rS2Jq85cQrxqppMcgxl1xOzFaFUyTkzKVnDj6gga1wRLdxP+WmPFlidVeAp3LwtG6BjZpMWXM+8iOhby89fUAr6L8HhA0kfzUhaXsVzkVMAw/3E+7ee79misbcGE2nHbSvAQYtvIB8bNMtEZeNDIOmHHqgMayCDGg8zLl8O0YWaQcdrVbNpx3VyioN/5RMTmiAC2O1tsElmOIAQsCj905nKURUApD34J4ETvW36gKj6Jwgt4Z/yUFvVC0dgme/cVsBU89coTX+Xv+R9dX0Zms3JTBtnA1nu/DTdwihBgStr7GOH3J9QNVC4kog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AJV2C3FTPvi0F5ciW6it3/fRy9/+nFwqf6lex1qttmU=;
 b=dH6ixIZta+mZVQDaA3XBwDUXJT6kBm+Qf9RqX5ikP8TVGYaHU8PmGGiBTMm2cw5p9mT53Z4bPhCv9tzMlcmAqxlm5AvBEv+IRNtx3CWyEnWXf+2ZwQYZHu5iMK0khGJtlhsDCrSNaDqbzdn7jX0P+V9NLICJcYGh62h1zRN2lj2GIJSOP2/LvX3Bbzh1drMXeupCJlxcb2XeUWE4sbUE9zOXV2AHFPgtpHEUJuP6HvJRmNGgyuLfX+Ljvnnpm2YlRwFiSiZUArIsUqkHrqtJYLUAlIDgWY2FBu7DwGwjLqP87zIMNh8+Shl3UP8cVveBCwblXCrvQ10Le3FXQcWZQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by SA1PR11MB8840.namprd11.prod.outlook.com (2603:10b6:806:469::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 07:58:19 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1%5]) with mapi id 15.20.9343.011; Thu, 20 Nov 2025
 07:58:19 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Alex Williamson <alex@shazbot.org>,
	=?iso-8859-1?Q?Christian_K=F6nig?= <christian.koenig@amd.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"iommu@lists.linux.dev" <iommu@lists.linux.dev>, Joerg Roedel
	<joro@8bytes.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
	"linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
	"linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, Robin Murphy
	<robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal
	<sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>
Thread-Topic: [PATCH 4/9] iommufd: Allow a DMABUF to be revoked
Thread-Index: AQHcUAaS1SrYbswyJke15yG8ZyOP0LT7RkAg
Date: Thu, 20 Nov 2025 07:58:19 +0000
Message-ID: <BN9PR11MB5276C1E5BD2287B592BA85068CD4A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <4-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
In-Reply-To: <4-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|SA1PR11MB8840:EE_
x-ms-office365-filtering-correlation-id: 52f6e834-e75a-43f3-888a-08de280a91e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|921020|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?qwrOoqg24to3zLMiXazuTO08T8Ixdc7nWChJ6KWT8+BQaaLfFE+tR206Df?=
 =?iso-8859-1?Q?lE3+GK0EbXWrznuyHitYdxW8G1QeyzfDpHgqEQJ8nYP09eM4P9SIrAI5iT?=
 =?iso-8859-1?Q?AXiZKQF7287JcyhorjnVyzhVqOzOPYRMwp0xK6J5E0QGBpIrMl3dkAkLJp?=
 =?iso-8859-1?Q?44RkW2p1683QCBol5CiYs4XTvdLi6pPHKkhNkOGaSoHfyJem1ApwgS9tUm?=
 =?iso-8859-1?Q?M34prJT2Hidr6bYyMEs9dxd6bcjweCEAY4KryDgpARgwpj5FWA7h2rzanS?=
 =?iso-8859-1?Q?T6z3qOLAc+grlwlGlYlz7EdHkoKzBl8Q4BHR8HPc3HY7PKyh5PW7TzKM6r?=
 =?iso-8859-1?Q?pNxuHdARZlyRhJmHwfLJ5eX81XHeILoNfRo3uh93+xFpQQf72Zgr9362MW?=
 =?iso-8859-1?Q?nf1JE9i+VGKGV8iHJfNC4iMqkm5rykDNspUPxaGo6SOONc/5KXm2M3qs5e?=
 =?iso-8859-1?Q?zFJwcORsJoU9ERPZwhFVD/yH8yD1P9pi/j51MUJ+ZBdRBqfYNbq9xeT4OU?=
 =?iso-8859-1?Q?NSjA3BdYlohFVzcwlzK6H7qTIzI+xDmFTQM6/2m5dKtbidAARLWvBThDBy?=
 =?iso-8859-1?Q?NRdeUjvhCP+CEg0f3DmcGY0uKLnt4dCuQa23UK8pEY6ms3ovzKsaa08iWw?=
 =?iso-8859-1?Q?Zd68C9R8wpGnaVGngzYXD+wHoDhicLEbqyw5wpGMPObSIZyGXso5dYYYmf?=
 =?iso-8859-1?Q?KtmIlK1iZMrhOiR3vmoFAS9p+NyGadaXJFn1jyChbdESfv+V6JjRCnOkp2?=
 =?iso-8859-1?Q?0P2y0b3eqF00ca/Z+Du94Y2EfsljBKeuLnaV1psg02d3KvMoWDcuGuoYZs?=
 =?iso-8859-1?Q?GOXlG97ZVTINhRTdIlaJBYO48pbl2uQ7VSPKP1QmSX/oDw9DZWbPlAaAwP?=
 =?iso-8859-1?Q?qGZMorypruCuLfbs9TVT6Eov2seUnhZDzkbpIIvHWK24nQlLFsqiDnrj/9?=
 =?iso-8859-1?Q?4VOh7CAHX/5GkqPdWifcN61ZuBrpHXUPkBKCFB3ZGTqrsfHGVHy5XaHU6M?=
 =?iso-8859-1?Q?YDM7oWvcoUeU+/o8XPQMyO0r0Ey15CFbXbDmj9lBLSavWj0NmaW8IAdzgS?=
 =?iso-8859-1?Q?Umh5XKX4hddENLwKQ2hhIif25s8NuOviK4jTWRjwt6/BQungUFdqHdG+gA?=
 =?iso-8859-1?Q?wbqBfuP94ZFIIz0BBTTNmrv8D0rywv85Zeyz2ipp7vctTfT4kyovQoEhdb?=
 =?iso-8859-1?Q?f00ZRIUoJEchllRNw4w6VhG8eRGPvB4xdLoDLuV9C0eeWPXAOf+VgXvG+j?=
 =?iso-8859-1?Q?4wRMykCz6uBNQSHJOy+yaoM0b+7hbC3SJB/9eH7WT6ox2oebl4Q5GVR04r?=
 =?iso-8859-1?Q?WfapDQcyLtrZSwnlBxtonR8hgCcasfE181y06Aet1a5ySaGth5S4CK3U3q?=
 =?iso-8859-1?Q?55GH3Tq5zhD4AmpaNrCvNno6IVQSBwelgw/7R6M0asGmCvLCtXahzjm55C?=
 =?iso-8859-1?Q?8W2SnGeP0I1Na2TrjXxFOCVEaaqjyV7pQLUNNbpUKhaayUPTXtS0dDudpV?=
 =?iso-8859-1?Q?v4sllVsn/GWG+p7v0nYnu+8MooehcD2avfMo+T1a+PAds4+cMFpfYOIJjy?=
 =?iso-8859-1?Q?vIPka8dqjUnsg0kpm4UC1iKHsaGE3hHyffeqB8VqOzc0UjHtoA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(921020)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?tFmxUUGZnswSpOPmR14wBOVEn1ccZxdQkiCdkeCX8cTWcwvtntb63fdRDy?=
 =?iso-8859-1?Q?aEX+Nen3crzcPegWk+vjY2kehNYG34aWltSNbSDjkOhyz4DV/aN7Zvsyjo?=
 =?iso-8859-1?Q?wXST28MOicl23SxYrecSxloAYPfGcZjMRLmgkmUnW9hLP655IRg+Ilg/n6?=
 =?iso-8859-1?Q?QI4PtDagcTmYDZE1RD3dp9YJb5HCOIw//83JciAoAFIgVSkH5vQGOZsYWC?=
 =?iso-8859-1?Q?/pqlgPaDm+eaH0lJNu1mdvSV7fBm+6ycAyeY7Pe6hsJLCOivEQfQ3ynXex?=
 =?iso-8859-1?Q?m+Nw+Yozh0PO85DMieDBF92SZcuVz8tad26bJ8mKVlf+uR+xcpb85BB3gX?=
 =?iso-8859-1?Q?WAjs62AvNucT20V0yfnkZMj+3oqjFAVawlio4cTWigMvN8rHlA8VXpx9Co?=
 =?iso-8859-1?Q?Iwu8fjAnu5/jiHvddGT6sdtMbZPRzgbPgD/j3JmlzdlCQsE1hQRJPVd/qC?=
 =?iso-8859-1?Q?YM/Tlk/MDfPhbzn8fA7NU0sH70LGzfr0Sp0ilUdcv27IGCUrEG5/WQkFYm?=
 =?iso-8859-1?Q?63w/3JiKF5gzvEZT+Jis2mQwul+MBjtIPMspbmFX1fYVKa0B0Bhx/l6GKI?=
 =?iso-8859-1?Q?0BfhYSulYG+gzkMqLAh0OwKDWmASSjbnK4M2ETTH/oCAjRDc1+r2SQUBU6?=
 =?iso-8859-1?Q?YdxObrmjEApugY3Xw8cyDO2vXyouCvAsazj3sC7xAUxLgKQGtNmPofIb2G?=
 =?iso-8859-1?Q?ZnijQEE8yYzrFm3pCJxOn3h3e92keDNuJr9wv+DUP84AARQP0MzVhgIYPD?=
 =?iso-8859-1?Q?adJuyLTixxrpMeJ7gZRPwtScrc7V3VY/1SYxZ4zVghljhJnbYZajnjtmwo?=
 =?iso-8859-1?Q?pseJaoYIQCGujI8lxzrQLULmDKV5qM+09vk6BFnW7SAXD/nSq7zIK2lHGM?=
 =?iso-8859-1?Q?01pUx84fFazpTS1FpVNTMzb2aKRy0fXJgatri2d8NJydqKRSel654Edr2z?=
 =?iso-8859-1?Q?PwniY9cRUtbrBzDOubPNPPFH4Au2ErnB2PYmQ0QXbbe33QIpRp/0uFwH1K?=
 =?iso-8859-1?Q?Ai9IBPl4nbZssVOniAixP6OfQgSdCngjtg3NNv4y/ZwU/4Aqhee2qr4dVa?=
 =?iso-8859-1?Q?IRT7So7VBNvmpkUy7NlfDNeIq/XPyR+7fqkVbtz296mjCulKZ+HpLsDg3v?=
 =?iso-8859-1?Q?ZKGHt5vyVunsLgf6Fd9024A45jvjzxr8oMGy0VeD5ptFf8+4qUjr7A9dHM?=
 =?iso-8859-1?Q?UpQIdBBkfIhuJkwsbVry2RKVYJOMH3vMk7yLMQIj7q92BNVHclExzgoi5n?=
 =?iso-8859-1?Q?dBbG3ZNsPbEDwpfGUiALgslhGq6TGfGo64tyGdzxvGUBom1KghneLpwNZX?=
 =?iso-8859-1?Q?l1m03rAVq91wndFFl5OoeuvtU1V9pxrpNevpefCRUAhT2IKt+QR4n2CEZs?=
 =?iso-8859-1?Q?jwFSFYhU519rZztjZ4m8haiHdhmcSkwFUU60L1Nk33oWhwz+WnO6IUh9SO?=
 =?iso-8859-1?Q?1CTP2pWnvpN+1y90DlkJYecPV7x3S5XyhbuBLtBaccmnuqjnYVvMwrYq7d?=
 =?iso-8859-1?Q?lSY98bZksBTY6VnnQtAhViEdxJrX1GjWVRod/cSr8C3FMAFnvGaugq9ntc?=
 =?iso-8859-1?Q?3ff9K7oAJNH6TDQlqZkMECCUGy7KOsKyuh8CrzmI3hX4vhb2+NpUajHpbL?=
 =?iso-8859-1?Q?ZL5Z7E/f09kucbvj27K1lMDdt2zdvx38v4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52f6e834-e75a-43f3-888a-08de280a91e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2025 07:58:19.4915
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TfQq0WZMnRcMo/t7Grs28SnlZukdosd/ugHrCL/zis3Qu127yP3pq1vfXDb7L4ALeACtRwj9/lIXWTVRL7Y/WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8840
X-OriginatorOrg: intel.com
X-Spamd-Bar: ---------
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZOH4XA3Y4PWHRDJAEZQ2W2HEE3ALPDVY
X-Message-ID-Hash: ZOH4XA3Y4PWHRDJAEZQ2W2HEE3ALPDVY
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:00:59 +0000
CC: Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, Nicolin Chen <nicolinc@nvidia.com>, "patches@lists.linux.dev" <patches@lists.linux.dev>, Simona Vetter <simona.vetter@ffwll.ch>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] iommufd: Allow a DMABUF to be revoked
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZOH4XA3Y4PWHRDJAEZQ2W2HEE3ALPDVY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[3535];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,BN9PR11MB5276.namprd11.prod.outlook.com:mid,nvidia.com:email,linaro.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevin.tian@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.656];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BE75D4109B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> From: Jason Gunthorpe <jgg@nvidia.com>
> Sent: Saturday, November 8, 2025 12:50 AM
> 
> When connected to VFIO, the only DMABUF exporter that is accepted, the
> move_notify callback will be made when VFIO wants to remove access to the
> MMIO. This is being called revoke.
> 
> Wire up revoke to go through all the iommu_domain's that have mapped the
> DMABUF and unmap them.
> 
> The locking here is unpleasant, since the existing locking scheme was
> designed to come from the iopt through the area to the pages we cannot use
> pages as starting point for the locking. There is no way to obtain the
> domains_rwsem before obtaining the pages mutex to reliably use the
> existing domains_itree.
> 
> Solve this problem by adding a new tracking structure just for DMABUF
> revoke. Record a linked list of areas and domains inside the pages
> mutex. Clean the entries on the list during revoke. The map/unmaps are now
> all done under a pages mutex while updating the tracking linked list so
> nothing can get out of sync. Only one lock is required for revoke
> processing.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
