Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4A8C201E5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Oct 2025 13:57:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DAD33F7D3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Oct 2025 12:57:53 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012014.outbound.protection.outlook.com [52.101.48.14])
	by lists.linaro.org (Postfix) with ESMTPS id 5D5303F6C7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Oct 2025 12:57:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=QQpGO16V;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.48.14 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hCcckS5POJtplmiIdWv5LEuni2NRoZ/x9k406dQ671XUaNyZj0j0aKaG1bSB08gP57BI8k6Fx0Pdwd+EbSpX2Pgty0LV0J1422ONLp7a7KzOHOW3tLOOTWQ9l2khFlNcSqan41v4XyNcajBjS/37v4G2IQy3k+BJokljSZOSbX+hy9LydA8e+y/GCVyElcHa7VUdMNMQJtgWLn0uuyxI80kbfkrKEyNVbRA39tZ1FMJ2JAQtVYSIQ9AM85PNdcg6AWxsDWkwhPfIryiv5WYvxb8lc/0etnbLzTksgfOHKj+JXZLv2HRn17YgNXKenRO4Fm2l5FuTAIg3tttFSdVzcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UAn9FBNZzS1aqHjjo/zdfJFq2Dkyl+CesaEN3VsR990=;
 b=VBN3BIuSIAsK9HNtBl9Yj9UXnm71Y6GazhnxVtc3azlHT7XVKxtQHGsIgFPxS7phhYXiwv73q/Ugq2jeny4Q7B8kZRMkPJw7+ctzVPgMspTjZGiG8N/5ia2JyByBkPKFncabTX23BZeKJIloJ7m/h7AOrUWXQTrHkUPoHQPz+vZOuh73q4pNXJMIcFrWtLZaLN8DZIWLnKk+8naink+PQz/1GTuJCPosQ1dewnHN6i2aFj6knwUlNPZisrORqacokYI0nheS2c3WVrfVmP7Q1P1ti0YjtiTr8az4nBLcFhPOwsyzrnZKIjvQobFrqTxbHBcooa74rEtOBJFrXD1FBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UAn9FBNZzS1aqHjjo/zdfJFq2Dkyl+CesaEN3VsR990=;
 b=QQpGO16VjGUXmD27Ngs599tizEztGRQ3ocsOn/ioaAJ3W6u0mXvahh3MuMDH6QJQ4mCaq7yi6R+j0HlGvgB8/04Z4Kh/a3QChLLyO0JgRQKqqUjjHOP3m+zOG5wUV3BdqAJnwqCBngqIpyyBfSldEHFEM62iE6/4P8UdGTk1wfSgFKNXh2RXiRq/I7qTncvfPwNVBhZ7Gw8AVzb3T8XkINwOznXUyc2zjTP0t798OA/ibPJQzPkhYzXuvnAgnMionHncb8RQNzkJZzMLPlTuBT0mcWd8XeENCT5ALGFnNyc7ziLEXFJrlQXSyagFq4EHEBaxqQjnD+TYtuksvOEipg==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by IA0PR12MB7650.namprd12.prod.outlook.com (2603:10b6:208:436::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Thu, 30 Oct
 2025 12:57:37 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9275.011; Thu, 30 Oct 2025
 12:57:36 +0000
Date: Thu, 30 Oct 2025 09:57:35 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20251030125735.GO1018328@nvidia.com>
References: <cover.1760368250.git.leon@kernel.org>
 <72ecaa13864ca346797e342d23a7929562788148.1760368250.git.leon@kernel.org>
 <CAAywjhRb6Nwmzy+QWFPH9Zkn-xvtvOktNjAZ8HMpM2wmVw2rjw@mail.gmail.com>
 <20251030064818.GA60090@unreal>
Content-Disposition: inline
In-Reply-To: <20251030064818.GA60090@unreal>
X-ClientProxiedBy: BLAPR03CA0172.namprd03.prod.outlook.com
 (2603:10b6:208:32f::12) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|IA0PR12MB7650:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e1e564e-a984-4cce-30c4-08de17b3e60f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?YbPPKEkFTwhCdB9779zYYOHgYvPtqxsgP9S2JTCKW38Cy+yEULjxgoCg7EFD?=
 =?us-ascii?Q?pWQ6eDn0a5LNHQv1vb2fbA8w+//B8Enc9yf8StNSYNH1C32zmpmCYGEX7m97?=
 =?us-ascii?Q?kcfvCpVI0r5DU2EAcwej+IQjA8Vdjf4hq9MN2JC8OxDO7v/Ov78khkp4A7yd?=
 =?us-ascii?Q?CPWSD2fJTp5aaMVaNYFJiwOVbP0AqFdDvMw89yZFzad9Nf75k9doRIGTJwfH?=
 =?us-ascii?Q?tneF4pMxxF3Wc4l+ytwzBzbEP+wTSysLs3cND5XAawkWSykiGPchUMcblN1s?=
 =?us-ascii?Q?Iy39/P4EWGyPNGn6EKc0vYCnaX2nwmsJpsclJhBs36YqyqicEGfTNs1nSFx+?=
 =?us-ascii?Q?SuWeyGxEZ8eYexCedWq6chz0IwTzblAU5RCltDh5r86YQg2ot0xBGuktUWfe?=
 =?us-ascii?Q?FzXyhj7wy7TPXz5jL8XYFPKt17QEb67RCEAryNT5rPakqaQVrwW1cQCH2Skc?=
 =?us-ascii?Q?cVbp76g5UVxNqp8y+sztG/F+053cNKvpYWB+1WpA3Uvl+eC0nqdy9fMDM/34?=
 =?us-ascii?Q?pX5Pg7r1hlMF/fjcu3dzn03rdN8nb00+YxQiN/Vh5YVTq0B/ZYlecJfmwzeY?=
 =?us-ascii?Q?M8/FIzBKkxcl6jRidNyYfPE2J+GQmMa481/lARU1JMFu25bz5u1XrM7RAY+4?=
 =?us-ascii?Q?B07USLWhwCz+PaI2ogdvfTx0AdC2xsb+hjvfDb73jSrekHBmFA7VB5CV3col?=
 =?us-ascii?Q?1VGGxVx9d/PmvzWs5B+hJ0G3k4CIPFgsvAhSnNYpgK/uYgyeVN1wdRJzT/qe?=
 =?us-ascii?Q?VRcKpdic+EyU7Lt+QyVDrbUFgpveLKyVOIkG9fh23++8vFltatHxKRQp9vbY?=
 =?us-ascii?Q?cYQDsjQWwxl7+f5JZq6TN13C+gMT6kiBw8m7m9WDKt9N06Svj5KKiGz/EyFy?=
 =?us-ascii?Q?zgL+1lTselU+Lqlp4gSo3iVUqmY5ExlC44fauk+8Lnbc5b5x6vehb0UWicpa?=
 =?us-ascii?Q?dmNs1kIHzPiwGEgrQm3g6iLjge55aOLAQlf75MgBTnwZ2WZyHR39aUciSuag?=
 =?us-ascii?Q?vtcxn2vvFJSquTESIejcIBj651q9/PGNXbMN/ZIRcSrgaF1xUr/RA01MSLln?=
 =?us-ascii?Q?qT0M0+OH1mINOm+IavzDIimoBe+rQvAE1kuz4XaMErXsZiQG5vu9XZAKiBkC?=
 =?us-ascii?Q?+dqmRJAYdchavT2mA58R4jXXJfEKGDsGBS4vUh9+D0bCGLgp0/HpfCjY1R0X?=
 =?us-ascii?Q?7NAy0ChsTEC9UtqoxbEZ8lErbzjWDZKCstsrZQggWLe0LLLneJ+m9eDBu/Cd?=
 =?us-ascii?Q?Z4msVIuXqyn9E8TbcG5iePZpuyFxd/3BDJkCmNbYcfjycKlbRsxEj5o0WHnc?=
 =?us-ascii?Q?4nXvX8rG4h7Hl3DeS+S8ZqMsfiD9ySZ9Cseu12MciJ1wcewvpG1rgDkInlDX?=
 =?us-ascii?Q?XoVPvESXT5eY/cbHHSKBH907p2eSgu+4jFkJO4FKzr/hwlLQMDIdUtcER1oB?=
 =?us-ascii?Q?uE3douNJaQ4IV6TGdh5mLZoB/N/bgLDM?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?hOQW+g7t7ouLaItZ/w7egQ8eRlTxEeO3/seSGdPepyWF3N8EA9souRk4Od8L?=
 =?us-ascii?Q?jU8F8UE+U4o10sctnhF7CT4fF8b4w+JrHvU3mivO12bcw3wwNS9cL0OFuCtR?=
 =?us-ascii?Q?+sy+6b1dJvL2yfjKSWRhJXSKABf04qNr/9AmScQL6b3e8s2e3bn/8mXImypl?=
 =?us-ascii?Q?juI2Sc6wC1I7PC3wBMvFv+C3SprJxmWKjcBgEL3v81fX755RrQAgEdzCiCtd?=
 =?us-ascii?Q?DFuZMRKUD0gW2LpePEdKmJ1udgNgyVioqcQAiSzDL/oqw2JeYNbrLUaV91P7?=
 =?us-ascii?Q?JAlWoKEeQk3np8PaqgOK685M0H0S9ahQQUpQRVHbxMolu8pdNTQ1swUYut8o?=
 =?us-ascii?Q?dddmSZT1Yw01qrg03/NYweoypfo30ylrDcLIFzw+eBJgFwpntQYu/gUzdsek?=
 =?us-ascii?Q?GPolZTS/hfC43GLExOF1nEwZVRWI5I35hLUSTTpA20MvvlKFUwlmNs6pIks9?=
 =?us-ascii?Q?7FuJ54V3EpK+dpQjZuO7Rc5VhOQdUF2caaI4ST5HMroiFVp0cFBWyIB3aF/C?=
 =?us-ascii?Q?NXEMWRonZf22pDSx5CvAEmHj8enDP41qvczTWaVu3Y7StjZORlFqIpC6rChc?=
 =?us-ascii?Q?YGS/Kz6T3O51NitpctyzVfyXX+xHySfXP0i8bftQscscQ1FFM4g29URLXrcf?=
 =?us-ascii?Q?uP4RO1eaW0Qmf9o9OdcS2zUJxZrO5Zveb2RHSNNQapwrnhU6vNXTBtLJS8gn?=
 =?us-ascii?Q?UC2Mg1LpIX6qFOmfW/2stYDje8Lm625S0a6WYY/gwNsQwYf7mj/Oi3xAefju?=
 =?us-ascii?Q?9BrNQc0pJf56P1lwyPJxXIVBsAZ4SXlgtxdmxP+aLwNBHZDK9JqMJVUjSdEz?=
 =?us-ascii?Q?eoE3Sas6oZD+h67MthSLfQgRja72OZ7fVfQLvpJzgldFln0qDVRDILonCu6z?=
 =?us-ascii?Q?9kLaq4x6OG7vZ9Gi5fnxf1igZtqppm+VzbF4T3cslec2VTDQNo+c0GdHXLBs?=
 =?us-ascii?Q?EGs63oFRCaHIEzTaiRnnL6Qv2YkgWinYHoMCPmvOR3oDrMc2NAmXVhQCUezJ?=
 =?us-ascii?Q?96E1SU50mSjc4QEZVQFfWVQMI03eGrBZrmEv1kOK6mJz6y3Jdhz6clsw1hJ8?=
 =?us-ascii?Q?iG3UCHT4zPCrJ+FkUU23PbAwCy7JHBZ6tHoe1mA6iSVtdxvWH9XbPHINr/la?=
 =?us-ascii?Q?Qui7HFYQlsrU+tzwIRtp1VeqIpCxhH3/Pn4/qLJx0BS90ljG8GdXCxdujFyB?=
 =?us-ascii?Q?BCka79c8CABff7MoanrXdpel+4BqTKmHOwc6Nut30MAhhJM9xbZ4Ogj/zzNj?=
 =?us-ascii?Q?a1wIlnMNF64/J61iGJ4qEZyB2Xtypppp39fEr7JQjS0VPRwmaq+YYKt1EJlK?=
 =?us-ascii?Q?029o5+RybfIAblA9MYwNsOaUp17tGdSaDcdTVKvTHEzosoVNAhfunDjZOj6Q?=
 =?us-ascii?Q?S0LPEzyQMs1Qr7Louxa9Yt3AT2Za77OUiHnwFq2eYJ03HIVHd+s+Hds5M+x4?=
 =?us-ascii?Q?xBagGrh9vFrBlL0iWa1Y+kxN3BjsJBOGewImD+HNLviIHMSAob8PSq/47ilh?=
 =?us-ascii?Q?S+oJLjW5h8fdodbNNOfOkbO2h8lAoqQ7uEwRojcH21TEPjWjtKk8mpiPczm9?=
 =?us-ascii?Q?jnqIIkKcC7/nh8xN7sw=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e1e564e-a984-4cce-30c4-08de17b3e60f
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 12:57:36.1523
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O4/NoY/baI8hySY8ZiIWOimHvOYvb48Jqc2lgAZZVl6nY+/aM4xrp2y3LpCmEw7C
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7650
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5D5303F6C7
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.48.14:from];
	DWL_DNSWL_BLOCKED(0.00)[Nvidia.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[52.101.48.14:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[2603:10b6:208:c1::17:received];
	NEURAL_HAM(-0.00)[-0.996];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 724WRL6STSWYKRV5RVYWQXFFVYKNHCIJ
X-Message-ID-Hash: 724WRL6STSWYKRV5RVYWQXFFVYKNHCIJ
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Samiullah Khawaja <skhawaja@google.com>, Alex Williamson <alex.williamson@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bhelgaas@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Jens Axboe <axboe@kernel.dk>, Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mm@kvack.org, linux-pci@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 9/9] vfio/pci: Add dma-buf export support for MMIO regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/724WRL6STSWYKRV5RVYWQXFFVYKNHCIJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Oct 30, 2025 at 08:48:18AM +0200, Leon Romanovsky wrote:
> > > +void vfio_pci_dma_buf_move(struct vfio_pci_core_device *vdev, bool revoked)
> > > +{
> > > +       struct vfio_pci_dma_buf *priv;
> > > +       struct vfio_pci_dma_buf *tmp;
> > > +
> > > +       lockdep_assert_held_write(&vdev->memory_lock);
> > > +
> > > +       list_for_each_entry_safe(priv, tmp, &vdev->dmabufs, dmabufs_elm) {
> > > +               if (!get_file_active(&priv->dmabuf->file))
> > > +                       continue;
> > > +
> > > +               if (priv->revoked != revoked) {
> > > +                       dma_resv_lock(priv->dmabuf->resv, NULL);
> > > +                       priv->revoked = revoked;
> > > +                       dma_buf_move_notify(priv->dmabuf);
> > 
> > I think this should only be called when revoked is true, otherwise
> > this will be calling move_notify on the already revoked dmabuf
> > attachments.
> 
> This case is protected by "if (priv->revoked)" check both in
> vfio_pci_dma_buf_map and vfio_pci_dma_buf_attach. They will prevent
> DMABUF recreation if revoked is false.

The point was to call it when revoked becomes false as well, as that
gives the importing driver an opportunity to restore any mapping it
had.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
