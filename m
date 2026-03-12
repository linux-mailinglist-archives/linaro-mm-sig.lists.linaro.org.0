Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGL0JU5f5mkWvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:15:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CDE430D65
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:15:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B27513F6F8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:15:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
	by lists.linaro.org (Postfix) with ESMTPS id 3A9AE3F7EE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 05:44:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=ELF82j0+;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of vivek.kasireddy@intel.com designates 192.198.163.10 as permitted sender) smtp.mailfrom=vivek.kasireddy@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773294284; x=1804830284;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=iWkVZagBrGuH/C9n4oVzmSqdZoP5sU5HB4MZ1ly6HNs=;
  b=ELF82j0+rt7F6Cs5rLzIYoUdcIIHBree8HalO50UYpKaS9tEp5q9qKko
   FWN+IY0k5ksijhz27RmIvYtQnI0LZO3P/cVpl2Llja0EUQ6BuC7DiDbGg
   TfmoLKgYJAa3MrOrpYpTnxsXyAYCfzlFSHwCGj2xCzI+YLnthRASPOAaU
   POGAKlXDOWBmg5HENyGEifIX/OfGcizQrMfwxCzDkWgvdbfjvEWhKJFbO
   NYvzwsKi/rn/1R6APmKRSdNxU06+f+f3QmofPUrJTLPsfahQ+cPO+05o2
   wSysB+veWnD2e54+YDUWbmCKhML3aO1bagAZE+g3jADuFBdi7xFMqtHTV
   A==;
X-CSE-ConnectionGUID: NZ0ZoaGFQmy5mj9W63FU/Q==
X-CSE-MsgGUID: e7DBpxnVS56IeUnWE0JE5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85729920"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000";
   d="scan'208";a="85729920"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2026 22:44:43 -0700
X-CSE-ConnectionGUID: +GiLk4QVR3+ets+h8VRdcg==
X-CSE-MsgGUID: KT8qcQSrTHuqDjyoVTVfog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000";
   d="scan'208";a="219976513"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2026 22:44:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 22:44:42 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 22:44:42 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.60) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 22:44:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cg7nU1AOn1LeyR1T+rDM/g0siPYF0+x/o57yh1qo3oh5817Tb8z6KXEL+wkH7GyWM7F/V6M9m+3LBCm66dZqQH2ZQjpwUXZvD2+UHW+pnWLI8gwhUgz63CpickK10LbYCJtVmkjUGG8iga+sLPIxACz0c3IOco5DOga5HER9APcPLuxzxhnZyOB6woIlQl8VWLsP+gDGLDAS8hI5hD88kgLRNrkkEpcISHwO/4FnweW9fErM+DS6ZyvfpcgXvpz7fMovgCyDqSBPIeCyHVoHYu1CZwgpsAtOIfXDICHT6e83X3wJHxIqQILzVUXM5HKQhGxWrq5nUODPVkQFX8kjXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iWkVZagBrGuH/C9n4oVzmSqdZoP5sU5HB4MZ1ly6HNs=;
 b=JxQEow5wfedeAeYtTOurKBVqvZbVMYEGoloZlfIW7kWJIYT1Ujevyhy/obdx3/iBoaIFSxWvuXDSJu6khfw9gVZCPOT/5Vs7KV4j+AYEZrrexY2ijdS0X0NowXng8NkC+qip2i/6WF2uvh3GAFVOV/qqk6BNJzl0RWquKSKVx46+jfehTEvfLUINPdARXI7YPr/IYY2nR90WkVAhK3p0S5JM11KwIR2Q4ao4JVRnCADivD5uQMC/YYgvTDPE7ySSooVC68v/pRipXV2KSX5Pz4CPcNbFLIz2P1fS/UKcIwH2pFXnocZOnQCDEUx9n3Snbtgfz7Gp6iREFvC+s0p4xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by DM4PR11MB7253.namprd11.prod.outlook.com (2603:10b6:8:10f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Thu, 12 Mar
 2026 05:44:33 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::9f37:cb81:5463:300e]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::9f37:cb81:5463:300e%5]) with mapi id 15.20.9700.010; Thu, 12 Mar 2026
 05:44:33 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Thread-Topic: [PATCH] lib/scatterlist: fix sg_page_count and sg_dma_page_count
