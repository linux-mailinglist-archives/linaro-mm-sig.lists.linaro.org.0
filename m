Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDqqG/D+4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:23:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 104CC4109CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:23:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25882406B1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:23:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	by lists.linaro.org (Postfix) with ESMTPS id A87FE3F7A5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 08:04:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=JqKpyZL5;
	spf=pass (lists.linaro.org: domain of kevin.tian@intel.com designates 198.175.65.11 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763625886; x=1795161886;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=CnLjhgQ7tM/biR4dO6Ua07/YeRE8j/8mTSLL6ZiVDi8=;
  b=JqKpyZL55PRLiBAPLcyxClG88/0rMY6f3CPBefaccqkPBjl2Wi7K2IUn
   +OuZgIWKv+hS+ZjRXT8NU/ES5ceNsp0PjBS1WqGHcBdVJsgIeLJphtRx1
   ybSHHlW1HrHh8/BZgiwZWtAA47RrOfM/DJOUhIUrTZNkpcMX9RU4LdiLH
   5jGl0jQZxr33FKfSnC/ofqcSVyzUasXnfT9y9mALXKoAlhEP9ikwKCUAI
   3EJoVk2Btp52AFU5eDar8xlI0Orn6c904JNyhZ0nxGfYqIE79ImIad0RP
   2QZkwQ0WY7rs7IOSzLleQJlPni3y7wiUiWNN5zeCwAUESD8QbeXLsEEm9
   Q==;
X-CSE-ConnectionGUID: KYo++uTiTnKzxA813HqMng==
X-CSE-MsgGUID: EIzX5QsJSo+9oqdDbSzVQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76014715"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000";
   d="scan'208";a="76014715"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 00:04:45 -0800
X-CSE-ConnectionGUID: 179xk+QQT1GdX4x3uetPdw==
X-CSE-MsgGUID: gfXu6QRSQOGq6Yj4W5IMiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000";
   d="scan'208";a="190546003"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2025 00:04:45 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 00:04:44 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 00:04:44 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.29) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 00:04:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e7cvTlCBvI6BrrahtoVcMcp6Q1HSvQCczEP6LjB4igE6DbL61ZjD/FhKAQLbM1lGCW6TC8/figUY9+Cte/+clLH553h6eITYwdoWmlytMEmiyyjoZhtgQFJXdfpA3xicPX55urApYr6RboeiZg+saFRXxZ9kCkGAw8CT4V35Pa2PXCjCA55dCFL/pB0z/XCexz/+rXDTnx/xOdSwmo0WsK+vnqJGbVNAZ5R2+0t7FkHZXpW2sYxwtV4V87TyDJEtm7Fl2k5TOANoyw7WkVA+sVNJxBDZ7wo8ID4a+OSoyAi81Ee4adBLScaIjFITdd652NHzMCJHeL7dXiLH+CQQgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e10kEwqsdItOBS+Jzo0sxhzsg7+olSLdEjc3bwhqHlk=;
 b=ExUCExU4FC6kKKlF0+wLnpqx+i/xlAVpWAp92FsoKTGm69XcBRtSJL0V5JSU9KolZ6yBBO/ko2eblvFFI4x3vF4F+EyEVF7gosTt+IL8NT/GeNI8gFZY79gItyXp9lCvRcdaXdwtg2JxDkyInWv+ZZ8tKR7PemHc5Ew8ahvG622dnDf8NUtLJGnRIp9J9AmU/MYv7T7AF0kbtRZ7dnH6t5ZZxI1gDx6IbQmtdwaXFpLaStuKENalEJ/Wro1yXXEr8xaxyXnKUB9sB6vTH4wX1+2Y/4Ow5yfFKtHXEEa7nZxEAd8ygmq6ys8SCuOIZR05oR1lZg2CiIDpzvgAMWw5lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by SA1PR11MB8840.namprd11.prod.outlook.com (2603:10b6:806:469::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 08:04:37 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1%5]) with mapi id 15.20.9343.011; Thu, 20 Nov 2025
 08:04:37 +0000
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
Thread-Topic: [PATCH 6/9] iommufd: Have pfn_reader process DMABUF iopt_pages
Thread-Index: AQHcUAaONk5kJe1SWk+KTTlCBzwjRLT7RzZw
Date: Thu, 20 Nov 2025 08:04:37 +0000
Message-ID: <BN9PR11MB52769E70061CE3AB22F9E0618CD4A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <6-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
In-Reply-To: <6-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|SA1PR11MB8840:EE_
x-ms-office365-filtering-correlation-id: 2b428883-57b9-41d8-e52c-08de280b72ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014|921020|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?UEXfmb5SrRNHdNVwjge76WrDeyqbAoJySIQyjoxUQVSCm2dLooK6CN/se4?=
 =?iso-8859-1?Q?CdpUV6t0C8oISJfRexEQBW+471nrBl1D19K4fUevHoAgSbHUzdPcvYyXqF?=
 =?iso-8859-1?Q?H5Oa4ln6TnfjX1L20ypqLVrq+SS9px+GjOqTlmZyqLZYJFv2JZ6OjhwARY?=
 =?iso-8859-1?Q?oPLdcz63NisTz01emSd3UD9duagavrohBQQtBI4NoHNJCjEPTx+qtgaGs9?=
 =?iso-8859-1?Q?vBGbbH14d3n38SP4x4A803sSKCzbjxPSY6XP+zcQLfYW1ne9Fzuw8AFjvG?=
 =?iso-8859-1?Q?2hGSjxr4+0AhcfYJdIC1CLlxdF4D0XV0fBNWdKr763prpG3J6gh/OrhvCG?=
 =?iso-8859-1?Q?2lg8aCZfXVWijHzRqlm/muFAOfEjMqUoVizFpnf7t/aW8RWKKu0rutLMwu?=
 =?iso-8859-1?Q?5wOGq0bnUzzrNPOeeRg5ky49VPyMXkFHFtGbLQiemXVnvgtld8E2tszkqq?=
 =?iso-8859-1?Q?AdrkOsvfQnw5FsLxyHUI6tIG2lsrvK4wN5+MjjUVNeN6Gz/weMC5H7hir2?=
 =?iso-8859-1?Q?bpWkm+tlENCfrHKfdH1gLJ8fRzCF78X3rHBChxem6HfvCI3Cju7mZM1axJ?=
 =?iso-8859-1?Q?IuW4UrNwUQ0pU272T2/yBAERQtVDZnWjY9lTxVqUWqlh7aD4jpj+QTXxW6?=
 =?iso-8859-1?Q?QHDJF1swZ3kndUhg/0lmq8C1fTQ3IfVyta+yECCDdYKYkktS2jr3DzknD1?=
 =?iso-8859-1?Q?BDR9UWll/Zfu+heuFTz5Qg/5x0ep7MkVvGS8HRtuMznKLHnAkdY8Xspstb?=
 =?iso-8859-1?Q?rNQBj0bZvUrGEoQESg0NEEaX/TCsJbF8jtBobAQpCJugUV2QNtiie4HaHj?=
 =?iso-8859-1?Q?6Jh2GlkCrpbHxUY5lIe/N0/Hdla/W0v0OCEwVCmNwAt7aj/dpDmD/LY9aj?=
 =?iso-8859-1?Q?Dr15NovGNv6GqxGhhS3trpt+HECgg+VPNgk0YF+pHqlP3G2lDCBscuT7kL?=
 =?iso-8859-1?Q?W5GHCX7HOdE6xA0KoP4WzyJV/nJgn1wpah5dEX6s2iiQVwQO19GwWTn7Oz?=
 =?iso-8859-1?Q?QkSCqrv2IGMFnegj9qg01JIGI88mHeVHFVu6vKaOv8Gg8GRJkWt+i79jjI?=
 =?iso-8859-1?Q?E3Pkl6TlNL2nhAbLb2grmg+Ikv591PK2E4XUUCTXEM7+DbfWlGqUZ8+bB7?=
 =?iso-8859-1?Q?aAEVt0mt77QNWKIuaae0SLZJLq+4K4jv/ZRC8Mia0YihY108rXx0dP0bLK?=
 =?iso-8859-1?Q?p/slE1iSEQUMzep4zo6c/y0zcBHRAGHNApp5CdGZAkjnvdncE17rEmKalj?=
 =?iso-8859-1?Q?GEEb9vcQydft7JFdFIrtwov1TfuL3T3DNqfcNBqvBt1QrZwSe+wfezOavX?=
 =?iso-8859-1?Q?w6tQ3v8aFgdAVG2ougp/dk2QlexNtYiFU+/3oK4MiugU1gVXjmtmiKslY9?=
 =?iso-8859-1?Q?EfzksSeALRHaL46DhsoxCX58YISkPuVIPim1Cjg4wi430vxnvfiaSK2Lzo?=
 =?iso-8859-1?Q?3JvsBnX+va/F8YkabE/ghPPjIrqzqTK3dUegPgtA97RRImQbw6HQy4Rct0?=
 =?iso-8859-1?Q?cQRiWJJi8wL+3OIVdFuihGG3UPbYgqG1S7mN32+ZlFTbVddtL1dBm83Og0?=
 =?iso-8859-1?Q?WecQ/9f1QW9WTjQjo1WVGpr4obrPJQ9EeG0TYKYa4M/euChzwA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(921020)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?2z2+JbcpTnl5wJ+ZsGQqLlp7tw81NBea/5A2ynIK7UHR8RjaNoEn3PDw7i?=
 =?iso-8859-1?Q?C74W6tXRrTabYFg5wRcJAQyZgA6Jr2e30214UHFTaynWxK1L207vAOmp7z?=
 =?iso-8859-1?Q?ODdpt6Y+8Zxmcsgkg0QnuAFDXACFDqG3l4r8wyLL+iIwxsEqg8iNbajwgO?=
 =?iso-8859-1?Q?TSm6qKh9A/tz6sqLO68k7J7NMbQIoX544NBWXSXz0vx9pRwHoDyElI8XFD?=
 =?iso-8859-1?Q?fp5vnQpjAaMP/1th0XrsDBK5QxrYgAaxWiADXA5SeBRJZZ+Ua1cioAKiQ4?=
 =?iso-8859-1?Q?Q9Pa72W7LUbSEbMPSJSSekR3U/be4gqHShZk6NYkIyCFO4dnThLyJAsLsP?=
 =?iso-8859-1?Q?M+ucRnoOl7wNyuKkTrX5uhSSjAIc2LXWH0N/2PhpDo/0fv7JDHE6KrjjMD?=
 =?iso-8859-1?Q?jG/i1TIabe0b4efGWly3a5M2ukYCh3E9FJhaa2vifljWN3Uj1Lq6OOCpD7?=
 =?iso-8859-1?Q?0BYT44FGmYRpct9vPZc8bNNYtxugSCWerZhDmwPHHB0oe2R7Z3ReCWIxs/?=
 =?iso-8859-1?Q?cSUnW64kurFMgXXwpn3UzafIDXY60fjYPH3FmjDMl6m04WYQ3Kze0fqJMX?=
 =?iso-8859-1?Q?U9SpMM7lyoeBWRVly9iioV/sPow0UGnIamzbyj8+nwkCbrKuaAtTy8dic9?=
 =?iso-8859-1?Q?1yji1sCFcr6uvh4cEB3bSYI9u2jLMxOsKkHSV+1W4AkpXEPNGt/mkbCii7?=
 =?iso-8859-1?Q?KWp1H7EaDusSTxVu9EnteKVZp2Sj4sv27+ddksXmWAnufkD7+//F4S5Ub0?=
 =?iso-8859-1?Q?bsmLitKVPEvmm5303If8kE54oa7cELefBwkVosnKIhbWk/Be3XV9pLnN2f?=
 =?iso-8859-1?Q?Du0gOBNlJy/TPQ3L1mWGH1gUhwyMB/tA5avMkffGyvqQ3eF4Mtm3+S42ru?=
 =?iso-8859-1?Q?PZGbOSUCgsGnvG0y3E/R8quLLEF4/Fz5Pdd1YhBTx27g9j4wgnK1NvKd3l?=
 =?iso-8859-1?Q?vxnLGKFKSIf0J/6lfYQCmvDdgAnBQ09P/NThOgR4Mj1B50DPiUmhd6iDwR?=
 =?iso-8859-1?Q?ERHumBu+P8ow70oYHU5+dGJNfGvAiH5H9pzjqr8EeKOWUDV8eCJzXJ+KXD?=
 =?iso-8859-1?Q?X3XjJiAayK5hxgnxQwFjH/sKeo6Ml50PLOWFs9ufMsrPYn5elVIv+HvVfJ?=
 =?iso-8859-1?Q?gmuaj3/vr7VnaMR3n67Dv7vVWyN8oue2Zl2IEyIbTQxq/zw9MpfPf0vTZU?=
 =?iso-8859-1?Q?QitDDAwBExIk+0lBbl06Izo/TTjW45wsWd35akobe/g/Ny17AJGJ+wzOMN?=
 =?iso-8859-1?Q?T4yTbmg2gwvHHpXuBbMG/mBUitXRIrdAgFVnJtPosU4vEcTO6KVbAo3pHL?=
 =?iso-8859-1?Q?a/iC9MrJTdfLpOK5606I3gkrfCrRA+CdlS2bKVsgcb9fxxJHz2z3v6LOv2?=
 =?iso-8859-1?Q?vweRikMWe3faJVqHQO/lTTRQZbTVS4X1RKPrp7eos0nb0Asd2OFlOsiA43?=
 =?iso-8859-1?Q?HYjcYkvO+r2vL8QgyPTm3vfAiiLJNcQEAPgT4FHdbLnSy23ni6ybypXpGC?=
 =?iso-8859-1?Q?bCE8I3E6p/DauaBjZM5oi2jTQqdW/cYmOUzfSy7RPhjbkpUBgzYwMhpsiw?=
 =?iso-8859-1?Q?zwkc4o+ojU1n3GWfThORVeGPE83OKPlQ0vBuw18TyyzfA6HuqeVcsVtLml?=
 =?iso-8859-1?Q?3sFv1JFpg3Tw4/8pbOhEMAkaaPxHnp/m80?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b428883-57b9-41d8-e52c-08de280b72ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2025 08:04:37.1026
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ID7YfMAeUtbwnMIysWpZwDpXuaCMGs3Tt3Sm6aV6KVHrPnhWADRRrlomIg8n4SrigHHzNGUVQg+sQ0irNDk0jA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8840
X-OriginatorOrg: intel.com
X-Spamd-Bar: -------
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RPD6R7XVFK4SLKCMFS4WUBT27WCQJJWL
X-Message-ID-Hash: RPD6R7XVFK4SLKCMFS4WUBT27WCQJJWL
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:00 +0000
CC: Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, Nicolin Chen <nicolinc@nvidia.com>, "patches@lists.linux.dev" <patches@lists.linux.dev>, Simona Vetter <simona.vetter@ffwll.ch>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] iommufd: Have pfn_reader process DMABUF iopt_pages
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RPD6R7XVFK4SLKCMFS4WUBT27WCQJJWL/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email,linaro.org:email,BN9PR11MB5276.namprd11.prod.outlook.com:mid,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevin.tian@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.631];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 104CC4109CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> From: Jason Gunthorpe <jgg@nvidia.com>
> Sent: Saturday, November 8, 2025 12:50 AM
> +
> +static int pfn_reader_fill_dmabuf(struct pfn_reader_dmabuf *dmabuf,
> +				  struct pfn_batch *batch,
> +				  unsigned long start_index,
> +				  unsigned long last_index)
> +{
> +	unsigned long start = dmabuf->start_offset + start_index * PAGE_SIZE;
> +
> +	/*
> +	 * This works in PAGE_SIZE indexes, if the dmabuf is sliced and
> +	 * starts/ends at a sub page offset then the batch to domain code will
> +	 * adjust it.
> +	 */

dmabuf->start_offset comes from pages->dmabuf.start, which is initialized as:

	pages->dmabuf.start = start - start_byte;

so it's always page-aligned. Where is the sub-page offset coming from?

> @@ -1687,6 +1737,12 @@ static void __iopt_area_unfill_domain(struct
> iopt_area *area,
> 
>  	lockdep_assert_held(&pages->mutex);
> 
> +	if (iopt_is_dmabuf(pages)) {
> +		iopt_area_unmap_domain_range(area, domain, start_index,
> +					     last_index);
> +		return;
> +	}
> +

this belongs to patch3?

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
