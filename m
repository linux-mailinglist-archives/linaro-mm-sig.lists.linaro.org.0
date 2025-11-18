Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D332AC6B6BF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 20:25:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8E0E3F918
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 19:25:32 +0000 (UTC)
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012032.outbound.protection.outlook.com [52.101.48.32])
	by lists.linaro.org (Postfix) with ESMTPS id 52AF93F833
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 19:25:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=gTocrXkh;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.48.32 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N0Szalit/YSRrR5R/ugURXq93e7t7aHo8ej85weGryTETFj3mg5IksDuSEKA3QJkddt+5gd/uN7Op6LVENGPRHuv4ZVmKsuaBczck8UJKYH0S9AOrKUhq/CPYnz1+LGoRbDjcku7tr5cCsGL6y1gzNlJuzv1ph7D+iMgal3FZ6/dJhF3hVh/icQDVYrs3RDniGTC3VD3V+Xanu4lhXD2RgBlzQIkM4hYF95oqTdVFBG2NF+eH2Da4FF6FVOMpAcVkjUJir4fJu5xMVNohNyEHToI9wsyLOLUW3Le8fYZvGRlbAkIL4v0O43Uk2sKqwUpOEfF/iLm0a0N1B/JOr50LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gK7H83f+9zqXWZnIBktN0Bk6zUJibu41irz5864dZQA=;
 b=XB7YSejkzKnkJChV5UE9A9TtWNjR7bqMG23AGaPn5kQOXbyrz84oUyJy+NJK/cEOswXcwtbMwQG7/wdlH5+PAkM+Kkt63uqeWAjVJILBeGYUFdIZx43tg7LyyIojByZq0vPYoCqa5RZIvAVJVmRTLs64aO6nERtxrgnJLBcDbDzAxaQgF4tnjSjcez5M4hJtwFJJkw0MVY2m2VBS9OWoTlRW/k42Y+N8jQ7YVnFWopx5JqtQaI+269zTdNHh0UM1THJuJ/DoB/kQPIKVgPPbqdgkzHelVUzHDaGzf1yCdSwU3oHliap+1pWaVicVTQbJeca1AGhUpq8nGkASLMkQzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gK7H83f+9zqXWZnIBktN0Bk6zUJibu41irz5864dZQA=;
 b=gTocrXkhI+zHDxOSAXUKWS28Cmuzi9Ossa88RFN/giqteEZR40C8ywBJIiKgUB5pO1UlVEfiqOz5t4wX3y2o6a1ZN2HBg3kIlrP5M4H6abPNLCk9vxah1CffHDqGabqPxDHOIOehWJTojh3hUKZauuAlzJ+RH3h3mzMJnJ6ut0u4SEOvR4cRrcc7T8dYpjEv/zMhPAanrGoOrUL4KE5h9hZ4jINpQsHRj8pubI/znpK0mb74QpMIgzyeTb8+duJOLE99bhsKyB5BV3CtYIM1xYA5CivfigCV0ngtIs+mzcx1lF04SkPN6hHQ23HsLkD0WUYNpi4yA674LpVK5zHEHA==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by DM6PR12MB4217.namprd12.prod.outlook.com (2603:10b6:5:219::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Tue, 18 Nov
 2025 19:25:13 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 19:25:13 +0000
Date: Tue, 18 Nov 2025 15:25:12 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Nicolin Chen <nicolinc@nvidia.com>
Message-ID: <20251118192512.GT10864@nvidia.com>
References: <0-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <9-v1-af84a3ab44f5+f68-iommufd_buf_jgg@nvidia.com>
 <aQ5L/NXA+pYfK9zf@Asurada-Nvidia>
Content-Disposition: inline
In-Reply-To: <aQ5L/NXA+pYfK9zf@Asurada-Nvidia>
X-ClientProxiedBy: BN1PR12CA0029.namprd12.prod.outlook.com
 (2603:10b6:408:e1::34) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|DM6PR12MB4217:EE_
X-MS-Office365-Filtering-Correlation-Id: 399bc6d9-7a44-48a6-bd2c-08de26d83253
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?c73CQ3nfS4k8OQj0Jj6WAiiyLMH1dZF4bV2F6NxvaExib3X1ROJZUrDLoVm9?=
 =?us-ascii?Q?fE7/lNmGIx1JSMr4SDLNxMCEeNgtHQMscep/NZMvDljkzGyLtCD6X76jFlLM?=
 =?us-ascii?Q?rMHEtbl101Nt5N5lWtvPQoA55lSvnsymLeUQynWgRll4lxhaFF1Jss5WYqeb?=
 =?us-ascii?Q?2PW6a+ryi68L61IxOIXcliB9h/BaITpKprRiOClQ+EbYAaw/JvzVU03Mc7qX?=
 =?us-ascii?Q?8i42yByDHFewGm/3zyUTLF0RIa+PlZQ3OJcVtkh7Z7cTv9rtbB3juj/ruOxp?=
 =?us-ascii?Q?m45dH7zBW4kwKAWqQvTTaGMKa533iLhQAwkqdqSurOLtJ5YG4RjLr1HbCTL0?=
 =?us-ascii?Q?Y/srmKGDSeoQGcAhyoJWTQukQ2JEjNTXevUMJEq4UcAHhYdF87LBmI99LNnb?=
 =?us-ascii?Q?d/LJxc+W1mzmlJqC4lJKn4NUHbwKQnPIMFCetVbvmKFzbvEI9j8WZBFWfb7A?=
 =?us-ascii?Q?IaG9O0etSsR505ySsyn8xapR45v6qdhTAY6+oCM58djevpRtIp82g84FqoWb?=
 =?us-ascii?Q?7v1amv6+w6uDYxeozcj0ro8/yiSBRun1fTXQi5v6Wf07DIZMq9/7G7wUmxyo?=
 =?us-ascii?Q?/tAxmxuUuzEIIELofrpVRAB/1LfhSdKFClCooTBxSuP6xcgz54MGvnmZg01E?=
 =?us-ascii?Q?wHiOg3xuUt7bszIqrTOhXP7kzMgOoMBcV0w1SbRHPmEwuge0uNcv09FFvmvH?=
 =?us-ascii?Q?oc964w3C5PL+ZjNHNdqGUwYbNLD8el8YR9RHVnDWFBpKc/xKDeHfy0WAYKvu?=
 =?us-ascii?Q?v1783vKfURXq2RX2ZqRuToeNZcCB7wJMEQh3tamOFOYtioJ05WVy7IKMdoEr?=
 =?us-ascii?Q?hHKXJqkIaLGaA1nKzwlg8XjuMoTbWl0gOedauChnVCHvWsiQIJHxF8mJeKfK?=
 =?us-ascii?Q?E064+dPL5l1xskipa6Lx8G9D0z1k2XdVJRLXZrtOf8uTObJkPqS9birAXUVs?=
 =?us-ascii?Q?7Y0csejWwfMT++7T2X68apoZMhOQguDdxquWw0Tekh6n2f1O8+XHQRn9cgBM?=
 =?us-ascii?Q?uAN5dvOw+YrhR4ivEzoE6lwI9ExZqchIWsXReU1ZwrzeU4xlaVlS2Cy+e2KY?=
 =?us-ascii?Q?xuKXDGNYMHNzHNui287DPTXB6bfle/xWTKqFyg+ch4sUv5OHmYwio7RD4Zqk?=
 =?us-ascii?Q?QrP7EWwXYf6pIqhmLEqsxaOx7kG2i3MvmFBDkhis8u0JAPFZGUxOa/fMMq2t?=
 =?us-ascii?Q?zRIgygtlf7FRpIaBHaUcrXCSnLn9f9SVMxpht6ePArJBapJQGo3VdTc0spcl?=
 =?us-ascii?Q?KyaQd0aTwBiWjmZ+0o1JRuLIRcDK/uZqDxcABCQjWk/RGuwMYsnFQR4yTImF?=
 =?us-ascii?Q?ACelMbfTQNmoOUKaYy789e+q/aAnwA4nc/43BsenFsAPgE3p4nCHv6j7+usy?=
 =?us-ascii?Q?00GdNHzJ7bbvh7o3TE6giI42GGazpum+5A9Zrvmelmowyuea2ouanWMQW7DH?=
 =?us-ascii?Q?MC8Y/5kA2ECcN7DdAed22c2HLfRjcEXw?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?+v9GOhHIcwPoZi7czPXFSYVKGnAjEyBw1E0htHLEENei0CRszPkQIS1VrIWn?=
 =?us-ascii?Q?y5O92//BtGmI3gJXymyw+1c0z9sysKeiu5I1SeZzlaQLhciZr5HlbrqMuSsH?=
 =?us-ascii?Q?r+WZ13TDGjONn3SA9zbOrnoftl/XsSOjFfQ6CwU8QWZAW2bPfpPoN3GMaGsj?=
 =?us-ascii?Q?hnec3W3kEemVmpwWh1NQwNDauR4qziWjcvSkZvqLPjqZTVdglZCgda5YYJg8?=
 =?us-ascii?Q?qmAXXiTbJt8WPIk4sovc2JSjbDhh1UsaZmsGgTHwqCL0aam/9ow0iAbsAt0P?=
 =?us-ascii?Q?uu/uP9xUWp4mld6gYuKokYIUqs2YB4SDC2xUZQ0ZAGoK4HEaBpEav1aDmEVq?=
 =?us-ascii?Q?pO/t/OY7FNkUJ4jIwTjC0HHXYh+r5c4tZNUvd8RJw1oPzidwlZnbWZZriqmA?=
 =?us-ascii?Q?hvq1lfkd6cpic11R44nEFgRZZ6NLxvuzujPlAFMVIEOZww/fxdNAIEg6YIIn?=
 =?us-ascii?Q?1XMpBBWuLAkzWXnlb7yxxOA3RVi9oUti/iwQze9Sk18E0FV8bS/qFUC0JGdu?=
 =?us-ascii?Q?QEU1cKsRYCR7uIVumvbGvv2kStToqVgsWxMKy3OddRbWxDmPkDhDprOn/LP6?=
 =?us-ascii?Q?E419VBrfJxTgxvu1k8oy1vld4FeJs36ygSb6oFOEg8znBpsW89Zieipgc3DC?=
 =?us-ascii?Q?B7iDssFXcObqsZqYC8JEmCyx90GzskvpWpa82gG1DzwI461yaIPaLsStqg6h?=
 =?us-ascii?Q?mv+1vzFijHKR6w9/jI8AvxhXv7kHSRYHlqJSB7svNvop1jBx6QaAKlW+hw7L?=
 =?us-ascii?Q?nV47nnFgJ6bPomNmavmqLsYE+HEBX60K3qbVsJWkM588ordwq3+Fpkdd5aSX?=
 =?us-ascii?Q?q/YEHrhGVRt6X1LVXxZKFvBefcItwqWzq8DpHyRwkjsD10S+lsBXppDmKHq2?=
 =?us-ascii?Q?pFUm6BNKycl1WjhJzqKFAlmQGdeAdihRVqwW86bUWIpnEZKCyjjmZ9kCElKv?=
 =?us-ascii?Q?UJEu2zwerDkUfeICCIKpCeyBAbAHAUE1PmrUO0/J3XasA+wIs5/TeNNhWPzo?=
 =?us-ascii?Q?MzPMsUvLTQmiIRI/+5jSC0Y2OVib+IjzxMtF1QudNMYJplNlvrsjtH/8btg0?=
 =?us-ascii?Q?u+aZEv+B5ghsODpdNqAlpqHnqFWCczlG8dZl8sUE4XyRgb1DVGXvgq+Nc2AH?=
 =?us-ascii?Q?mCC0Mg1fqP8M/SUqc35V1iT0iUPKpyxiTmseAu2TrbquxRIgcLIE7CDSwHvw?=
 =?us-ascii?Q?k7RhtGl3bNsTMSXGMKER3HSkT+ikfqUSdBdlN3tEGHmnqA+ApfhPk+L8Fusn?=
 =?us-ascii?Q?XyPLFSrbFCgkpRIhq/iHRnuULo1bdWEFgBdFA/zcivoqMCMyPNvWmpxRMOY8?=
 =?us-ascii?Q?0giilUXMjqJ54Xmre1VsdyQ0Bo8kLq09apsDMJ37GU47rSSGtc2H4gslq5O0?=
 =?us-ascii?Q?ryDzzleX2j5vOm6cr9IV2qOXjgQDtvnJsVsH1hdiv9y6eZYuqVq/NR5USHvv?=
 =?us-ascii?Q?KnumCe2lk/LcwftXV23LPAUtsfG4MnE+lMlMIQUt4VgTlN9gP3WkJZgMaZ3c?=
 =?us-ascii?Q?i1xfEBWJTGZK/lU5CweHvVTEIBHennKWNg+96Ts9If6h62eZioJzg9tfaR9J?=
 =?us-ascii?Q?mx98K6gvx+ay2wThCUE=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 399bc6d9-7a44-48a6-bd2c-08de26d83253
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 19:25:13.3330
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5UGGmHRutpizCL90cRD6ChUh53vNEKduAPYVRyGD1b37NshzlPsGONRwKyjGkqXi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4217
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.48.32:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[MW6PR02CU001.outbound.protection.outlook.com:helo,mail-westus2azon11012032.outbound.protection.outlook.com:rdns];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 52AF93F833
X-Spamd-Bar: ----
Message-ID-Hash: DOPPIMY42Q6FB67GYVYBXVDNB2VI4FPW
X-Message-ID-Hash: DOPPIMY42Q6FB67GYVYBXVDNB2VI4FPW
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Williamson <alex@shazbot.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, kvm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Krishnakant Jaju <kjaju@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Matt Ochs <mochs@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 9/9] iommufd/selftest: Add some tests for the dmabuf flow
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DOPPIMY42Q6FB67GYVYBXVDNB2VI4FPW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Nov 07, 2025 at 11:43:56AM -0800, Nicolin Chen wrote:
> > +static void iommufd_test_dma_buf_release(struct dma_buf *dmabuf)
> > +{
> > +	struct iommufd_test_dma_buf *priv = dmabuf->priv;
> > +
> > +	kfree(priv);
> > +}
> 
> Missing
> 	kfree(priv->memory);
> ?

Yes, thanks

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
