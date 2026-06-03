Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mRJWNe5IKWp2TgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:22:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 526DB668B47
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:22:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=intel.com header.s=Intel header.b=bLL6zYZk;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69B2640A5D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:22:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	by lists.linaro.org (Postfix) with ESMTPS id 6182C3F4B6
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 07:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780470271; x=1812006271;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=1sUt5u0+PCjV++obu5+rjIdFMHlnJ041Vy4zlto2H8o=;
  b=bLL6zYZkvhLuT945Mn5Rqi2q927RjWseGUnU2KpL6Z4LjuVIqw1/vONs
   1GYUKURpvaM4p4rrsSyklc8g5UWg2iOMuwlQbpRXsZqs5rAlDWGY2RJnq
   hoASBCz5kXt5pV4GmghfxrSSJwsvSEpvWN2BYDOTWJn2dK2uLuAD9RTq9
   ls+4Rau/MZAeFxJSik+vxfO0ofdQKhzouhYrLZ2PnovXwSwMjGQcYItzO
   +9mqjKtqu/tSu8gfnqKdpbpoW/16K7fPgmsHLlDMwUKhF0u5GEOeai7qt
   DznliTa5rEH3Jscx0Up2FjIjBcDmZSD/s8E5lJD81/1C34D5lJre9LFxg
   Q==;
X-CSE-ConnectionGUID: 4/NjPy3HRP6fUvQM3ExUDQ==
X-CSE-MsgGUID: mIFDgymbQ/6qSY39F83wdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81008298"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600";
   d="scan'208";a="81008298"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2026 00:04:28 -0700
X-CSE-ConnectionGUID: dKLQYd0eT8evTA1BNsjyNg==
X-CSE-MsgGUID: gIAJGDTcSES4Q7BCpPqaUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600";
   d="scan'208";a="243087069"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2026 00:04:28 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 00:04:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 00:04:26 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.46) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 00:04:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UgO0SyhItPoKOFYWBNFl5krgXdKpsdbWkA1FZlY0r2ZMxPILqv6V3czbhLxaNkcuRUKHvEOmWy6N0a8UoFwctMjmruBAEy98H3+EjnmF3MxxkYcWwoFqPB+SOMWWd1DLQxqhmI/ufL/wH9xUf/2K7Oy6MirCv8U0RIwQCW8hn5IWRVc5r9b6JNvVqNNuUlLv9bjATKzDqMNffxzN0XCgTDt1SfrcEiAq8goKz7AnjSSX3Q3FvNut6t1Wh+lmQLlAmaaFMKT9EkgTBc4bxYI/1EPMAUajGSqBkxNWjxlbnFRHxoEf8s6Ln7YQ0NMl47kPlOlctwHxqHPr8eQJ220L1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1sUt5u0+PCjV++obu5+rjIdFMHlnJ041Vy4zlto2H8o=;
 b=Rxg3xU55KWXnJlDPxCZFztDW2T2rGdh1Pe6rn2kqsXQ221cfKud/gWsW27XqG7gq7TXIIpg3/BeBHAuXRmS4wCDbw/Zg9tf+FEeD69UrshkVP11co113ex0tyx/8m+DQF7nzKgAyFpRdlMY0/vVo9tTqVHgKYgAFSOYWyst+cJk6wbXd4pCHbyaIaDlmPY0dCGFm5xuyTFdL01Q1K729bBlhPJxmaaiGD2Emy19fJQrP3WC/GyG+7WQmW8WDUFdsunIf/+07cazW6m6+C9AA5HCWCQbvWlKgLBtiNtsDKVdPQMNJfKmJSlQrRLts9IYChUOz9FjRSikcnkzrg6UhYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3690.namprd11.prod.outlook.com (2603:10b6:5:13d::32)
 by SN7PR11MB6726.namprd11.prod.outlook.com (2603:10b6:806:266::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 07:04:11 +0000
Received: from DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b]) by DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b%4]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 07:04:11 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "David, Hu" <xuehaohu@google.com>, Sumit Semwal <sumit.semwal@linaro.org>,
	=?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>
