Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OodOc394GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A375F4107D1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:18:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF66F40952
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:18:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	by lists.linaro.org (Postfix) with ESMTPS id 3FF773F7EF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 07:33:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=AGY+AaN4;
	spf=pass (lists.linaro.org: domain of kevin.tian@intel.com designates 198.175.65.18 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763451208; x=1794987208;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=0WS1BTDZ3Hfusfq2hdC/CLWdTPFZSwQ+E+UU1AQOeJI=;
  b=AGY+AaN42aYTg3X9leNE7Cfi9YY+Y/lxCaC3UlJjQkdiQzSZCzKq/f9E
   t25soLxNcO9874D5QiZGj6YTs8RBi+WKC8DrO6OC5pOHjsz4G28VnA6Pt
   RfztOa/KJIofKUna76RWIn1YNXLqchAo92yNmRIBNxT8P5Jt5xChlm87z
   T/p9anoyFYqphB6AUIdOLAdotONx1M62Ngh5nqaT4aQIE64JwkjRqTgkr
   fYDh+qHTdlwrvnILSvaAKDJ58zEc9IVsRABG1GnnxDM+xrbtgk03jGivp
   1wbMSuIMUPc20RMcaprRfq2STOEysj0LRF2YOW6l4oHPQDovjkKp8DMmR
   w==;
X-CSE-ConnectionGUID: uoAay2DYRF6jDOxuYsGL9g==
X-CSE-MsgGUID: y/woXnkETCehaZ1Dnvt5hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65495809"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000";
   d="scan'208";a="65495809"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2025 23:33:27 -0800
X-CSE-ConnectionGUID: x14wzt89SgGwn7O7HTAVzA==
X-CSE-MsgGUID: yKm8Zj2eSrGiRyS5K2AJFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000";
   d="scan'208";a="195817021"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Nov 2025 23:33:26 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 23:33:26 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 23:33:26 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.23) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 23:33:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NbIvfyDePQ6Oe1yWkwEZXGXKWmHvE4IXDeqG+opfSieu+EahDsBi0aZpGiFiTIMM8fRofZLUZXpEdtvRE5gevp+HxdKQVxjYaKDt7Xji386XxPsA+Q76DrXdoAzE9w9NuA8tY6K0271tyS+f9M3Ym4EIu2tWllh1rKkcqmtth+qFaWMf+ZYtw1Q3WVSI7RjXRJVTAZvhEH5UlPyS7TSxUXo8f7bP5A5eY2kbmqYgd2M4s/9mD23vn/tABxcil7sB9VbaKbDUC6s1wpsPgguXZF+GjA3VRtsj0k/Zibxd/pm2GVxfkuaQGkGVBkGlPDy4p9K7o8JoqcsWw7bmjk3MDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0WS1BTDZ3Hfusfq2hdC/CLWdTPFZSwQ+E+UU1AQOeJI=;
 b=lr4S8qMiF+Kz0BXAFFUXj3Nwt16Nc57NVhicaZ8lc+HyqFx++c3fzeQSMNU7ZKf72K179io/lYq8cSbKH1v5mieAnF3tjfqYnHU+n6u1L5jocMzlxioU9oYA4ORjn/nzp2sDX3p6aPmiZl0ApnZuBCwgejwKO0SSkhzh3jGFfC1FMT4DO3dZLbjhGYK5liWCkphGL05e4ae7/vP8EB/ilrdBCMTJXmS0xww8fYSkApqXcvqlw0G2p4Hs1c8frRR2yYrLJ3J+S0zXL7SjOuBC1pVASWwX72f5VABzo2PAw/cot+4Nsir+HrWfhy+DQwxeNdS11g/P6suxM+zuDHi2Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by LV8PR11MB8770.namprd11.prod.outlook.com (2603:10b6:408:202::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 07:33:23 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1%5]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 07:33:23 +0000
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
Thread-Topic: [PATCH v8 10/11] vfio/pci: Add dma-buf export support for MMIO
 regions
