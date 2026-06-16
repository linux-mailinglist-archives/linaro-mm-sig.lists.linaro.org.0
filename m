Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yPxNDN4WMWrbbQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 11:26:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D406568D84D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 11:26:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=intel.com header.s=Intel header.b=NbwLvpOA;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 005FA40A4F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 09:26:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	by lists.linaro.org (Postfix) with ESMTPS id 275DD40A3E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 09:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781602002; x=1813138002;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=hcvm+yB6enj4eEqAE4QjtLDSP/+9jqqFOvWDW57B0c8=;
  b=NbwLvpOA4oTIsHSDX9gbmq8gRvH2xLiE1iYB/JudHH7sTPAPFDnoVMsC
   r3jHtGzub6ekTG4QYiPaD2ThvZ4Hv0h2dUqmHgpyY6iLd8ZavPR9/2xV3
   Nt/AyK7m5+72u3eBH/G0HMew0OwmTxqIJQQ/e753/ReMn2yu22i2SX3n1
   HOq1zrl29fAI6jlZwr8Zp7UXrqbB9tMRvyMN+7N4IhCrgtxvfK8L8PbXG
   vZmjMWV85z5VnPiWtqM42VXKQKm7OZkVjwc5JWI/qMmPVGVFmAKPFAZFk
   AOKy8LYoclpTbvdk4A0YmF/LpRUPWgcoeQVx29MAndc7P8DS6KjYBvh9l
   g==;
X-CSE-ConnectionGUID: wm0vrq8NR7SM+A5F9FpLAQ==
X-CSE-MsgGUID: +lMhJ0DSQgmq5PyjyqGFEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="86263763"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600";
   d="scan'208";a="86263763"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 02:26:41 -0700
X-CSE-ConnectionGUID: IwAKTu3YSGCJUgCoS6hflQ==
X-CSE-MsgGUID: ERJKRDyKTP+utIQMrkjQFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600";
   d="scan'208";a="271788355"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 02:26:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 02:26:40 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 02:26:40 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.3) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 02:26:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ge6yHPOCp5xH8el82GECL0aJllZJNyOmwJKwhCnpk2VGwLU9hpdw7Jq0qTZKYx0EO9fsAZl8VkuCKPTUTgWJNib+Ie8yfyalW1hNJjAVuLzyYamu/yukgLwZ9Wr50W9FdHwvo75AIN/JIKXE2gEWPlP3+F+A3Wk5xFW6pk295Gd8GKKe77f21DxelQTB8ORxZXEaiJ57k3WodqB3wbL1yCheYotcDOa8rvkj1YojbSaemtFUO08oIi+JlByNqa440QSujWsBhMDMDAlP2JXt8Fsgp5OxXQSqafaFArArxn9R4Zm+R2q2QqoLrSp/fbq3IKCV5jMiGtM0uHe/clOfMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LDSCXj9bg0aV2nM8khYeOA8UnM3wKfMnXPTR5acrjxo=;
 b=t0isfwYhhexlUvyrsQni6TByZZ29UkvbE4iT/iQPwvrZawQxqOJWKC7FQeH8Z8UywHGHxn4vuU39IAaXuIvfmFHGRDeIwD/elshZjvjf+lZWi0/pBDa8+/x7H+j3Vq8Tz7rtHPoWy+Ml+reYF/hlHNid+1Ot3Ne5D+vIR3xqQrk3AY0uHnXSY660KFdqkc9FLOpV/61/Ufcw0lJfRGxQah3UiRcIfaLLKopvVyAgv1FmLi9zETAn9t/zxGdNgy9OTJENuoefNgGvvPzo5A6NC0MqjsVpZUD6KCuYz+VimPp/7hzxHYVDzQoC7FDvya+pNO3D3hN9sooxwjDb8q9iWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3690.namprd11.prod.outlook.com (2603:10b6:5:13d::32)
 by SA2PR11MB4859.namprd11.prod.outlook.com (2603:10b6:806:f8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 09:26:33 +0000
Received: from DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b]) by DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 09:26:32 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Matt Evans <matt@ozlabs.org>, Alex Williamson <alex@shazbot.org>, "Leon
 Romanovsky" <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro
	<amastro@fb.com>, =?iso-8859-1?Q?Christian_K=F6nig?=
	<christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, "Logan
 Gunthorpe" <logang@deltatee.com>
