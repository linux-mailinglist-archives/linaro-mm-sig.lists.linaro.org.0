Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Bo22LoHHK2qSEwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 10:46:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AF4677EF6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 10:46:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=intel.com header.s=Intel header.b="LOr5Ho/M";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 81C4F40A69
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jun 2026 08:46:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	by lists.linaro.org (Postfix) with ESMTPS id 0345A3FDAE
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jun 2026 08:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781254005; x=1812790005;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=/I0IBdOFa8e013jza48uPd9o4ycQPVoDgqii9ReRH+k=;
  b=LOr5Ho/MvHNTNxtQmwvog/VaUDGLwlD/KYG1st8uWxl4a0VyxsfH15Wm
   SVhuSKVQqtm7sXD6FvEpjzkMyzvqMcaqr79Gk3MW0yYmwysc/oFdn8yZr
   Y+gVOd9gW5lZHAyAbRPe0y5J+Yym9pdm8+KyQEGMVaqTU+zvVu2e7a4fu
   QVemtXxMUKH/GEr60YxRNFwqHbkZn8iHo5MO+dzjorZ21PxRODbMyCD9q
   fQbsEtPupgmRlzIWmVyIrsaFPd058WlscOX/wRqDeFANLvms6dGjEZbQG
   xA+uuPknggVzroxm++Kl9SY+MX017IwoDkV3EUZcW7ncbd3A2tA6cSdj9
   A==;
X-CSE-ConnectionGUID: tETQC2cBTEuZOz6kU7fBbg==
X-CSE-MsgGUID: t1nId0dPRcW1vpzUmYzd/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="104752507"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600";
   d="scan'208";a="104752507"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2026 01:46:44 -0700
X-CSE-ConnectionGUID: ffjnt4fhQbmBAA+yqwWJrw==
X-CSE-MsgGUID: lVHPW3QWSNK2++RzZtB5ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600";
   d="scan'208";a="245674532"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2026 01:46:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 01:46:43 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 01:46:43 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.35) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 01:46:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dVsrvjOolmwBaq38m2puLqGRMpe1oPfkhU1CMUHLH1KwzxB0cUu3rwgCilul131dQUGmXs7bKABNJ/M1wVZ1tElqpxfC2rqMngrZ+68l+UDjxg0UUNLnRDcy0dfa0vfbgNeQtTVuQdBLsDvptrmDSoFofhfvNsG/NpokCTJtBoj5ryvioES6hootAnAlVlq7mL3oyH1j9I/5qlerOuzfgw7vSsKlgt38HtFLJrdgjF1u+JxEGyRzEwNP1/s7CZ3SVEXOcV/rSc4AK2ZiK4GXd/jZIL/vZKqFjnsuvevAKyJAMTPL55K7uRmCToxWWTZwDzXudqMKSBJezUmI6Ijf4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kxPj53CO4NsqYOGM9wZkxTZLkccBzpJ3G+1RnfMOKWM=;
 b=J6XHTz4oTjKmXWSNJBY5oezJkfYGIgS+nbgf49WiPMoetZcZmlJieTLlOhXpgNg64P+odn1UsjX3QEDdi2APtQuYq7cRtdsmJYWL1Bdjhh/6yIF49YqowFI7X5lP/PmZdJZilLXeGcbvbU3E41MgQVdy0FHviJ9Zk0a/ErmXK4mnp+7UP5WY/bCxJvCuukU99A6Dj6qUcKOPvucFANYY+OAJR2gzruJmokEHq5V0BQRblefOqIYAbH+mmnRW8kt8TScIUBWnOrqD3PbT70Hvt+Bnr0E/7SHD/RAFO/03Rfnz64883fuT/HcHvvyQOlCAFZln0Ub50llmto9SveX1sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3690.namprd11.prod.outlook.com (2603:10b6:5:13d::32)
 by PH0PR11MB7493.namprd11.prod.outlook.com (2603:10b6:510:284::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Fri, 12 Jun
 2026 08:46:35 +0000
Received: from DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b]) by DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::7db8:f6b3:30f8:ee4b%4]) with mapi id 15.21.0113.013; Fri, 12 Jun 2026
 08:46:35 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Matt Evans <matt@ozlabs.org>, Alex Williamson <alex@shazbot.org>, "Leon
 Romanovsky" <leon@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro
	<amastro@fb.com>, =?iso-8859-1?Q?Christian_K=F6nig?=
	<christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, "Logan
 Gunthorpe" <logang@deltatee.com>
Thread-Topic: [PATCH v3 5/9] vfio/pci: Provide a user-facing name for BAR
 mappings
Thread-Index: AQHc+PAWmyVUyj2tVkKEgfWs4tY1NrY6nf3Q
Date: Fri, 12 Jun 2026 08:46:35 +0000
Message-ID: <DM6PR11MB3690314327A881DBE7ED56538C182@DM6PR11MB3690.namprd11.prod.outlook.com>
References: <20260610154327.37758-1-matt@ozlabs.org>
 <20260610154327.37758-6-matt@ozlabs.org>