Thread-Index: AQHcUvHJUsSz328bbEaizAQHYSZo87T4ET6g
Date: Tue, 18 Nov 2025 07:33:23 +0000
Message-ID: <BN9PR11MB527610F3240E677BE9720C2B8CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-10-fd9aa5df478f@nvidia.com>
In-Reply-To: <20251111-dmabuf-vfio-v8-10-fd9aa5df478f@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|LV8PR11MB8770:EE_
x-ms-office365-filtering-correlation-id: 50071881-33e7-4885-54ad-08de2674c12d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016|38070700021|921020;
x-microsoft-antispam-message-info: =?utf-8?B?a2U5SXl3ZHNTL1F3RW5NS1lMQ3ZqZFNzUUlPak1OZnNKck0xYjkzdUpBTU02?=
 =?utf-8?B?TlF4SDc0ZHl5c054aEtRbWFra28zYmZjWnVwUGF6ZnRiUktZTlRQU01HamZx?=
 =?utf-8?B?cmkvVDVldnlLamszYWY5Mkw2bTczSnZZTnprdURXd0VHcnJMcmR2Z0RQd1VI?=
 =?utf-8?B?REJzejh6YnlYU2dBUSt1S2lQVGFqeWZKVDlaYTg5RG8xckFuWkw1VlYyV1Vl?=
 =?utf-8?B?T0FSdGU4amtNOWIxek1WLzQwcktuVGk3cDV0ZVhSVXRJK1FPNkRETmZuMGdI?=
 =?utf-8?B?cUY0aWVQQ0h3eWIvWXYxV3AxazRHdjZDRmdZTUYwWEppenQwdERRTk1PSnhz?=
 =?utf-8?B?QWt1dHJ3bjZlTVdhaE5GOWJ3eTE3S2J1QU9hMmZZTTVRK3VFWDFQNUxDZEFK?=
 =?utf-8?B?c0t6M2JLYlBsbnk3enNrSVVLb0VEZFlaaUt4bURWd3VZMDdBWldmMnBHd0lT?=
 =?utf-8?B?U0hJVW1oQWhNN3Fvb3gxVE85Q1lJOFBaN1pVWTdDK0JzamRxMlY5eDVvS0pl?=
 =?utf-8?B?MTIxNnNUeEw3NjlwT3RjekU2dFBDVWxoSXk1MGpiU0t5SUVrdGk4cjNVQTZh?=
 =?utf-8?B?MUhibUJkUFNEamYvVEREbFlDbFIyVzlQZlVHZmZjWlpNeTRpRzNxNGR1UWNm?=
 =?utf-8?B?cmlKYmloZHp3dWZjb3oyNkRrNzViWWg4SFE5YUZEWmRrd1BkYjJKZ2l2a25U?=
 =?utf-8?B?ODU5d0lVU3RKR0k0SlgrQThxQmE3OUo5OGUzaklTMEErS3NEK3B6Z3grOGNZ?=
 =?utf-8?B?Vi85Ym9OUFlvM1hYSUNIUFBkVmY4YXVLbU8veEt0MG5BZnRTcEprNmRVMHZ5?=
 =?utf-8?B?ZkkwVnJMK29QdnJxQ2NiZEJtb0FhaGJjZVpoSktwUjJsNjFsQzNuanl0dnFW?=
 =?utf-8?B?SDVsejF3VHRNZlA5emU1YWJjTzlyUS9KMzZYK1ozcTBPMFBMRlh6UFYzdXl3?=
 =?utf-8?B?cXlpTGRUdkVpNE1QT21NZmJCcWhVd0Z6ZWRSeGFidFM4dXlXTjVzTVh0a2pH?=
 =?utf-8?B?RmJneTZEdS82djMvOXNOckY4dW45aTJZSEpNL1VVZE9oU0ZoNkF1ejA2SERP?=
 =?utf-8?B?V2E2VGdKTGcvZDZXbzJSTHFUYWg2TlNkSW54TFlhdytva3dOWlVxTWtxSE9O?=
 =?utf-8?B?ZGRQOVpSNk9lNG9xTmxTczhEL1FEV0pyTXpzUGlWKzgycUh5c3dpbnlHalNK?=
 =?utf-8?B?bEo4Q3RIRlZVbjNzWkZ4Ny82Z1JGR09DZ0cyNnNxeEZIcFYrSEZ2dTE5K3Bp?=
 =?utf-8?B?dzE3RTZJcDRBWHdjS09XMzc0bGhsdm1WblplSDRwV3VhQ003TzU1TVZnWlJq?=
 =?utf-8?B?TUI4Y0U3M3lHdmZ1R3c0ZXdUUGxvcEREcUxtZWxISVZuazRnVmNDc3BFUS9l?=
 =?utf-8?B?ajl3N21VVmR0dGhLVktqVVljRHlISE9waUFPcG4xN1lONnI4OXkvcGFURGtL?=
 =?utf-8?B?aFNRQlRHR3A5dlNBVDZtVVJDQ0xaSHc2cVR3VWlDM0p5YjFsOVNRdGFkUWN2?=
 =?utf-8?B?UTRiU3E2LzRrcWZpcVdrcjgxb2NXTUJmNVl3U1JLdnpCemVGZTFNZG1sN1ly?=
 =?utf-8?B?RVd4VFRhV3hJUXg2ZjVuNFVTWlA0TUdROEJwMlU4SWlCRDZWMGlNaXZ4UnVS?=
 =?utf-8?B?bSszVGZoZ0VibUdOd1VrM0hpeDBFMGZjaUlYd0h1MGpXQVdEbmw5aWZkZ1B3?=
 =?utf-8?B?VVRVMHU2c3poRUIvajVBZzFPWnE0dENiNmEvUHFFVWgvdjBBOGJvSlZFeTVI?=
 =?utf-8?B?MThtYlpoR2cxcmkwT2plVGJwbkdZYWIyZ3paU3BDUFVINDV6M3ZWUTFvQzN5?=
 =?utf-8?B?WE9udGJpaHIyc0ZjMjlrYzV4Q2tyT0F2NDhKcWo3TjBRcVMwNjQ5QjlxYkJl?=
 =?utf-8?B?T3QwV2VxTVlBNWJlZE9LMU9wc1lXd1NpaU02SU91TG1NSlI1M3Q2QUtlOExK?=
 =?utf-8?B?Z1dVOUw3TUdJTWEvVndUekxLb2ZTNGtqL0k3UkVjZVZOelFVVVJTTWVsQVdI?=
 =?utf-8?B?NnNTb2M1bjZKbGxqUFJRM3REQnZNMGZtN0VZUXFpUzJvVjJpb3RGY1p2S25V?=
 =?utf-8?B?VGRJS3huc2ZLRE1sb3J2Q3hzVjhSS2RTZkUzUT09?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(921020);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGZmRW84UHFHSDM4K1BsNGNzTjNad1c1Y05IOWx6TERxclVMc09BVDRYellV?=
 =?utf-8?B?dU9QcFIrQ2VLNU1vWGlqajc5TjRGSkJFVzZlOThkRnFYdGVnMFdlZXBJSjd2?=
 =?utf-8?B?a01HMTFobmpITi83SzAxZmxxNng5cGppYjA3dWE3WDJIdkRtYkliWlA2VGFX?=
 =?utf-8?B?MmpKcVhYZUZlV3pWSDRuR1JMZGNBYmZzOThwQUpvL2J2M0xSbmY2cG13dmVt?=
 =?utf-8?B?VnJCQUZJRHlUa1J5dnRLcVowOVU5UHRDOUVKWWh2WDl5T0ppUDAvNTU2alBX?=
 =?utf-8?B?Y1FEWjF3SldLdTBNb3JKOUV4cDBoSGpXS3VwcGpZMUVzaTFsYXNNUm11RzNo?=
 =?utf-8?B?Rk1jaVozcXZzMzl1cDNqQ0xXTGN1QUs2ZnNPNlBqRFJuN3pGTlJxWnBCcnA4?=
 =?utf-8?B?cHdBMFBJODUxTDFNOXBBekJrcnNzNlZzNkd1c3ZKWWhqM2tzSGFBZjRwcnBF?=
 =?utf-8?B?WnY5WG5RMyt3TXk5Z2xRUTJYMmE3L3J4SVYyV2grdXNpL3RpMnNaYUlWRzMx?=
 =?utf-8?B?WlUxMFdxSlIxbGkzVEwwdEs2NUVxMFhqSEVtUTR4TEE2S2JnQzZTVm9mVE10?=
 =?utf-8?B?SnFqVHd1WE5uMWsveWRyd2dlZ203V3NLMEUwR3R2Q1NhcTB5cks5dzJRdmFI?=
 =?utf-8?B?WGZrQ0dOUEFLZ1J0dG84QUZScFc4UERTS1dmM2JDSWRZVzE1d3d2L2dHcWhI?=
 =?utf-8?B?QlU5Y3grVG50aTdEV3QxMGxHV1NXWmloYTZPTmRJS2wxbkg1SjV0UEJ0L1h1?=
 =?utf-8?B?NzJFQjNGNjQrNDVEdGVodlQyNE9CUEpCa3VwenBUZll0QjRoYjc3TTc2bXpX?=
 =?utf-8?B?MWlsdW5SZXh6cWxNQkVUTVBjck91UWdzR0c2Wmc3ZHdyNlcvOTB6S3Y4WWlG?=
 =?utf-8?B?RFpnUG02K3UzdnZNclhuK1ZZZktkUlF1SS9ITk1FZFJhSXVoQUcvc3ZSUnRp?=
 =?utf-8?B?cXgrTm5sS0dCNDhJSXZxMVplRkxLOW43T0RLNVdyTFhnRkRleWhJem55TFFE?=
 =?utf-8?B?bWVPNE5tR2hLenJHUTByOTZEMGtBdVY5cm5EaWd5WWsxUEFuS0R1QnpoVVNs?=
 =?utf-8?B?QW0reVRDdktzb1BJeTlNRUFQdEdkbnVHYXQwR3c4cCszdHpPWGN4bmJ0b29i?=
 =?utf-8?B?OXdUTHZXZFNCVFIyUGJDVEhkelVZV3FzRmZoejU1WXRWUUVNcHcxYnB4K2JH?=
 =?utf-8?B?QXR0eCs0MWlzUjN0MW5PZzZWaUd2dVFrYWhFRU5TRE9jWVJMMmwxWHNBMlBw?=
 =?utf-8?B?Y1RlOE1rQW1QMVpDdm9Mb3llRXpmN0Nvem9wdndLTDBPYmlXYUlEWjhkZXVu?=
 =?utf-8?B?TWFOcDlPUkc5eHZtajk1SlBCUVVJdG95ekJaTEUxUXNrckJ4YkhBWXVvZmdN?=
 =?utf-8?B?U1NsSFlCd0djUU5xampmZzhXVWFzSXZJY2FJbmh0L1Bndm05SExDeGJPT1V2?=
 =?utf-8?B?YUp3TXdrcnVTUTBxbnlWVHpsazNmSFBNTlJ3bVpjcFJMSk5idFY1ak5NcUUw?=
 =?utf-8?B?dEZ3VzFubkRxa3QzM0d4aDBmZnJHa2RUQnVmQW5nMFRWUkRwcXNyK1ZuNExt?=
 =?utf-8?B?dDZ4YWIvNW02WnJReUlXL09xMWtRdG5oT0Q5VmRHekszRm5KVG9qU1ZqVytu?=
 =?utf-8?B?WmdKZmhzbUdtb3VnZGQ3a3hGcDNSejZYbnlra3pGa0tPcnN0R1A0MjZXNzEx?=
 =?utf-8?B?Q0JuQWhBcFRrbjJ4dnhlNWlObW1qRzFQVDVZNTZLVmdoZE8zQzBiSU9VTkpH?=
 =?utf-8?B?SHBUM0VqOTc3dU05U0k2MWNpbUJ6Tm4xZmpCQ3ZsYkNIRlQySldMNVNIWTR2?=
 =?utf-8?B?QWFUcDN5SCt5RnJlOFp1RjJuRzhWNXEyNWI1NWZ1MDBna3dzUjdWNTVCcC90?=
 =?utf-8?B?N1E3cXdhM1k2MytlS25pSzFpQTRkSjBoOU9xUyt5RUZUbmVQSE4rYmppSmVT?=
 =?utf-8?B?TDFYNTgzUW92aWhJcUFZWi9aaTk3aXZhbk9BYTl5ck5BcWhCcHFlZWpMakt4?=
 =?utf-8?B?dlFsSjlTSFRpZ0hZT0J6TlM2S2cyMCtQSUhUeEZOb1FPYTA5a0h1WktndzBX?=
 =?utf-8?B?RWlEUnAxdVdRN2pvV1hJWER5Q08xNGsvQ08xUkJJVzJxVit3c1IzQUFEQlVK?=
 =?utf-8?Q?Cb1W24uXosGRCqbc/iPCDY6R+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50071881-33e7-4885-54ad-08de2674c12d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 07:33:23.1810
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9X3ljzRVdG7uFhK62RH4z08THvlkHKqkG18cCN14v6nWylvs52OpKveDmJf8KgHxG/t3HUGQAYoIVRJvJUWRFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8770
X-OriginatorOrg: intel.com
X-Spamd-Bar: ------
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5WPIJULSCMT5SCLZQRQWZZ6H32P2SD3P
X-Message-ID-Hash: 5WPIJULSCMT5SCLZQRQWZZ6H32P2SD3P
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:09 +0000
CC: Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 10/11] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5WPIJULSCMT5SCLZQRQWZZ6H32P2SD3P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[3583];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,BN9PR11MB5276.namprd11.prod.outlook.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevin.tian@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.613];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A375F4107D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> From: Leon Romanovsky <leon@kernel.org>
> Sent: Tuesday, November 11, 2025 5:58 PM
> 
> -		if (!new_mem)
> +		if (!new_mem) {
>  			vfio_pci_zap_and_down_write_memory_lock(vdev);
> -		else
> +			vfio_pci_dma_buf_move(vdev, true);
> +		} else {
>  			down_write(&vdev->memory_lock);
> +		}

