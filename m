Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGIXB2j34GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:51:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A55D340FD60
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:51:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58402404EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:51:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	by lists.linaro.org (Postfix) with ESMTPS id 8DE943F73D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Oct 2025 02:00:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=WHvDUa+k;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of matthew.brost@intel.com designates 198.175.65.11 as permitted sender) smtp.mailfrom=matthew.brost@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761616837; x=1793152837;
  h=date:from:to:cc:subject:message-id:references:
   content-transfer-encoding:in-reply-to:mime-version;
  bh=cwzvjJiRqH93FR8vSWd8/LBe3x9AHewLCCzBQDyyp54=;
  b=WHvDUa+kfUJTnrEp+7dPm0bJY3oklReJg38Ij3s74wfXp7Xy3Id+74In
   FcmX7yWUbTaxYmYRApHlTa6PvNe0hrPQmluNEDFv+07ENNPl1rs9aCIgq
   5LFsWgVipOk8qtI2nqps1jE1Msx4zzEvf1aEJgtaLCxVwc4YzqQCzA8yK
   DnW5rcyGHmgcEFb0CyT6Jhzj8ouIL+mRxSxxUBx8jgeCPaw4cSbe8x5q/
   M5ecsTMVolcInwzviFw0pAc+C21DklcmOcbObXeb5Y1W239GZPC1U5CcX
   P4Y5tQ7pXvfwsX6DtW4J1sdAlNTd9P75CIXBGOAeG0FZAu8wvaB6XoMve
   g==;
X-CSE-ConnectionGUID: pAU1B5R3RnSJRpTHRgl50g==
X-CSE-MsgGUID: VGr7a2HOQrO25GlOmXjCeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73995007"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000";
   d="scan'208";a="73995007"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2025 19:00:18 -0700
X-CSE-ConnectionGUID: yfiR5+rAS3WeUE+62OffWA==
X-CSE-MsgGUID: GpAeVC6XRqOVuxftn+zZfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000";
   d="scan'208";a="189265409"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2025 19:00:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 19:00:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 19:00:17 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 19:00:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O4+b0kzW6vle00vrXbrOqmIVhDMFOpBt1apO8xFYKZ0LrjjeF5qBwLNSXhhHmu/if53pGsNlIhP+mKvw8No/o/ftKcTRpENZ92vG0zsZ9t1ZPXGjNnW7qv+0PkccH8faXSWEZ1yJml7+9vBB45Cai8lXFiqzqs25PbeXroLX4xl1HgZ4vQl4i+8yXrZbJOF3W6GnYV6l55B7/8DXdHvJhQ04bZqMFmjJjj2JSuyOqqKJBmW2d4Q1KmjR21YYvBQuFpOg+vw4qilsxUyoLeXtKI46Y7z7bHcgbL8cZzAwyZTvQZF/yzjLhWgIK9h4XSxxPJnti32vdDlBR8DGjrYvhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PMq56CH0B7fC3l5nxlm8B4sINwcybXBpi0jmZ9lDRRQ=;
 b=AKiTTFzVJ0awgq0B4odZI/vlqBDQbkv/4E5NgpEEuUteZZoRCEwD7EdOaYhJrKA/jARZR3U1AVH88krQBSgDnmc51B2OUbMEPInULwE0e0iYgb2J5x4xO7nUdA7kmWftzvNm2cg5aDEUTXQzpJ//pkFAGy1dQxw3Nvqc/5NiNRJOpzHm5eytXaR7JYbFtkIDJZ9QCvKf/NjKPRb7jy7sVCzlP86RwjnDsdjElKDzGUrbYOU0czG8WORPNBj9BQxkLCEnKvrGaHsXv87+xAdil6zjQxOTEqdxI5mGrKPjhFjdoNZl7o/o+JFSFrWr9BUu5UqU0eRqdsFFZnhVZSuCZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH0PR11MB4917.namprd11.prod.outlook.com (2603:10b6:510:32::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Tue, 28 Oct
 2025 02:00:10 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%3]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 02:00:10 +0000
Date: Mon, 27 Oct 2025 19:00:08 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Message-ID: <aQAjqFw6ElAJBmxF@lstrano-desk.jf.intel.com>
References: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
 <20251027044712.1676175-5-vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
