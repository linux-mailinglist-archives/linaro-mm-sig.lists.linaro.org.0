Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PrFxOwTDK2pLEgQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 10:27:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 699A4677D05
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 10:27:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=intel.com header.s=Intel header.b=a4zBHTrj;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6CB6840A69
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 08:27:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	by lists.linaro.org (Postfix) with ESMTPS id 6E6BF3F7F9
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 08:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781252856; x=1812788856;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Scb76004SgJJMbwX89xSDCDis8uU4cknL3wBhWI/W5M=;
  b=a4zBHTrj7dqln/vG5jNDlJI7/4M1sB+67tRjdrG2vZHHqzFqcTRBVdXg
   fwAJICl3+gOz/9IwkXC9xdm8EK+uXpDxfSs3JZroogYLKkrqIuYVHTC8r
   bPgW+5CqfqhxYSyOyE7vFvKpXHcdPBgxPTYFei1AbtDTeylWH6TkB4g7u
   97xa8Z1Ng5haoYAnTpxLxcNrWodxCO/eCpEfXudwPN0AR+0MKlwJPLKoX
   t13rqBRvfkRZk1MdXdgmhLSWznvobLBPmXLdiXUumowSCEle2mMKsCgt1
   oSFr9rzj0+E9RRERJsokJOelG6eHQt2I2MP/+Tb78fgyYzErShrBuusrC
   g==;
X-CSE-ConnectionGUID: BHhBPd+3TX202JF/qsJqPg==
X-CSE-MsgGUID: zS2gLIPEQ3+iiyJ1/nxnPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82143466"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600";
   d="scan'208";a="82143466"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2026 01:27:35 -0700
X-CSE-ConnectionGUID: TSnLhAI1SyO6OqZPOxuRbA==
X-CSE-MsgGUID: 1zCa3usYQGOYnPHyz7iWJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600";
   d="scan'208";a="250692369"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2026 01:27:35 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 01:27:34 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 01:27:34 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.34) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 01:27:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PR5EwXp6DFixvyeSBAJFx413fLSvORFsU6VsGj35gy80P7UZwEG+qSnkj0UdWsr77WXrAutW6AV63HKLLDEYc22ez5oN5uNdYMlwEIlHEap/FycvTtzhdjzE808BRmtskT/KEUQTP8oip2U+oInNStuFstEEJSgIK1zVt0HomCJsScA2xoQuKXCFrKNOX/UI7zOtyGuLGf5tBOYwHiAuv4Lc+eyhuZHdn3HSQDhitU3ZJMSl1RITUzS7TGw6GrjX5uvNnlSjXXWdCx+hgWMBXnxK7M4c9UT9Zlj0nDXP0kPk9k1XeEo8e1MxkUHXeoCvBvKlVSWgtLAwOeoF8L+A4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ko0CuUljGWKcTaBRoa59PGwmcyv/SvANLh+u6jPTiKw=;
 b=hsDdzNWuowsFbdd0DEUzePWkCGhjIQcGma/9f55nEsu/fJUdDS397/9x12NrKsbXP399r1dykT8meua2LcnEq6CZDk8E90+3wmlJ2ShVh84LSVkNb/gxR99eBzH6GSKLbd0u4EqC+ui8iVSBxMa8dH1erpeRfL8LeROmcw2TKPcRU26RBevGWP+e5CnUlcuEy/t8ePmtYa6JUvnBonbiNCqA3B9Wpgo+1aVPiqb2qTAznYhM3UnaV0Oo2simw0QENoYC3/g4iZ+al5jHcleQMbSKa/dXJOLzoCCu0Te2MI9tx7jqu5V7qBqQTZ6txAxXNQ5wAi/rt7Tedevp42wg9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3690.namprd11.prod.outlook.com (2603:10b6:5:13d::32)
 by DM4PR11MB8131.namprd11.prod.outlook.com (2603:10b6:8:190::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Fri, 12 Jun
 2026 08:27:31 +0000
Received: from DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b]) by DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b%4]) with mapi id 15.21.0113.013; Fri, 12 Jun 2026
 08:27:30 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Matt Evans <matt@ozlabs.org>, Alex Williamson <alex@shazbot.org>, "Leon
 Romanovsky" <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro
	<amastro@fb.com>, =?iso-8859-1?Q?Christian_K=F6nig?=
	<christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, "Logan
 Gunthorpe" <logang@deltatee.com>