Thread-Topic: [PATCH v3 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
Thread-Index: AQHc+PAsGlBzqFLLpE+t+p+2UaVPOrZA8njQ
Date: Tue, 16 Jun 2026 09:26:32 +0000
Message-ID: <DM6PR11MB369029285EF584478386AE228CE52@DM6PR11MB3690.namprd11.prod.outlook.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-10-matt@ozlabs.org>
In-Reply-To: <20260610154327.37758-10-matt@ozlabs.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3690:EE_|SA2PR11MB4859:EE_
x-ms-office365-filtering-correlation-id: 256b17d0-e921-4a5c-af26-08decb895ae9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|23010399003|22082099003|18002099003|38070700021|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: dnlMGdHXaU2hUYRxxzdDR2c1r4zpVATijcPol8beXn5eWrD7ELWbeY+3rSX9eN9L7LV8tabWCRqQSbS619WzfjPUAi+AYdYzK22NqimfF2OjXEr4wwuV6LyjGGyF0PKnimp3EFMKir0xQVzMdU2oZnOWktbqYQW0ymoFIfqn4fzZzNf05sFzu9BOaQMhupkV5W7OYiN5YofF2okq62HlN3qAbXuVxq3u6QGDQY4zgoX2AIlwMdZbeqMiByarMMrQjMB8lPB55IH/dB80NzbOq8pvc+dzsATmesrKFa4tmIgKEMJ/fmzKojzC3ELDxAHj9hytJj8PPsNmmZGxqC6OovyHkS7hiRvuNO1LemvgLv7CCw41NxB1Q0K9QVQyfLNH4dXnLoiBfWRlhtSwYfR8visCiQjUO75eqNF3liKSqiF/Lf+dmJJm5HeYY0bvIUFUyheON2M89i7XS91pFS5RAlQdKJ7Rx/I/k+Ym2E6Mp+xJRMfLtBQc39nrDzyLW+v7LHYjsQYfENImjkWoNnKo/L5l7hp/CNeXuBq8EXXmn4jR/R5o3eoZM95pKo5yNWVfzb5yKwyjHvPHBwp2gdNeP+FU4F8QdxXUeAL6HxwoPxdV6xapt859taXtLwiar0w8ZNJ9qlRc9qkpAVfo8ONg6mGfSJdtSkcGwIQNFsnKsmYk3+QOTf74UYzFmI78hMUupSYeCzanWLbr9eOzq+P8r3VzftzQZSn7CWJ9dDg9lm42yPAxw2NyTxWpfYQKRzLt
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3690.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(23010399003)(22082099003)(18002099003)(38070700021)(4143699003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?TLKRwTt6NlAnieLkMSGdYDojjBEKX4OSt3zwK1z0yPqRopmLAVTG0EgkVJ?=
 =?iso-8859-1?Q?8F29GgojsPtsU6fLGU6ZrVu5NSx2YCCID/DR7ntR7o22BmmwtTYQLTnsOR?=
 =?iso-8859-1?Q?YU3JMdd8e9J3MW2hh1OCLnDTWQeGfYjf4cO+Y8OQgmBaKBb+lhEjjXzwgQ?=
 =?iso-8859-1?Q?DtetARvGKRyO+rIsgOtZF4Xo63Go0b2hn0vm/21gNIvwJN3nmVdt+0Vvnb?=
 =?iso-8859-1?Q?oUVscmpMuywNj1OxHxGvcQO8H1bEjfKZCRH+D/0L756n43EG5TPp9bcViY?=
 =?iso-8859-1?Q?6l6GMYA9oSSXMxxYW2PmaNcko2M22Xc+bJwT7FDnhAIAi7/PIHu1Z3mS1j?=
 =?iso-8859-1?Q?kYiEdp39QTOc26yR0tPpsz0nkcuDd60BKkHxxJjtbxZS6keA5jMUGwP/DJ?=
 =?iso-8859-1?Q?zdE60gcywVzUdZy7GzMEnFfKAkAoEsz9sYne4Cd5IJvw8bSyWwZS2F4oYU?=
 =?iso-8859-1?Q?yjgy5h+8t04lhOeOykVMYkPAIoGgAWOQq6nN/1Ybq9gFk5TJhgGD5drd7j?=
 =?iso-8859-1?Q?jQyyQCxdH1rMm9+Mtm/U+8EVa7xSGFyaky01HDusyjCvwX/A2elO4IhSuZ?=
 =?iso-8859-1?Q?P7Wv5BITrbCIBDEMZeQMGY9ZkFvOPSI2C17lKTtyWB/HoQ3X7/XXHt6efJ?=
 =?iso-8859-1?Q?RiasMrXFW/ry2/6unR9ej3LG9lFM1euK5olhhZw59py/w/GiCzJbiyRRfN?=
 =?iso-8859-1?Q?QldCLt3RMgL2O/+JBTz2WT6XxYD70q9nb8Kd+nVrGXRXAy9rP0MTwFYXgH?=
 =?iso-8859-1?Q?ExCwkIMlUIdw728Q/RnTnTadBN8stS3+99LgIkIH2Ntj7+q8QHr5g99nXx?=
 =?iso-8859-1?Q?mXCCl6mjOYkR4PIUulXhEqPZABb3fRmWlA5h03eejRDpy3PcejWeBmCJ5l?=
 =?iso-8859-1?Q?oOgk+EhQgcmW7YKtijcgHjCM01eJJ3ysJsa96cperd4KjiErDn633+W6jL?=
 =?iso-8859-1?Q?w/AiQPLsPwxA4YPTy1GdP+69rFogiBgmy/KgrDjH1bulCUDN901trawk2U?=
 =?iso-8859-1?Q?G4AX0H3lS9/95PRJ5Ar8lAftA9lP+CcjbNogSqS3oaPdJM2ZoeWXIfjLEp?=
 =?iso-8859-1?Q?a33Jy+mNTSq3If6zGccMjGLveb5h82TNJa8VkFXzrZTd0niDKOFnYT1Sjy?=
 =?iso-8859-1?Q?k01vaM4eNHJAPHiUlE3npjZsZzB56h8P9AsARhKYddrKrn3ypjpCAT1iRO?=
 =?iso-8859-1?Q?Mm75eKENIBuRUdh1x9dMPvD4uZsbGpDFiSiyNVkBE4Pt5Qr4fb9xL8akTU?=
 =?iso-8859-1?Q?JuQ4d+YCJ8DbCAOO8qtnHFqRrismjoxcN+O3HbuEQC+uyAQQr4OqtWYKDK?=
 =?iso-8859-1?Q?GJgvU3eBxqy9EB2D9zcyoSpgRhL3zCwn6BLmet5FVCqWY9kO4HPDnGh45+?=
 =?iso-8859-1?Q?pcZjkJ7FeujHgbFYqLb5mXlKo9HBRC87GyGJlTX414DWCKLTOPB4MEbBIq?=
 =?iso-8859-1?Q?vJuSdScbFBFoMdXKRMPf7R0Odj0wGgABCKLaW/qVXX97VtTJysAkAAptHO?=
 =?iso-8859-1?Q?2AWqBAar+KTckrbxcI+qQvcl89Bq7nIhGQpcSC1nmZai+TvQ5mItCQiZZi?=
 =?iso-8859-1?Q?/QG5axkL4EYoEchcb1OgcHni923U41N+lT03m6xT9IsiQS8X8b0K1pl2lt?=
 =?iso-8859-1?Q?IQjfwk4J6jknBginQ1/WDhQlNmnJ/l0wR2HJxuSk8kz9omafz/g6si0tdX?=
 =?iso-8859-1?Q?Dzjl7sxjMoNNOn/zJvPYh9ZPyOxHjigfMb30Hv0WICrSpSvtg9brDUHqmF?=
 =?iso-8859-1?Q?1AXnVb4N1WCdUPwnHOcoejIjmJovPZXhoY+C5EAvuBcGao?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CNHlpyCWacCin7Ox3C/4d6aiaTRR4ol9fn0dQEteQijknf3N6A+h+VAVZElz9XlO3X/BoFnHNCCpghInnBmuRZJ8M/kAV6F+adqeWWU3OYnlzhuyTVf3Fd9vv6y2eIMpgAPTAQNGri3sIuh1kMMNR3ApnnqczhV2GqrVuhjlV/kkhhQCQLie1cmjPfxB2Xin4cpSaI/iHtQqJ6xXiTPLfzJ0mvPjaUW9Q5OHW/hAV2Ugn7OdwDtJaUC73NOa/M1W4Go9kCMw6Ull2dEz4XqNLlNtfeSIxMOrx3P/832imDxZNEvQV02Eo5bnZ3eV3A5szFCIJ7LkDxKldncLOJQUnA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 256b17d0-e921-4a5c-af26-08decb895ae9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 09:26:32.9218
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tTY1BKxqJfgaGbXwhyjRJLOHwtdMJ/t6bBimn4UUDE6n5pnY4B9oRah8xVtlpCBJroAWLTbior05sFLGui9fRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4859
X-OriginatorOrg: intel.com
X-Spamd-Bar: -------
Message-ID-Hash: WXOWLEU3PMYZUWDFP5TTGC2Y5SU6YCT2
X-Message-ID-Hash: WXOWLEU3PMYZUWDFP5TTGC2Y5SU6YCT2
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 9/9] vfio/pci: Add mmap() attributes to DMABUF feature
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WXOWLEU3PMYZUWDFP5TTGC2Y5SU6YCT2/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,ozlabs.org:email,DM6PR11MB3690.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,linaro.org:email];
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
X-Rspamd-Queue-Id: D406568D84D

> From: Matt Evans <matt@ozlabs.org>
> Sent: Wednesday, June 10, 2026 11:43 PM
> 
> A new VFIO feature, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR, is added
> to
> set CPU-facing memory type attributes for a DMABUF exported from
> vfio-pci.  These are used for subsequent mmap()s of the buffer.
> 
> There are two attributes supported:
>  - The default, VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_NC
>  - VFIO_DEVICE_FEATURE_DMA_BUF_MEMATTR_WC, which results in WC
>    PTEs for the DMABUF's BAR region.
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
