Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F93BA16D68
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 14:29:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AF724496C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 13:29:00 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2054.outbound.protection.outlook.com [40.107.93.54])
	by lists.linaro.org (Postfix) with ESMTPS id 9F94B3F5D6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Jan 2025 13:28:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=E+SpMnQd;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.93.54 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qahOrKKfsa5y18UAnCJHCApodLT+NUwCfCYmx6FQA20buNRL5xNdvpwcP3D9AFtzyhNR0eDq9VGzubis+fgSfimuHYlc8aal9q0jxUx7TIaOagZK0SSmp8K7/1G7PKqeFCGQ0MIyjGmDSX8j3JTWIWRCXCm3koCwWIYCsddJHPjtq4/QPJ2zjgemjzYe1zbf2lxVBhhbGaMuGWr26m2lhrrCx8Vo5JmhzefuG29GFh0tKAbU1j2ayzikIVfUEjtbFm7+gbhB+w29FnA5eCoiWl31TKP9Sre8JdHIrues6pFz8Ln3J4tI2B2Llet3CCFW7DxkbSmQYFSbhEWcE9H53g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YjY2hhx/sk+IJ9M7ap9qZpMNeLEjNaQ+Ctz4D/q8FeI=;
 b=A81gRw+6icN6mphV/qJ7RyHrev4FleXbBzDWRZ0OJ+ceUR2VUNLy29KAvpEBx0/Xu12+Zq2KapsmeRsP1j82ine2zlIUMstN5eKSUfx2DW5KH7axWKe0+yIYuJFegOnBVbxnSCQd4uNEj5HDv2JEo/A6oSZGx7a6+FwevQ4qnzRTjqpqPlxjYIqtY6j2l2jzn/zkpq0LUvfAcyQFUuXSrEVw+MvFr3zOFFzv+k8f4pO1x3YtmUplHtApBwnzM98/m0A5OdtG0mjqlpBh8PMKgJ/IxtT12MO1zcBuRiItUsLk2pTVvPcVIaK1ybr5KrSL5zKj4IQfryjHE67oU+/qAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YjY2hhx/sk+IJ9M7ap9qZpMNeLEjNaQ+Ctz4D/q8FeI=;
 b=E+SpMnQdcSGn8t7dL00HUteGXD9hGr75TNCvK37VQ1P6iaZaiqflf02fHtZdSQtb4cVs6zAV1PnMqAszqWymW9i3jfJXpNDsUoMtOkVfIXuzCsRwQvXByKGElKefih9in/h/8WmsZdqqdAA2XQvMOb/QpIFAphawGbxfGvCpqHJ4elqnn2wp/lDv4EJLnjTfytUC/mXlXgoCRZFPzWeGp4rsCZiwPwCRYu38LR1BKQgYxJDBaDIEnwr0bt4C9FHr8W1UP7MWFFGjSiA6TMk/St8SzrVd6DGmF49fb8/ZRnkysueF6wFogs1/c+2EeSsP+xHcg2auvPSuixnmoCZ8YQ==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by SA3PR12MB7922.namprd12.prod.outlook.com (2603:10b6:806:314::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.17; Mon, 20 Jan
 2025 13:28:44 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8356.010; Mon, 20 Jan 2025
 13:28:44 +0000
Date: Mon, 20 Jan 2025 09:28:43 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Alexey Kardashevskiy <aik@amd.com>
Message-ID: <20250120132843.GI5556@nvidia.com>
References: <20250110133116.GF5556@nvidia.com>
 <Z4Hp9jvJbhW0cqWY@yilunxu-OptiPlex-7050>
 <20250113164935.GP5556@nvidia.com>
 <ZnDGqww5SLbVD6ET@yilunxu-OptiPlex-7050>
 <20250114133553.GB5556@nvidia.com>
 <17cd9b77-4620-4883-9a6a-8d1cab822c88@amd.com>
 <20250115130102.GM5556@nvidia.com>
 <f1ac048f-64b1-4343-ab86-ad98c24a44f5@linux.intel.com>
 <20250117132523.GA5556@nvidia.com>
 <835c7751-d8ba-4af0-812f-2b3a9a91d0bc@amd.com>
Content-Disposition: inline
In-Reply-To: <835c7751-d8ba-4af0-812f-2b3a9a91d0bc@amd.com>
X-ClientProxiedBy: BN9PR03CA0176.namprd03.prod.outlook.com
 (2603:10b6:408:f4::31) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|SA3PR12MB7922:EE_
X-MS-Office365-Filtering-Correlation-Id: abb76b94-f9bf-4491-578f-08dd39565cf5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?Olvk5NpNPcL91Z1Oib4ra1Z1WgiUZ9kahjlAz+isHJjyJJdNDaEPkJybg9An?=
 =?us-ascii?Q?xnMfQ4qVw8dQXXAkjVIetT+9gQJolIBaxJgXk81G8plq/LZ5feav2Vmtf8z8?=
 =?us-ascii?Q?0wCfl4o6nGZdD/eFWaSszmaTDSn7XXwInKWmVtgdEqihBY44MHewgYKeWFeD?=
 =?us-ascii?Q?f3mi82oJyQF1fEtvsVEsf8G8wEelfLkrZUA0/YJZdmNZUh199FxJ81GOmDP6?=
 =?us-ascii?Q?o24ZL3siB0kvcbbTAKiZuTTT2Dj8eOxjoBKHx3DTFnCYs3nWDjMdESK3NoY0?=
 =?us-ascii?Q?7g6/ipS0ZUWIrV71WrIRKK+zg1pv4bUhncCpftVQyl4cihMw2N2zxgJV5pjn?=
 =?us-ascii?Q?vIhWSJAwRmdBP/dmVyOGyUZyyL7ZZWP3d13HWHaLlyU0upIiqa22Av7Yxezu?=
 =?us-ascii?Q?25YJmBLRR3n4EMvTz6Cd6uEnhpWa64NN4mxJaKezCCMSyoLzgnAOdk9X3qMl?=
 =?us-ascii?Q?HeaS9O8D7yl92nat91ptpOo4N3nYSqTWwe1NLjEW142UHkkIpqvzmnrRbSSe?=
 =?us-ascii?Q?RQwnujaLF7loBLQ9ZnSCU/EhKvZYPieAl0xLOt4oxLLVxcyxre+nYHjumZAk?=
 =?us-ascii?Q?299ae2rWOgvSJgPpNQBFa9BPXhlqeRNKQT4gOjnVXN/0/433NcuE3qVWDH95?=
 =?us-ascii?Q?QUy0IT83A4lICV/GnCKF3rYaWsI3dwEnvyutQ+txaeqm8/gRF6dk4x/AwKbR?=
 =?us-ascii?Q?poUc3kKyeasNm48ctS1TB7TalVzyWV9lieknaP9YuZYw2Xsh/ggyxlQt3HNY?=
 =?us-ascii?Q?iQyDylvBiKjwdKZxPdUrAX67VSij7Tzif15jbzNyHE2ouUJWq/Im3X81ZYsa?=
 =?us-ascii?Q?KdyD7oNI9orKSoq5/Lunzl3obblZUb2Gu3+gG9JOefm61RbCoyDBwTmcUoio?=
 =?us-ascii?Q?PM/nMWkwU1ff//4dmTzSrjknHDlHlXVIYbvUfas0ZDUmi4qfF4LtCjSR0guL?=
 =?us-ascii?Q?LECHK+SmYYBfIy6qkWT5FOyoU6QWA76kvhBzpg1YDH7OIjAz0JBEjx+G55yY?=
 =?us-ascii?Q?GNka27n0zuA+jaUjncH6YsjF8sqAgpnqycL6GhlPHDb6ajTKiUnS628qVgR5?=
 =?us-ascii?Q?rug6k5oESQtGdnlqCvDA+8MY8hH5FPCGRZq5Gu30fTDQIr9RVdPXckc69Klx?=
 =?us-ascii?Q?JTnmDoZIkeu5CqPplvdDZr/4Pm5DlgfK9XP1CKDSKXVW6yikwB0Ni1aEUnN0?=
 =?us-ascii?Q?1r8cbLamlhXG34BWdOpENYLO2gpNSPSGqsktZWYFuL4BfPdkPemVOtgBrmm9?=
 =?us-ascii?Q?+tUhhAMjCbghr6tOJ28oFQKOpiZW+H1gp6tK73hA2/zE7c1sqQ8pAvc63CJc?=
 =?us-ascii?Q?iVXgUUzdhdmmy6ZRnk/mLXSIgad+nkgklWG3UDZWQbKSku4yFaDxKSsAgKY/?=
 =?us-ascii?Q?hFrxdyOVRcBXjPZTXrpuiJLhNNUb?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?yPo8ezrRG4kNceRoUiC0LsBOyAKQHryauKx6BA/i/FtPcygWVk7hTJnPBt7X?=
 =?us-ascii?Q?OwiV33WVCvMU0+dAl2ZkmOrvlLUqz2TtJSjU8rfR3uorzUFfANYSW073eHrE?=
 =?us-ascii?Q?seMi4FmRjuK+mFLTX9LQFwFuwihEJivdhCh3id4ygAP78c1pSo5SyRk90eOM?=
 =?us-ascii?Q?Oo0S9k496ikFDCiAjosqYIzLYCAhllFYs8ymXlAAHxiLF1jOJO8G9YL8Gig2?=
 =?us-ascii?Q?WdIlgmpU6AEpEkbgp/+Iep4tE8X2RbEAGcomvlcr0zRay1VGBUkHJLgUPGhQ?=
 =?us-ascii?Q?Uec4h/4dxZEMWpvGtOW81EKGAxd711/LWIpKn06J2rjNBDI7RoO5NzTjaIYx?=
 =?us-ascii?Q?ua4hhUWtk9w1M6U1cs63M9QP2kFJSc8dTcLZuTFXfqcBgQpeYy1BP8qRnxGZ?=
 =?us-ascii?Q?wlRDUICpnsrS5cL5SJDeKwfMItCkDGwjCDoDWKA0+oYGkGkfyBh7Fry430NG?=
 =?us-ascii?Q?Qsokyd4T0WfJBFGg2S3rd1t6e/QO7vL+1SJkz60TdXfil6eOhbUWKXLUzYAp?=
 =?us-ascii?Q?jIIQG50dmEqhUJXdQqwpCa+XYsiaik7Zt3TyO+UCU1SyoJn1J52Vxk/JyzPu?=
 =?us-ascii?Q?jaA5op50EKz9xqCxnJ9f7Pz7EaREj1WZG2lD1YpwAE97QPMCpdOtBI/iAvxz?=
 =?us-ascii?Q?GKMVxOVk2gmL9muZtVkLWhZn4Grju1o8fdP/ZI5QBVBtR1vRKV1Ilr9s+ETG?=
 =?us-ascii?Q?mM2Vut/jShH+vDRTYqOEGcpGgoA2ipYG+qX48BhIbeTZBSRfXxeYTGyqQeW/?=
 =?us-ascii?Q?T8RVx76HR0GxHoyT1r++VUnAX3ICHOvYFBP7sOTTCgfPIMt23r9Xt1UmvwSF?=
 =?us-ascii?Q?UT5r+Cn2uttiiZeg4rXjjGuB9pmm//4QDnJ5zamnXyRsqfvy5iUWIdXq0OgJ?=
 =?us-ascii?Q?xOhBxU78WODLFNbsJirdnRowfkiL/Kl3HhYJllUxAyJKgaqqM2Zp43bHGOHA?=
 =?us-ascii?Q?SLxO1NAF0GRXVqKYw593fNBI/mpCh3HC4NHx8MdGvkDezPnU/e1RhOyk/ACb?=
 =?us-ascii?Q?rPcFUC2F32JNmrCPfmQTWXz//RRy7A8Ou4PupCAX22Q4cq7MMa3dwO1gtft9?=
 =?us-ascii?Q?lA0W6EQMJNx/1MqHWMoIHmQnSymjZRZ/a6O0g9wlzJr04xlvep4ITFD1xiu4?=
 =?us-ascii?Q?x9nRfsisKjkTYnAfu/TiqGoODUtm+ztDFw+a9qekAol5afh83zl7L119wGib?=
 =?us-ascii?Q?4q3XWKwSmR16Pl3irCwNWqSTexrKV7fs0cHPk5WnWKp8Fpo2CpwHMeBaa9wd?=
 =?us-ascii?Q?b/9A3b3Q5YYACaFKnkfzOlFdHf+W74hqGVbgDg09WGg4H7I8RkKWImjKdVEI?=
 =?us-ascii?Q?8/jK3CBY0Ii8kVqAV525/DD5pHvsR44zNLY2JVXOXLzf1+cfByHCUZRnK/mw?=
 =?us-ascii?Q?PMSxS1XCLPseEbLPu4moTjq/rcj0T1SraqcsIu6IlYfseEw4KBDJdgUce6n8?=
 =?us-ascii?Q?l2soh4+Js5DBF/bKmFRjMcgjxnB+2fGSCGkqcuXOZ5LbNUAnOkfatRdDavHz?=
 =?us-ascii?Q?UxifUPZL2Fb0ZEqhG5C+O5zCk34G+zZzOjCtPBBmr5Oc3EE3MqECWsa2ByPK?=
 =?us-ascii?Q?JVtU7ftaka9deb6jazY=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abb76b94-f9bf-4491-578f-08dd39565cf5
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 13:28:44.7531
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WL26YRFDqMjKQVAMRVXAHC4ttB3fxpLKEatEeYfj0mZoqxM5vVqJCqXebhKNkLFS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB7922
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9F94B3F5D6
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.32 / 15.00];
	BAYES_HAM(-1.32)[90.24%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[23];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.54:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.93.54:from];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: J6MK66CBPDZJL7W65Q7ZUH3O7FJQE6JN
