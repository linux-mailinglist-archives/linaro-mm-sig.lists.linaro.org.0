Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCA4C7A2D0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Nov 2025 15:33:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13A353F914
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Nov 2025 14:33:58 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011043.outbound.protection.outlook.com [40.93.194.43])
	by lists.linaro.org (Postfix) with ESMTPS id BDCF93F72C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 14:33:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=KjMMRp73;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.194.43 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d8VCJTBdLwtk6TVupm0l/0JN3UpCUamVE5F5+kja5EyKtdJs8XwFK2eczG5zkIqTx8wTpVzFun02oK3mnQzzkjMGPzqVgsRcYT1BS+gz9gXCcKv6r7uQGMSbOiQSk2P9zWTGhdTpCyyXweAU8SqTIuiSlC+fJOFuyBJUYOSqkXBAsxzSIuoXxPkqVsj1uxOD9uZop4oFqoAFhoXEbL6X7+zHPU9AZD/yxcQp2Vc0ryif2PjC6dhtRambPWzcEUacH0G12H8iBSi/GU9P48IlYHgwHPkXuDKbYVuUdaXCaE4nC4Cg2TN3P28JNqmYNNYYzUOSSIjOfXPyMRiQrnNGEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cmhmRbOCgVowqn5qwqixxTMfjH1Xmq6EfjFvBiIkUlU=;
 b=XKcMkRVZxgFC0KeZVc6bSKA7kD+FgGlDWsM4CI07O+9YP0pzTUNa9RvZ9UNTLO8+AVouTzghx4Hss8sbLeszutCNghGHrIV8fnZChylVJNMJI7UWR5ZSS0b7fdKV9ZYWTWL+d2ZSUGQ52p+UekH3LyQmTj9/m9dYnCTPzhiPi3Z03YUGeN098Xy9D8i3XGDzrYBTUvFNS5bbqyHe7dMD1cpEZUGp57+m4uMrBfLdv/H7AiEp3igH4JOQ336Pq1Et1sjVb01H1iCzFa46XU9dNivq5lQErd3ojo3AKjV6baWSqrRws9ia3oKffhp1bBOtM/s0deAFS7rTO3aPZcG1eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cmhmRbOCgVowqn5qwqixxTMfjH1Xmq6EfjFvBiIkUlU=;
 b=KjMMRp73ZcpOEZL2GXcSMwLIZzAXWNSWaGkuQJML/k+iEs0MRUFfuANzKRBvMAPo0bPX0iuaCzVD6UQNxfgbCAHBYuHVJctER+uo+Z3BfHlt9G3Fraj61uQXUE0FwA6rKqsGdStdAaaxaq03h48cS1eJPclgW+NE1bCkM7tecMe4cJGIKJLCOb+B/T4i1epcgbYhVsPqmyS8y073LDoPkxCcWqjZBLqgj6Ezmga7tyo3tcsCoPAe1+o0QYIfvisWYi+Ji9ghWJmGqIyEhZIiyLGP+2mO3C3c2pdSaH+LX8ftm1lOWalMKPX1VKIYNuGcmIIYL1z55HKMOX7Fpu0G1Q==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by SJ2PR12MB8783.namprd12.prod.outlook.com (2603:10b6:a03:4d0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.12; Fri, 21 Nov
 2025 14:33:35 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9343.009; Fri, 21 Nov 2025
 14:33:35 +0000
Date: Fri, 21 Nov 2025 10:33:34 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20251121143334.GB286125@nvidia.com>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <6-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <BN9PR11MB52769E70061CE3AB22F9E0618CD4A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251121004720.GF153257@nvidia.com>
Content-Disposition: inline
In-Reply-To: <20251121004720.GF153257@nvidia.com>
X-ClientProxiedBy: BN9P222CA0009.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:408:10c::14) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|SJ2PR12MB8783:EE_
X-MS-Office365-Filtering-Correlation-Id: f3a580c4-6c2c-424f-8099-08de290af40d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?KHHtbT4niheBD3DfNKF2TpHarHvvr4ZkBBGCpghUX7mM4veEzSF6Xj7HwVac?=
 =?us-ascii?Q?rIn+895RxAEpNcakZfX1J9BV7VOqR1ndstZLpnt/76ZM9jPpwOYpCTkO5Nqc?=
 =?us-ascii?Q?dedP7mUbacHQPBVPxwji3zqZo40jHD/m3ioUFivaTQhwMIbuCbAmQkv6LwMG?=
 =?us-ascii?Q?wUTUJTv0uYxbM681Ee2T5SziF2AAkIV8jl0xpFv7g1e0e0GDKIyWqNgR7kIx?=
 =?us-ascii?Q?QK8AJ4T+Vew8+LAM5e/3wOkQ1dNgwojhA5VxND9wTqIfIg7QP5RtkMl0HwsW?=
 =?us-ascii?Q?S31FCUxvSdwjWdbHx8SHSx84QKCFGg+0RbwUCzSk25GpclbUHTsGSW9aQp5J?=
 =?us-ascii?Q?VnmRhDggBPa8WEhgos/9zHdBg4o/pwHic8AvpfjDPZekbGDQOIHzYQ79y5tV?=
 =?us-ascii?Q?RIZ0fZSVGLew8/htOSDgQPbOdYPHUuARk4fSo/MaQYw6Su2UnSoAsHQAP4B1?=
 =?us-ascii?Q?YeIow0spG6tmzLNatVypXzNwp8joLuVt6ZvQLOSxdkehE50go5XzNVS9poDY?=
 =?us-ascii?Q?WT75+Zil/lyBtlKVi4ePHomzkffsfi1WsTi/O8kMVjuJEDqvVnMf1noNQZub?=
 =?us-ascii?Q?33x374LmRzlOdKIW9nMFqbnlmz2sZO9EtCgN62IZp5qD8j1j6BYOfYtNu4Iw?=
 =?us-ascii?Q?Hhr1X+w7to1CoNvYZ8p5/PWg3HrY5YbAIlSYq+Y2CsxcsCMHTZ7/KQXknKRL?=
 =?us-ascii?Q?ad0I5Lgpu14QQgo/8ys0CWz7C5HjXkRroV8f1AFxfW7JwRQYs5Ehc8r+mB9h?=
 =?us-ascii?Q?PtDTaENmLsvA5rDraDrE1+BdzJ71JWDNibVfruaam/S5iMkg4dKOsoEnPq1H?=
 =?us-ascii?Q?dTbQiBnbhUBJa7MiTCMiLFjazHa9xVmzLd9VazTFyUkbc8RPZTlg9j4acQmI?=
 =?us-ascii?Q?RBwAFxkoirJuHmrWTm9arOgRU8dDRJNL/d+9YjTgN0p5MKX1FQm61rUeuu/1?=
 =?us-ascii?Q?a5TSILikHhITVxwWHId0rzOKrK7/ulqumotjrC3cJdka9h0xSJgjAGj8fHUm?=
 =?us-ascii?Q?xD49aSHh7+6+0PuiXCcZxaw4yGAQroS9qHDAjqJLJ8wHyq4GlCgxc4Zci5kL?=
 =?us-ascii?Q?e3VGMgpjaJQXvuTS+7ZY4yvhS7nFWXRGg+BXC0tqCX72kkQHBuEw3ZU72geE?=
 =?us-ascii?Q?IJnVXXEQVqtgrDadajUFsstW6VKFJk9WCNfpY3PaPYpAJ0f0E1f7scqz1sbW?=
 =?us-ascii?Q?7JtwI1mQio6ozrCvq67OAuWNvdPaInes4DNLFYcTsehx0npVXQX/cZX+QOlo?=
 =?us-ascii?Q?iNC1v8B31pIbDh5VTKlFPUUfDDIUM5q6PzrJLZptyfxpUHFE4zwkSODpSYu+?=
 =?us-ascii?Q?pBYvRzs3d9mQD46hFPpcHTzWXTbBuRZD2p9f3PtoSnQHW2NxbKdaUcsp8lfX?=
 =?us-ascii?Q?kyaLJhFzk4OJwZFnroqNUWniGv4A0FmrQY1oWXBgBeomvLsk30WK9THm44TP?=
 =?us-ascii?Q?uTHeOJKXxu4GB+6VCK/KYpnZmz9JWVMH?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?k9QuL4oJmLRrccHo4XsBoeJARGFxCoxIOjxcCOK3C/JDLuuU9d311oMoVfnk?=
 =?us-ascii?Q?QHM5Uq5H7zoRhnfnc5F/Wzbmey2A4uEqwuwAfqtob9gIuod+JqfYIvM97LWA?=
 =?us-ascii?Q?GihvXsVelKBNqBVig5jH8cWWFnEBDj1UiInblEI/fDD+1Pb0bo3wQa3SzAVm?=
 =?us-ascii?Q?JaLZMPL2sGlOzu3SYWf7Z3T2URmVBQJNZnwfOscqBo9Zrl4Y0OnSePS3ko3D?=
 =?us-ascii?Q?roIHHsPNE//57OrOMYxsZl6Ydm0UCpKF66OTSGt/Oy/qiyqVGPBdya5+x8Pp?=
 =?us-ascii?Q?qhCjsVUnjnSToCoIWVdjV+7ZU/s2sf7f/CDCbDQZe/nOc+1TsGIs6UK/GEEl?=
 =?us-ascii?Q?bOiDrhS9aEdo/iqnyWzA3GxIenDYXW6GhDKJhz5OpT+dQ8w1W2mW/VPYFrvI?=
 =?us-ascii?Q?K6ieiqUEl8oA+QP0yftxw39rEw6H6XhcfomM2CPGfrwNXs63z8Z620Ofjm6P?=
 =?us-ascii?Q?oR4tWsr9ALR0GHrmwHhPyIr1LBk2nnNKxKs1TFuxRi57TMKAAgpNTFKbTYNQ?=
 =?us-ascii?Q?5LbJJ3nMFt3rk7+ITLiwoKXV3DPJayWrXVrynk0+L58LtdKiZ8qkcv+J455c?=
 =?us-ascii?Q?NYGF8aiodOL2DITbL2o/e2SeaQ9Pf4wxrSAdB4PTt81C+20dNvK6cuitRa12?=
 =?us-ascii?Q?r4+TWf2Cy4SVXD+FTboklbJpri3+TwTbobj/ob2IGHEigT8BaaBS7mt0Sln0?=
 =?us-ascii?Q?9YQko4lqzozzRi+nEpxTcjq8ABVPJjWZtnZ6Z414GKrBbb5M2vS/Ps+PuKmY?=
 =?us-ascii?Q?acQZtRQXNtG3LGiLSiYaQfNKfvgFJBzLMsD7XYIBlZHQ9WyhZHkNMjZ51v65?=
 =?us-ascii?Q?vZMFJ4Oj9pN4EE9PxJN26MyKOmjqwSlrt2Yq2dc28L63PJpgPCxNgMYXN3iX?=
 =?us-ascii?Q?bAWJo8V38vi1edRzIU68zlVOMbfjCNNchl5RaZ7c0S7O+uU8/HLrCHpRaD4H?=
 =?us-ascii?Q?A9ygiJuowHTxUtguP7+/oII2webdTyrlIDGTEMGYItXo6tdA3yPfVqDoKYWj?=
 =?us-ascii?Q?gtQWm4TTEfdd5VwDPwdu1Z4Bj5/3GqXvKNlZpsbzW+mv/pYWRFkXCIESPInf?=
 =?us-ascii?Q?jtuQWeyI42MLQ1qxskNRh1d1EfVWIqmyZ10kEkW5i8zTcAfJwcEjjHEkGBaM?=
 =?us-ascii?Q?cGb9O+1ZYa9mPnjPvtyWWv3rL/IYPxE3sFVenZ/ABlNbZOT1y1W60TOmWY/0?=
 =?us-ascii?Q?yz81MT5qO+eypEci2rYK3cjS6L4e4l7G4anFnu4rnyb3Q1PWVdSFvqS14q7d?=
 =?us-ascii?Q?jD8KNMKPBt2RbQwYbfeGwJxNDTtdaXBPoIdY0ZWwRE+o34k2/wrvmOzmcUPf?=
 =?us-ascii?Q?4OiHDVVi/y1L1gwE2NMhE8E9ZWKzv0iBahnCgx1YVcajHrp25o9pNfWhcV40?=
 =?us-ascii?Q?KLPK+020xjVVlp095f3CngTUB292xAUx58uEkeV9/Hj4jcvDFAdrQ3FyqaAD?=
 =?us-ascii?Q?vu4bYs54Z9nvVw3wJSjyo8c0XgbDhLUj+E22MnuueqHN/mJtefrn4PMGdwCW?=
 =?us-ascii?Q?ohwtAZ7h16GbGyQbI1Q7jm9NDnisbwjMjE4sU6xv2nhVNPlongDK3W/ruR6S?=
 =?us-ascii?Q?UVRkyerDZczrpUIuKJo=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3a580c4-6c2c-424f-8099-08de290af40d
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 14:33:35.5302
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VzC3iL8evAGawnxXSRQkycU902IhgXKXCmoYPRIRaa1O92mfvxesaxFCk2YU91At
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8783
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.194.43:from];
	RCPT_COUNT_TWELVE(0.00)[22];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[Nvidia.com:dkim,nvidia.com:from_mime,nvidia.com:mid,nvidia.com:from_smtp,nvidia.com:email,mail-southcentralusazon11011043.outbound.protection.outlook.com:rdns];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BDCF93F72C