In-Reply-To: <20251027044712.1676175-5-vivek.kasireddy@intel.com>
X-ClientProxiedBy: SJ0PR05CA0032.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::7) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH0PR11MB4917:EE_
X-MS-Office365-Filtering-Correlation-Id: cd0d3709-1bb2-4b95-31af-08de15c5b9a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?xr05J99qmyKIcl6ZDl421SrCMiNrufl7InCYP+LbENmMM7ITKGsS/xJZAf?=
 =?iso-8859-1?Q?DidaBaMbCChBOas3j5yu5VED6cSVdS9Eq3PCw5oA7QpFexdwJqu/TLA6Mq?=
 =?iso-8859-1?Q?3UWLB+yiDn+hsKp18a7Do7kvowiPwn+eAkH2El4XVaGwtbmcS7BZzwkzY/?=
 =?iso-8859-1?Q?IaNRzdC0+HQdEW382jvnzgeVQEnRuhiyjveAEO7bvzJj1ytrhYSMT4qZok?=
 =?iso-8859-1?Q?9qZkoCzk7Tfv/Ixh/4UjweExCjAH8B2oBJi73uw5CisRWl8Fpntp9gNhdR?=
 =?iso-8859-1?Q?3US27MUA3sbUmDlhKU/DiW+LZ4Ec2UKvlJh8hvbjz5GrxVvn0m7Xf3gQPU?=
 =?iso-8859-1?Q?f9LW76dgmP8xRgN+VITsMaS9z0ULeQ3LWel1SvZkw/qYPjqbIINImAKgea?=
 =?iso-8859-1?Q?+X+WxBLapM0oi3tOPrNHmOl82GmsscLVj/nYPzE77+FVui8RUJ5vgHyQKu?=
 =?iso-8859-1?Q?deLCH5aqJdpzpPDwCYNwyZmtwjhCZuPzdhWtfClu9nRB2SHjGC8A7J5Pom?=
 =?iso-8859-1?Q?dyV8MQNNU+xAod1gM3DafhXAivc4QI5APN9PrVFS5s17HOW/NGdhSGIaDm?=
 =?iso-8859-1?Q?nTCVQA7gyVQe+FwPkxyLTDo9bIgQNAIzdFACTtQe1lDuH/eg5xTsT7Vu5w?=
 =?iso-8859-1?Q?ZEyuaPEC6ZJQcOmKJV97poRD0PSlb9hVuVLvzyxdq76V3Qncxe1FHKYJw1?=
 =?iso-8859-1?Q?CLQbfh2yOq0Z0mWMeo5LJr/ftqN6wVp2LzDZhg2RA+ryA4Z2u6EiP6Y4vo?=
 =?iso-8859-1?Q?744P4qGetvVQ2ViuhKF29oMle4QvnHe0+m3sQLAK9V00TObyt05Wer1VH2?=
 =?iso-8859-1?Q?a/zQUQumvO7NoVvM8e/lAjLfBdwB0e6+fHbousTcioeHTrJngBElCHTl9P?=
 =?iso-8859-1?Q?0Xm9ZZExsqxpn2D+a8z4yN933Nfhx1OQ6QwKI5+2AknGiDmzJf5MQG/4Bu?=
 =?iso-8859-1?Q?MQ5VK9TbK6g9KrM+z9lJCkGejyZ2/NMZZP8VAPmbPdKl8J4bwOC9CVIUMZ?=
 =?iso-8859-1?Q?koWZHTCuhBl1azcBD5J6oSyLLvXQ6g+OREcvVhgBuHpy4YC1NBYQBPv5SL?=
 =?iso-8859-1?Q?nyqtlLH7yZFRQ2LU6eRRX6x04S6NowO1XgzhwM01fjXTap4vweVvDqNEfO?=
 =?iso-8859-1?Q?mScLSdSQWDvM4fok8xgGHWT4LlRbDR1UAB+1q2QfyIjrrr1UvjJh3+CjOS?=
 =?iso-8859-1?Q?5h46VqJcboMG0cIYBd6O+yfW6Dt7OG/NvRSiakSzCFzHK0Gxbcsl47csI3?=
 =?iso-8859-1?Q?+/HcajWzeHRiujF7eT60Fyw1eWPHk333QFn66ccxYSettl6mFTE79moMKh?=
 =?iso-8859-1?Q?Xjim5SbEkVqbWfssj13iTCcLcNFT13dK2lhO0b5jewJWF8LOWaWvH6TXXO?=
 =?iso-8859-1?Q?xqEuwaWLQ5iv7/iBxV8xqJOC+w+ksLqe97S5tCyj3rnGGZ/GMg/fskJB+i?=
 =?iso-8859-1?Q?JrDJmbb1TP1Nrx8/x/malfguJrUjdj8DZOSW8B/HFNmTSmWk9aS80duJAg?=
 =?iso-8859-1?Q?XQZLxrJedrePgWqIj1OI4g?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6522.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?1akfOupl1GHNpb/K2ZSzSmG72yzR8W+x2iB3nTq1jABl8XEWJePP7dQhS+?=
 =?iso-8859-1?Q?J1CiN+d+R9Kitw9uS9ICVVkqZmL0czmwJmuxgAHMjcQKOK9SKiAv9Q/+Zp?=
 =?iso-8859-1?Q?uxtXzz+P9toH2NzSD5DrugbA70TGsRryp5K7CFkr2+VfvXqQg6637GMLsy?=
 =?iso-8859-1?Q?vbS7N8CrSvMDaFBQ1oMUxwkjpdS580LsjmUtN7MO7tGC56G3MxCNRP0Yy7?=
 =?iso-8859-1?Q?eBwTKN34csShDy3aTXS7wk1lvxRa1mLCilEyG+T3lGi0TTHPFOgNHY2otG?=
 =?iso-8859-1?Q?Y5+fzj7F20EA0dAp5mBn3K6tthHxhEoc+XG1RQluBosmz/Fpbsbs+XzihM?=
 =?iso-8859-1?Q?0pvNsElnEAcaUR1Ctp5PT2ttIcuWzBKn6fFQ8sVljdpv9CilGDDu8K0ZAo?=
 =?iso-8859-1?Q?uMTx/5AjrTDs8MQChsq1TEXKCjTgJJnNtuVPTfDYZli4MSZVE9Wa6Pgq/1?=
 =?iso-8859-1?Q?qXPPCL8wVnrqSOnFaq/pg8yrZoS58CUevRiR8HdZbc7LHNFLxYadxCiBfh?=
 =?iso-8859-1?Q?zdfVNHgObgLUHq92tX1l1FKjlTk10GFzOglFb9YVvmCPBQXbebeiZVdDhe?=
 =?iso-8859-1?Q?nd5nd/TL5eu5JFak8y+gVsyiGx0vwUpCcaS5qE4yFJjTK4J9/yimfwpHpD?=
 =?iso-8859-1?Q?IwGGXJ3l1HU8ibN2zPwe+/4tcFLk/OxF1EAU5bzFi+iEDkd6JL3HBr74AX?=
 =?iso-8859-1?Q?HktUnXcnMI7Q7fOXbXAYdWLQ1z9BVLUjitziLEUCFzgXBUX8b+Y8x8ngOl?=
 =?iso-8859-1?Q?SK0aSS8gDS1MLKggeQR+V7xPw+yU0GdcIRki8NgJASSGT9gvtKTCIChexP?=
 =?iso-8859-1?Q?6LCQjAVWIvSlVdQmDVRchJea4HAo6iw0gjvgkYAmryJUISNytZm50KAMTX?=
 =?iso-8859-1?Q?RNb644BXu8dFAxA1seYsV3Tix7ZrCb18jZ6Zd9PGs/AUjQpU9DuMTmuN1T?=
 =?iso-8859-1?Q?FrlrRw4kGuv/JHlP72vcwBnLh4i5Ly38q1iCyi8XC+tymeeDkJyRQA+Opw?=
 =?iso-8859-1?Q?4Zzsah+rzylH0XG0TlxuI90oz517kYKnLztMYDtzfyim1TNrqHSCJ478Ic?=
 =?iso-8859-1?Q?3mls2br/z290Qtz54hhNCGwC1ipBIfPWHq7JfImg9YWNuhUvEo48FcLoj4?=
 =?iso-8859-1?Q?0zg02Q9kzMetX43KZDZtDxTh+cjXLInQ3LeyI7DUxwx5NkF2P0rMbzU0T8?=
 =?iso-8859-1?Q?NFj3rft92n/KbEKOq+X8wPsrc6npIhXJcPI6YA1u4JIJtG60BC31GjpKJN?=
 =?iso-8859-1?Q?0r2Jb2tDgxc+2wXzbUIZ2QBSfu3NGcOEIFkLlbe7vXsQ5swsNvl1SKlAa2?=
 =?iso-8859-1?Q?6Bg1tvmHF1823C8SoGJMHO3RBS4/cw7rdYpjO21WN1KA2Cx9Z50HurIFa5?=
 =?iso-8859-1?Q?iqvFjv3BCu+rM3BmvLTlngxtWed83d2BP8zrF9gbWPKo4NB9wYRNrs7yqS?=
 =?iso-8859-1?Q?oVyaFeU49fnUcxQW/eq5GOsLW00NmMGFTGR3g7tCEYY+rZpKHH+LztFzC1?=
 =?iso-8859-1?Q?OqDSRRijGY72oSQUbnw5VsdY4HZrygYqR/y8Mel3LvyhsjEaFl4x2IG420?=
 =?iso-8859-1?Q?HicYyTXMK1KYQtm1W0aEoRfedfwMTU1+QDR4qJOa8RhMk8D7Wi7vmxejbT?=
 =?iso-8859-1?Q?PaPLYcdzUasyCh0Kp9ZZZgORQDQS2w6vjmCMHlbJ1aoDLsmWQACSY7iA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd0d3709-1bb2-4b95-31af-08de15c5b9a3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 02:00:10.2381
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XyUfdkn4dfE0dYynzxL1lwCbElBNkvz2jP91CgSbekiRWPKkcWA4f/DmKzrJ0B5u62imEisYekQDcv2UxinOMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4917
X-OriginatorOrg: intel.com
X-Spamd-Bar: ------
X-MailFrom: matthew.brost@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XSFCYQ3RSABDXEONSB5AVR2YKRBFFFX2
X-Message-ID-Hash: XSFCYQ3RSABDXEONSB5AVR2YKRBFFFX2
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:27 +0000
CC: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason Gunthorpe <jgg@nvidia.com>, Christian Koenig <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 4/8] vfio/pci/dmabuf: Add support for IOV interconnect
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XSFCYQ3RSABDXEONSB5AVR2YKRBFFFX2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[4092];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lstrano-desk.jf.intel.com:mid,intel.com:email,amd.com:email,nvidia.com:email,linaro.org:email,ffwll.ch:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.482];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A55D340FD60
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Oct 26, 2025 at 09:44:16PM -0700, Vivek Kasireddy wrote:
> Add support for IOV interconnect by provding ops for map/unmap and
> match interconnect. Note that the xarray is populated with entries
> of type struct range. The range type contains the start and end
> addresses of the memory region.
>=20
> Cc: Jason Gunthorpe <jgg@nvidia.com>
> Cc: Christian Koenig <christian.koenig@amd.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  drivers/vfio/pci/vfio_pci_dmabuf.c | 135 ++++++++++++++++++++++++++++-
>  1 file changed, 134 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/vfio/pci/vfio_pci_dmabuf.c b/drivers/vfio/pci/vfio_p=
ci_dmabuf.c
> index eaba010777f3..d2b7b5410e5a 100644
> --- a/drivers/vfio/pci/vfio_pci_dmabuf.c
> +++ b/drivers/vfio/pci/vfio_pci_dmabuf.c