Thread-Topic: [PATCH v5] dma-buf: Fix silent overflow for phys vec to sgt
Thread-Index: AQHc8gFVLsg23RDxwEGXFvwv1wqsKLYsaj7A
Date: Wed, 3 Jun 2026 07:04:10 +0000
Message-ID: <DM6PR11MB369065C9128545535BE343458C132@DM6PR11MB3690.namprd11.prod.outlook.com>
References: <20260601200012.3872274-1-xuehaohu@google.com>
In-Reply-To: <20260601200012.3872274-1-xuehaohu@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3690:EE_|SN7PR11MB6726:EE_
x-ms-office365-filtering-correlation-id: f24ce12b-6f72-404f-56e6-08dec13e5023
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024|38070700021|56012099006|18002099003|22082099003|11063799006|6133799003;
x-microsoft-antispam-message-info: Pbag1Msi2uBvDpCRMTvdMSP0Vs8bZUZ0LCe/eyoZeM7TouXDCBu5p0hDsFJ2UZHIs8/u2UtNOZ0K7Ps4fBKH9UsaHrbuZ+D/TU3cegrcXXyjDExqtWPVQCJLqBq1F2XMGmwxc1wghNtqSP72myezq/ueWFExPV38vsc5sv6WuiVIhkXMFIHx+zDHy7ntDJMEux+Tgw6cb0Tv9vFPBemaASICMmf/1XqmsMmxNOmcReO98AdP+UFubz5PSkERwt2GjJCP+dL6MMog3MoVfWtSMbfY5xPDhvUZAhKHvDYxtS+PVMhelCqgLKZPhf2DOQVh7GfNmOoQqoim803+9QWe11jrM39C6JkLZF8OQC98mTP59WuxwgeduX5ZEhbPbGSeMi28eHNQqI2fklZzqY7wozchrwojEzoW4kRor+ndraSH1PCu7Z7kp5ISrLfO+j7nY4inNXOhLo19HA/VdiCnoXoaXNbG3XMvDx8uAi2PkmRz66rETG5WZyV5+/4GDrQ6TAEXsXT24p4WKsx5sPf/W4sbBK5VF/LzcHlkzREcWU7MIOhMJeiwJrQtcdh1jIc+TWddAAWNLDtp3AdD5ppgIObri8gspyPj2a0fKYrijmW0Mqp7mYDcXgBcdUWaPg/ja2PDVWR/8ObceZFOy5TosYUctu7JduNBavX7OquYvQMAHghYW4xctxqFwRv8lbJgifgtIau8C+VWn9aEi5i8lbCcUKMOaVHJ1AypvsXPGOuSrcefjZaqaJCWNgrWZII5
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3690.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021)(56012099006)(18002099003)(22082099003)(11063799006)(6133799003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MzJTbnVtMzMxczFDU2czOXM0RFRia0hVZDdiZkUzU29NWVBwTTNnTVVveXVV?=
 =?utf-8?B?RGF1YWJkcnZ2RVV1dWx3R3RkYVVseHIrb2xNK1QwVXBrcnhBMGlOL1lkdkZl?=
 =?utf-8?B?WlNWbUlkYTRsbUVnNUV1OERNNk9zOElVcmN4UmRUSi9wVVREdGVsdUl5bjJP?=
 =?utf-8?B?dkdldGtwN3R2L0ZOZndWV3hMaEoxNUlLTndZUGFtTzU4d21sbGZUUHFGUm9U?=
 =?utf-8?B?T0ZKRHYxWkhPdTJmbEhHbGJIV0k4MDdJTjFaVnh4WjVSM0lhcWpQS2pZci95?=
 =?utf-8?B?ODU5NTd4eDRaamZOYmUxbmVoR0hKeTZzNk0xNzVUaFRXajZjQ1doK1dEUThL?=
 =?utf-8?B?N0ZwblhsRmxBbFJFZTN4dmZBNVpyLzY0V1lXZktmcUNTbU13QitpUHdRbnk1?=
 =?utf-8?B?YnpDTXYyaEZoemU5RjJaV3FmVzNJekFwVUFWdFFadFlNdlhaTlgwNzJPWE94?=
 =?utf-8?B?ZjZ1U0JZeURuNi9vUGNVRDlvMDJLL1JmbmdBS3VFYU94eUx1TDl4a1ZpZ3R3?=
 =?utf-8?B?MzArNUVQY1ZYMDI1VHV2ZzhRd2luV0hHYmlCWkozb2w3TnRFcUcrUFpZa04z?=
 =?utf-8?B?ckxNako5SG1qRWhwaXdtd1dZcGYvamdEMlljSEIyQk1ZRUpxL0ZxWXQwQUZ1?=
 =?utf-8?B?TFNjSm1ncGFqeHJJVEtNWC96eG0veXA3ZVUwV21QN1I0UmFIYUxnNjIrdmNq?=
 =?utf-8?B?SEV6U3d6M2hWbEkzR0k0Q21LYVd5dERLU3Y0d3RYdkZ0VXlsQzk2KzgrQ0xC?=
 =?utf-8?B?NmMyS2JjbWgvK21HV1FkSHQ3R2RRK1hFOGZNQTk5YXJudGs2RE9LTk5WcGV2?=
 =?utf-8?B?L2R1RnhYR2NMSm1pY1AxaFp5ZkNITUdnc3JDcWF1M2NlOGxxNUtsRlpSdW56?=
 =?utf-8?B?d0UrdWM0SDkwREpzQkJ4MlNOSnJPN1ErZ0dQaHRZK1dGeGdyY21oUk5EdDVU?=
 =?utf-8?B?V2JQMDhuRm1PeUFFV2p3SG1qeEhYcGdINWpickdUZjZHWGF0Z0hmS0lQZDM2?=
 =?utf-8?B?RTVCanNrWDdETFhwankyLy9ScXFYTmg3SzgwNWdKSzR6NDhiZkNhUDRpTHlo?=
 =?utf-8?B?Y0N4em9aeUJlV3FFZnczejNBOVBUMjVWWG5SVHlKSm1MWUZGSTl1M0pXaHp0?=
 =?utf-8?B?OHZMT1lrSldZTnRQSkZZbmRVYWV5MFpVMDdVNE1neXJMNlc4M2ZqVThtbGJn?=
 =?utf-8?B?RFRBYkxlZTkwSmFmdkpxMGpNbStwOG9lVlBldG9kVWYzTGlFQ0U2RlpqVlN0?=
 =?utf-8?B?ZW9UR2tXQlArSmprcmc5dGZtR0p5Z2hBRGJ3V2N6cE9EcGhoYUtZYVlqSEg4?=
 =?utf-8?B?aUlsS2JVSUVqOWk4MUszc1c4OUgwWmZmdjRSVHBnL1RYR3Z5TDVNQnNLeEZs?=
 =?utf-8?B?MEQvUGU5OGo3UHgrQ2pwR0hJN3RPZ1IvaTRBenpDOFZGTDlQRUQzOHVMQ0NJ?=
 =?utf-8?B?MG9DVVFMZEcwRlVLajRxWDRiRWkzdTlITFBPOHNsenU3NnFRaXZReFVUZFpK?=
 =?utf-8?B?NTFDZUY3MEtaUWRPeFNlbEx4eWtSMzJ1aUdyU1Nxd0dZMlg4d2pyM3FwMUFV?=
 =?utf-8?B?dURRZWx4OW80WHRaVFRBcENKOXNrMG1GN3Q2cTQ0VHlFcXMvTzdRYWlabStB?=
 =?utf-8?B?RnB2WE5TVktGd1ZEWGg2eURXZHducWdLWXpMeURQaGd0S0M5NE1BSU83cXdT?=
 =?utf-8?B?cUhRTXVycVFieU94QTI0aUJwUUFzbjFhcVppVTZqR01jQUxMaWh5U1VYY1ND?=
 =?utf-8?B?azBtMDNtUXNicTZ2WXByZFVpUmxzZnk4ZU1LeVp4UkY4UGo2ZGlMWmdGbnRj?=
 =?utf-8?B?YXUvNlBza3MrbTRwb1l5dXg0N1VxRFVvUDhOQjE1T2o2NVJnMzdYV0JkT1pz?=
 =?utf-8?B?K0VwMnVWV20xRm5hZVp0dUJ1Qm1LTHVTZnRKZEdrdzRXSmx2WGNFNmtjeVRG?=
 =?utf-8?B?ZE55aVRDMGNNUFh0elIyQW1ZZnZVallhcG93N0x0UEUxS3I5WERpYUdsTmNn?=
 =?utf-8?B?d0wxN0xYVmlNLzQ1NDFRZS9NYktUQzdkZVVrRktsVGFLU05WTGIrWWFWeWV0?=
 =?utf-8?B?QS9WdFBTUjNMVmtpa3NXM3UvNlZrYjJ3aHZ6SDRhc2tzdm1iZVpXOTU1U01v?=
 =?utf-8?B?ZmZva0prNkpZaXh3SXNyYTRCNjZmN1dYSE4rUWtTeVMrMDlqN2lxM0hvaHFq?=
 =?utf-8?B?OXk2bGRja2xnVXg3cUFDclMyMnFMNndUVE52ckEyVkVwWHBCWVFrRUxQNVlv?=
 =?utf-8?B?SjZ1d09QQTZadDhpUHdFRlpSRmdlNlY1cHp4Qlo2ZFUwaGR0R2xFTFlPK0tq?=
 =?utf-8?B?WUtzczI0UHAzVklJKzJKZlhOYlRlQWVZcUEzYmJKVnB0SzViRFhqQT09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mjO/nqzPmHp8xDHdreg1+Fb1LuGCzE8CgGUyBo4F6Na2wvbsJftcl0/KtzgmBqbI5A6NJGo5m8sg/hl1IuS6QguIOtURsI4i5lhlevMHEC8qV7PaglPaDMmVqTPyikwP9xAcLYhziIbFfzJPZW3leGg+dJ5lQ++e1u02Ge4qJ7mVxvDd332nuKA1oA6uENlOuQNDrDW+OsN+VhK9oHuy4ApLab1p14/4owpuXaZhnRtnmA9ViPd6iMVdfx/OXLkQmwTj1jqrSQ2wBMrCuO38rMVy6/p8cmwsBTg3xmFy3PRmVmlTP2FufVP1hlKgdqjRu7reBd1hRpIeso+yYO9JgA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f24ce12b-6f72-404f-56e6-08dec13e5023
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2026 07:04:10.9363
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iFenc/n4zHArtpMyCeg+ZFZOirLb/6bwKZUVOlJppO0/U0T/AOf8yk8xxaQYBE4GwB0N+7L0c0WM1n3va42vXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6726
X-OriginatorOrg: intel.com
X-Spamd-Bar: ------
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZKJSR22YJA4DO7CBV4EB2PY4ORUNH5OW
X-Message-ID-Hash: ZKJSR22YJA4DO7CBV4EB2PY4ORUNH5OW
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:20:23 +0000
CC: Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "jmoroni@google.com" <jmoroni@google.com>, "praan@google.com" <praan@google.com>, "David, Hu" <xuehaohu@google.com>, "stable@vger.kernel.org" <stable@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZKJSR22YJA4DO7CBV4EB2PY4ORUNH5OW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[172];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[kevin.tian@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:xuehaohu@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:leon@kernel.org,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linux.dev:email,linaro.org:email,intel.com:from_mime,intel.com:email,DM6PR11MB3690.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 526DB668B47

> From: David Hu <xuehaohu@google.com>
> Sent: Tuesday, June 2, 2026 4:00 AM
> 
> In case MMIO size is bigger than 4G and peer2peer DMA goes
> through host bridge, we trigger a code path that assigns the
> total linked IOVA (which is greater than 4G) to mapped_len.
> 
> Previously, `mapped_len` was declared as 32-bit `unsigned int`.
> When accumulating `size_t` lengths, this leads to a silent wrap-around.
> This truncation causes truncated lengths to be passed to functions
> like `fill_sg_entry()`.
> 
> Fix this by changing `mapped_len` to `size_t` (64-bit). While
> at it, fix similar potential overflow issues in `calc_sg_nents`
> by using `size_t` for `nents` and checking against `UINT_MAX`
> and using `unsigned int` for the loop iterator in `fill_sg_entry`
> to match.
> 
> Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping
> routine")
> Cc: stable@vger.kernel.org
> Cc: iommu@lists.linux.dev
> Reviewed-by: Pranjal Shrivastava <praan@google.com>
> Signed-off-by: David Hu <xuehaohu@google.com>

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
