Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nOcID2rHK2qGEwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 10:46:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF77677EDA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 10:46:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=intel.com header.s=Intel header.b=GJD0qduz;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C685440A72
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 08:46:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	by lists.linaro.org (Postfix) with ESMTPS id 0EC283FDAE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 08:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781253981; x=1812789981;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=3hMIGhiPyUPglfqwYwSPCnFXMc9obQGFsHwfrqQK9NY=;
  b=GJD0qduzRVMQrpu333Gntyz7P9jlFEg2aaZVdrN5hdOHEPznO9JbDXUv
   7YtnHE2wbvnvztVkK5wk6LsdJiTW7/F7W2kj8fSFB9Olfzg9YC+UiYJOW
   FekUW3J9pP1Wd51UH/AlcwElTGoctGC8EXE+vv7tO3Rm5BD9SII78tKcB
   MYvi/m9xQxfWiijse6/QNlrMXnQDv3c3e8CFsZz8kDD1nM1TiRwd7b9Fq
   0VecoNglP8dL8NCIkAp9m694o+voo1HfHMmC23yO/VrZL48YGGOwTtcBM
   MOqqSad8q7RsHLAsctcwgEb5MI26FTw/cs6JkRwi0DO1x6+ADn5WRZQCu
   A==;
X-CSE-ConnectionGUID: pqhO40exSRqCnYMRDwUrjw==
X-CSE-MsgGUID: URfoaoe2TxWf9tsnoASkrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="107515100"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600";
   d="scan'208";a="107515100"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2026 01:46:20 -0700
X-CSE-ConnectionGUID: 8piyo/xSSo6D/KxIJFY0zA==
X-CSE-MsgGUID: 2a9MwbOFTHqyycboTVHidQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600";
   d="scan'208";a="284869998"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
  by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2026 01:46:19 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 01:46:19 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 01:46:19 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.15) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 01:46:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Brlfq+39u8FsLCWh7w9roj3p+uTg4VK2k6RyrghNVYX8fsWh59nzLxAKotwNyDIuZfWWND8wroaUtQWRUZS3SnH1bfUH68iwePZQxp0cn9nMKXgLxvwS8I+1NhDq9Ef8anzMysBDjTEsv/hQ3TqDpGCzOXwNEwI8waFr/K0ELPUf5KAclQba57AVcyS0cP4G5ZkrOUElTjUDw4/sUBOTmSrEbyA6YVGk3+4Zr3YnjUweug6uO2xR6fVuHSmOmD9SVupC6mxAEWcn4PYtjbuRjDX+Z1uY3+aAAj/Toy6+ln5IXEQBa0b9ibZTEfmYjCelVjhGiO0nKtMntpYwe4LZVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xUcOnshthE3WuftDnccIx5pAco3eM3HsIlddmSZHPLs=;
 b=WoXo146mEqm89BT0lPYciBWtdUSVmW9Sivh6EM/fVZdNS04GIwvIjnJ3/aYVWtyzer9JmjNrbIy22RUPOoqrREpL5bb4OXnUpNI8HtJoJMLSVz3Ub2F2V5NBirvDG7zy1tHxdtFtbOEcANmxPp4fqSVRa2t5i100ds7VKvd7KpNCBhv50Q/yoAFfTOO5Rgz/N/e8vni0DjWke0hMvR3yp6qgpu9isJaypt1BWqIVxDeCu0bRyJ8XQF6CRd2adJFnVkOEKRqwmPl+eFNydURYlfspBz4iWI585Xdj2tGVGu9jjT7+OrR+m4Px/m7c/tvckqvSUme1aVL/HaL6DiCwvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3690.namprd11.prod.outlook.com (2603:10b6:5:13d::32)
 by PH0PR11MB7493.namprd11.prod.outlook.com (2603:10b6:510:284::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Fri, 12 Jun
 2026 08:46:15 +0000
Received: from DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b]) by DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b%4]) with mapi id 15.21.0113.013; Fri, 12 Jun 2026
 08:46:15 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Matt Evans <matt@ozlabs.org>, Alex Williamson <alex@shazbot.org>, "Leon
 Romanovsky" <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro
	<amastro@fb.com>, =?iso-8859-1?Q?Christian_K=F6nig?=
	<christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, "Logan
 Gunthorpe" <logang@deltatee.com>