shouldn't we notify move before zapping the bars? otherwise there is
still a small window in between where the exporter already has the
mapping cleared while the importer still keeps it...

> +static void vfio_pci_dma_buf_release(struct dma_buf *dmabuf)
> +{
> +	struct vfio_pci_dma_buf *priv = dmabuf->priv;
> +
> +	/*
> +	 * Either this or vfio_pci_dma_buf_cleanup() will remove from the list.
> +	 * The refcount prevents both.

which refcount? I thought it's vdev->memory_lock preventing the race...

> +	 */
> +	if (priv->vdev) {
> +		down_write(&priv->vdev->memory_lock);
> +		list_del_init(&priv->dmabufs_elm);
> +		up_write(&priv->vdev->memory_lock);
> +		vfio_device_put_registration(&priv->vdev->vdev);
> +	}
> +	kfree(priv->phys_vec);
> +	kfree(priv);
> +}

[...]

> +int vfio_pci_core_fill_phys_vec(struct dma_buf_phys_vec *phys_vec,
> +				struct vfio_region_dma_range *dma_ranges,
> +				size_t nr_ranges, phys_addr_t start,
> +				phys_addr_t len)
> +{
> +	phys_addr_t max_addr;
> +	unsigned int i;
> +
> +	max_addr = start + len;
> +	for (i = 0; i < nr_ranges; i++) {
> +		phys_addr_t end;
> +
> +		if (!dma_ranges[i].length)
> +			return -EINVAL;

Looks redundant as there is already a check in validate_dmabuf_input().

> +
> +int vfio_pci_core_feature_dma_buf(struct vfio_pci_core_device *vdev, u32
> flags,
> +				  struct vfio_device_feature_dma_buf __user
> *arg,
> +				  size_t argsz)
> +{
> +	struct vfio_device_feature_dma_buf get_dma_buf = {};
> +	struct vfio_region_dma_range *dma_ranges;
> +	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> +	struct vfio_pci_dma_buf *priv;
> +	size_t length;
> +	int ret;
> +
> +	if (!vdev->pci_ops || !vdev->pci_ops->get_dmabuf_phys)
> +		return -EOPNOTSUPP;
> +
> +	ret = vfio_check_feature(flags, argsz, VFIO_DEVICE_FEATURE_GET,
> +				 sizeof(get_dma_buf));
> +	if (ret != 1)
> +		return ret;
> +
> +	if (copy_from_user(&get_dma_buf, arg, sizeof(get_dma_buf)))
> +		return -EFAULT;
> +
> +	if (!get_dma_buf.nr_ranges || get_dma_buf.flags)
> +		return -EINVAL;

unknown flag bits get -EOPNOTSUPP.

> +
> +void vfio_pci_dma_buf_cleanup(struct vfio_pci_core_device *vdev)
> +{
> +	struct vfio_pci_dma_buf *priv;
> +	struct vfio_pci_dma_buf *tmp;
> +
> +	down_write(&vdev->memory_lock);
> +	list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm)
> {
> +		if (!get_file_active(&priv->dmabuf->file))
> +			continue;
> +
> +		dma_resv_lock(priv->dmabuf->resv, NULL);
> +		list_del_init(&priv->dmabufs_elm);
> +		priv->vdev = NULL;
> +		priv->revoked = true;
> +		dma_buf_move_notify(priv->dmabuf);
> +		dma_resv_unlock(priv->dmabuf->resv);
> +		vfio_device_put_registration(&vdev->vdev);
> +		fput(priv->dmabuf->file);

dma_buf_put(priv->dmabuf), consistent with other places.

> +/**
> + * Upon VFIO_DEVICE_FEATURE_GET create a dma_buf fd for the
> + * regions selected.

s/regions/region/

> + *
> + * open_flags are the typical flags passed to open(2), eg O_RDWR,
> O_CLOEXEC,
> + * etc. offset/length specify a slice of the region to create the dmabuf from.
> + * nr_ranges is the total number of (P2P DMA) ranges that comprise the
> dmabuf.
> + *
> + * flags should be 0.
> + *
> + * Return: The fd number on success, -1 and errno is set on failure.
> + */
> +#define VFIO_DEVICE_FEATURE_DMA_BUF 11
> +
> +struct vfio_region_dma_range {
> +	__u64 offset;
> +	__u64 length;
> +};
> +
> +struct vfio_device_feature_dma_buf {
> +	__u32	region_index;
> +	__u32	open_flags;
> +	__u32   flags;

Usually the 'flags' field is put in the start (following argsz if existing).

No big issues, so:

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
