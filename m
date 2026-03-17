Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEYAJd9g5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C99E431119
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DD273F7A4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:22:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	by lists.linaro.org (Postfix) with ESMTPS id 80AC93F75D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 05:41:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="l24Q3/Vo";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of vivek.kasireddy@intel.com designates 198.175.65.13 as permitted sender) smtp.mailfrom=vivek.kasireddy@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773726083; x=1805262083;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=fGO/XY7OOmk6eLUAV8n1mTEYDdnfhOeDf4EpGRPhKe8=;
  b=l24Q3/VoMo/+ahan5eszFX9SHJY7WAA2npNRpD6qxefR2Ju3XxS2y45L
   bsGsQByjgCBzpswtup/O0+mp6FkbeZU6HDOcGyJdR0pkxTQpHbWO7m6w7
   eXA91LeU0TYfJOFCw6ftoYNgOG5Ih2ytZw+8px5NPxRs13Ujml6dsijmL
   je1btwmIuHZ96iQUtoLWzt2oInGyqq2eOLOyyvp8hxz2GAIlu9PafiM9z
   XpOwIZHktsEci/Ryskk5in7FTan5vGiXct2/9BYmHClOhL5JbbLAYHwIR
   R43b2EkjOdAM6+2UUwaoolvyHEUnnGl/b2SMdifP9+Kvwol0jKCC/1BNg
   g==;
X-CSE-ConnectionGUID: NV63OHIKRq+kcmT6yTVVWw==
X-CSE-MsgGUID: vTZ+ZU7KTN6Rl2xa3dOgzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="85831094"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000";
   d="scan'208";a="85831094"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 22:40:48 -0700
