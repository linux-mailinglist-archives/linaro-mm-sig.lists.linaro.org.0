Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C19A07977
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jan 2025 15:41:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E80343C0B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jan 2025 14:41:03 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2043.outbound.protection.outlook.com [40.107.102.43])
	by lists.linaro.org (Postfix) with ESMTPS id B8D7E447B5
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jan 2025 14:40:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=i4GKBVB6;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.102.43 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ThvcghVpKnM5FwgyiBjAXDv7YVXV3LmXBfkvTOi4F03KQvn6uoM6mvZbQMjQu37i3S7Hsv88fX9yOnS97PR5EYI9VnrlBqb/Px3JIeiAsuN+6jqu5Y0FrK34LKc9Qr4fN+B0d/8Pta2aQ9CcNGWz5pRS7Qz44eVHo4Nnz8faGFBHBJdszWLtHXdOCe8JySqKcTHHEPMAA2bUX6HKo4DT+/d+skjC7lAnzCare3KMiHmRfIFXfRNJHydhfU9Esiin6h6Qm2vh/6wTaUEdJ1R55/yLte44PqfR2FNia8Gv7JumjgmLUAZ43ftBLFxCNaSAIRS4t49G/1R1B+UBkYp79g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ITzwfueWfHqqcCarUI2h81nBJtROCWTrFLad1zgmx0=;
 b=bk/33JvXl9/dxqtg6NaqJHqDaU5Hdau09gXpS+0KKgIt3j1hEDgdC1UlmDRJuZyg6mn6EawNrosYNcpsXDb/f+OdzWxSNXOcdl3zFv3tYMLX93zVlaC+AwkYMklHs6yld5rRY/OpNaS6BXJawjnYrOK4DQ3ieqivzQcEA4NmhNj/MNpddRVQiIePDRYR3zT4Ezgb7iWCT6dBKVQZ3wW3j1613pM4HB+k5rSixbIObqt1kTZDbKqeMI1uObzP6Uv3eNGTQ89ifAJ1xNX23oAzJRvMkeNOR0/DnEwuho9vx8YInDAlAPsHNlihZg19PYkoUjRK7r7b2gLJslj8RInJ3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ITzwfueWfHqqcCarUI2h81nBJtROCWTrFLad1zgmx0=;
 b=i4GKBVB6cg+NJFM0c7akuUDFVkL1T4oCLMbZkPvSTfsxmAU0Xh639scHMztriWrWe+J+hC8nwiLPFMTX0Yb+53xaYh/c3oUeAlhq+fx6RkUWGdGpiv7do1jBZyZyXYUlLSiO4xj1MlBcV1g2o056mB469EI4jnkAKKqCCgwLzLZ/QwP0+h0DHWN5uS+miLXXmbrZaz3V+jGqYpndtnXutJuiefWpP9WEwDOQrPioCmqa7an50747TvQ3ESX7aNgzKpwr/NafQJyeAptYqkSA8bv3TuRJvJxF8+LtFpLN+eX1OELsWl2Cm0/lQrMqFS60HZ+nWX+SKh/xqSGNUqHzUg==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by PH7PR12MB6537.namprd12.prod.outlook.com (2603:10b6:510:1f2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Thu, 9 Jan
 2025 14:40:53 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%4]) with mapi id 15.20.8314.015; Thu, 9 Jan 2025
 14:40:53 +0000
Date: Thu, 9 Jan 2025 10:40:51 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Xu Yilun <yilun.xu@linux.intel.com>
Message-ID: <20250109144051.GX5556@nvidia.com>
References: <20250107142719.179636-1-yilun.xu@linux.intel.com>
 <20250107142719.179636-9-yilun.xu@linux.intel.com>
 <20250108133026.GQ5556@nvidia.com>
 <Z36ulpCoJAllp4fP@yilunxu-OptiPlex-7050>
