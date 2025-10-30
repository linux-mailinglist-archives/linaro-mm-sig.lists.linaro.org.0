Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eK3DKs/34GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0C540FDC0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:53:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D1F4406F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:53:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	by lists.linaro.org (Postfix) with ESMTPS id EABC33F79F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 06:17:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=mLNTRCKn;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of vivek.kasireddy@intel.com designates 192.198.163.19 as permitted sender) smtp.mailfrom=vivek.kasireddy@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761805036; x=1793341036;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=vIIGGHvldU1SjeoNblOUOVgohnCXzkN3VYzkd/FsOq0=;
  b=mLNTRCKnADCmNGlp3L6oQEzTWXwqSghoQiesC0sLjsrZJTNq644Oy/nn
   jnG+bWB4BK1hUKImOhSSRzLgFGfzmpX0D3OGEoK7SCejKhJYxndKf/JV5
   +iPmysNJi9OMIdtF3xeZXRQB9Z/R05H3XirUYU34mDw+kOcjqt/ICA80C
   tyqcXma46HUkL3W3xZs0qNCW6zXQqcPjrz3smveblfurzrlzcXGPNF1qP
   llPrIRvBJIZiQ80s5I4d0u0E9zlaEoC+tVkJhFi0LjbsdIfRMdjdmbzjy
   73bUL8UJJvdA2hVRZ+iRw6x3qOV8zdFXhr0GOONQQyKG7fzYtyUwClDew
   g==;
X-CSE-ConnectionGUID: 2CuVU/ljQxiBRsMoUOTlOw==
X-CSE-MsgGUID: SRPwLoxnTFumdincw3mJ5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="62960424"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000";
   d="scan'208";a="62960424"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2025 23:17:14 -0700
X-CSE-ConnectionGUID: rCjIptHyQaKlUrjaoGOFYQ==
X-CSE-MsgGUID: pacQapcwRYeC7MCGshCMFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000";
   d="scan'208";a="186609887"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2025 23:17:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 23:17:14 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 23:17:14 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 23:17:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wn1Egk2N6n05X5bE8qwKC7pibl8Fuvr8RqmhXhgqF6pVocyW2UL77MgUhXTgybp/0m2OKwzm3ddXPFs06yfmlZaDj6lOPlWaLPHjGKgvh/r0anaLcz9djK4xAwbhVFrY6Wr7pm/3J4g3eiEjZ8fuy5tAWPFJjKzY848Z2Ns3GaX+GJT5qtUkINE8cEEzjIczHdUjEq3AqvUMGWwjz+IjfiOrYNvGEcJrAIJyDAEUEGFp4ASFJjmbvdCv77gDet2XLximC/k4Opr+rxde4p/1as+CEm7FQ4E1UxmproIDCpFzd2w8Z2RhqkBMDMJmeP3IldMXeJLDSgsL2iX8H3GMMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vIIGGHvldU1SjeoNblOUOVgohnCXzkN3VYzkd/FsOq0=;
 b=Nn0P/cu3AWKHWK3jA+JkFV3ry1f91tiNR772MpZpNFu/fkIW+G/uYTtn0dqrRpUF4tFwQt6w9eXjoOgZGUdRLbQJK5qIa8bbsNbgMMr932CN/WexlkwqR3UGtDz64Q9OeEUmXG8DNVC3TdRP87QDCqNVx1zoCEczSBmEmg5GHdcmCrQTcKlz3RrPsJCG8sGzLCV9OBXNinkiCSotOmQzNJYxhz3cOAuqlzy7uARTrTFTlk9GTjAvYAj8pPQ3Rksp9oX+QNr+iUXCcrcM7e6Edt1BKXgiRsUxyPS+5Rn/oxj6CZfiEH6BnXPjVVuX8ZLBPzKC2D95HSWOHc/uP5SEvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by DS0PR11MB6518.namprd11.prod.outlook.com (2603:10b6:8:d2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Thu, 30 Oct
 2025 06:17:11 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::dd3b:ce77:841a:722b]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::dd3b:ce77:841a:722b%4]) with mapi id 15.20.9275.011; Thu, 30 Oct 2025
 06:17:11 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Leon Romanovsky <leonro@nvidia.com>,
	Christian Koenig <christian.koenig@amd.com>, Sumit Semwal
	<sumit.semwal@linaro.org>, =?iso-8859-1?Q?Thomas_Hellstr=F6m?=
	<thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>,
	"Brost, Matthew" <matthew.brost@intel.com>, "Kim, Dongwon"
	<dongwon.kim@intel.com>
Thread-Topic: [RFC v2 0/8] dma-buf: Add support for mapping dmabufs via
 interconnects