In-Reply-To: <20260610154327.37758-6-matt@ozlabs.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3690:EE_|PH0PR11MB7493:EE_
x-ms-office365-filtering-correlation-id: 66c108fc-a4e1-4128-35c5-08dec85f1c4f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|23010399003|38070700021|18002099003|22082099003|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: zk9p3Gm0ToWgPBK9bCVxnYHqnSBf26CfE/TsB6Ctr4gGgIjTgCM/5fFf0ei8OEJo+elBQikvP1izJbT2udnXmFBJziK8FiBm2djgtQ9TyJXxlxpTFClspPCJCjzbyEHmoYkvLZl/H3eYAA+gMG9x1axRqqLwzCPj27iDpKGi7W8/UnuAIBPLiqclRLiRPrD5PWZKUgKL6v/UQxYSvAn/qUViqGES4/to/+EK1n6dMUHzAYyDTyhFJvyNMuxkA7wU33/gFI+Woe/uhKEJQ6jxHI3xs/WR9fnCtKNIPkrCKpwfH9ax3sn968Mf1VIes724D7OSgsb1YCXZLpvNKOweAZ7AQ3qLrTzgg+svBFdaDDDY7yFBxjR4Bl/HfsjjjZSxqcG1cJLBbpo7W24OGwLLDHRNyTR+uZXOyIakeUl0yMjFQ2NiMva45NksXFLQR+wxG25ikmCRa4QUHXSnGAAIr2etHAZWYe0hyFlnba+zcD2V924Xa6F7teFgSx5TcdyE0FOYkW1zrT2odOkk4X0mMxwGghf0Hty5WatEqSjA0d2NacQp7akEzdmZQzR8EE3h7niHhPX1uvCwjdQlhpDRXm+vmziu+nEfjKWM5p1GcqlQb2lZ0XlFmPWoN1p0MuhpfwzfpZ3iFdUJAJpxxtm4jcVTAxwYwKqyM66WrvNuVnlQYolt8U0E9nBgAFYMKj9v4uTsUpza7aMdhIDr8INXT6Apc5C1LXzVjN6HJpXeo2yedXjUa3tWLX4okVqiZTS2
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3690.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(23010399003)(38070700021)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?DAjltmdWJd33LeqMiGaoLldbW2Yhrki1jvjxbhpA0O1ESatyPpDC79x+tD?=
 =?iso-8859-1?Q?XWX6b4ka+OXOD9txnqvxiItJv4unUf48QTuhkM9QcFiiUBKSJ9MMx1M/s7?=
 =?iso-8859-1?Q?FLsSCQR0R0Rmj5eWXgh+mK8ERRKrx+myW7xsLHZSFZWKrLo52oqb9ILs/h?=
 =?iso-8859-1?Q?rMMzFA38sfJjmcgvWPHsgwPKUrHk6mMUnTwyFVDmbOXn6nFDo4lxik3RMz?=
 =?iso-8859-1?Q?Sy7GM3qMCtjaGUmlC6v483iZOC/jwN3C37QMn8NmCzUVkTSIq6dt/dmXwa?=
 =?iso-8859-1?Q?DkQBlVgUViM8KUQjRDdcb21KlYBs962sMP5agQl0VLm2XJbsPgjn+G2+QA?=
 =?iso-8859-1?Q?1u73Sg+Rf1UyvzQiy3TojdkKMZ0eOko73AtWbBKXVyVPkhpHr4ALvm5bio?=
 =?iso-8859-1?Q?dhR+qfjHiQpcuUAQLZUmzGhJRK1aB+jxkSzxr9foGM+1wKjDyn3j82v7i4?=
 =?iso-8859-1?Q?wqd+bjgfeIFUYPp8vtv/iXBbXv68DYh+G0piixdw1KaD8h+WHqVHDytGoT?=
 =?iso-8859-1?Q?uo0+e/+8qmbvONG8aPDVWi48P1ncqu9GiS4BElPDNlazM1bgESYx7fHaqg?=
 =?iso-8859-1?Q?YqoHW4nBAqgl0CLhhXT2eUKIIImPZn2OkyP393dnRSP3M/zDYbFGnTC4qJ?=
 =?iso-8859-1?Q?m0aN7e8mv8t0vp7dAxgmS2wK2QnQVSAiN3sA7Zb3fR6Keq89ZA/oHHDUgL?=
 =?iso-8859-1?Q?43pAPgHNrn86FFigro2G9+IsZzms77QrW+2Wd/HIdY/7TNPi1y5yi3P1TB?=
 =?iso-8859-1?Q?v8PhHknKcU/+CAul+CBxGq45MFhZK7r/xIxwaB5wkRCSnTLZBgLck2fw2T?=
 =?iso-8859-1?Q?QVqsdoySSEvmxiujB7w2uw1TE4/PX/njKBnpK3ZHmXYwWaKo65pXswbxoq?=
 =?iso-8859-1?Q?p4CKH3gF6QypEZ9P3aXRC2+YdoDlGm+iBTAKS8kRRuS14nQF6IqkftvRN5?=
 =?iso-8859-1?Q?i2I5v4vE+/4pCgu/4lBbMXPQGLndpMMN5jUc6IjN7lZmYavDVQo63LKEx9?=
 =?iso-8859-1?Q?OeT/0PzshE1xNx30hUf0zK4zYHxbFEMt+dvRTPK+lbC/EqLpaRDeGhQHFR?=
 =?iso-8859-1?Q?otWYwI4/rWz28aDH3GT/+fh1fbbaxRCYYMHg924CGTITj0m748XCVOtga8?=
 =?iso-8859-1?Q?RIHIEHEQsYjUcUG0gX3OOSX4s8jL3DS1LSm4gOqwr2X10CBmLB0JGTecLI?=
 =?iso-8859-1?Q?Vh2jnmzxavH8cK04MYWF8QRPW0dHhX5VlmH/gZPgTDRc3W+xOvIpj9O2AW?=
 =?iso-8859-1?Q?FWLFWNryz+j5qXq0dL1T64Fx68ab5qDoFiIt4OqmSRnuK/wxo//73wpZOr?=
 =?iso-8859-1?Q?P1sqsewws92ItjzUOXIRucRTWJ3BSkao9JmPsqEF+HNLQsGQ2mn0eB2Ia0?=
 =?iso-8859-1?Q?WAeRs5ELK8Ovf0hXQEkOHwnQyeh5BU5P++uO1eaI5DH5X8k0aoicDO1GsA?=
 =?iso-8859-1?Q?z1Q6owp1NUKJebq/zO1+7TdmwTb7uUBIbKrIVWrxkLlwmIH1pUpYUkuZj5?=
 =?iso-8859-1?Q?UTYA+0sc4dV7XhDB56f7utLtQAFhyNAX05HnuzOA+yTd1RRHl/DePIOkj4?=
 =?iso-8859-1?Q?1RKzE1XbsoGf6W8/Wu2gP3cgpgP8sYSPZJzv2Zciy7ohZ7wf512Ip5jE5s?=
 =?iso-8859-1?Q?B5690J3wiIJM4PVASIOih3aEgDj/us4pirnN3Y9+g6E9/K7jbBVHbc8OsI?=
 =?iso-8859-1?Q?6kqibQzGNhQTLWaeCbCojCch2bPNvhJgpF3qX/NoQWgS6N88zMSZKM90EA?=
 =?iso-8859-1?Q?03V24LTnLE+VkhwGl58+/zarR60wDpCX0tmbpH3t0wjrsz?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PpBUs8Kjk+wHk/TJnN4hE4uqivNhkXRhmyXoxtEe2zEAV5oTCA0Tp4pEv2Qi4lxAsinfSZxB54tn3QX6U9MeST8mMtUyXpfzOckfnz2FvrLAWRHfDDfphg/q+N8974Z3/b6aAzv+sIpdqKidYSpVT0FCK9Hke0LoCvumvCWA+R3n5hepk5FSPB/9xHt2PdKMQHaEFNKUHbijsNi5L82d3bPntAXjELrNkThKxxtzbDZn1xWOetqp3PM0OQGjDrsV8i3X5wG1MnGoTDxwwZFVUTaFyMk4BCeLDPWcQ/u6iew7fjVnXMabisHe11zHxjHdB6WnNYPERUf/CbKBa/8bnQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66c108fc-a4e1-4128-35c5-08dec85f1c4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2026 08:46:35.5101
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CH9ylq1vaUekTWWqw+WM3l84werHcoos6fsynabt00kAYx1xVcZXSAKjQkpfiXyDcCzeKz4vwOdYus5iW3gmkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7493
X-OriginatorOrg: intel.com
X-Spamd-Bar: ---------
Message-ID-Hash: M4A3FSS24N527JMVEHTYJ3UUOJ3X64C5
X-Message-ID-Hash: M4A3FSS24N527JMVEHTYJ3UUOJ3X64C5
X-MailFrom: kevin.tian@intel.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 5/9] vfio/pci: Provide a user-facing name for BAR mappings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M4A3FSS24N527JMVEHTYJ3UUOJ3X64C5/>
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
X-Rspamd-Queue-Id: 68AF4677EF6

> From: Matt Evans <matt@ozlabs.org>
> Sent: Wednesday, June 10, 2026 11:43 PM
> 
> Since converting BAR mmap()s to using DMABUFs, we lose the original
> device path in /proc/<pid>/maps, lsof, etc.  Generate a debug-oriented
> synthetic 'filename' based on the cdev, plus BDF, plus resource index.
> 
> This applies only to BAR mappings via the VFIO device fd, as
> explicitly-exported DMABUFs are named by userspace via the
> DMA_BUF_SET_NAME ioctl.
> 
> Signed-off-by: Matt Evans <matt@ozlabs.org>

Reviewed-by: Kevin Tian <kevin.tian@intel.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
