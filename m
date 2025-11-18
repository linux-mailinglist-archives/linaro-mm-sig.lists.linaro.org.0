Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELuqJcj94GnzoAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6E34107CA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 51CB6409BE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:18:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	by lists.linaro.org (Postfix) with ESMTPS id DFC623F7EF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 07:11:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=jaJzQqIY;
	spf=pass (lists.linaro.org: domain of kevin.tian@intel.com designates 198.175.65.9 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763449893; x=1794985893;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=/+d8rDrxTLUb2de55TbPT4PEN30txcamEa4bULTAS/k=;
  b=jaJzQqIYi+8ItLuF8Rm6kZfTxUd6C9LjprqR2vsMFpBAbEkswbAz2dx/
   qPVdIMsZY4G1G8pLrUFJXft7tkulmVTi45Ctrltws870JzMo+dBsm1+7K
   2FXft4vtcKjSool4F9zhcdd5BSzqr56tXQHDiIUtqyTNkD3x9MSKEnLq9
   znA2E10ZnWjY5bMrIiZZEhzP4J4WhlcCd8I+y8y7V4UTrjrRtZ6r+VJ3G
   AIMTKJeKPKF4HUPD8vyVN+N1dAmOtk90rVYgLLmG8WQLTaSr9TYVHFrSj
   s4TdoclwennHa+OZNeH75p6wO1GQdeqELMg4B4RDH9C9em7MjVdomPLMU
   A==;
X-CSE-ConnectionGUID: CaFUST+9Sc65XZJaw2hftQ==
X-CSE-MsgGUID: zvlnE5abQkGzaxz0R7++9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="88114048"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000";
   d="scan'208";a="88114048"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2025 23:11:32 -0800
X-CSE-ConnectionGUID: 1RZd7xxuTfK+I8E9Q8iTqw==
X-CSE-MsgGUID: 9IV8+ZnmQaGe9RCq6U/khg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000";
   d="scan'208";a="189942614"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2025 23:11:31 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 23:11:30 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 23:11:30 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 23:11:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QPzBS6s7QLJdJoIxQqWs3TCXKikrEntsQKy4CfuBE3IYzuvkNskSq4wjtxYRXVe2trwAdLER0PlpQrZyNj9bOtLUjgm7v0+QIChJ+i9QfD2vBv/wXsrVaTw8bpj+Cd5phcn4jlGa1H6JK6sbnR1FD/eIbS+dhX6JOfjoBmveA8ZL+j6VwdCd/7mrbAG4Yn240N51qAFQu62aLjA/NzBVYFa2Kr4gtaJiCc3c44olCRQsY8fZ2z1sXDt2ySTcfmKIlpA2ma1CP6ielKzfVC6lC+SWbL9Y0r3B0I5P/8Mb9Iv7anNilT5M7hLxxjqeWEx0lur7qUUNk9w+evVrL/d/3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/+d8rDrxTLUb2de55TbPT4PEN30txcamEa4bULTAS/k=;
 b=C/a8P6xRLAm1m+QxyUUIjoYIgPPsn/1auhGJQMclH7ubieolg6PCIdWJpnihKW+RUPRau71CWJOp2grjaNPoL4TrKFRd+p0h5PfGcEzsKr0O4Q+r5inabvnQ/GcwZKHyQCXsZ+Z1bgZ5wwiHk/9wN9TqKnXFFr00q6X26fzbmtRD0BbbZ8Lomw62tVkgu8FewPNgIz3p13yW7ocC0l6G1UqSxTQrWRkE3vptuIp1DaitYF2kpCCMwoNDkFeyjdOAFz1/EEY/4U3GT+0Ivy6eQZZo9o1z48Mu4BkgNQrBofLPwZxWTwvDnMzeafrDrdGS9bmEOcuwyDEtBaRfa5x3CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by CO1PR11MB4980.namprd11.prod.outlook.com (2603:10b6:303:98::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Tue, 18 Nov
 2025 07:11:28 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1%5]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 07:11:28 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Leon Romanovsky <leon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, "Robin
 Murphy" <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon
	<will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>, "Jason
 Gunthorpe" <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>,
	Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
	=?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, Kees Cook
	<kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, "Ankit
 Agrawal" <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, "Shameer
 Kolothum" <skolothumtho@nvidia.com>, Alex Williamson <alex@shazbot.org>
Thread-Topic: [PATCH v8 08/11] vfio/pci: Share the core device pointer while
 invoking feature functions
Thread-Index: AQHcUvHCw0aHkX9bykuV6gPaTEF38LT4DyRg
Date: Tue, 18 Nov 2025 07:11:28 +0000
Message-ID: <BN9PR11MB527664168D1FD4F0DCC922F78CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-8-fd9aa5df478f@nvidia.com>
In-Reply-To: <20251111-dmabuf-vfio-v8-8-fd9aa5df478f@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|CO1PR11MB4980:EE_
x-ms-office365-filtering-correlation-id: 56560792-68b4-424e-e9c9-08de2671b18e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|366016|1800799024|376014|38070700021|921020;
x-microsoft-antispam-message-info: =?utf-8?B?dzhSaVFiaTBBaW9rYk5ZQkR2dGxKVFZ6TlJxNFBnS2VERXBpNHNSeWdHME0z?=
 =?utf-8?B?R2pVM2tkcTd0VUdFSGkveGpIQ3doNlVSN01Sei9WNVdIbkIxL0dZMEltNG1w?=
 =?utf-8?B?ckUrd2F2NjVMVzlDQ1d1S1NxaTV5Nm02dlZLZ0tYNTFFVWxWR1MwTjlxeHNP?=
 =?utf-8?B?K29MZjRmaFFkd1Y0aXpVMk93Yjh2T0s2Y0dhalpRdXF2SFptNE5mU3dyRy9D?=
 =?utf-8?B?TnJ2KzdWUTlhSHAvUjZaSUkwYXJuT0txR2JnUHNBa0VBSUNwYVlma2dPZjBY?=
 =?utf-8?B?RzFNYVlTYTJRdDRqZ0FEZnhMdW9OengyckJ2dk4yVUw3NEVzWlNsL1pzaUdL?=
 =?utf-8?B?UUlCYmRHa3J1VXBaRSt4L1JZRUpwVENPdlVMUkppWndrNFpuaGptRFY1bTRv?=
 =?utf-8?B?WlVwek05OGlLdE1QcFJhcUt2aEdraE41K0xWV0p6NElGQ0hHRmJWalM3dG5k?=
 =?utf-8?B?UmhPSTQrRDdOWGxxY2plTFZPZGx3ZlRwY21tWHJkbkx4RFkrT0RQTXZWYmxa?=
 =?utf-8?B?emlsZElYOTMvY0hrOUxmeXIzVjlOeDdKVXZwZXFjR0NUT1JnVzdNbkxrdmRj?=
 =?utf-8?B?NWcxcHFkcUR4OW1ySFlBY0FvN0MzU2NoakRsdmxnamtDU3BxYnBPVzBicVpa?=
 =?utf-8?B?RXFZbnhmWUFiTjZxbldIbGFNTmRSWTcvY3FDSC9yRXlyR0tXYkQvZTZjblh5?=
 =?utf-8?B?bnZ3ZFlJTmpFemdpUnJXUWhyaktmWHZEa3VrZjZaeXdzN0JFK1BXdmE5R0sr?=
 =?utf-8?B?NFNWTU0wbUl0c1BTNE1MRW9nVzhISHhqZ1h2U1FYLzhFVVpsMStndk1yRFhx?=
 =?utf-8?B?QWw1ZmZ5Vmx1bTRJYTVGM2EwMzBTZXM4anRDTTRTalFGT0NMbDQ4WWRQd1RE?=
 =?utf-8?B?LytqOFZPSWoxd2piWDdZMG43cjFDOWlDNmhqc0xETnRHbVpnbnBudnhoOHJK?=
 =?utf-8?B?UWxqSUNWU0ZZcVJReWlTT0oyMHRqM280TlErNzZKVTlxK1BmM2FxTnl0ZkVm?=
 =?utf-8?B?a0U4UFpQRWJNc3BVNEViekJUSDRSb3NvODdydlNpN2dlN2U3OUlKcjc4N05P?=
 =?utf-8?B?a1p2U2hjNm55RExrREI3MEVDMThpMCtMVi9zaks2akhSWkFSbFB0YmJwdGw3?=
 =?utf-8?B?YmxkZ1ZKbWhJZ05vQTBTL0QyVlhDOEY4NklEYU4vUmZOSVk4R3F3bXNkSnVI?=
 =?utf-8?B?Mk5tOVJCdkpwcFErUTJER1daTytrSVBvQ0h5TUNkd3RnQVRKa0dMclF4TEM5?=
 =?utf-8?B?dmJ5aTNiL0hsMGNkam5lZ09vUVFsclF2UE5vanErbUptOWxYSzh6ZXN2dlpL?=
 =?utf-8?B?ZnRxdFFWVTZUZzFLUEI2Y28wSnViaTdlS1N4OGNuSmFTdHJhRTZYT2ttL25r?=
 =?utf-8?B?Zzc1RzJRbS9ySXpQM3NQTXorV1lZODRXWDZ4OHdZRXVnZkxTaUJUa0xHcmJu?=
 =?utf-8?B?ZnhOVlZ6YWpsQWJrWWsvaTNRVk92UGFJTkdmamdVNTFPUUNqQlo5RElyWUhE?=
 =?utf-8?B?aVBLdE00eWR5aVhUT2RaUCtDY0NOaUNPL0xRa2ZFeGQyWDh5RkZ4R3RRYSt5?=
 =?utf-8?B?cDhvS2JqZTJHRVB2RFphSDBwUmw3VWI2NW8vZlpjMUlRL0hCUFFRMVg0YkNK?=
 =?utf-8?B?c01IK01DSkoybWc4MnpBcVFvdzZENmx1amlvRTh4SHdQQWdnbnFiOTZJSk44?=
 =?utf-8?B?VW1UaUNSZlR1OUhjWWc0U2F5QzlNdzFud2xtNjR3NlRFTk1ORWlSVm1TTnVx?=
 =?utf-8?B?Y2NhUlp5bkNtYnZSYzYzUVdaWTJPWi91TXQ4dFh6cXNGaHdKamdVbUM4dldx?=
 =?utf-8?B?Y2dBd2FYZDhJdHduU1h3cEpjWlhrOVYwZzRxVmxVbVB1YlJtVDlvVUQ1YThr?=
 =?utf-8?B?NUhtRGFkVU5sM0gzS3VjamR1dktzQVJsRlNxRFgzRUl2M2pPYitTTUdydEkz?=
 =?utf-8?B?RWhkQzFCSU1pT1AvckFvc0Q2NHRGdW5PcGYvaDFiR3EvYnpBb3N3RS9MN096?=
 =?utf-8?B?VDh1TTJEMUNrSkgrYWJ0ak1NblNYcEpCNzJrdCtLY3hSc1dsZ0tVZFBaMXRG?=
 =?utf-8?B?N1l4dzg5V3JUVFhscUJwc2J6RlhQTWNUeXQrQT09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(1800799024)(376014)(38070700021)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1pEZCtoOThkWFRIMWxnUHJGNEpRejZVRGNQQVgrZDhBUDlWVE1SWUFHbkYr?=
 =?utf-8?B?bFM0Z1l1WTdjbHJyT1JQZzc4NHQ0R25hcHJQZGhueUVyMmZmTlFicFdOZG44?=
 =?utf-8?B?WG1PWHU0UUMzSEFiejZjVmh1c1Z2R1JIUXA5NS9RWEpIL0JTYU50U3ZmSTJX?=
 =?utf-8?B?U0UzZGE3S1dWeXFPaHNiYmVYTmRsd21qTHBtSDNpbmJTTFFBNGFnbXdIYXho?=
 =?utf-8?B?Y2g4Si9CTlptblRwV0lha0lVYkhvZXhsQWJ2ZWI4T2QzU1FHYmQrNUZFZ3RR?=
 =?utf-8?B?Z2YrRjAzblZSMEZoR2RhTWZDZUM4dlQ5WGp0eDVpODhDcU4rTDJhWjFiY0Fs?=
 =?utf-8?B?cXNBMUl4dHpqUmkyTXlYRVV5S2F1MzE3a1paVzZybndxNk5tRDFtTDh1ak54?=
 =?utf-8?B?bUlidmh2cU13aW45UWxuSmJ0RHVwdFRDaS9rNitkOFowU2tLaWprMkhzV3BR?=
 =?utf-8?B?VVU3VFVQZjA1QUMyU2Y4UzVzbytxQnBZQzMyc2FTQ2hoZWttVFlid2ljTStx?=
 =?utf-8?B?eXM3dU9XaVk3ME9hV0Vtcmk5Z0hIT0tzR1ZYVW9oaWs0L0tZL1ZoejNOWFJH?=
 =?utf-8?B?RjIyRnFPK3dZOVdWWSsva1FacUpleGxNRFlXMEhPUWQ2bmQrRmxMcEtFYTdH?=
 =?utf-8?B?MzZsYUwwUU1MckUwaGRUckhYcFQyNGpleHlwN1lXVTIyYmVpRDJGdEdYcGRu?=
 =?utf-8?B?ZnBRY3JEcFVZakRKLzRnS3kyTEltWjVhVDR4WmM5bVN0cU9sSXVUeTg3eGdr?=
 =?utf-8?B?RGZjdUtSaVRoWEFyY01rTUpmcHNWQnFaRHNnNWNrQmVCODcwbWpybnlGQjVJ?=
 =?utf-8?B?VGRrekVKWlhSUnFPZjl3SEs3UjMvWXMrQ2RmcGpJWHc2U3RZaDh1V3I5Z1B0?=
 =?utf-8?B?bDRRUnJydjVMTXNyQjMvVk9CcC9KWElvZUZOaFZGSEhYZm1LRWo3SC9RYTlB?=
 =?utf-8?B?QWlrdWNxZnlFbEJHdXhCSm5IZmNrVm5uUnh6ZUU3aDFzb05iM1NlWDJaY1dt?=
 =?utf-8?B?a2NPUDdsRTM2QThOaVhMd1g4L2tPdWxpVU5FZTlwaGZlMXk3UVVVcStzM2Ja?=
 =?utf-8?B?RTVEWmZyU3Rja3h3NTFOWXg4YWU5Vy9DZFJxS3hZOGtUTlpLNlhIY2RVZU1G?=
 =?utf-8?B?bFF6b211SGJLQmRxWlZOWE40VHczZkUxZHk4OGEzZkxZR1h3Wnp5YXBNRWda?=
 =?utf-8?B?UUJZeVJ3N2F2UzdWdk5CTnNTRUc3MUp0NkZ5VE9FWmpreStLYU1kNTUwRnh6?=
 =?utf-8?B?NEc2SHI1VklxbXFkdDFOVnlXVmdOazJvd3RTMzhWY1QybUJHeGlYTDMzOE56?=
 =?utf-8?B?MzROVnhhT0xwMHpoQWZNUFZnNXltSitnWkFXMmlnL2NLemRxRzJFT3RJeThR?=
 =?utf-8?B?WkNrZ2k1WVF5dUdEcUFYSll2L1ZJbDhhdTJXaVQ3dE5EVVBsMElBWkVXQU9y?=
 =?utf-8?B?Vm5pdFZoeFNmbFd1Y0FweDY4L0pEeUIwd0toK2JKaDhacGVINTAwWjk5M0NY?=
 =?utf-8?B?aHRBdlE3d0ZFN0lOeTFpaElOT0tWenFuYWQrSnB6d1Q5SFFKOFhyNjhHa28z?=
 =?utf-8?B?SWVRMFVmRVJxb0tmZG5ia25wQ1YyMzB2U1lBRWN5UnFDa1dteVdQUUFoQllw?=
 =?utf-8?B?WmpTVlFaUU94TVFJdStBQmxOZUdjMkh2TDZ0YlQ4Ti95MWdQdGx5V0czNFVx?=
 =?utf-8?B?Q0xQREt6elZacGt4NC83N2JlM0IxTTZYdUhrUnJOQlpBcm5Pb21WOFVKaXRF?=
 =?utf-8?B?YSt4cXUvN2dQekltYzJzaC95VmV5cUVNeDNGLzVQUGVvbm9yZEx6UExaWUxx?=
 =?utf-8?B?L2hHdm5UeTVCMUlEd0pUNXE0cklwSzV2dFp4dDlsekUxSExHSHduaEcxOVA0?=
 =?utf-8?B?Uzg2RmRZenBsOEpaMmUwUCtlTGJwcy9hZzdwdFNPa00xeVpHMGxZd1kwbGR4?=
 =?utf-8?B?U2dWbXZ5RUxMR2FRdmJGQUZQY0ZoNmJUcUtid1BVdHJBYVNVb1ZIbnpoRXEy?=
 =?utf-8?B?bjBoVitzQm54NU1CWnIvQW01SjhuZUJIZkFGQ1B2bzdrajRkdzMxYVA5VFRU?=
 =?utf-8?B?Ry9qVSthYU1jRFFseFdzSDhlQ1Y0bHdSdUkrdkxtemx6RmpGS0tCY2V3MU1m?=
 =?utf-8?Q?i27JISpGIP3VQumLm1EiGGBvz?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56560792-68b4-424e-e9c9-08de2671b18e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 07:11:28.4721
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VJQI3fQM3H/ZCOje9CVRev98zFKc3kJqv3FVZNrOnJ8TdzTBXk+/3kXVRn3J6OikNRK7VHq1v8mm6jqA9MTrQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4980
X-OriginatorOrg: intel.com
X-Spamd-Bar: ------
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XXZJAHWKJWB36EYEAJSMIS4PHSUS57QX
X-Message-ID-Hash: XXZJAHWKJWB36EYEAJSMIS4PHSUS57QX
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:08 +0000
CC: Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, Alex Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 08/11] vfio/pci: Share the core device pointer while invoking feature functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XXZJAHWKJWB36EYEAJSMIS4PHSUS57QX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[3584];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,fb.com:email,nvidia.com:email,intel.com:email,BN9PR11MB5276.namprd11.prod.outlook.com:mid,linaro.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevin.tian@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.636];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3F6E34107CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> From: Leon Romanovsky <leon@kernel.org>
> Sent: Tuesday, November 11, 2025 5:58 PM
> 
> From: Vivek Kasireddy <vivek.kasireddy@intel.com>
> 
> There is no need to share the main device pointer (struct vfio_device *)
> with all the feature functions as they only need the core device
> pointer. Therefore, extract the core device pointer once in the
> caller (vfio_pci_core_ioctl_feature) and share it instead.
> 
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Tested-by: Alex Mastro <amastro@fb.com>
> Tested-by: Nicolin Chen <nicolinc@nvidia.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