Thread-Index: AQHcRvz4E9hXyspRBUGk9qxvPpLsUbTYR6AAgAFminA=
Date: Thu, 30 Oct 2025 06:17:11 +0000
Message-ID: <IA0PR11MB7185E85E1CFAA04485768E30F8FBA@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
 <20251029002726.GA1092494@nvidia.com>
In-Reply-To: <20251029002726.GA1092494@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|DS0PR11MB6518:EE_
x-ms-office365-filtering-correlation-id: 30260015-46a6-4eda-0516-08de177bf67c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|7416014|1800799024|921020|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?WHuY8NTt9b4MtVYeIQHGaUnZVHF6wFBd2iT+1usNWpnOnikl9uz1qe7Vnl?=
 =?iso-8859-1?Q?90vPfdVgCo/RKDuQ9WOH5iyGrzSJuYh7yGb86ospAmDh+avbzb34U9Nk/z?=
 =?iso-8859-1?Q?4gRkVtGzXdjkoOUdJDCNZbY4q12EiqsugJsAr9mfe/5qYKOpRyloXNIMT3?=
 =?iso-8859-1?Q?vYfrSJO51DidEerlADrz13Qtc2XdhuGKm0J8cmXhD1ZG+4rqj3f0bijz7c?=
 =?iso-8859-1?Q?Ul5BZsfiKwo9Q7CyD1OIVxXPzJ0107kTiBWIFY5+JZYbytJdMgtRyF6vS9?=
 =?iso-8859-1?Q?gAuEv9QVJtjabGIuBPQjBS6x8eGEuZp3zwS+isrByJyz0lvkHSNShj+r1c?=
 =?iso-8859-1?Q?fK2sKQwzNoJZs9RRY8/BeaOZ59SievXJc2OrMzsKN1bp4A/z61x01CgT/h?=
 =?iso-8859-1?Q?E/ZWglyQE7TOh3pc9LyDj88pnsIoVJ3yYbFsc2/xOaY1B0Sf1ihrszVawu?=
 =?iso-8859-1?Q?1VPMpljb1bOEorogQCotunspkANT1P7ww13VpDe3oaNHTHOKWrhheJ6OXi?=
 =?iso-8859-1?Q?ab7OemDsqQI8kMpuvkM6jVp/xA3sO97X1e+62XA0DgPS9+2Y3dzsB93QJ5?=
 =?iso-8859-1?Q?x1MP2ywe1ZJzIp2P/I54Xh/AitBiv4sQAtoXuJOIZU6C7LJGYgLo5PAMKP?=
 =?iso-8859-1?Q?nwYLO4R59qv0jBwZO11/PzZs+fWvd2tmRkTWiaFYI+po3gMYkoiD8k2qoJ?=
 =?iso-8859-1?Q?hDYL0PRVjGNxQMExomnKGLl820g8k29O6WStmYsi9ElwMbl0PZtwEir2iQ?=
 =?iso-8859-1?Q?/DgYILUXHRUbsfdSPl9w32nSGbqE/vz1XH/Sxfm5MNRbwRFErGFD1vO5a7?=
 =?iso-8859-1?Q?VLVi0BJ8/eWDtv0wQVlHOm+4xHxcK7hAS/hyW0JF+hwPe/EPztRrBa2yO8?=
 =?iso-8859-1?Q?7KdV8CwN2kcLbNYPqCDQR8S3F5785RjTcp5GIeZwftLnLvvKkUGYs0slsj?=
 =?iso-8859-1?Q?JqJaLILVpJijHifD2Mr/PDDlZmHg9B6bBOvxcb9Cbxq+eXo0OLHf1He9gJ?=
 =?iso-8859-1?Q?GjbDk0VQ7U7Wmr56pjAQb5OC0mld92cF8SsGF8qlVwLC2xeXUWO3DgWEkv?=
 =?iso-8859-1?Q?4FNR6N7nSd3RO2qFXnrxx7Hf4zrs8r5KUmMsv8JmBm+DxARpRwtLkXjGBz?=
 =?iso-8859-1?Q?/IQxEgoKaB9kG9r1JXHqgHTOgso+BnWTiuTdXqvX6l/m74hCbH9m0G0yls?=
 =?iso-8859-1?Q?cYzSWl2aX5kDIfDZP8EqcuTBeSNMal9ydmLGS6auwhiuY33VWM7gaND72R?=
 =?iso-8859-1?Q?Hp5DkeZyfPube9Cd/JW41J94zyL/Ib5/pgU9b2Dc55c9koKa9xsMYcrCK7?=
 =?iso-8859-1?Q?dBdFITHA4XDSQ/+gVuzG7wj+LW8ufh84nrGJKFOoAbSVmL3DNakjvngcvG?=
 =?iso-8859-1?Q?VYgIvOQxBl1Ph5HYDMwaipCl6E/3eXfv3Rv1eaTiEg0YYad8Ew+uUAkYii?=
 =?iso-8859-1?Q?j6VNYGCud4B+Yv8u9xVovkRxAae9MerApVWvEfBhEnXqVsLFwo+yN8oR6k?=
 =?iso-8859-1?Q?awTUUzggIkQghxXtmt1hCEUqireWVJY1lqjkHSlizNDpXvIcpXkEZKfZLq?=
 =?iso-8859-1?Q?kzBUC6BKBgsgctTi1z5VspoIAE2xrLURYCjZ3WATY3HdPYifAA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR11MB7185.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(7416014)(1800799024)(921020)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?iUAIxKIS+NnS7R8Ckt7nIg4u09Qq9FUvMww7SpeSimd0kuwSLtrTKEieFr?=
 =?iso-8859-1?Q?he9n1FP9hKfB2BQLu79Hp7lkJPrJQlj0w1w6BcCJA+vpFBMCY9q14tqNHj?=
 =?iso-8859-1?Q?PXLNVe+Z20PhNZA0XV0WgbUb55SohAzlbd269FuxjkajaVDBi6CX4EgUI0?=
 =?iso-8859-1?Q?haIlZR+jPBi0eTQQsAOGvTr1QCqh53hF7CVOwMYAjFcJgGca8+o6UssmkD?=
 =?iso-8859-1?Q?YAlrq/Vc1dt6BldCr7Pzd1qlvuHqx64R2poKMXoZf7DGP3lMV83KpcnhBW?=
 =?iso-8859-1?Q?pmjjIchL/xxt5He+TWsb8g5Th1wMThN0UToib2lHZaIPQ2CsJr8s+HQkrf?=
 =?iso-8859-1?Q?/SQlQm7PBcZE5REGtZgbDQ81F5vgHBcdwCx7xthN+yIO28OkR+1ftchgJf?=
 =?iso-8859-1?Q?5gAiZQr9ZyXVAVMkGA6ntiU2VSNGjb6YG2U3A1ROsSv/GmCfXcPZBYXPqx?=
 =?iso-8859-1?Q?OJ40bwuoqKDLmbGZIRPH8q+O7QR+sMgoV+XkkmI2OIAswJLLwz0QC90z3V?=
 =?iso-8859-1?Q?maAVuuKi8xVO4q7w9LL2oRmARnjpGU7Hquy+spjacPnw2I8/97wfSFmW82?=
 =?iso-8859-1?Q?JpJSB8t96F8MwISU29kL0ASgZHD+0cujlOjaHtF8trpO9YjyQJvIs+aMhC?=
 =?iso-8859-1?Q?ZZCdH4+xs9QmIRdmdv6D+wGy227m1PjTEEoxtDe0qlm5BjSmee3OKV3I2m?=
 =?iso-8859-1?Q?91j1+blrJaga0UpBbZ0NiIKtKCmcUHygAZlgB9YjHKnYaEMKcFdAI2VOzU?=
 =?iso-8859-1?Q?TYrr/NcTT2KShRjjNxutIK6tkYT7H4RHhJnV0t32VGaQFAhsPncjSyHRYo?=
 =?iso-8859-1?Q?Ou47Oe9ORra3SSQcNIXjA8sbATpzEnPoiotR7EhBm+mYvbL0TxKb86THSF?=
 =?iso-8859-1?Q?Qe7AZ14DD5MlO2rUp8dPXrxGZENb+r+NWnB4L35VetRTXCxc3hmGf01MK0?=
 =?iso-8859-1?Q?IryzvXfdzx15znHVk8pAKRApBpyWtB9DwBRZu+yP341nAx63X5+hkZLMiA?=
 =?iso-8859-1?Q?jbbFzoLH7Wr0QyTXCSNHPzAv6YpAignU4IcQfhKW9BidTm6t9Yjvkdyc9G?=
 =?iso-8859-1?Q?khLNimSu1j7A/nh08I7JPM14iVzWA/dkCMaNE/XKT6O4wtOxRNkvaagKRH?=
 =?iso-8859-1?Q?qeBXX1LN8JVt000EwoEdnWmxsm/bO4qKhVQEXnBK8ugPaucUOi2iHGqyX9?=
 =?iso-8859-1?Q?+3z9AxD+kiVhwrHgEr4m2bkIYbTceeRhHOaBD3ZbaK/G2m8+eR7dnFjS9M?=
 =?iso-8859-1?Q?7bu2LZF13SjRiyLjOhduRNOOU6jyhruTYXyEz/YArUwYgiWZJYbvq1Lk8j?=
 =?iso-8859-1?Q?JN38bdqyv/F98GWb3txw50rpQi10jJEA4wDN5Km8Ig7DE6f8KNJUpoQyn5?=
 =?iso-8859-1?Q?tjpgdAjAHjsCnfzyEAtm7Y7s5c+7yUOyXSwx9CeBdCKsHtbEypEIqSE4jg?=
 =?iso-8859-1?Q?vv3vzUBHZX7MjGqALTY5rKjyaIOXhGCwXgfKaeGH6jX9zyV6D7539fnTwz?=
 =?iso-8859-1?Q?YUuLsm+WcAejwOjqed7TtA3/pPo1+nnMykfkp/8UrHwdspSX3hYjMSxmTf?=
 =?iso-8859-1?Q?M49tZzLOneOadSiP3ht9nZUxJJds5/0jW+LqHSEyjFptJfRDn9GL9F27QD?=
 =?iso-8859-1?Q?T/n2nCG39vPvXGx/+lHlM+GoLZJpcN82Pw?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30260015-46a6-4eda-0516-08de177bf67c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2025 06:17:11.6672
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ki1SUlRmx0iJPZ+j//J/9cYM42lkhVd9uLi79XhoS9mjbbtAtYTCgcc9vHo50SCetzJTG3sxE2d7EMAInlnDYB4Klzs3GLQUdAsBJuWr6r0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6518
X-OriginatorOrg: intel.com
X-Spamd-Bar: -------
X-MailFrom: vivek.kasireddy@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: E2G454EUMN6VMMPHVNUVJYQ5CYP32RID
X-Message-ID-Hash: E2G454EUMN6VMMPHVNUVJYQ5CYP32RID
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:34 +0000
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 0/8] dma-buf: Add support for mapping dmabufs via interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E2G454EUMN6VMMPHVNUVJYQ5CYP32RID/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[4040];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,IA0PR11MB7185.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.kasireddy@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.766];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4A0C540FDC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Jason,