Thread-Index: AQHcrytGgNCxhmh1dUGazU9lY/+Y4bWmiV1QgAEz34CAAGnkcIABGZwAgAC4ITA=
Date: Thu, 12 Mar 2026 05:44:33 +0000
Message-ID: <IA0PR11MB718514D54A36FB1CE012C877F844A@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20260308-scatterlist-v1-1-39c4566b0bba@gmail.com>
 <20260308180826.GG1687929@ziepe.ca>
 <CAHijbEX=LN_ntp6zwsqy3sW7EB+E6cBCWnrKZb_RqdNG=Et_3g@mail.gmail.com>
 <IA0PR11MB7185574E3A63285860017D69F846A@IA0PR11MB7185.namprd11.prod.outlook.com>
 <20260310125953.GS1687929@ziepe.ca>
 <IA0PR11MB71859E28938D1695D4223B8AF847A@IA0PR11MB7185.namprd11.prod.outlook.com>
 <20260311120648.GV1687929@ziepe.ca>
In-Reply-To: <20260311120648.GV1687929@ziepe.ca>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|DM4PR11MB7253:EE_
x-ms-office365-filtering-correlation-id: a4e8ba90-9d91-43ae-2c75-08de7ffa7069
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: +opUywkeEKfhFevxWIg3y8LaplekV8tu//DdA9XsxBrnJ6I2yqZPLfq9ZP4wGrHLmccX8k7gyxf80eLednR0AvGdlMTpk4jubXLS/GFNNUd7htQg7NLI0kNTAIcffodyfvOoXxOhgOrBzz37msmKpPQrll7Z5ojrUBW8N/7a6Y5Cw27YFiD3KHGC2hrWRWudkfchDD5WqwOfMoDVyf3MceluuhcuMLo9RRCowp583p0xFDG69cZVUvrk7+Z9U2YlD8Pq7dkagGZtxvfgDERRs1Ag/nMVtqmlk87Z85SM2o9Sm9Z+xcjka5/usG82N/dXIOBpX63wT21HuojNoSiZ8uV8UPKTEi+QATTEgWvDduY8O1X95CmOznrIdq8xWXPJ0zfRCp8PmfENWI7lkx5tvAKRYdYbrwyRGj7lwfKhV/cbQj7HUQrH+2ONoxMEkoPLCMITqiaiwSC3JyL0JkGju+Jd7gipFLM4sYjn/KszpLv3towJxdxuvAcNwXGybxFitnLmFqg9hk1EnsigErRN6cAJY3TecftOGPZDOYmj7CMTI9jXJlreWSy+4HYv/VWEujjNqREzRb+TfTmUodruMwpk7pj7dnsKHeCZ9hb1BJg+XYynLqEkvSzb7pbas2iQ+3zOUdaJtHmYH8HxApwpkTlDBmqdcgaQ6goPstKjzhnJVHVNGTFxCR4qDIC+/Y3k/lBTEKn6Zjblwkrntxv8QKDp+o2m7O2HBjzW1N6024B0uxdwMjr6CVfaKufpLzxOUR9UqQcjs12KIT7Gk7lQyBktwbWFzT4HSS/7i+3iCbI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR11MB7185.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(22082099003)(56012099003)(18002099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?2n40VHGOw8BhQILcco86NtadoH8enFa/LOh5D6UyRMmDEa238ixVYiYz6M?=
 =?iso-8859-1?Q?OPmLVTglgJGfrmt+W0bTlT8bBItQ3YfIT+n8I47HUM5n/ffexHnXc2dHlP?=
 =?iso-8859-1?Q?b3BJ28AJNZojQd+Bxak67Hry5Xoq02h1TJo6RbRx4OUbAcSPonIPCTTPEd?=
 =?iso-8859-1?Q?tVB6fB9shnuFMfY6/FJXYAT8HXhA9Nf+4RNoT895ibyjPJQM3iasLHDUpn?=
 =?iso-8859-1?Q?FsxoD6IdvbBKzUwAWiqlCsC4aLp2B0Z4TF3YQnq0BZ87kY91kTS7R/JbYG?=
 =?iso-8859-1?Q?TgC9bI7e1N+epFBgvKr4OmQM2+cVLnpMWclBmM0gaVzxvFaoWYamrylrJ7?=
 =?iso-8859-1?Q?PBcs5XS/kVpw7AzKjJANTeNeNWTjYqFxoanx/nML5DWjPhmvwFweAD7o/9?=
 =?iso-8859-1?Q?8errmH2LKQkIOiaM71S94T8RzamZnkGQViuKQ3i04DmcUZv7vuwdnXENgq?=
 =?iso-8859-1?Q?R02tdkUM2x7PqLAU8EIQECHPs5F2wgYeKxT1eny+1lNMphVL2wrvmrceyo?=
 =?iso-8859-1?Q?doH4De8TerT30qA98nCCe1n9JXM4s4+EYXhRRFtHpHwXW4Wx7X1shD4Muw?=
 =?iso-8859-1?Q?Vw2yUsH3VB3wRnbvdyTKszDjrJVInUZSJG4fBp2LT8ykzsueRlJlQ4YJRo?=
 =?iso-8859-1?Q?QhuOmkUJRw/1g4uoo27EpQHnVzOdBKN1PyJcQrRwCScQakT7L44HR0y6ZW?=
 =?iso-8859-1?Q?j83kpAZoX0Xlxm8S5bucDz5jf+IshcBxTkO63dMOGN1jzod+GT2P6KvGLz?=
 =?iso-8859-1?Q?pZYI0lAhdixyZvLM5ZdYa4SfKdlZ5Sdcj6a5iLKux83qoMcG6NJkq0P+Ax?=
 =?iso-8859-1?Q?OD/ZEOv0sHhZSHOfAxfWZ+2Jp54uMBum65kVprUxO5eLy0Uz5EztdddpgP?=
 =?iso-8859-1?Q?jPTpG8jJVrm7VpIiHLKFzndv4YhPk+v638DLxbWktIbMgmN0uQ4F4rJe6q?=
 =?iso-8859-1?Q?iCKhwXrYVqUqI6FDlUtheYF6Ou/Jq0AOX6swPNaThw1gHVvTWA7UnxcEOn?=
 =?iso-8859-1?Q?1PdlE5YovIH4qFO+8TkrUn1R3N8A+bTIOGX7BIHOgGAzHjpzfoqjuy1zou?=
 =?iso-8859-1?Q?WBlfp231g7GtS++vz33Nq3GZmTYqVVT+4JbJiroJSBSB/PTRXqaHJL78ag?=
 =?iso-8859-1?Q?EFG81f9yI/AxB4IxowR5Fw3Oz5HxrBhh5VGqph0XZxIJ1gRGJXFiSviUfa?=
 =?iso-8859-1?Q?h0BLqnlYtA94fH+8e9oBeCjU7u6PvxaeLrMJvqeY0wVSG2MUil2USuLDN5?=
 =?iso-8859-1?Q?jZywgmTvLrDnO3mbuIdpmZIh2T13N+PBCqpmy+p2CydgHQsQsn5cSgDmfZ?=
 =?iso-8859-1?Q?gSu1Dg38mBWyWrFfAEc/bBPcWmcSe61ofO+26nF21p7Nkx4TZVv2IIm+wd?=
 =?iso-8859-1?Q?A1cYXlMrSbSEOjurFytKPAW9I4LiwLiEul9MJ1WdmBhHeLeHU754pbr2sa?=
 =?iso-8859-1?Q?N2FR31RxXEXAPlgbwlF/7V02A4+q3+BN/rr9ZF+MenPitSU2scg8Vigx1C?=
 =?iso-8859-1?Q?2O9KsvjdhhEo6E+sTsIfHX9/oTRnLFjBKLCk6wdY8C25LGEuHQyx/pe4F8?=
 =?iso-8859-1?Q?R+cTIQ/aR2MMnt6J77jSla5tYghryO+k6jslPI8qVKohLeHFxBJTQrgX61?=
 =?iso-8859-1?Q?w8C3J/2CXXVUGRSFfRI43cHR9EW2VHdVISi8hJCVWGnyfUOXu6UYf4bme8?=
 =?iso-8859-1?Q?zlnyFbCbrqLobpfXfBolpnxS7GF2IdUwD1v4XcAC11I+TtSlnwBVDWpCpZ?=
 =?iso-8859-1?Q?/A9Ep4nLGVJtc1Hjya9dd5eKoySiLo0lz6RlJ4KbH9KCqmA3WopKpX3FjZ?=
 =?iso-8859-1?Q?kbq8wSkwFQ=3D=3D?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KxJMYvfSpp/3sn6maT7xop4BBr2NMXkHUKPFUkuxEyHXd+VeNjgup5LzmNprtS3A4yzf2APXkfTDPPdYs/gFc3PtT9sM6oeXw3lq+nOU6ThGC7w16D8MgPg5WEmI0ySLev5rqwKpkXyFIS5TdwQb0m7xktN2d++WJqccHIUm9b2p8UDTMe8kxUg8f/P1H3BsCNdAJirPltXUSYKowibIZNXMyvuoVi+IOl7p/y+h8nwnbkoG9DDcDVGHA2Pfoh+tQCpQ/qVT06AGvFY05DTKY+CuoknbSK1/Ylqxp1rOlQs9lBfOFkyqk3bPZfj0SuwJVSG13OAaS/mS6EOmeROBEg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4e8ba90-9d91-43ae-2c75-08de7ffa7069
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 05:44:33.7105
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v+Yms4q+1i7jHVLHKqz79yt5RqmkGIyubiSOn1og40Sgl/Qpn9T1V/D6PgiLQOsM3wtl9kwWZ6GOQYYU/jbCDZhLWzWGTqr+HnSZoRJJJoE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7253
X-OriginatorOrg: intel.com
X-Spamd-Bar: -----
X-MailFrom: vivek.kasireddy@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3JWYTCCJZUDAMI3XSU72KGCSLS5I2V6N
X-Message-ID-Hash: 3JWYTCCJZUDAMI3XSU72KGCSLS5I2V6N
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:15:54 +0000
CC: Julian Orth <ju.orth@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?iso-8859-1?Q?Christian_K=F6nig?= <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] lib/scatterlist: fix sg_page_count and sg_dma_page_count
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3JWYTCCJZUDAMI3XSU72KGCSLS5I2V6N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	DATE_IN_PAST(1.00)[947];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,IA0PR11MB7185.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.863];
	FROM_NEQ_ENVFROM(0.00)[vivek.kasireddy@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux-foundation.org,linux.intel.com,vger.kernel.org,redhat.com,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 13CDE430D65
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH] lib/scatterlist: fix sg_page_count and
> sg_dma_page_count
> > 
> > So, given the current situation, what is the right thing to do?
> > Should we take your patch that brings back the pages array and treat it
> as
> > a temporary fix until equivalent folio based APIs are available?
> 
> IMHO, yes. It saves memory, increases performance, fixes the bug and
> uses the APIs properly.
Alright, then please send your patch again to dri-devel. I can review and
test it.

Thanks,
Vivek

Thanks,
Vivek
> 
> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