Thread-Topic: [PATCH v3 4/9] vfio/pci: Convert BAR mmap() to use a DMABUF
Thread-Index: AQHc+PAWzRA8kxFd9kaIRjX4R3c0prY6nYjA
Date: Fri, 12 Jun 2026 08:46:15 +0000
Message-ID: <DM6PR11MB369015C590F462592D3E508D8C182@DM6PR11MB3690.namprd11.prod.outlook.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-5-matt@ozlabs.org>
In-Reply-To: <20260610154327.37758-5-matt@ozlabs.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3690:EE_|PH0PR11MB7493:EE_
x-ms-office365-filtering-correlation-id: 20ae198f-3ee5-491f-9faa-08dec85f1042
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|23010399003|38070700021|18002099003|22082099003|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: lr00zDRwX3ZhMDSoJtIAlovgeqfAFK0DUBsSKjL3diELxl3TsCM7cbkMEFNa+hzexza5PCRS9veOqB8hKYaphydaVhX3p0v4+7w4doEYjC8Div5PjBOgcvvmEgnqtC9aqPP7usCyRIkqUfbEWV9CpCs2XTr9qCk/oa+2TFvXhqB+u3sUyHyXdvLthqgdN/NagqZm1wokMGq2Af+M8D6uJIo+rRk1pFMaMe38mvtDRQTqhnYrGywCZNxU5o2bfnfgbQBXqBPH+O8MPwH0MVbV1b9yBWBiusqV5veaSS1iN2Og82imLeFeL+IdgJJaJ5MhB3cHVSddf1GdxodjAHpMLSuSlzKUgnVl/TKMlIiTAY2trFWdIoTN4nm81KnJ8ic2n7xDU0RDBcfJmIgpqJF5M1IsIdGR9f/0V9JOMkrpXG29BJcMCEC97vbKUUdRzqYZiigm/m2p8LfGBr+YE2QPbLc0r/fa5MQnlOo1F4/gAzt2BvCvm+QbOVTyDdZqvkrXHVs2jCWLwfi5ceNGuB3rWpQq3SDjHDJ2ghHwnRzoemnPWBw799dio0JCah6ag1qZGbbEtw11IcZ2tCCwD2/Drv1xnBneVwJQxHGypVSjeZLYKaVs1bwS1xnV+JVjMnjKZQp6rrpvwkBfKtdZUiLdVUuszNQo5sjwmHD3wMDsFGcGGmT0MRrrEu1JQVn1ZpCIcW6rU6AYZYTEIYKbGwyD25ocU5MOn47Pf6L0WOwtm6BdVGvZxb3fDWnhNRKLZv/+
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3690.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(23010399003)(38070700021)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?XOZis4b6w2VkSBIPI+fd0ymmjICb7m6uCS8sG/HWfnO7uII/NG840RAoHx?=
 =?iso-8859-1?Q?5am9EJ8M1JJbxpT4M1rWNPT7r9Jj92Xd8RVQd4dLEfwgID+/Gi8bj0XdUh?=
 =?iso-8859-1?Q?nqjThR5Bt1xqQ76YMNclV8CEHjHV81rCeLczr62rcqyRB8UFGoz3lVsoJl?=
 =?iso-8859-1?Q?a5u2ymwgFFRxPgouOomqEmXgkRXP5R0iKiFof5aHoSjAgsrhsHMaG2OQgZ?=
 =?iso-8859-1?Q?v3DP6a8Bea7pi35Zr9Ua/wGvsO215zH6/kpSVKpkSYNF4FedVrKS/lw7A/?=
 =?iso-8859-1?Q?cX4C/HGH9dbyAMW9Sndh5gHQaV4rmDfNkFBgC73vZA+ott2ALV/5evGrUz?=
 =?iso-8859-1?Q?KY/glz4pM7v5f8E46nhQF9uKXtvt2DLDocHIR014LaNpzq3LjqKIX6GSZz?=
 =?iso-8859-1?Q?9IIrWPt/0/0Mfodh4jHMqIyOKBilZlAOyffe0Ac8rPmwe5/GfGqrnqsI7G?=
 =?iso-8859-1?Q?IBwet5SEHe9l03XjjVql0LJNB5msP1HJR68adg7nDuuPUWCBWoQHFrTBst?=
 =?iso-8859-1?Q?Z6BF6MDZ1WEoH7auoC97GZOnrje/DqKqFjvn0dEJkBIGtKgQvTTqgTfLAf?=
 =?iso-8859-1?Q?KfdZSrBuCZRwXq/GKfbdKJAdX5qKrW/qKasDXhve9qOWca0RlsHM43e4YL?=
 =?iso-8859-1?Q?MvVNxdXem2iH8jhuI/W8qicj8dj6Twq7WdFQ1cKmy50krOIHx4J1dpwIOg?=
 =?iso-8859-1?Q?fARcNlHdDpwz4Z8qCNn5wErxvxPUUTwArCi+UUxYMh1tBoJgpFNG6WTd2r?=
 =?iso-8859-1?Q?WztAYxin2lg0PAQMax7hmIP9aGVtNJP5CUrjpPRdaJ1qUoukcCJ701/Btn?=
 =?iso-8859-1?Q?NYvdCiXC/G+BGjB7xNzmG7nLeOX/Fq1V/Zf71gkMal37IYbpjMW/lsedJP?=
 =?iso-8859-1?Q?CjSZKfsgTwZ9/E0TkAidak0HhImcfvObra/BviqaQrcqBb4+LOxByOqI5v?=
 =?iso-8859-1?Q?4VsnGrHu4Rh6pfWLHMjLobVCkwBKNAyqOdFlL9gDe9oj+cl6jdKvxTmPFp?=
 =?iso-8859-1?Q?V01Y8juDkVjpbLlk7GiWCtl4kyJ3Ey28jR+y5fpWsnokxDv2/O2bN5dSVh?=
 =?iso-8859-1?Q?lkd8djCUaKRyzk1rjPea+rKBMM9abXAxpbMG1pJOSkyqxssCY+kUQYwcNn?=
 =?iso-8859-1?Q?8G4x5aybJO2X2QlfNUpXEtlw0n2GVlXQypxxLyNX8jfU/z2l+DhacwyFVo?=
 =?iso-8859-1?Q?WKjP1ewwQxM/nrvQfVqQliPlQBp37E8CDius1xUrNulc20ZP8A0kPc7fcr?=
 =?iso-8859-1?Q?nArIS5RwmUwwrIPiGZV9wmyCYMTLuMHqhdlknx8GnQfnbiN9rcT/W3SYHT?=
 =?iso-8859-1?Q?rLET0/WFj8LHPap4faea0Yb7ZEYAeU+1dOdPT7R7s3VmH1Dnv5YDPQZC1B?=
 =?iso-8859-1?Q?1gEUJFhfPGqtaSNeHmoBnVnPyR86wymxxZoTpKCKtkKaGR0mQBcOgzHShu?=
 =?iso-8859-1?Q?zX88VJG9B9ZaGIvLrrKpESwlx/gDRTMNR/82eNWkscH+Y7iaHFkTcdLxBk?=
 =?iso-8859-1?Q?2rBQPqXgJ8WoUstCpOSwDBntdWxowx0NqDLU4UvcwzxMYBbiOqQTnqoWh0?=
 =?iso-8859-1?Q?yod6VCydbJ1GXePm3m8aLkNvROS2Zj3Hs2KhC1rtlbG6Vi9jj/2Q7ymr5H?=
 =?iso-8859-1?Q?5h1dHVaGDq+vNWVfb800xhkFQETmY6dw3dYDZbrwSBB/wp53aXE9quiCSA?=
 =?iso-8859-1?Q?8CY7v2SUw63W4wVs7MB9aaAL8v4v0QYKE9rhCAByvOsYEY+2UnEjqlDsI0?=
 =?iso-8859-1?Q?p/4fqI/QIHUwAPk4c/FixedgYJWq1QtpfA1NiVZLWkedsC?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LUby97RRfcL1ywQVQo3ZJmA4kpy7VAIxYaHBspUe4vy+ng21GL3aXenuyxlMEGXQb/adD0XKNCMogGH1/zmawkyZ3lU300dIWAW3cl7IdY3EG7H4blenQgVhTtl7dVHlBIc/fN0QsCF2ay69F2vQxfCI4zYKgYCWpLkuW/e0sLWBrI4PbT0rlitgUE91n3343CbdVf2vX3FFFR71X59Kwu+0qSumWnA/jHtBoICY63evA3a+R7/ZlgDWdMdGxcDWvKM6CVBbgTMhuc7TJPMxkUDKhpSLjChHyRzhgDCrBQ5FGiNcGOyKOAFM3ZN5LOClcNU1JFOux3A9ICxuPN7gZg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ae198f-3ee5-491f-9faa-08dec85f1042
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2026 08:46:15.2959
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KNyI6RjNz8qg0A9GFoWLXX9UedMUibB4WCBclhfYqCa/76it93oznaD7vwyp4Uudk6b2g52/zvJ0XM137ZtsHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7493
X-OriginatorOrg: intel.com
X-Spamd-Bar: ---------
Message-ID-Hash: Y5VM6TX76XWBDHNS4KGQBOA7ITAVEXAZ
X-Message-ID-Hash: Y5VM6TX76XWBDHNS4KGQBOA7ITAVEXAZ
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 4/9] vfio/pci: Convert BAR mmap() to use a DMABUF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y5VM6TX76XWBDHNS4KGQBOA7ITAVEXAZ/>
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
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_RECIPIENTS(0.00)[m:matt@ozlabs.org,m:alex@shazbot.org,m:leon@kernel.org,m:jgg@nvidia.com,m:amastro@fb.com,m:christian.koenig@amd.com,m:bhelgaas@google.com,m:logang@deltatee.com,m:mngyadam@amazon.de,m:dmatlack@google.com,m:bjorn@kernel.org,m:sumit.semwal@linaro.org,m:ankita@nvidia.com,m:praan@google.com,m:apopple@nvidia.com,m:vivek.kasireddy@intel.com,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:kvm@vger.kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kevin.tian@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
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
X-Rspamd-Queue-Id: ABF77677EDA

> From: Matt Evans <matt@ozlabs.org>
> Sent: Wednesday, June 10, 2026 11:43 PM
> 
> Convert the VFIO device fd fops->mmap to create a DMABUF representing
> the BAR mapping, and make the VMA fault handler look up PFNs from the
> corresponding DMABUF.  This supports future code mmap()ing BAR
> DMABUFs, and iommufd work to support Type1 P2P.
> 
> First, vfio_pci_core_mmap() uses the new
> vfio_pci_core_mmap_prep_dmabuf() helper to export a DMABUF
> representing a single BAR range.  Then, the vfio_pci_mmap_huge_fault()
> callback is updated to understand revoked buffers, and uses the new
> vfio_pci_dma_buf_find_pfn() helper to determine the PFN for a given
> fault address.
> 
> Now that the VFIO DMABUFs can be mmap()ed, vfio_pci_dma_buf_move()
> zaps PTEs (used on the revocation and cleanup paths).
> 
> CONFIG_VFIO_PCI_CORE now unconditionally depends on
> CONFIG_DMA_SHARED_BUFFER and CONFIG_PCI_P2PDMA_CORE.  The
> CONFIG_VFIO_PCI_DMABUF feature conditionally includes support for
> VFIO_DEVICE_FEATURE_DMA_BUF, depending on the availability of
> CONFIG_PCI_P2PDMA.
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>

Reviewed-by: Kevin Tian <kevin.tian@intel.com>

with a nit:

> -	vma->vm_private_data = vdev;
> +	/*
> +	 * Create a DMABUF with a single range corresponding to this
> +	 * mapping, and wire it into vma->vm_private_data.  The VMA's
> +	 * vm_file becomes that of the DMABUF, and the DMABUF takes
> +	 * ownership of the VFIO device file (put upon DMABUF
> +	 * release).  This maintains the behaviour of a live VMA
> +	 * mapping holding the VFIO device file open.
> +	 */
> +	ret = vfio_pci_core_mmap_prep_dmabuf(vdev, vma,
> +					     pci_resource_start(pdev, index),
> +					     req_len, index);

the comment is redundant as it's about internal logic of the callee
and is well covered by the comment there.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