In drm-tip vfio_pci_dmabuf.c does not exist as a file? Is this series
based on another series / branch where vfio_pci_dmabuf.c hasn't made it
into drm-tip yet?

Matt

> @@ -4,6 +4,7 @@
>  #include <linux/dma-buf.h>
>  #include <linux/pci-p2pdma.h>
>  #include <linux/dma-resv.h>
> +#include <linux/range.h>
> =20
>  #include "vfio_pci_priv.h"
> =20
> @@ -16,15 +17,132 @@ struct vfio_pci_dma_buf {
>  	size_t size;
>  	struct phys_vec *phys_vec;
>  	struct p2pdma_provider *provider;
> +	struct dma_buf_interconnect_match *ic_match;
>  	u32 nr_ranges;
>  	u8 revoked : 1;
>  };
> =20
> +static int
> +vfio_pci_create_match(struct vfio_pci_dma_buf *priv,
> +			  struct vfio_device_feature_dma_buf *dma_buf)
> +{
> +	struct dma_buf_interconnect_match *ic_match;
> +
> +	ic_match =3D kzalloc(sizeof(*ic_match), GFP_KERNEL);
> +	if (!ic_match)
> +		return -ENOMEM;
> +
> +	ic_match->dev =3D &priv->vdev->pdev->dev;
> +	ic_match->bar =3D dma_buf->region_index;
> +
> +	priv->ic_match =3D ic_match;
> +	return 0;
> +}
> +
> +static int vfio_pci_map_iov_interconnect(struct vfio_pci_dma_buf *priv,
> +					 struct xarray *ranges)
> +{
> +	struct phys_vec *phys_vec =3D priv->phys_vec;
> +	struct range *range;
> +	unsigned long i;
> +	void *entry;
> +	int ret;
> +
> +	range =3D kmalloc_array(priv->nr_ranges, sizeof(*range), GFP_KERNEL);
> +	if (!range)
> +		return -ENOMEM;
> +
> +	for (i =3D 0; i < priv->nr_ranges; i++) {
> +		entry =3D &range[i];
> +		range[i].start =3D phys_vec[i].paddr;
> +		range[i].end =3D phys_vec[i].paddr + phys_vec[i].len - 1;
> +
> +		entry =3D xa_store(ranges, i, entry, GFP_KERNEL);
> +		if (xa_is_err(entry)) {
> +			ret =3D xa_err(entry);
> +			goto err_free_range;
> +		}
> +	}
> +	return 0;
> +
> +err_free_range:
> +	kfree(range);
> +	return ret;
> +}
> +
> +static int vfio_pci_map_interconnect(struct dma_buf_attachment *attachme=
nt,
> +				     struct dma_buf_ranges *ranges)
> +{
> +	const struct dma_buf_interconnect *ic =3D attachment->ic_match->type;
> +	struct vfio_pci_dma_buf *priv =3D attachment->dmabuf->priv;
> +	int ret =3D -EINVAL;
> +
> +	ranges->nranges =3D priv->nr_ranges;
> +
> +	if (ic =3D=3D iov_interconnect)
> +		ret =3D vfio_pci_map_iov_interconnect(priv, &ranges->ranges);
> +
> +	return ret;
> +}
> +
> +static void vfio_pci_unmap_interconnect(struct dma_buf_attachment *attac=
hment,
> +					struct dma_buf_ranges *ranges)
> +{
> +	void *entry;
> +
> +	entry =3D xa_load(&ranges->ranges, 0);
> +	kfree(entry);
> +}
> +
> +static bool
> +vfio_pci_match_iov_interconnect(const struct dma_buf_interconnect_match =
*exp,
> +				const struct dma_buf_interconnect_match *imp)
> +{
> +	struct pci_dev *exp_pdev =3D to_pci_dev(exp->dev);
> +	struct pci_dev *imp_pdev =3D to_pci_dev(imp->dev);
> +
> +	return imp_pdev =3D=3D pci_physfn(exp_pdev) && imp->bar =3D=3D exp->bar;
> +}
> +
> +static bool
> +vfio_pci_match_interconnect(const struct dma_buf_interconnect_match *exp,
> +			    const struct dma_buf_interconnect_match *imp)
> +{
> +	const struct dma_buf_interconnect *ic =3D exp->type;
> +
> +	if (ic =3D=3D iov_interconnect)
> +		return vfio_pci_match_iov_interconnect(exp, imp);
> +
> +	return false;
> +}
> +
> +static bool
> +vfio_pci_match_interconnects(struct vfio_pci_dma_buf *priv,
> +			     struct dma_buf_attachment *attachment)
> +{
> +	const struct dma_buf_attach_ops *aops =3D attachment->importer_ops;
> +	const struct dma_buf_interconnect_match supports_ics[] =3D {
> +		MATCH_INTERCONNECT(iov_interconnect,
> +				   priv->ic_match->dev, priv->ic_match->bar),
> +	};
> +
> +	if (attachment->allow_ic) {
> +		if (aops->supports_interconnects(attachment, supports_ics,
> +						 ARRAY_SIZE(supports_ics)))
> +			return true;
> +	}
> +	return false;
> +}
> +
>  static int vfio_pci_dma_buf_attach(struct dma_buf *dmabuf,
>  				   struct dma_buf_attachment *attachment)
>  {
>  	struct vfio_pci_dma_buf *priv =3D dmabuf->priv;
> =20
> +	if (vfio_pci_match_interconnects(priv, attachment)) {
> +		return 0;
> +	}
> +
>  	if (!attachment->peer2peer)
>  		return -EOPNOTSUPP;
> =20
> @@ -189,6 +307,7 @@ vfio_pci_dma_buf_map(struct dma_buf_attachment *attac=
hment,
>  	return ERR_PTR(ret);
>  }
> =20
> +
>  static void vfio_pci_dma_buf_unmap(struct dma_buf_attachment *attachment,
>  				   struct sg_table *sgt,
>  				   enum dma_data_direction dir)
> @@ -228,15 +347,23 @@ static void vfio_pci_dma_buf_release(struct dma_buf=
 *dmabuf)
>  		vfio_device_put_registration(&priv->vdev->vdev);
>  	}
>  	kfree(priv->phys_vec);
> +	kfree(priv->ic_match);
>  	kfree(priv);
>  }
> =20
> +static const struct dma_buf_interconnect_ops vfio_pci_interconnect_ops =
=3D {
> +	.match_interconnect =3D vfio_pci_match_interconnect,
> +	.map_interconnect =3D vfio_pci_map_interconnect,
> +	.unmap_interconnect =3D vfio_pci_unmap_interconnect,
> +};
> +
>  static const struct dma_buf_ops vfio_pci_dmabuf_ops =3D {
>  	.attach =3D vfio_pci_dma_buf_attach,
>  	.detach =3D vfio_pci_dma_buf_detach,
>  	.map_dma_buf =3D vfio_pci_dma_buf_map,
>  	.release =3D vfio_pci_dma_buf_release,
>  	.unmap_dma_buf =3D vfio_pci_dma_buf_unmap,
> +	.interconnect_ops =3D &vfio_pci_interconnect_ops,
>  };
> =20
>  static void dma_ranges_to_p2p_phys(struct vfio_pci_dma_buf *priv,
> @@ -365,6 +492,10 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_co=
re_device *vdev, u32 flags,
>  		goto err_free_phys;
>  	}
> =20
> +	ret =3D vfio_pci_create_match(priv, &get_dma_buf);
> +	if (ret)
> +		goto err_dev_put;
> +
>  	exp_info.ops =3D &vfio_pci_dmabuf_ops;
>  	exp_info.size =3D priv->size;
>  	exp_info.flags =3D get_dma_buf.open_flags;
> @@ -373,7 +504,7 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_cor=
e_device *vdev, u32 flags,
>  	priv->dmabuf =3D dma_buf_export(&exp_info);
>  	if (IS_ERR(priv->dmabuf)) {
>  		ret =3D PTR_ERR(priv->dmabuf);
> -		goto err_dev_put;
> +		goto err_free_iov;
>  	}
> =20
>  	/* dma_buf_put() now frees priv */
> @@ -391,6 +522,8 @@ int vfio_pci_core_feature_dma_buf(struct vfio_pci_cor=
e_device *vdev, u32 flags,
>  	 */
>  	return dma_buf_fd(priv->dmabuf, get_dma_buf.open_flags);
> =20
> +err_free_iov:
> +	kfree(priv->ic_match);
>  err_dev_put:
>  	vfio_device_put_registration(&vdev->vdev);
>  err_free_phys:
> --=20
> 2.50.1
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
