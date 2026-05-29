Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJAoFeIbGmo+1ggAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 30 May 2026 01:06:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D36DA60999E
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 30 May 2026 01:06:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8180C40499
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 23:06:08 +0000 (UTC)
Received: from BN8PR05CU002.outbound.protection.outlook.com (mail-eastus2azon11011059.outbound.protection.outlook.com [52.101.57.59])
	by lists.linaro.org (Postfix) with ESMTPS id E6E0F3F75F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 May 2026 23:05:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=l3Ng2q8e;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.57.59 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=edksMy7JlPiv04a+YjUJLi5EIvKFqGZRo21iibTGTA2GB7odUiflr+nKlzunmQPeCM+RQ+HrMqhL24Wh6vseWzE0Rb7sQFcBszhrEYqlKU6nJ7jVPi4WFbHaiXq9Hbt6gqFNpuDih2D46fM9NOIFDqUdgXG+FMc0iIYzg+gMhC23cZ+4luRXkBXbRZpTkFASb7m3C2WpcIy8Y6Xj8uYEn4xkv/gibVP9cwNFKU7DYgBeCq7VedRRsl/8zvrlUrVvBbeSJjcKYhd5A2tVvwQYCw4d2BDt3RvZKp496fPlFWpdhQYXhPhIPemgLdabL9QFULTQVTprmTHsc/ZOat9tug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rrXUordAcCsxjK8J1Ixlzg2ge5OitCdOBt3xcZXadRc=;
 b=OX9NFVk0pPs2ctLZPjM9tj0pD5ankv/SUeW8ByY8cUsyMeWZwPAfsRrwbBttc4DNmtAyIE6ShUJ1L9Tn6rBicsd7SZC3z+DgfowKLIT/ydN+FvVTqJktokefSHDzLiHQtly5S0HTQdaucxWZhgRT3F+rSlGD1yqZFMl89jAyhjPyOo2yHbnfUXmKdih1q9EmpJVFHCeNbUdt5uEW4LIfvGS8zKit6Qx4Cel+ZehST6NIycwIxSa3bHMOvBVLBmRtxSF+sMDbDCwTD9ZrNys2bNrHdn3No2qooERcdCuycIb+N+AzOH/3wrnVly2PfWqg366Td6qO31swC3lli/LwpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrXUordAcCsxjK8J1Ixlzg2ge5OitCdOBt3xcZXadRc=;
 b=l3Ng2q8eiCy90t2eKUjF2Q7UCDAiw4jgPWeSW3Rqps8Nyrb2pVtUeRW4YKpYroqjJwbrmWOSh/i8o6JKPr5s/ZQSXJ/kanjpZojKlyNHWe41+lbZVQ6362JvAKkKUvrqYCFLu/xfai5RNSW7ukA7Kvc+rpUQUd/roDgITBRiXhzFoCULltvQgdNsk8YcvT8epAxyO10HbSGSLdgNEJsNbDOSvk/jOO391k/tinn/7MF0RydbdXuStiF18HqlSkAnoJsopJ5YU2Fs6RXMrM0sltAjV7+fW4n4RDmuHUT+9z+rwcosGTjLL4KeqJ1WilMg0ZyQ0a+azC4yg0MLLJ1XFA==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by SN7PR12MB8435.namprd12.prod.outlook.com (2603:10b6:806:2e2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Fri, 29 May
 2026 23:05:54 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%4]) with mapi id 15.21.0071.011; Fri, 29 May 2026
 23:05:54 +0000
Date: Fri, 29 May 2026 20:05:53 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Alex Williamson <alex.williamson@nvidia.com>
Message-ID: <20260529230553.GE3195266@nvidia.com>
References: <20260527102319.100128-1-mattev@meta.com>
 <20260527102319.100128-2-mattev@meta.com>
 <20260527150946.312b3042@nvidia.com>