> Subject: Re: [RFC v2 0/8] dma-buf: Add support for mapping dmabufs via
> interconnects
> 
> On Sun, Oct 26, 2025 at 09:44:12PM -0700, Vivek Kasireddy wrote:
> > In a typical dma-buf use case, a dmabuf exporter makes its buffer
> > buffer available to an importer by mapping it using DMA APIs
> > such as dma_map_sgtable() or dma_map_resource(). However, this
> > is not desirable in some cases where the exporter and importer
> > are directly connected via a physical or virtual link (or
> > interconnect) and the importer can access the buffer without
> > having it DMA mapped.
> 
> I think my explanation was not so clear, I spent a few hours and typed
> in what I was thinking about here:
> 
> https://github.com/jgunthorpe/linux/commits/dmabuf_map_type
> 
> I didn't type in the last patch for iommufd side, hopefully it is
> clear enough. Adding iov should follow the pattern of the "physical
> address list" patch.
> 
> I think the use of EXPORT_SYMBOL_FOR_MODULES() to lock down the
> physical addres list mapping type to iommufd is clever and I'm hoping
> addresses Chrsitian's concerns about abuse.
> 
> Single GPU drivers can easilly declare their own mapping type for
> their own private interconnect without needing to change the core
> code.
> 
> This seems to be fairly straightforward and reasonably type safe..
> 
> What do you think?
It mostly looks OK to me but there are a few things that I want to discuss,
after briefly looking at the patches in your branch:
- I am wondering what is the benefit of the SGT compatibility stuff especially
when Christian suggested that he'd like to see SGT usage gone from dma-buf
eventually. Also, if matching fails, IMO, indicating that to the importer (allow_ic)
and having both exporter/importer fallback to the current legacy mechanism
would be simpler than the SGT compatibility stuff.

- Also, I thought PCIe P2P (along with SGT) use-cases are already well handled
by the existing map_dma_buf() and other interfaces. So, it might be confusing
if the newer interfaces also provide a mechanism to handle P2P although a
bit differently. I might be missing something here but shouldn't the existing
allow_peer2peer and other related stuff be left alone?

- You are also adding custom attach/detach ops for each mapping_type. I think
it makes sense to reuse existing attach/detach ops if possible and initiate the
matching process from there, at-least initially.

- Looks like your design doesn't call for a dma_buf_map_interconnect() or other
similar helpers provided by dma-buf core that the importers can use. Is that
because the return type would not be known to the core?

- And, just to confirm, with your design if I want to add a new interconnect/
mapping_type (not just IOV but in general), all that is needed is to provide custom
attach/detach, match ops and one or more ops to map/unmap the address list
right? Does this mean that the role of dma-buf core would be limited to just
match and the exporters are expected to do most of the heavy lifting and
checking for stuff like dynamic importers, resv lock held, etc?

Thanks,
Vivek

> 
> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