Content-Disposition: inline
In-Reply-To: <Z36ulpCoJAllp4fP@yilunxu-OptiPlex-7050>
X-ClientProxiedBy: BL1PR13CA0378.namprd13.prod.outlook.com
 (2603:10b6:208:2c0::23) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|PH7PR12MB6537:EE_
X-MS-Office365-Filtering-Correlation-Id: c1e2ed80-2db7-4fb8-093f-08dd30bb9e39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?jMAlcqrXLM/nzF1z6ns228jo3gkfIdkrQ5kzgTJPoruYK4wGO0NCeCdES/2p?=
 =?us-ascii?Q?oGlfpScW4I5C3/QUi/82n1ZVyQc5ZlbsZJ2PiUnr4wfuhdiiDR7U95SBuOO+?=
 =?us-ascii?Q?ClgQM5U7DbsZVrEZ/2osGsE2y/pyTyzx8t2YORsracb4EVeN74gnMnv783NH?=
 =?us-ascii?Q?+esAE4T5s9/0Bwxx3c2V21/JAun4yhRifJYWwcmp50b8GubkoEbAClML7hiQ?=
 =?us-ascii?Q?+ifKfHqzM4OHAWw9ko1RN9vOk/gknA1dNas9uwjJO+Th5oSYHriR+w9LssFE?=
 =?us-ascii?Q?pb15grm1jpYFBuRZU20hxn4TlUivkMvz8aGTJwNk8D3jYyca4gM8XEJiV7jB?=
 =?us-ascii?Q?pgQ2j/AsOAsjm7YRWvDXb0Ipgycs19QH03rH96fvSe4TLLbczAGwPJHgpeI6?=
 =?us-ascii?Q?q04c8Jt35Zw0+dviPSDkrTBtRpZvrJ4bMaUXbfzwFz2cNVIT0k+I2E2EeuZP?=
 =?us-ascii?Q?YQ0U6nurawDINrIXsV0F0BYYbUYdCeSAFQTBYYDhetLlv76QZDuASb524kVu?=
 =?us-ascii?Q?wIR27UUXhbUtcgoBTN0/cz6s1kqYb6xvAsTtMYJDMPnsF2DQ3L1P3p2wfgCp?=
 =?us-ascii?Q?SROBF3n0ogiMbvVf8dEzVq+aSOZp+yeDRgzvTNb0CMnXzzTuPFoj82IPf7KL?=
 =?us-ascii?Q?RUh9smQsgXkK06NRLnk1cAVFlIp7rPdi1JhjicqugUwcAOGrix2Pg9fWu2mn?=
 =?us-ascii?Q?70d9yptyBqfdwA68lw/fVDG6kbucya8K9JtXOCdIR5Be2/uu4r9FBXgWfumj?=
 =?us-ascii?Q?HVH0TXtSBCVnO3z+kKGBPUID6oCqkn55Hy2wFbaXg0YH/be0W+Swix8yBCwb?=
 =?us-ascii?Q?NcGpzin5VJgYitKYywnoAFhP/ahIOFSIslyz1xOOyjGa7ZTgQ+EwiNFXKpkA?=
 =?us-ascii?Q?/K45/phX428tnBDzomIDhx4wolKc/szSyskmgeClwMykQfTR72V8yYfk6DJW?=
 =?us-ascii?Q?wt2g3+JaXmHkF1tBMyQ+4iHqV2psmNMbgCXe7N/nVdc/467so+ZslRaqoyEK?=
 =?us-ascii?Q?G1pxCyO1ryLsz8bfGON6wRGMxKVAJsUAoYnNWYLZkIfM4b5KRQbwkNvEBUwE?=
 =?us-ascii?Q?Xj8MWaFIEU/Uq2N3jpGuijaXnGnNH8kwvfpDBhEIVcFSNi4Vr/eHSVPcmfZE?=
 =?us-ascii?Q?lmBvw4V9w8ZGur6mQXqhNckXgpRUMC5OEMN3TUK/33doO/3kMvMXkIBWMp8u?=
 =?us-ascii?Q?a+9pByUTzmU32p5xaq8Kw6pzCy7eDX8Imh8Dwe//bavw6P1cJB4mzqOFsQEd?=
 =?us-ascii?Q?8/yUBxNNt8Da3HJCk6rWJsPxvtxoWQVKMtR2txqo6AxCdTkBwJGLSEbJzxS0?=
 =?us-ascii?Q?+Xw/XrNouYvRXglto/mvOXZXpLb3u7xuUmjVC7TD/3m6+q3EaIMTl/2oTQ5X?=
 =?us-ascii?Q?5v2mN2kSRdNOrAGTGIojcfwSopL1?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?UKpdUrS3G2my27E8NGEAhApb+6/wHhOrqdKusnvn4oJWQxAe8ibBupyiyRgY?=
 =?us-ascii?Q?Ar3IhpexW7/UsZUfsxRX+R1D0eABAnF8iEQ7Mb9ktUW7kPSEYn5g0lEd286x?=
 =?us-ascii?Q?yaJvZuRGN/zRPIKdUWahF2NYd00aei5pde1lwVNduBBF+MqcAAEkop0lwDBF?=
 =?us-ascii?Q?2jmAeMn5cTWCvhJJcZYg468uNQQyuHMogDGTHvBx8zY4wQGugJWSsqPJSVev?=
 =?us-ascii?Q?iZiSq9c3gs70D5H3idQt9UvfQt98ZjWP3tjpH7tqkEo1MWgtVb+XFwdTHqav?=
 =?us-ascii?Q?7WMUfayFkQOlhgfwCPlPhvMIfkAB0Qw0GswWd6FmpwdqaDte7aOHvbktOeoq?=
 =?us-ascii?Q?KENWn2JWIsji1uMs/fp2OYJ3T+awMJRuh3FkdsWrA1wbaCy7n1uqouBcMuyy?=
 =?us-ascii?Q?6JI/1DAxvSo1hAOBbcgVR2adCmMRlU3lNnsZAJ2zxMZoTumDpmG8YGPtqsSi?=
 =?us-ascii?Q?ONDJkZNKMmk2LoPNTgPA7nBzZrRyZemPmRnKBO8nHk86aoGzk6znWxHrfJgA?=
 =?us-ascii?Q?Vo6oNyNTiOCi4+JiDxorwvvgo3/c8pcEQ2CUHIGqQzN9gApkGH8hyrbUT4Ya?=
 =?us-ascii?Q?PVmO6k+H2mJ6tVppW8TYCP2ezfoDcKhvyj6WeNabF+JRZbYudKlniKVHAC/3?=
 =?us-ascii?Q?4WN62UxnoQvugY0xmHHoK73Kf4Mfzh7+8Vo9LkqTapCCIth+IuTED4XkITbX?=
 =?us-ascii?Q?uHD25g4oaV4JxTevQrUW2bWVcBZzn5GuX+XOF+fd1b2ETjL/RxYv2/nueXT1?=
 =?us-ascii?Q?d4p1x0ium0mGcMer0mOOoRVm2bctAfUP1XH7iRzPGOWbh9H78vMl2Iymbgc0?=
 =?us-ascii?Q?ob1oXh7Kp7qZxBFzJNuY99ywFdAvk4mVVVz5JInKVQGhwlhPduB7N3I7QwWF?=
 =?us-ascii?Q?Bepgqj9h2kPFHISsWDSte9fbOvZzvKoOum4WkqaoeI+gSOQs5ak9pyR+7g9m?=
 =?us-ascii?Q?hpNW/bImw7optLtQgtNgIOUpv1tD1+xMvHATQPpeLJMHhT+8tO3S1p71qufC?=
 =?us-ascii?Q?XUC78GyH6ce82ZHctq7aD25JC0Im/hNnvzIWf5xJfdFrar/ZSGlZ0xQE/fZs?=
 =?us-ascii?Q?CB/1IO9U4qcyqtKaacO1MQCgfzx7GG1GMPKtpR5V0bxcxnyAY11oh3ib41rS?=
 =?us-ascii?Q?O86pyIsApdmCHBubvJywncNm1OG/L7pXqx+c/qzf5iqd8wB6+p4JnpdngcxW?=
 =?us-ascii?Q?A2WHFFTXnwdnhmo83HHUfqTZZNNCVwe7MofSWS+otrgivJ1PT6z+2bI13A4W?=
 =?us-ascii?Q?2zMPqMQNa6ATvflpWMS2RUJ1rrgXIF5ERlh7i6bLtBtVKm4JOvZtDutmgoj+?=
 =?us-ascii?Q?fNt5WruN8OfoNgHxqZXRqENpAf8REaRQARjjgVFrndNJArQ2TPe4ycr43HMM?=
 =?us-ascii?Q?Kf14+ThBMznR96Zha+m7fXgTybfnvPn923MKyCmSP+rrPrWDFIU6hElECqq9?=
 =?us-ascii?Q?i8WwX4ckVAJbIf5E9fGjGaCReGH5PfAr/b173mwT3u6jKLUp2Lu+hW2ys0HZ?=
 =?us-ascii?Q?2L34+TeGLxxLfOlPRhXaIXWNPk7Ru6LSVh83jAggq3v1Rt/+nDs1v4PTEP2K?=
 =?us-ascii?Q?Uh3cA0L5Ft1Y5qKioNeL9atYgBfNuCOyrqjzaWNs?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1e2ed80-2db7-4fb8-093f-08dd30bb9e39
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 14:40:52.9306
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k5kjeqJhmJ/LfZ+5EIPrbHrYxLMqPeEeHUBbhemrOLGuee3ohxrll+TSDLmBlBFY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6537
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B8D7E447B5
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.102.43:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.102.43:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[23];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: 3XYRJ2ROXGGF6OEF544L4WLL6DS3KJDD
X-Message-ID-Hash: 3XYRJ2ROXGGF6OEF544L4WLL6DS3KJDD
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 08/12] vfio/pci: Create host unaccessible dma-buf for private device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3XYRJ2ROXGGF6OEF544L4WLL6DS3KJDD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 09, 2025 at 12:57:58AM +0800, Xu Yilun wrote:
> On Wed, Jan 08, 2025 at 09:30:26AM -0400, Jason Gunthorpe wrote:
> > On Tue, Jan 07, 2025 at 10:27:15PM +0800, Xu Yilun wrote:
> > > Add a flag for ioctl(VFIO_DEVICE_BIND_IOMMUFD) to mark a device as
> > > for private assignment. For these private assigned devices, disallow
> > > host accessing their MMIO resources.
> > 
> > Why? Shouldn't the VMM simply not call mmap? Why does the kernel have
> > to enforce this?
> 
> MM.. maybe I should not say 'host', instead 'userspace'.
> 
> I think the kernel part VMM (KVM) has the responsibility to enforce the
> correct behavior of the userspace part VMM (QEMU). QEMU has no way to
> touch private memory/MMIO intentionally or accidently. IIUC that's one
> of the initiative guest_memfd is introduced for private memory. Private
> MMIO follows.

Okay, but then why is it a flag like that? I'm expecting a much
broader system here to make the VFIO device into a confidential device
(like setup the TDI) where we'd have to enforce the private things,
communicate with some secure world to assign it, and so on.

I want to see a fuller solution to the CC problem in VFIO before we
can be sure what is the correct UAPI. In other words, make the
VFIO device into a CC device should also prevent mmaping it and so on.

So, I would take this out and defer VFIO enforcment to a series which
does fuller CC enablement of VFIO.

The precursor work should just be avoiding requiring a VMA when
installing VFIO MMIO into the KVM and IOMMU stage 2 mappings. Ie by
using a FD to get the CPU pfns into iommufd and kvm as you are
showing.

This works just fine for non-CC devices anyhow and is the necessary
building block for making a TDI interface in VFIO.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