X-Spamd-Bar: ----
Message-ID-Hash: TGN7UGOJ7LVO3SBLN2AFMUFFZMYZXVJE
X-Message-ID-Hash: TGN7UGOJ7LVO3SBLN2AFMUFFZMYZXVJE
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex@shazbot.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, Joerg Roedel <joro@8bytes.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, Nicolin Chen <nicolinc@nvidia.com>, "patches@lists.linux.dev" <patches@lists.linux.dev>, Simona Vetter <simona.vetter@ffwll.ch>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] iommufd: Have pfn_reader process DMABUF iopt_pages
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TGN7UGOJ7LVO3SBLN2AFMUFFZMYZXVJE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Nov 20, 2025 at 08:47:20PM -0400, Jason Gunthorpe wrote:
> On Thu, Nov 20, 2025 at 08:04:37AM +0000, Tian, Kevin wrote:
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > Sent: Saturday, November 8, 2025 12:50 AM
> > > +
> > > +static int pfn_reader_fill_dmabuf(struct pfn_reader_dmabuf *dmabuf,
> > > +				  struct pfn_batch *batch,
> > > +				  unsigned long start_index,
> > > +				  unsigned long last_index)
> > > +{
> > > +	unsigned long start = dmabuf->start_offset + start_index * PAGE_SIZE;
> > > +
> > > +	/*
> > > +	 * This works in PAGE_SIZE indexes, if the dmabuf is sliced and
> > > +	 * starts/ends at a sub page offset then the batch to domain code will
> > > +	 * adjust it.
> > > +	 */
> > 
> > dmabuf->start_offset comes from pages->dmabuf.start, which is initialized as:
> > 
> > 	pages->dmabuf.start = start - start_byte;
> > 
> > so it's always page-aligned. Where is the sub-page offset coming from?
> 
> I need to go over this again to check it, this sub-page stuff is
> a bit convoluted. start_offset should include the sub page offset
> here..

So in the pfn reader section everything is page aligned, that means
the start location is also page aligned. The comment is just a bit
confusing, maybe this is better:

	/*
	 * start/last_index and start_offset are all PAGE_SIZE aligned, the
	 * batch is always filled using page size aligned PFNs just like the
	 * other types. If the dmabuf has been sliced with a sub page offset
	 * then the common batch to domain code will adjust it before mapping to
	 * the domain.
	 */

The adjustment is this code in batch_to_domain():

	/* The first index might be a partial page */
	if (start_index == iopt_area_index(area))
		page_offset = area->page_offset;

Thanks,
Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
