Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A8BC74B36
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 16:00:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96A453F95E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 15:00:01 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012004.outbound.protection.outlook.com [40.93.195.4])
	by lists.linaro.org (Postfix) with ESMTPS id 1B7673F944
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 14:59:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=eVEs8wAV;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.195.4 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oBwLl/5f1YY5+a03Onq7O0EKlacexcVC74tHOp5RfxDBvaNrxFIRtJ4m8KUvW3vGYu/aKSKFH88l2Bo6z9C3ZuaqR1LCzD2wjQOSc+WwDFRYidYqzEaEJpKMbEPJhBpodQ+hUmJc19JDVgtJ8W1UE5kr00I04wQKMZ794OyulWKJ5CaGRKpcBGVetLXbysmWn+zs/uy1HIMXn0iN5nrWgKOZJZUHqGpKi12fLYbdKScQOCWpAUJ6x7JRPRfRBXFvgFVkMU85wmH9xEQ3gqezLFRgDF3+uLYBr+x1lFeU4gdpbBBPXNde9OJPmEOtkX4y+AIhnRTucEY/oMV7lTnrUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=85eUEXCFIH2fJ9ddRbG0jzYyR06m/4rKjpAqPy+Pooc=;
 b=V6G+BN7ZKqAHlKCqX9ygQG8rmUDdbvL9yaEZRPzxSmlBZV10mL/qd8+FyrNng8Kt13GtQmd5zM9UBhxK0e6kJPcO5mICKxQUOX/11MvzLmASx3OM5+vZSWDyjGKG7HYa3FuaAP2pN+VJmoHrc8N8kGrONwhdozpRr8MYATxZmmc1dBx4op9oLCj/a5yBnS0x64hMidymVLws8mKgCXTf0wvQ81gniCYkx6fWkt+dFkRtQtzhyfoRhcidifRjUsAZTWCPWQRLHBPwydErw6LwDRqdApdMcRBsqovH43fOvXNyUzePuQuAjyNaYPE4kavPdY50UNpC6CDK/zUHP/xccQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=85eUEXCFIH2fJ9ddRbG0jzYyR06m/4rKjpAqPy+Pooc=;
 b=eVEs8wAVTi9iHtM/S3Kgd/IpB62lB5HKlocPISmi2U4i96q0vhaLNlGPsfAbsjTho+ld1qodkL51LaLAq0NLaxIrv1owa/v6KJJhXib+3y/2l+ydDW1QOA6vTobarOQqmCkzJ1Z0ZHV+1TSGFtXeiEmA/8invgMWzqMBLMmIntm9cKBAV3Ve6PuzcqVUTKuRtP2iZKcUFtYCjxBEVltrzCTfViiRep9SCrOpUtX/TJwFIDWnO5GqRduyJc8JShT6PohwfCWPfK5idKd/oT/J3EEnpHNKTRCrQAeUBU/u7T2cATttXrhnOU7+TWQIFpaAsQE10q4AyeejqrXpnws68g==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by DM4PR12MB8569.namprd12.prod.outlook.com (2603:10b6:8:18a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 14:59:42 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 14:59:42 +0000
Date: Thu, 20 Nov 2025 10:59:41 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20251120145941.GC153257@nvidia.com>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <5-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <BN9PR11MB5276C73B3BA7E689EAB90F648CD4A@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <BN9PR11MB5276C73B3BA7E689EAB90F648CD4A@BN9PR11MB5276.namprd11.prod.outlook.com>
X-ClientProxiedBy: MN0P223CA0013.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:52b::15) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|DM4PR12MB8569:EE_
X-MS-Office365-Filtering-Correlation-Id: 48893505-3016-4db4-fbdf-08de28456f7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?uWfTxbN/mDFb18V51OuA+JTg5mVZasQXY8gH4/EbP+99K8aYpRpiLCXPuSZx?=
 =?us-ascii?Q?tvWWkgq14dCwrhPbB5kEM/dHZYbilkulh3ERMiWvP8yVYZKdvVS9DmFDkY3D?=
 =?us-ascii?Q?CMVkcmFgqY1JABtS7cvdybxm0+yOEwh75xM7HCv4lNP5iJ34KbkOokqllMDz?=
 =?us-ascii?Q?WkEtf5e271ede9L8Q+Y6CxCJw1XzvLnYm91wG4E78b5JMsOCit3IgMrtte0S?=
 =?us-ascii?Q?5P7R3S3blTKudL9tuzih/zHuJ0MzKul13aZsq1UqiMhaKo3RemDsethNLzKm?=
 =?us-ascii?Q?tEWK+jCoq70te/6MYgdJ6DnRmKcefq0iQY2BijP1kQNPO1gws4pv0VBNHOpC?=
 =?us-ascii?Q?muVEd4xcnDkm4aHxOJnXwryt+Eq61KTkoN9ZDDq8eUxELs5jBp2pxikebcxU?=
 =?us-ascii?Q?uBjYlJCNvgFLHnI/YPczMZa2qldlNJ9q8zaTcgO5+D18T4KjhA4aBmEFhLk/?=
 =?us-ascii?Q?Fb6Gn9NrwCkJSK38P0TtJqB8IrEK+QZ4VKakiBe3Px3OoMpekelKmLfS1d9t?=
 =?us-ascii?Q?BVMMAQYIVzIHWSUMbE8e9FQy19qTvkhhOrmyTuak22u3IK3SNYHBAd52eUGE?=
 =?us-ascii?Q?FN5gzXTDY/dpYgCQ3HMehNqmhkoARDoZNASsG6QKyUX17hSR0Y0VVNPJ1qIY?=
 =?us-ascii?Q?t+Ds4qaVESdAL5FSEdKCBISLUT6Qv9MZr44uRVySPT2dcfZE0vB8x+vHUZZK?=
 =?us-ascii?Q?V8jZ6aaZE3keaNLcaCCZWhoBjhUv2qbW8lUTXG48K9jtXT4i3hXPHXmnKLAR?=
 =?us-ascii?Q?Ojj8+2ehmzjl1wepAIjfr7IsFK3J6bmn4c3J/b0l5zAlzHA9RakVuq9E1E1E?=
 =?us-ascii?Q?AE1ra2ULmFENBx1qrhPMZL4Ijy7nhcfY3QptuOhjFktIihdBmka5Zqy7O65M?=
 =?us-ascii?Q?jtZR1AN8pUoNU5Vlyhb7P54t3hSa4btKUSDCKbNMQxS5ZnzBnbu7mau8/lml?=
 =?us-ascii?Q?DMzDRo3aycc7+I+mqctlrsDkBKfNE53dIZhJ1AnTVdi3CcAdajXZAje4SzUM?=
 =?us-ascii?Q?K2EGBu18rUb0EUZwFIehg1dnFkKyweWWPS4Nljw9FS7YQYf22ib9qVXHiCRc?=
 =?us-ascii?Q?wQf0dSzr0+CJgjfUOKLzo/9AhCRkTIrFcZo5ruidFBrdR3cZFjRn+Fa6B0Kb?=
 =?us-ascii?Q?ljuURrF8PBI/uxGWIOhRk1+UIvCNBiy6IPxrrNtK4oGY/meVJbpji2Fb2Zko?=
 =?us-ascii?Q?GSg5o6SC4UQKv7a9yqNz3xO6DRnh0cL98RQb/f5iFB3jPYF9QdsrIqPpooqL?=
 =?us-ascii?Q?BGT7rgsRcLNinhQhPBvP6+crn2tVpkHh+WGTCwA8b/jPD5d02K8AgZ5nImaZ?=
 =?us-ascii?Q?xUHbwJhVIFT074njYyhytWQypSyDEqV43PyH1YQlZMMw/FPzAepe9IHUDgx9?=
 =?us-ascii?Q?00fvtajFtVOMkV2v5wLqruzHplJjdOd/x5gN0m+fHGltYKuZuikNuoSYgTsz?=
 =?us-ascii?Q?9QNEyzjIlQ4Sujshv5Xa3rHVnHwodzsm?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?mK+iGE5Rpg+1sFglOZETIDWm0Mkmov0bTguZteqkvDO+OYUT+XTShrksFhba?=
 =?us-ascii?Q?glpJW16pi9hzpqfCXOgJJQJ/HHzAhwUWo0QfwLi6hUzpf7Lj/hzOxXqpvvAl?=
 =?us-ascii?Q?db5NCd5yzORBtq9LSL6/R1HBQbJNNyMBv0kM10kYU/lgtfle9m6ywpk7y0to?=
 =?us-ascii?Q?5D4Htb3w8XaaBFEtQ9iYyHLpHAcP2+H64MqLrhtbDzpYC59m5GWKX77XX//A?=
 =?us-ascii?Q?ndJYJw0WIa6QgivCaYkeCBvolbA6C+bQovlXzWWoTvGe33O4rDIZfTddl/BO?=
 =?us-ascii?Q?dBqrKmx7mSWE83QqxOvnqEKmdEBuEozEA1HehxpiSkBVCPtETIBi/34EslMn?=
 =?us-ascii?Q?c/W7vIoT9fkAM6fA/FDg2l21zPtit1cr8n9Ktod/takCBSOdifSWAPzTf9ed?=
 =?us-ascii?Q?Ug0aYrSW6nyFolUhOL6FgW+hkRGjRHBTcBG/8q9s86Lp2SVyEUkq4Ck7XPU6?=
 =?us-ascii?Q?CJYR8DTMV9jGXzShTKtUZpcDzLlzNnQ1KALl2uECLxQKzp08kYVACtqG+Cft?=
 =?us-ascii?Q?9gaoDQbP/tMcYH0VLX0pVD0JGU+bkAdhP/zXmCILUKtfhpKsgIQrzEvNGqLt?=
 =?us-ascii?Q?q/421TC90EniASbrbzViD8xJP5KvUtG9IwiKGwKS2gQ7Ql3PjgR3RPNjlGyE?=
 =?us-ascii?Q?+o4yz3CN053OK9CRJZHZekZPZ8ZSu4ZIC1YV2S6SxK4YZzqk5dK9Oc3MI0n+?=
 =?us-ascii?Q?/9ZI31ziTgyDgSiVgT12FudaNhnICC0dEBp6q6/obvilw1YZ0VZgGiV+eDmC?=
 =?us-ascii?Q?JQRXUOpGt48MDwLFFi2T5zVQ2xr2fQK/U90eO+33k2gSu4nX15WKbCGnedOj?=
 =?us-ascii?Q?xR1UiMzUewzlj3rsTQAKAdJgFMk9U4UdmKZO3OIqRWs6hkUlDf1WckZf6Eck?=
 =?us-ascii?Q?rA+rY2JM/K4eMmpkHK81xcjRdVYdXvkv571CLEQkS8cYAaztfqZXTQvuf0qM?=
 =?us-ascii?Q?iPbGKsjDHGXXN6Rjfhu39WKwmaKOXAYa5Fpyp9s3EsdjZhxqq8e7eKfKJDen?=
 =?us-ascii?Q?IYpAxQe38Tlh+9uDHRIngHos773KezzyyXGspbiBRJrxOmSet4olUfkkRKv+?=
 =?us-ascii?Q?kPs7djnv0Ye3ZHu9n8ThspmK2id6yWzV5qJahYUPEzJbyMaK4WVwI9ptM8/e?=
 =?us-ascii?Q?YMmIhpLNuWQFtBXn1YGVCcgkyUlwnBWYFZHvBx6bqughcIsugNrslLeoWAnc?=
 =?us-ascii?Q?jfI3haRdvGutB1hez0x1VXDztLCemkpqX62J9Bfz874dcJuBPbtzjzVue19j?=
 =?us-ascii?Q?fyynNqxLF5t+Jo+YPIS94l5l0ZECW0NDz8RFCrVtsi6uNSVEJtuewiaCgUki?=
 =?us-ascii?Q?HBF8NNEbJkZXEwZBVZX/HkHCioVA92XRpdDlS07Dd5BIRPchJP5ONbTeANvi?=
 =?us-ascii?Q?ag74WGu4NU+Q7Xqs00Lv0LaUeSxRTLx0kcVjDGn90XpgNiyYpgZz2ak73/HG?=
 =?us-ascii?Q?ZK5MFVPhiKps7e+Q0X0QOTxtzdrIcB3bGqq25+DvwLryZWrt2qjH/vcy9nZr?=
 =?us-ascii?Q?5WyfB5+vAoLacCBhBg5LZOYBPAToasXQq9oj8I2IjN0jHm/iIx/naVljfKj7?=
 =?us-ascii?Q?0BSsiEbWxCQk8SV9Olg=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48893505-3016-4db4-fbdf-08de28456f7e
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 14:59:42.3769
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Mkr4xX6VI11hK2uIHf89zIOCcv8lw50cYTo0DVUjwDxR3890dW9znzEwTuRU7Ck
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB8569
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.96 / 15.00];
	BAYES_HAM(-2.96)[99.82%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.195.4:from];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1B7673F944