Thread-Topic: [PATCH v3 0/9] vfio/pci: Add mmap() for DMABUFs
Thread-Index: AQHc+PAJB2FDg3e4hU+WfDDhtpmx/7Y6l0AA
Date: Fri, 12 Jun 2026 08:27:30 +0000
Message-ID: <DM6PR11MB3690A65EA9D8A9B77AF93E198C182@DM6PR11MB3690.namprd11.prod.outlook.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
In-Reply-To: <20260610154327.37758-1-matt@ozlabs.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3690:EE_|DM4PR11MB8131:EE_
x-ms-office365-filtering-correlation-id: 5cff3f8f-030b-4525-2ec3-08dec85c7205
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|23010399003|1800799024|376014|7416014|18002099003|22082099003|38070700021|56012099006|11063799006;
x-microsoft-antispam-message-info: NlGyh0URd4H6dIh3TENlsWwGCB0iC0NjN32prAl5HAJzf3MeIwxnLP3Q25XlDTbo/itC7EYwRO2Qn0/drqFQ7FtFdmXrRQtfc23uCO1MvJPmXKyMV9BZWBW9fLMOyw2D4X0WZbO2QesM7GB3p45T6aNdTVNSFbrU1j1crcJpJaPqFWg8xQpWZ2E6xa0x4LqU7wAKtJy4aKalJF9cK/svar45f2crdVOpu8+1hULcElVnJCDNbf6URYearByIVcy9LGemYwx7T4NSn2c3PeUt6T/CoJ7h3IWeMuM11Syo8SidOnTf6nfiRI5ks9gI4UlvITf4WWSIpqaCMUSyABYhjQih7I2YFhL/a4egauUQ3j8mzx5qQ2EztfP3PAJSUDcnvZnTr2kB5+nsN5pFfXknoGC1GTOJphDRxmqcOpG3hZ4F3dEnavgLxTdWS6BcVRRMuzqMiZLoXjbVurBxxeNv7IXa/M1fdsg11MBN7M+LqNLlq1Qpz19G5IS3x9eyz+QsdkX5lBO5p+DDfPmX0pFCI2HOoitOCxdIHzRR70pskdeJ+2Wv3RTKlNjgPDYbXErP45jvJp0kfX7NUGpEhEzY7Q/SGTr3EXjbp8bFu9bt2sRRQ+gkpMxXNxgx7y5cjkLX2u5NvY4RZI9j2CN2R7Wy/UMiVyU1eSf2/J+HriVLvDddMdoTjxnBViOT7EYmasfjGsUJl7xD9cPKowsy8PULWIU7Yax+7zuL3ZeABhK1MhNjMH6P+A2hu+YOwNVPRLAT
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3690.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(7416014)(18002099003)(22082099003)(38070700021)(56012099006)(11063799006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wdBCHg/kZqLf6d+yeIRt6dy+WKRjGPDhTGLWjhZN4BuinO32/w01JhwWfz?=
 =?iso-8859-1?Q?61O8a0UZMYQOmaiJoJjBzN3Xss9cX44aAXIyV6Qfb6huOPSlSEbjer7IQx?=
 =?iso-8859-1?Q?U/IeHiwO1Azb8esFuYrVBoeagQLW4B9zAHmxaeWcu+w+5cU5PcFyK9h/Dv?=
 =?iso-8859-1?Q?2FZFFNGvDuh8vSBf+936++lmobFyBcVUDIRKQXlkchN9rb8+LG1ZKdhE/G?=
 =?iso-8859-1?Q?12TzELjWox4/DQhzmJJbLk4LiedZ/rFKl8mnS4R+SjaoS4QILnKGaABCO1?=
 =?iso-8859-1?Q?zBu6xlwaMMfqB+x2dA9e0LIySm0wEqpRNPvqUStaFGDaJ8n5YWXaZ5So6D?=
 =?iso-8859-1?Q?jsrKMu+1kkdknVWbsRgsX8wezL1+SWmM7YKCIavhgUnJXn6kGsuQR9KDgc?=
 =?iso-8859-1?Q?Y61Ub2ZB4Ij5f6nx4p/jo1wK1ONcIbhae59kdmyvkxdtycVc2j8GfjXibH?=
 =?iso-8859-1?Q?wj7hNVySjNnBenXCLC3XWZzWlFOBd1rxDoLDTKS7aas6amqcpaFH8hQGhV?=
 =?iso-8859-1?Q?zv0D+OmKLYh4vVhT7IBAVfEIYG8djltsvAhQ4XNAAY4up1lOsnSdZPp2LO?=
 =?iso-8859-1?Q?NJpl3JKJo0n3DZA0CpO604XawrTWClg032vt4ihIOJhl2LxHuRFYV2zaea?=
 =?iso-8859-1?Q?1U3Y/lnobrMXFXRjxybqrY4KhoAy8kW/85Y6gsvKm3KjUQBhs0X2OAdRLY?=
 =?iso-8859-1?Q?4nUh0xKRRv2NLHblxqI4heZRjbET/sEO86+P6kK/9k7bKMVJ8wz61rvq66?=
 =?iso-8859-1?Q?Ev3En2GNI+w1/8ApOn0DOC09mbzSpTi41NEjZ+Tr+EeRnet4rK2/CnlW4k?=
 =?iso-8859-1?Q?9EQSlABeZ3XMjsc3toTiYNEelodd901+RcvQ1I5vohhqS9iHcn0fWt1KYH?=
 =?iso-8859-1?Q?qEWSC1737Cm9d5hvH+GcA7VVtJRJubS5WlNmkmwqO+II8rZm7i9tuCsO+D?=
 =?iso-8859-1?Q?GNTu+GrlcqLpiYJBMFex+xD0A+ytBJBGyNn3zEaubiXGGxrdNbjZyAPaOO?=
 =?iso-8859-1?Q?0ghr3x3DyywWlr/tC1DQ+cN/glbuu2pqwTFXLu5nrvKfY5sFf+ayCww05n?=
 =?iso-8859-1?Q?DaapjVUaUM3ru3l2ceUug1L3PZjkGzDfnVe7PryrXt2LJWKJQfIeBYQzNV?=
 =?iso-8859-1?Q?98ZHVmaLvcFSWgK+zUr9JRJTRtdin2DB7wSSIQD/O4PEKmEmE0ZCEmhLaF?=
 =?iso-8859-1?Q?f/NjT/d44ZlfgAzwuPadf3BO/4D2/ztSvUkR9lPD4kWsslDaUmAUxgwqat?=
 =?iso-8859-1?Q?4hryjJ19j2mPQWZXw/njyMjOgLn6nBVPjrZ/uSgvn4Zd0uJ7qLspZ3aMCk?=
 =?iso-8859-1?Q?TjjKsE9Suvn4liuWtCo3RVdTk5FCyM2iqEtp8PJCBU97MXCqoe9rUqXBua?=
 =?iso-8859-1?Q?pg35X60V2Eih8pbypUPzdBRUAaTCR37i2i6MF9QMmtff6NVxANhZ60XAV0?=
 =?iso-8859-1?Q?qGjHw0Rza4tyScbJaFOz+vQoeo0BlVjAubFjEt5ttGCPGq2zyc1GsVsmvM?=
 =?iso-8859-1?Q?Huagl2ODsXN5omhu2mjll/hktNbINBDzi3UAHJLwJfuCQVrb81EFsB4T/F?=
 =?iso-8859-1?Q?USLaz7Vf+2X3gI3aiiEmNfz2xxeZraWmZTCVhifxJC530MUsoZJFHdT+gb?=
 =?iso-8859-1?Q?pdkOUASVaQQbwvmaKbbPCsefoRv/DazLnW2f3GsJjji+T1elFm70dv1rdx?=
 =?iso-8859-1?Q?AfPSxVYAmKhgAtodwBKzJ9V6rm+fJPW60xDgeT4clgrpmbEQ/JLdUS4Gfc?=
 =?iso-8859-1?Q?wNMnsPFMs4YsX5i7LXJ6yDT22d8ikiyTrCrkEGFSvRHsvK?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lbX5x1Lp50hqgvYCnt3GFy0N+8gY0W857gBkICKa0gIZqdkw9MWucCHQ3JmD2Fe0XSNxYOUOBWoyUjNuhExvZ+nrxx/00bTx5MxnSQNvmDr13P9vbRCT3xgdui5b3mkCDc+OtjoOBnOak19zIkot0/WIaDtL6WGEU34+0vkeqfq68Uz1IB+3Wf+tuwo3PZXBW5+l8InXybBypEy6uQcoEsHjpcrUbLYGvPwGlICjHxCbACSsATlzifOozDdYsZULxYpUkGpHNpHLOJFCjhm2PSCGYkqBRFWzmJ7zpXTQf1RHTcFSRr/7Rptx1BHKH5J7H787tcxCrnI1Zqdkqbl3BA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cff3f8f-030b-4525-2ec3-08dec85c7205
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2026 08:27:30.8241
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oc5DbL8m/CcrmFFTCEO81uIIfKq67+lj7UuarbmNcvInxV2HP2Y0XTRTxF0dUu/VYmmJioMzD4Gd/hrk9kPkxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8131
X-OriginatorOrg: intel.com
X-Spamd-Bar: ---------
Message-ID-Hash: 6MX4FTQ3OCLWSMBGI3H7H3KGBKUZDNGA
X-Message-ID-Hash: 6MX4FTQ3OCLWSMBGI3H7H3KGBKUZDNGA
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/9] vfio/pci: Add mmap() for DMABUFs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MX4FTQ3OCLWSMBGI3H7H3KGBKUZDNGA/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp];
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
X-Rspamd-Queue-Id: 699A4677D05