Content-Disposition: inline
In-Reply-To: <20260527150946.312b3042@nvidia.com>
X-ClientProxiedBy: YT4PR01CA0457.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:d6::27) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|SN7PR12MB8435:EE_
X-MS-Office365-Filtering-Correlation-Id: bc427a06-c47d-4e54-d782-08debdd6d5ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|56012099006|4143699003|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	cpd79Yy5ZDbF6crmEWoV7Mzf8DOjw3RJTqfABohrxnhcgGN2mRhk3KabnSeSgJYslBHYtMM1V2wZ4D9og1Jjxc8cyPEG4WshdIQpYyG9Ek3dDl+qnS7j1FcbOpIKVH7NbkqCIFDyBZRjQ8VREKVTaVtWc04PugNjaG3sPKPgzbt4R6iGj0aWct06+ymNxSJT0hWbyNBcQgDySUNJjpqsDPvaxX64YWHpwWspfZ/PIBaqV8pQk3qDmLFlLbpeCE3ni8stO4vUux6IBusa1NHtyI8XSz1Gglr+0AoqlS5Ykdx050a8ajY6n1b5Xk3t2rEbed7TrUGfwYw/NGqulfuDf4G52kZbEhk63HHyuE3ILFWArud63JNzP7Y6Pl03GxJ0guCx5yngQPa2rxfA1JcHUbBFijrqVvvv+uIvtImR95xEGaHrCLsy2Josq4DdappNLWNgMMHBw5UBvSq3JTHhR5PQVvnuGNgpgUUokiFY7iDlgXDzbeRI1dBgmPtigZJLzXQeJibqoj+TFRgLDuluxTzaOGbz6oPhfX5tQNizFyBkrVcyVoGR4Bf69IkLmBjH1aIwKVOjYteTSjbKbmujOi7oCPTJvU9F8NCSWc+E9GZHlakSML5058qzGMfpXrl1bvMC9IVfx3w9rw8ZQeZsERBQFenSoJC8a3N58DYtcDLCc2NjZqmKaXRT9fRgaBcCC5s6MSLHrYM3pc8Xf6za6g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?DZEQ1eDRFRojqt+doPd/0pTuE6O2oaRyVQ6FLIN9qt9v79+T0ZZ8S9CG/Ydq?=
 =?us-ascii?Q?LliZleAC8hvS+isX3n3E/1yEp4Tcrz6zFoq/m735N1kUQ8GLV2nzUrbZpA7F?=
 =?us-ascii?Q?vgg4ILL30q0aDVrVrAsn04JhFWle60psvqVec+DxYAIVvQ14qxgIBl0lQkv4?=
 =?us-ascii?Q?xNcYMsqiAyIXv8FUATxXMtTuo2/A7WDltVPkmIfQ6cY21r/8odl5qa1IQdnE?=
 =?us-ascii?Q?iA99MVh4gPSCuRSHWkE7PV6RKmE0g3Vu0NRVfLvpRGUGLTNURAaX6hvzLKRN?=
 =?us-ascii?Q?uSQqCEJWBeajBV2g3/gZhBJLTmvt/a8h+/mC3aFx5zKh6ceQiblcOmnIZSBW?=
 =?us-ascii?Q?1yJzkzw9OJkZ/0YCIn93ONBCuporgb8NrmMLCWT0p6eAZDZ8GHMUuT0gO/Lr?=
 =?us-ascii?Q?VivQ+tkPMxxrX2OpRi5D+JGG5wLG/eU+YYgNgpNgz27JoqggTtFSALOBaXKu?=
 =?us-ascii?Q?IOXcdZI0yrXAipheXTve75iIxpQbIYEWhSqYYdQeB3LrXN4ybW7VNYPW2HMA?=
 =?us-ascii?Q?ElT8bzKNbE2sbHEpsOB9OVCLgr9YoiAPo6C3uSUJ4Av19bgJ+qknwQQh5ZFS?=
 =?us-ascii?Q?qDgnFBO6xq8Mt1WZQPoK6NX8XfCHyZl15pZCaYz6HH7tXUu4VK0cgX9Wenkf?=
 =?us-ascii?Q?10ud7ol6Njb8OLfhOyViseKRkJ9gTNfD+4bJ2y/VHYc+L7qtzAyfyRYKxlqq?=
 =?us-ascii?Q?xYwOBo65f6swiuttOje3h/sR4s0ssIZ7472Go010xyb4p9NwbKrKJtOImgPc?=
 =?us-ascii?Q?gmE+pTKjd9PoVNVL7+xpqgK1xWWnIQthoEd2XgmfI/UQznZwt973hLtB/QkI?=
 =?us-ascii?Q?epl8e14Vh7ryDTdneGP75ycrDKEP5CgN1riNLCl3sOi4aYW9N2kM0AoMqpKt?=
 =?us-ascii?Q?QL4M2FgQH00c5fAyTP72goZVfBIp8gzALa0x5a2t2t+OnV+oiFEMUdeTYLDb?=
 =?us-ascii?Q?LVkBSftvhc5f6yWilqXO5mUMRMdoKCw8cOhUEBPo5JB5Um6gKzKY7YqSsQp2?=
 =?us-ascii?Q?7CldeAyT9waql1j5RWK0oOHJ8SnTROPkAP8frRqAyapITcYOJe3KLsluLgmK?=
 =?us-ascii?Q?1WddKwYn7K0hvNQypc2iOhTvhDdAvq2Pvb63DzE0VyUEeubjmWQTbRjte14V?=
 =?us-ascii?Q?kZBIGDKIPUk/IQB2zTGXMxw6aCsJgpnhfVxAg4Duqrnd6OQ7dff3WcQev4wj?=
 =?us-ascii?Q?aG4yBhWoNrnAciClMOVkTNtljqwbaAqWwpF5l5+CtNSDmvchukQkEBtNFXID?=
 =?us-ascii?Q?2Jl2eDaMp9c4lj310YnpRG6Wn2LFY6GAnhvA9jv5nfxQaCWDdqRMZA1vuj4u?=
 =?us-ascii?Q?zkQLB+N2xCDIXGWipYPR8JC2EsJf6qMKmJSOdlMA445lKio2xBO12X5pv1LO?=
 =?us-ascii?Q?zWPmHywV9Ie/NWVHWF09vPRcV2xZGoePLFKWTTqpeSP0JtlK+m4uwLSLM2Eb?=
 =?us-ascii?Q?U0lcHroftbph71bmeb7D97CP7KcB0DcwOejrfB6cXubECDeEfv0nSy2imGo9?=
 =?us-ascii?Q?UWpptL9950swfcuC1DfotnCJ5cC6Oc49wJlyfej/YyeGgkc2ysZX9lmdDiZE?=
 =?us-ascii?Q?megKbrq/aNFejHOq1kMkjiwgYAxWU4fOpR3xMQr9/S3IbwMvFELaKcVSQNpc?=
 =?us-ascii?Q?wgeHjzoGuI67YmYB/oeYQ0zzhosgINE7iHQh8X+zUbKq0YQBYoKEVbR7kTAu?=
 =?us-ascii?Q?fExY3qbaKUTbJhsMrPZ1FHQ5/HSaTn9+3Z8t5zfMCuh4vqiF?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc427a06-c47d-4e54-d782-08debdd6d5ef
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 23:05:54.7174
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aIvvPZIb23L0qqHVpuqpDjMpH+6znoaEauLJnjSF9CFJui3drdFrodH69AlFLg3H
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8435
X-Spamd-Bar: ---
Message-ID-Hash: OKM3OBPUQNBNHW4Q7A4GZQMX2F5JQLEX
X-Message-ID-Hash: OKM3OBPUQNBNHW4Q7A4GZQMX2F5JQLEX
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Matt Evans <mattev@meta.com>, Leon Romanovsky <leon@kernel.org>, Alex Mastro <amastro@fb.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-pci@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/9] PCI/P2PDMA: Add CONFIG_PCI_P2PDMA_CORE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OKM3OBPUQNBNHW4Q7A4GZQMX2F5JQLEX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-]
X-Rspamd-Queue-Id: D36DA60999E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 27, 2026 at 03:09:46PM -0600, Alex Williamson wrote:
> This deserves a /* CONFIG_PCI_P2PDMA */ reference like the previous
> long span, though potentially a better solution would be to split the
> core code out to a separate file with shared header.  I asked opus to
> see what this would look like and it generated the patch below
> (unverified, compile tested only).  Bigger diff, harder to follow
> blame, but the shape of the core is much more apparent.  You're welcome
> to take or leave it.

I think it is a good idea, it will make it easier to add more stuff to
these different aspects.

Really they are now two different things with one layered on top of
the other.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