X-Spamd-Bar: ----
Message-ID-Hash: SC3LL3JSSB3D5UFJULK5QZCXDNWNKG2E
X-Message-ID-Hash: SC3LL3JSSB3D5UFJULK5QZCXDNWNKG2E
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex@shazbot.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>, Joerg Roedel <joro@8bytes.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, Nicolin Chen <nicolinc@nvidia.com>, "patches@lists.linux.dev" <patches@lists.linux.dev>, Simona Vetter <simona.vetter@ffwll.ch>, "Kasireddy, Vivek" <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] iommufd: Allow MMIO pages in a batch
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SC3LL3JSSB3D5UFJULK5QZCXDNWNKG2E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Nov 20, 2025 at 07:59:19AM +0000, Tian, Kevin wrote:
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > Sent: Saturday, November 8, 2025 12:50 AM
> > 
> > +enum batch_kind {
> > +	BATCH_CPU_MEMORY = 0,
> > +	BATCH_MMIO,
> > +};
> 
> with 'CPU_MEMORY' (instead of plain 'MEMORY') implies future
> support of 'DEV_MEMORY'?

Maybe, but I don't have an immediate thought on this. CXL "MMIO" that
is cachable is a thing but we can also label it as CPU_MEMORY.

We might have something for CC shared/protected memory down the road.

Thanks,
Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