X-CSE-ConnectionGUID: fYyrnuLPQa6wEgNrhOAmfA==
X-CSE-MsgGUID: c/u+DyRSR4+8bdldNhLmUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000";
   d="scan'208";a="227123893"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 22:40:48 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 22:40:47 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 22:40:47 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.6) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 22:40:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RxKYMoglDlt0ZoLXQ511/5aYg0/s1Nh0lU/aWnplcsH3nG3MAtMarlxt1L3v8vRQl+rlmX9UqRRK2Pr2BL8HvhEgnOhQqAy/0t0q02ytI19AHZhRPy2EqGfARaZGXRPpuxJKYaI1KVpVWLKs/5BGCT8BFEJ35Ke3prcB0t/X67SWaHj1awaFblpNjAw61hT1/fzRuXc0wGeavSVzCIx1QNVzkeVfdLKXLlMeqC2Xgj6TF9tNE37FljPYAJz+XAv9vbmJv+0xHiQlvCK4eqLbckhkQc8vYfnq+y5AT5MCo5zcP9PbGSH6OK8ZmMNKHJaz7F8WHT/1dqPvs2kWhVZxHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g/xXg5kerkdqMCnKDjEvMoEaabcAwXfgjbYTzT55qLo=;
 b=XBRm3vRWTzk/6JRY9kC36/YtciYdsZjsjnoqqwQxqh0s+55s4/MJV1WhhnGrDMxk8m0nJHuV/qaOBVnI2/q0zWwvkkDqktwKn4O5KTMJKnVzICCaGMunK5hxe2YW+25cvPqDkLUd2Mqj3de9b4k2yNwIfdu29tvXONx8+Cbaaxsm+bMEnRumWqO5s7F7WgCT19gnogKMTZSZfRzIh9rp2T7gqhm1bfXJG+HcJPqi9OWdL9NnmcGY+dOKxwtq8UPephHk8it2Re3C9Jkcywkf0rYDS9D/MN0l2jYDVtcw2gyN6V/Dee1xgY5Ipw1g2uVOA3iRIqBj0WxEYoCtMdWDLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB7177.namprd11.prod.outlook.com (2603:10b6:610:153::8)
 by LV1PR11MB8842.namprd11.prod.outlook.com (2603:10b6:408:2b3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Tue, 17 Mar
 2026 05:40:42 +0000
Received: from CH3PR11MB7177.namprd11.prod.outlook.com
 ([fe80::b997:e226:4979:c035]) by CH3PR11MB7177.namprd11.prod.outlook.com
 ([fe80::b997:e226:4979:c035%5]) with mapi id 15.20.9723.016; Tue, 17 Mar 2026
 05:40:42 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, "kraxel@redhat.com"
	<kraxel@redhat.com>
Thread-Topic: [PATCH] udmabuf: fix DMA direction mismatch in release_udmabuf()
Thread-Index: AQHctAo67aqV68mpy0SJuNvlJ8/kZLWyNgwg
Date: Tue, 17 Mar 2026 05:40:42 +0000
Message-ID: <CH3PR11MB7177D5538C726029D80BA6CEF841A@CH3PR11MB7177.namprd11.prod.outlook.com>
References: <20260314232722.15555-1-mikhail.v.gavrilov@gmail.com>
In-Reply-To: <20260314232722.15555-1-mikhail.v.gavrilov@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB7177:EE_|LV1PR11MB8842:EE_
x-ms-office365-filtering-correlation-id: ad2f13e6-930e-4fb1-60ae-08de83e7ba96
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: Mxg4+5Smd21FJM9jxqGUk59+jplAR6qRohIrlBbrP3BtH6JHjPFUJTM7bVh0Oxwmbdij/kXLuI1PfTWVlmt/21N/jYBpUpAputxcVRapHKA/xoJy0TFd/NBG/In15VwW6Z5YPgq7yn2sdILafdYQ73WG5LV0zfv+JUnHpCRNN6TRoVW1oiOkmYgsCjlBowmFeGkgIARnmeIer3FOcoEHQa10iBhTWBa5sQodwNMqrHRFEA4N2yV5DcgzhGqaks4AlsxWxxWsNYOoAsFXrFpQR8dS/TPj29HpjWekT8uCUbWbxheF1eFPTjbarlpElWluMhLFiKom6p1ITgWHm6K55ckHHW+ctyICTQvMbXXrAfOy+2XMLrh4TFYVsb0hyK2oi/ltGLazbmapdwDtT3M3roFOKdkVf53RJRu7Y4VgAHDj1GNHGVMNrjLi+GC3bn1qbceGZMPd9UOmtiRwTAN/I/NTYbnMq+XKKJ4iynY3iyZePHRO0JRiamgwNyvafoGekGlO6wpLfqycV36hTowknvujvCvm2KVkRxeXNm/S3+c75ynZB0Qlz548MfIqO2C1vTxUahAu25tIjAjnGqvnUE6RGALbEYAA+hl5mVrd0/XCFHFi3de6sKxzHwYKZqq6BeVri3eKnxabO5Y1wZRNA0JRsGeMZg3uEyQjLy0P8oUhbfyONE3amFMXjwEjUhJNdsnBkrcNp4fJKbEY4+7TqoNNpZ92BDJjQe6QFnyEBxnfVXHntAeQaD9S5cEndmuOKf6rftklLB2YlQhRLSzkCeEq9eHFsGF0biqcPrKoJoQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB7177.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?w9vds569tcKfJ+1ea3Oun3Z6I7CXqLQSjvWnrBIIjVoL/7n6+1CrKKyGIX/U?=
 =?us-ascii?Q?zYpltAp4qBO7yUOiCvYnXx279k5McVscSYhubW20P7VllrTOisX9S93JWb4i?=
 =?us-ascii?Q?23xNZ2/BmABfXKtOOevZkuSYcO2oCfkTm9zfnVSD6JbTFO4XqHq+172j3uRI?=
 =?us-ascii?Q?qm2cTiu6MQBkJOmPwzva7X0LEwaptzqADDCcbbp88e6KaYKN6jykbgUfFkpx?=
 =?us-ascii?Q?/mUjLeFAeNrSYfYeGVd+VzkuKEhnzQl7rGDWajhohccs3uddXtBMvul7dk2q?=
 =?us-ascii?Q?O6CJ+7TgZaIAkjQaTcA87v5eRvf+PyesYNdJCarvGpSs044I8hy0jZzhlyNm?=
 =?us-ascii?Q?AyOaFYBTHrFRtSFOa5YrhPvAIHxpSJ/RwK72KMLFtTLLvkUltWjg/iU/Vnjd?=
 =?us-ascii?Q?xuBE2mOdRckXckPjbSDXxFQ1Vgf1bsSDIdO62K6PLyIbYHoxohk0RO+SF1M6?=
 =?us-ascii?Q?RE/1zi3qMGR2FV9G74JZ/h8zmySeZBpAxHhkKmCvNBlKVhR5cQqUPllX+3DL?=
 =?us-ascii?Q?9OvKoQL9nEsohJb5MqOh3v8WQinMbLVDI3VrT6uZIZv8wADlsrSDqqYquJ4Z?=
 =?us-ascii?Q?62lHlj8r8m/pUiJAP6NILl7Rbj0e9e1uRJQkjKrrX9bIrjhBBc3gXcvycazU?=
 =?us-ascii?Q?y8Nue3CIdWHGZTdxZCS5J5wEIRuWDUxKT3ClC0v738S6hfqjXvz/tWx8rBVV?=
 =?us-ascii?Q?ArCKuVg+PLlp9vLoMZApvAwPgiwfXiuqfZzWF2ovPg3ud0Y2AAA0Fodgipv/?=
 =?us-ascii?Q?hXlOrZE9HVkkrIArXbAbf0DqBlZ+kkkFiwgvwquvm5gDLGNwdB2EdkJhG7cc?=
 =?us-ascii?Q?3GeKJaK88K5K3gQyr/7KCe7+1hu4yJt1+nw2xWjEKMXiybaVoRvOu8gsLWwN?=
 =?us-ascii?Q?BEvhIAsDlgsEAdSTzwycgQZ9QPGHD9bYA+mVf8fdoW23J2p9G7hjacrXW4GI?=
 =?us-ascii?Q?UrBtSv1Md9erdvYri3oX6o/ZsE75djKAO5f8K7b8t6yA1k6idnaXgKi47CgR?=
 =?us-ascii?Q?dtWhlyR4Q7MwP83oIf2syyCmLl/qHjz+M4jRghLj6HHc2KXTeHo+BY8vQy9W?=
 =?us-ascii?Q?JhrF+MphWHQ9DTcZjSxtPt95Hd6j7G1W5XCUAzDIgD6jzizqg2S5Okz5iX6R?=
 =?us-ascii?Q?BC74J6F8ZDlXaBBN/jB32c8fg9qo9oXHzTWqlV0Xka+jHXqNTNA9YppRNkSc?=
 =?us-ascii?Q?KqWRPuP5FVpYk8Zf2AVIkp4g5sf3EWyLUEkjmTRfUShLFJIAS1a6i5kEvZ0d?=
 =?us-ascii?Q?LbeePNjLq5zLnQev7+8n11U5U6J1R0/CUwdSR5jdHLzJVDQXVOP3PsVDTBjP?=
 =?us-ascii?Q?4kyPEgZ7DvMdsjtrr+E6bmftoKqoez3yyDW8951X46mb8b5AEModm3ou4V1C?=
 =?us-ascii?Q?SppoZ3Qq9dao5x/03BQPSrCdEcz7drvEQnEGhbRvxUA2V++nvJFYtkSsLNDw?=
 =?us-ascii?Q?hR3MoLSr0ZCf47oa2OcEqtmdQAcLrIcWhLYiiCBgx2Pr5oWeebZWCAqHirkN?=
 =?us-ascii?Q?Zqr9TDbYpJ4R798wkolJCbVCz9/t55h/i8GzTnNtj/eSogqoVxd1hbgkMTrr?=
 =?us-ascii?Q?3ItiX1Kdjex8EnBW2+OG2Ogz3m2g3UYfjlJRnDEtlIZwryKC8aLecRRClDGS?=
 =?us-ascii?Q?2YfX3lKHBDqlQ6G0CQc7Ni3MIJhAiWXiyjoPVg3mBn/IxCs5RghNXw4y1w/P?=
 =?us-ascii?Q?2l+S7OopqLJPDNfo6mdNYcGRLRm7g3gEZaRFVLS2htnNr2ePWKixbhoriG2f?=
 =?us-ascii?Q?vEzpAnXPZQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: t1cae1yk/BXjrGB8nwEwjtNwEYgM1d6VM/0Xv+8BuF52M9v17WJAk3ZI1T0bWJk1DcwhpBqerFaPZnnazhEUTuSHjcnyqnirSDtycxS43u63pOBurNGGeIcHeSZddtU1g/lGoFCCPK+/f7k9RUNeh1B59wgdqLN1Zn4LO/BJO+uvX2SddNlgMkk4SDmBMqCoZhWExgfNNMM9buxJk5UFsOUGfrZWtwFRuuYo0tAm2y2cmQ3XDQI1OPeEB/zW1uhon2SBz2WiCRiInKg5Yv6GkWhQdq5D9z7/6IQzV10tn2JgsR1T27whA6JfAH1aWmoLyIqTIiPAdSCGdAfn0+X1Ww==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad2f13e6-930e-4fb1-60ae-08de83e7ba96
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2026 05:40:42.4013
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2f6W9Fdz2LTlX/iiJrdIQ9B0e9X33VGBr5squW1Jhr2TNvgDEHoqg9SnIQhjUsplCrKwH+UrhIVu2eOGhoYOEWMCL5fs5VF/fXc7SgfYGuw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8842
X-OriginatorOrg: intel.com
X-Spamd-Bar: -----
X-MailFrom: vivek.kasireddy@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NR5Z6BZ3FAXY3XXBCIEQNRDJVWVSD24R
X-Message-ID-Hash: NR5Z6BZ3FAXY3XXBCIEQNRDJVWVSD24R
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:50 +0000
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: fix DMA direction mismatch in release_udmabuf()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NR5Z6BZ3FAXY3XXBCIEQNRDJVWVSD24R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[827];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,redhat.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email,linaro.org:email];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.862];
	FROM_NEQ_ENVFROM(0.00)[vivek.kasireddy@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2C99E431119
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH] udmabuf: fix DMA direction mismatch in
> release_udmabuf()
> 
> begin_cpu_udmabuf() maps the sg_table with the caller-provided
> direction
> (e.g., DMA_TO_DEVICE for a write-only sync), and caches it in ubuf->sg
> for reuse.  However, release_udmabuf() always unmaps this sg_table with
> a hardcoded DMA_BIDIRECTIONAL, regardless of the direction that was
> originally used for the mapping.
> 
> With CONFIG_DMA_API_DEBUG=y this produces:
> 
>   DMA-API: misc udmabuf: device driver frees DMA memory with different
>   direction [device address=0x000000044a123000] [size=4096 bytes]
>   [mapped with DMA_TO_DEVICE] [unmapped with
> DMA_BIDIRECTIONAL]
> 
> The issue was found during video playback when GStreamer performed a
> write-only DMA_BUF_IOCTL_SYNC on a udmabuf.  It can be reproduced
> with CONFIG_DMA_API_DEBUG=y by creating a udmabuf from a memfd,
> performing a write-only sync (DMA_BUF_SYNC_WRITE without
> DMA_BUF_SYNC_READ), and closing the file descriptor.
> 
> Fix this by storing the DMA direction used when the sg_table is first
> created in begin_cpu_udmabuf(), and passing that same direction to
> put_sg_table() in release_udmabuf().
> 
> Fixes: 284562e1f348 ("udmabuf: implement
> begin_cpu_access/end_cpu_access hooks")
> Cc: stable@vger.kernel.org
> Signed-off-by: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
> ---
>  drivers/dma-buf/udmabuf.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> index 94b8ecb892bb..d0836febefdd 100644
> --- a/drivers/dma-buf/udmabuf.c
> +++ b/drivers/dma-buf/udmabuf.c
> @@ -40,6 +40,7 @@ struct udmabuf {
>  	struct folio **pinned_folios;
> 
>  	struct sg_table *sg;
> +	enum dma_data_direction sg_dir;
>  	struct miscdevice *device;
>  	pgoff_t *offsets;
>  };
> @@ -235,7 +236,7 @@ static void release_udmabuf(struct dma_buf *buf)
>  	struct device *dev = ubuf->device->this_device;
> 
>  	if (ubuf->sg)
> -		put_sg_table(dev, ubuf->sg, DMA_BIDIRECTIONAL);
> +		put_sg_table(dev, ubuf->sg, ubuf->sg_dir);
> 
>  	deinit_udmabuf(ubuf);
>  	kfree(ubuf);
> @@ -253,6 +254,8 @@ static int begin_cpu_udmabuf(struct dma_buf
> *buf,
>  		if (IS_ERR(ubuf->sg)) {
>  			ret = PTR_ERR(ubuf->sg);
>  			ubuf->sg = NULL;
> +		} else {
> +			ubuf->sg_dir = direction;
Reviewed-by: Vivek Kasireddy <vivek.kasireddy@intel.com>

Thanks,
Vivek

>  		}
>  	} else {
>  		dma_sync_sgtable_for_cpu(dev, ubuf->sg, direction);
> --
> 2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
