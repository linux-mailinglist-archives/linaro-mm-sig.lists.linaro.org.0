Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E7860A12451
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 14:01:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0801744A8D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 13:01:16 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2058.outbound.protection.outlook.com [40.107.244.58])
	by lists.linaro.org (Postfix) with ESMTPS id A98A13F622
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jan 2025 13:01:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=bTmoQGqJ;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.244.58 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q/vCHmHhYyoaw0peU54eVipX+0Yq9GdtLVIdp+yh0tNxev0QSMJZtQuuGJSUELxYhXCrCcSqVrFhXJbj22Ar0+HW+OKOGwKTahnFjIU9p9q4rQxhJB3c2Hyrv/WY2rado0u3P1hRzIQRPTXkzynXtLNk4BHv3BCj7dOeRCp4OTabrEbqIKVezZxUpxdbLiwEEXlCC2Le1t4gklVwCktzxSnsBHX034iXwcZvKHpaNck9Cn0pkKhw/G6C810s/ZYgcmoELFp0azjDkQgQJe+L0UCjOcvA605FPjNHF4EGsVaQ7bhG9OSncudVPW69CUpyxHCJYuqWa/K+pfxv1DBzHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=njqIZ527AFHZmxCQCsayx+156WoQwPeSYqtMXoN+wGc=;
 b=ZwYX+hY1HFUJgRHwYDIGWWfCe4ogyZh4aKp8cZd3KwMtvOU1ALLIueI0Kwx2TPFLo0ChIenAoq/4fXKfVTEGxKcqQHn8HumcTRMjcUVmrVEikmj7IxzGV39QMSsBWW6hIh9UNbWikmiXt14cYRYDJ4AL8fYHeuwqwTxdKwrd7y7Q3WroEppZ3NHCnhi/jkNYWwDb6bqtYcfMimF3WwasNMYmzvGpHhUvaDZNj1tlohIe0TzRF3wUaszjuOVM87aql8JJ3Z+xmaARk1umH9eTpo+QaZ2rkcSWBI6MntK8ffMkTTtxa1v4Pjtlnrmo42nQbaYniUBdSe/WADyX/TrDAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=njqIZ527AFHZmxCQCsayx+156WoQwPeSYqtMXoN+wGc=;
 b=bTmoQGqJmjZTatVEj0fe9auPYRKslVHT7kCrkcddg9/FQdurnPNl2+xbUrHF1GJmeHHDLMsHNhvAOC9/ZmoJSSkXwv8b5D1ZKKWqEpAINeB5kkuKio1rz50CpukQc83MxORDqWR+q66OKQeCJGS0krXL3xia2zh3Ndu9wSTrS7EnmXBDrruj1HL/vUGRmJ7A0Tb057JCOYEt219X+mMn8Cy5HW1tDOzmthXuoQZ8dtTI2OH+R3VT4QYpScHFJuHyTNBgLvSHnhqJDS8I5AFVrZN9gBWu/VQw4cAmucFDlVodcpltOG1Sjn9kpYOfTKOWxg/WExFfr488AXHF3sPeOQ==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by DM4PR12MB6232.namprd12.prod.outlook.com (2603:10b6:8:a5::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8356.13; Wed, 15 Jan 2025 13:01:03 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 13:01:03 +0000
Date: Wed, 15 Jan 2025 09:01:02 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Alexey Kardashevskiy <aik@amd.com>
Message-ID: <20250115130102.GM5556@nvidia.com>
References: <20250108133026.GQ5556@nvidia.com>
 <Z36ulpCoJAllp4fP@yilunxu-OptiPlex-7050>
 <20250109144051.GX5556@nvidia.com>
 <Z3/7/PQCLi1GE5Ry@yilunxu-OptiPlex-7050>
 <20250110133116.GF5556@nvidia.com>
 <Z4Hp9jvJbhW0cqWY@yilunxu-OptiPlex-7050>
 <20250113164935.GP5556@nvidia.com>
 <ZnDGqww5SLbVD6ET@yilunxu-OptiPlex-7050>
 <20250114133553.GB5556@nvidia.com>
 <17cd9b77-4620-4883-9a6a-8d1cab822c88@amd.com>
Content-Disposition: inline
In-Reply-To: <17cd9b77-4620-4883-9a6a-8d1cab822c88@amd.com>
X-ClientProxiedBy: BL1PR13CA0029.namprd13.prod.outlook.com
 (2603:10b6:208:256::34) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|DM4PR12MB6232:EE_
X-MS-Office365-Filtering-Correlation-Id: 136ec99b-ee8e-456e-f40c-08dd3564aaa4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?ODVgA62dzL1n/7PPXe5AA0h8G84Z8WuDGjZhUNPaXEkv5Oba15yFYfeHDGcx?=
 =?us-ascii?Q?a/kGQda/Wr+jKv0wU2hBMslSSS6I+Lh2l/GFO/NlQOK2nrGeKdPYLtlhiZ+a?=
 =?us-ascii?Q?Kg0qnXAYonMj/NGOQNPCdlIpFH+oHaXAkhI6YUhwFZ7McauHTWgHLAmTF9ne?=
 =?us-ascii?Q?9gWtoFtDxwhp3RsfCHS39TkdSR/l97/eLOQ5FbmZ7ys18O6cHYaQpXgzy6Ub?=
 =?us-ascii?Q?bOa1HATVSzDqtGWy30YZM1brklC2/tNgj4HGOdy+4jpE5D8PMg1bjh8Re/t5?=
 =?us-ascii?Q?NutmtgvUu/BDobzkwnA7HRl7rxZVrQYqyfVYZEUAy80FGsQ05s6OO2YuhCr5?=
 =?us-ascii?Q?1FbENpm0mLjzZ5MHZw5t85aIb2oMVvxTLZ+nodeaJ9tPneQ8boU3ZzoFmAdL?=
 =?us-ascii?Q?4SNzJNTNE11yrCY8ag5BvLg8bKCUSEaCwHJ5KmDjtdf606k0taGbpiQDTMtt?=
 =?us-ascii?Q?ejcaipBpE6hymtMblyb19WQkhSbcxJDvhYQod59wYwCvIy41UlbMBj0ArkV6?=
 =?us-ascii?Q?m/5LqzR7vJqDxcle9AzYClfkbqLZOpLUhavo3sLF80MSrF6X3q0jvw8b3akb?=
 =?us-ascii?Q?FgHdqG7eHOXuXToUtm4jsRdKRfqQv3ZNvFdt4A6ljvSoOnrKj9lwkSflfZAl?=
 =?us-ascii?Q?n9ecBSlUuNjlBS0Ag8wi7K8+FzFPfYlWK3nVesPFyP5q4+nhR4vDd7FCND+R?=
 =?us-ascii?Q?S4NxML0ksRiRcmZsmx71ifghzzPIUA3movOSJiFZwTsftHpWWViqNzbmalpX?=
 =?us-ascii?Q?3IoRvGL14dG1b5gg7iW/ZSDbQGV2Gnz4tzCTHYEY4k4TRYWL//ruPoh4KPy6?=
 =?us-ascii?Q?sA1sdha5PEF3TxT36eaOH2+4vUL96+FpDnAivMp95V+FjV+bx911K7VIit0j?=
 =?us-ascii?Q?Q7Xxd8q/Ecd8RG5wsskVTwQ4T1kCV95YWa8VaVunMnSduYNEf4rsGD4J6VQV?=
 =?us-ascii?Q?BWzXD0gFjTzafm2w3r9USJL7BIOLN4SJ9Ldaoc+dF/GDD2PGjnL9pgiqFW2o?=
 =?us-ascii?Q?U5YOlK6mTn+9B/bab/1cuGVVeKZI+vO/HbteDhd7ofG2qtzUq2picEOrrzQH?=
 =?us-ascii?Q?cQVa1fGpZsmKGa8Y1TuOkKDUxjlkrfHYq+XjDsWNJLzvHwko1g3AsTWcNt2g?=
 =?us-ascii?Q?zm8x9euRSxLymj6uN/LqHF1gSjJpjcTaj2Wdu0zGrQdPAYrM4RvDcZIDGnvm?=
 =?us-ascii?Q?LcEGQI7A3HtMFlzjfMj3KHAokbTHfIZcXVv2xLZh6JJxok9mvJwfJLMKaZQL?=
 =?us-ascii?Q?SuywOhnl8xVKr9nd7Oluz5KQ4IgvP7zoI96IAMQR0l6EUA8h/P98pk6kvOzr?=
 =?us-ascii?Q?QJR5sIP5X5h8ZH/YXI4uvV8XnyodfPBF6Nv4iZYYfex66exxvKdPArEoKuPW?=
 =?us-ascii?Q?pFVySAMwKDnSg3W27c+lGl/gx21O?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?MYTO3txYru4nltWGoO0V8DgOJXXksQA4ep4q2V/CSfaebD3IlHLl3p4XmEly?=
 =?us-ascii?Q?frshNmCjtIIkwE9n9vNVjLxMEN4LBnjrxWtHlt4GonnawmPYmH7B8X6i6y/q?=
 =?us-ascii?Q?o1wOJPva5mVk/u/s7r6A/8unWnqFJoaNctdKLZF3n14Nr156ara+gR0zvZiN?=
 =?us-ascii?Q?JzY6bojL2EQkIswkvGLO5wNvIcb63WMCWINmU0w6U8sJiZP3MIYYxp7dyuEP?=
 =?us-ascii?Q?tlM0lAIFT00r5SerZJpixiEBlqI3FDbH493fSm8DyxDQ2k+KO2qxpA1BRTQo?=
 =?us-ascii?Q?h0zo8M46obWGmMHPzQWIvUy6CgFUImxjz8YM7Qz/AGdko4rrVuAkkxYuA/UF?=
 =?us-ascii?Q?zqVDmgzSPlmVbMm+Gl5uIgx6ADMMyALLh2NSFmhjzZ1oEhFjJrhthot+FWuK?=
 =?us-ascii?Q?E+He08VJRux9n4xPaUCN7OLfXUDFnXPU6BRsDeahZJ74NdhEFsb7SokMi15e?=
 =?us-ascii?Q?vbPAscveKArycl420480nxY7Sz2x3bDUMkjhbu5L1JpE3I78G+IoBoM5/x9F?=
 =?us-ascii?Q?D2/y7y2JSDYMpMYiQ/gSi6eM41bMNFDBxudJ89dHOg37z4/1ZHg1aAN7owKM?=
 =?us-ascii?Q?clrX15PQiBXaUEZ2Z2oFRuEH/RqyzVeTn8Yu7RtusdUI2SPbNc8HIvCPfkDJ?=
 =?us-ascii?Q?y6tp1orSzwKrE463pku+D9fX4Ze6JguVZ6GIhddraKnLJUk+3OWTHhBX0a+9?=
 =?us-ascii?Q?gTtDAzCnlw6yQONShTjaby9MTM+jVPO27gmKyF7vOLgFukn9Zl3RWTkHcJ1g?=
 =?us-ascii?Q?DOG4HlMTlkQ+vPj5mRFJv88AsMh9hV7yfiZSWVqI2ETZQcUVIQDIkZOelftY?=
 =?us-ascii?Q?ODrcuExSp1S/Kb7+nyhp4sWEPFmkSwfF3KB5LPdRGkrYCyChM/K5vGAlMw8N?=
 =?us-ascii?Q?PwBvNWvQE63mCyIdujym3IKLjsPlOyEpkIWeLvC9+2Cnl8vkqOfvxFqSQXYH?=
 =?us-ascii?Q?q+WX/BCWcCmnEWKC17wQrBiDr4kYy4cFuzHxVe085ZhnrODrYHTUitOc3Lym?=
 =?us-ascii?Q?nsjpnAVhLMrovAR34HsAlA0eIlxYOX+IWEMofE2Q5PYDcxProfRdebM1Wsfl?=
 =?us-ascii?Q?eds2vqb7GicJnL8C1zEFXilYyCuwHBWSrgYZ94VYP9tck3+SWyrZQGmh5DFC?=
 =?us-ascii?Q?h7H918RU6n7pYwEDkuz61GShAWTXIr25SygJxWNqo0UjOIOmsoRMQeFDpYoV?=
 =?us-ascii?Q?3ph6Y6jx8WEuipkaFA59UpRpj6n33fHdHv2xmdAK8bK3lfa8AIJgQNVKA2Pk?=
 =?us-ascii?Q?fiB3RQm35XVTtt90G1Ph6qFN0Fzoa0x6a5IcKXc8LjKAcMzwomZfnpy2/vKR?=
 =?us-ascii?Q?r7P4K2USFNO2lAu3dkCP4hY9rnN2oT8OxuKgVx1zcwVmgZSPxNeCEpWGwVOf?=
 =?us-ascii?Q?yhC8xrU9ISqB1vYFIr3ljIdFFWAcnLMokpjhjjRix51tD1MIulL7sKY9Bqhw?=
 =?us-ascii?Q?dXRTblpaPYCtTA5QaGtcbaVF1qJ8pqc+NW7WzvR0xe8XmG961uLgNsziUih+?=
 =?us-ascii?Q?hWBbUvrVdQqinIHqQtOlLo7lahhswWdTBDewKq/5ASKRZ6F6YbjY+J2o+SmL?=
 =?us-ascii?Q?/CriE0TPMqDvafiim9NSM+62P+iq5hvGiEHcFyWX?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 136ec99b-ee8e-456e-f40c-08dd3564aaa4
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 13:01:03.5412
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kbYIBYTHkhsY1aIGqF/63YEL9VZl8gQx//uudjb2oa0sQmwP+mIjHy9mJjc24IZN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6232
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A98A13F622
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-2.99)[99.95%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[23];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.58:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.244.58:from];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: MZNKGNKITWJK7MLGI4ZKSENN4CSJH7PI
X-Message-ID-Hash: MZNKGNKITWJK7MLGI4ZKSENN4CSJH7PI
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 08/12] vfio/pci: Create host unaccessible dma-buf for private device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MZNKGNKITWJK7MLGI4ZKSENN4CSJH7PI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jan 15, 2025 at 11:57:05PM +1100, Alexey Kardashevskiy wrote:
> On 15/1/25 00:35, Jason Gunthorpe wrote:
> > On Tue, Jun 18, 2024 at 07:28:43AM +0800, Xu Yilun wrote:
> > 
> > > > is needed so the secure world can prepare anything it needs prior to
> > > > starting the VM.
> > > 
> > > OK. From Dan's patchset there are some touch point for vendor tsm
> > > drivers to do secure world preparation. e.g. pci_tsm_ops::probe().
> > > 
> > > Maybe we could move to Dan's thread for discussion.
> > > 
> > > https://lore.kernel.org/linux-coco/173343739517.1074769.13134786548545925484.stgit@dwillia2-xfh.jf.intel.com/
> > 
> > I think Dan's series is different, any uapi from that series should
> > not be used in the VMM case. We need proper vfio APIs for the VMM to
> > use. I would expect VFIO to be calling some of that infrastructure.
> 
> Something like this experiment?
> 
> https://github.com/aik/linux/commit/ce052512fb8784e19745d4cb222e23cabc57792e

Yeah, maybe, though I don't know which of vfio/iommufd/kvm should be
hosting those APIs, the above does seem to be a reasonable direction.

When the various fds are closed I would expect the kernel to unbind
and restore the device back.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