> From: Matt Evans <matt@ozlabs.org>
> Sent: Wednesday, June 10, 2026 11:43 PM
>
[...]
> 
>  vfio/pci: Support mmap() of a VFIO DMABUF
> 
>    Adds mmap() for a DMABUF fd exported from vfio-pci.
> 
>    It was a goal to keep the VFIO device fd lifetime behaviour
>    unchanged with respect to the DMABUFs.  An application can close
>    all device fds, and this will revoke/clean up all DMABUFs; no
>    mappings or other access can be performed now.  When enabling
>    mmap() of the DMABUFs, this means access through the VMA is also
>    revoked.  This complicates the fault handler because whilst the
>    DMABUF exists, it has no guarantee that the corresponding VFIO
>    device is still alive.  Adds synchronisation ensuring the vdev is
>    available before vdev->memory_lock is touched; this holds the
>    device registration so that even if the buffer has been cleaned up,
>    vdev hasn't been freed and so the lock can be safely taken.
> 
>    This commit makes VFIO_PCI_CORE depend on PCI_P2PDMA_CORE
> (commit
>    1) to bring in (only) the P2PDMA provider code.

the last sentence is stale as the dependency is now added in patch4.

> 
> End
> ===
> 
> This is based on VFIO next (e.g. at b9285405c5f6).
> 

Sashiko failed to apply this series. Is there dependent work in vfio-next?

otherwise getting a Sashiko review is helpful here.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