X-Message-ID-Hash: J6MK66CBPDZJL7W65Q7ZUH3O7FJQE6JN
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Baolu Lu <baolu.lu@linux.intel.com>, Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 08/12] vfio/pci: Create host unaccessible dma-buf for private device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J6MK66CBPDZJL7W65Q7ZUH3O7FJQE6JN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jan 20, 2025 at 08:45:51PM +1100, Alexey Kardashevskiy wrote:

> > For CC I'm expecting the KVM fd to be the handle for the cVM, so any
> > RPCs that want to call into the secure world need the KVM FD to get
> > the cVM's identifier. Ie a "bind to cVM" RPC will need the PCI
> > information and the cVM's handle.
> 
> And keep KVM fd open until unbind? Or just for the short time to call the
> PSP?

iommufd will keep the KVM fd alive so long as the vIOMMU object
exists. Other uses for kvm require it to work like this.

> > But it also seems to me that VFIO should be able to support putting
> > the device into the RUN state without involving KVM or cVMs.
> 
> AMD's TDI bind handler in the PSP wants a guest handle ("GCTX") and a guest
> device BDFn, and VFIO has no desire to dive into this KVM business beyond
> IOMMUFD.

As in my other email, VFIO is not restricted to running VMs, useful
things should be available to apps like DPDK.

There is a use case for using TDISP and getting devices up into an
ecrypted/attested state on pure bare metal without any KVM, VFIO
should work in that use case too.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
