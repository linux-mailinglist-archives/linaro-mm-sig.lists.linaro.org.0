Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7FAC0FBF8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 18:47:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A170B3F796
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Oct 2025 17:47:39 +0000 (UTC)
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010004.outbound.protection.outlook.com [52.101.193.4])
	by lists.linaro.org (Postfix) with ESMTPS id 5361F3F758
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 17:47:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=NECCMqgV;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.193.4 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oRdKXe7F4QJG8UlmzD4kdjTILiXA6hXEmciWHLGjFDOlbmopGigdVZRj/Ulx59f2dAzhnkFJMrUHiFBBYk1wDlRlQvTqNDA+3DEbjUvZtRhy6crtVofxp0f4ao1+vc19ptPWnAbjwHvTvt+xOeO3UkqleAIY4mATGFeboER8X60KDExmP/i+/2yaZPj0BZX7fG1jV6HVi/Trd2MqLi2fNEbfVjrB4EIYDY+Z5TC+SzF+4RucIB4WrPfK2GlPia2ilY9qj5ZNdOXkIKGyDnbbzJ+IphoGnEAi7LbxTKSwDOAh+uMSWMsV6eki4ZB/BzrLgZZqG/7VZoIaWVdfDoQwjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4krFBzPsFpV6pLov/ll7JYDmQskZIAPmeddOjUQ0VLU=;
 b=bGSKLDQCtUJaR/Px1ZjdqQihleaXhtwNmA0AzneFPyjFq6O+zZMtz781+nS5Dvjb3JoRfXMFr04huJOvciGoyTFjmKlrpsXrogLjvb0wRB4Uux5B1BCAFx12fL5l6QZxE5l1D8Th6hrHvECQFrQRM5SL/7gzfS0lbrljUbi1wGgZnbVktENuR58dCOG9is0OMXdERAgyQffYD9Q2arZP1nv1HZ0yyRzmvGHSG/hkgYW6QltzPKcvMNYwWiM1xm0G+/VHxicM1Rutn8Ij6Ia8BER8Izd9VwkNhrsNklbUIUMOsbby8grAXxtDtcekc+O/mubG4WEu0gGp3x5W+jpFbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4krFBzPsFpV6pLov/ll7JYDmQskZIAPmeddOjUQ0VLU=;
 b=NECCMqgVrQFpw8SSMIF0xSleoQst36F6Kws3DpWDGY1bHQkCsznm4MhnT4vPMfz+8fFTqGEciEKB3/Drog206qNLkLN3IjJD0n4628i6XQqIB8pKEImBidBi8BSqWJxiwv3sApWed7MD0oEca+b0OKuhVBi6Vm930GP3SdPUL73M56qGWzMYlpdpUE1zVTWX1b+LnY+ZzmyzGfzRdbJY7C38VFXEt1sAL06NnVBj0MiLIArkciVexHGZTZ2lw5FbjM0ZSYbNb67zeq72fd7SmQ2Qx4XNGezCN9oCi4v7+ExFMNQTC+rObomNkDCFZ2hL+zsHF/YhcN5DsBwTLBibMw==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by MN0PR12MB5931.namprd12.prod.outlook.com (2603:10b6:208:37e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.17; Mon, 27 Oct
 2025 17:47:25 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 17:47:24 +0000
Date: Mon, 27 Oct 2025 14:47:23 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Message-ID: <20251027174723.GB1018328@nvidia.com>
References: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
 <20251027044712.1676175-2-vivek.kasireddy@intel.com>
Content-Disposition: inline
In-Reply-To: <20251027044712.1676175-2-vivek.kasireddy@intel.com>
X-ClientProxiedBy: MN0P220CA0025.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:52e::33) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|MN0PR12MB5931:EE_
X-MS-Office365-Filtering-Correlation-Id: 06206041-0d64-4064-5d7f-08de1580e2eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?xyil4kC3SXf/ACaJWD/zlMjG7ukNRVLTWUA0FYPYKcf+QU9/xJuQcFFrO0Bo?=
 =?us-ascii?Q?8vJ42GwKjjhobEYpkPxdL9b2cmJq19yFH3qa2tlommuznAPo/cD2NdTicKMu?=
 =?us-ascii?Q?hiKuw/eHyt5HRlaz5OJ7Kek+BJlGSisrK+VvtIAuRYFuCxKyYPEwNylIxlKW?=
 =?us-ascii?Q?y2JzVcjVxgEQ5yEkasVBxapAjRxtnQ8MkJjt+2Z6ATiMVKzvoRvbDvd6qKSW?=
 =?us-ascii?Q?FiilRevcif6SZJgOlb3s7zHWkQyZ1RjvxMTBgO7whthxs/FEs+o7GDzhybYH?=
 =?us-ascii?Q?K5Auvu/JLSAMXAkweQloR+lU9OKrlnuddh29ScRvz5B9sinGgyP8XDpwMryc?=
 =?us-ascii?Q?hDMqGsIfqlkx06VJKpHLFQie3PxWqL5/WEBoX/0IL4BYXqlUtjQOAEtAmCRm?=
 =?us-ascii?Q?kziTgqsfyBxWEBKxxTQ6XnybQlN0+orjIUNLL/mYsTaUvK2+ok9iIsQdaAJC?=
 =?us-ascii?Q?MvBWqL/ZhNQpkMdY1zKhKh8qK4w3psCVYZo9DRI+8/aDq4P1AHBcTt5rS4Tm?=
 =?us-ascii?Q?pP3StvMkvTP7A1uh3+ePoJTfeaVyBUAJeEap0CVMApsOgrsBdoLHB5BdXZP5?=
 =?us-ascii?Q?Tx2HTDfbP30m3/ChjAh4f4ApKyQkAGD4CM0BbhH9M+PtHtzCb3KdZj01YWlv?=
 =?us-ascii?Q?D988OqGuzQnhM7kEvYrM1tgJsYgsX3x42VhnJg+TLF3Y25JFF1yzrT5Zqc4p?=
 =?us-ascii?Q?cMgnDaw000InOHoVr+wIod3k55bW/zfH5CW65ZlqVqPxirP5K3KO99Db93eN?=
 =?us-ascii?Q?vRvkZGvg1ZBeDMvSOM1qeEi5D2yuK1T2AB+qN3xsgCo+hIUtservFdYOKX5J?=
 =?us-ascii?Q?QBke9Uo6mYKSTjz5nFu9Dmx/YnAAvdV3Danimh/ier1gLMsN3sa1bBBhFinZ?=
 =?us-ascii?Q?crBPUDR2h2znKbZsG5V6KeMZ72G3RgMNkRA633g1yN6dqg8dGSfWGXQhyBb3?=
 =?us-ascii?Q?1CMQceUNHLtXBnWHqp+NFmCMu2LNxOeQpoghN7DIBxySknNTXKH83ZU9oQAJ?=
 =?us-ascii?Q?GxDZCruc58V5KdhBANI0sdaZijFrl8g83JChq9lI4Iug28t+q65g6q740o5U?=
 =?us-ascii?Q?XG7ZvGSEa5KF7ZnlIPX6Lsdo9H7+a26m/ZPaLY+1dk/D8xtpiXKjfpCnemAa?=
 =?us-ascii?Q?YdhRLtGQspMQ7SBq6x/X5U2D2efvUTsgZrKMU3R3UxoNs9B4tOrXzokuzm/y?=
 =?us-ascii?Q?x6vVzly/bo8zJ042udWRdyg5E8Nc2dTbmN3SnD931ojMa5DfaW6QtuF8SEt7?=
 =?us-ascii?Q?tlmyMpZLszaMcdkOX/BoVLU3nABftEXQJ7oiJ8Lad2H5GWS1wymRRdxxN9C5?=
 =?us-ascii?Q?n7XvXzjfxS/X/WyoDlxLifZ0hQL9bcF9FmngpGy4zRHOKiMGqhcYcfApmnYE?=
 =?us-ascii?Q?YdTxugy9uVWgKLB42l+vNgvAa6HH6QmtCbampoLf8Xbi1Mb3pDU1RkU4eNhZ?=
 =?us-ascii?Q?qA8oS5drP5ecCxN9fRmu/VOOSRk3xo40?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?PQI2U8IghAKVHdIkHxpUIBWXURnpNrNy91n5eg6MTYNomUvypE0QOe0JkrhR?=
 =?us-ascii?Q?8HD7FxWLp05rl87K9TgeqI+E12nsqIllAH00hzNCdAFvGOMKSsj69QTePQ8q?=
 =?us-ascii?Q?mdV9os++y1ponWAuRE/R06FCMjGCAsy7ShptVY1slXonjEqthqAeUreL5Uc0?=
 =?us-ascii?Q?Y1Xy5zgGqq/lErfDmB9K1IoitifkWqWgJ3TamwifZLGKj5m1HnYOwPOYnPdn?=
 =?us-ascii?Q?YMgZmjYXqLrimYScc18Os36VRnRn6WNZr0nyK7WMYxMkfbtsk5Bxg0mBM3YC?=
 =?us-ascii?Q?in8AtOG1qwWdfUkVveVgVBJl+FqW1pp+540hxqyM2KcKv2LFLk6D6aUJZTyx?=
 =?us-ascii?Q?VI9xEw7fHed735punDDcifGpr/a2uEXVvMMl9tMPaxh+W7NeJFlTdjZojgL4?=
 =?us-ascii?Q?tPomj5y1NjKRjNyUW1z7vI5OeZWILEZudB5aC64stsOzxJ9RkO8P7DuQ0lP4?=
 =?us-ascii?Q?WAp63Y1G2VhqJHP2AemW/C57+eXVwFpN27LmOy1pumSuzSKZliri4JmE+WQV?=
 =?us-ascii?Q?MBX7YXX/1Mh7SUSxttmLf7xauz2hlGeA9J0OlMaUKjTMiDH617KGDn39TxCq?=
 =?us-ascii?Q?Q3AvcZNmGaG0qCmV7OCeEigekE/bweGUMKsbW8Jlsn21QXKOuj+LOyKWtdLY?=
 =?us-ascii?Q?EcTMOA0ffiIh0SxhDyfk3gqTP6I2u6vfrVW4UxicRl+SP42c+G0dcDhnR4eX?=
 =?us-ascii?Q?TSpoD7eyMUheqrJxZil8+0An5lthilXeH1y11W8ujzqjqQak8nCmPfevUC85?=
 =?us-ascii?Q?R/7akOsAJ3+VJGT2Vj5BOvxXHX+iYWujE8KOW1Ax5HvHYQW5pkZOk868CPuz?=
 =?us-ascii?Q?AzxnwCUbSbQkfTQmiOAhJVXxcEQQnqEIPIgEHpWZgjVA25/l2qdf7sJSW7ey?=
 =?us-ascii?Q?7c6z9u91qUFY3nqNiiPibyXo8vbuM/ADV8saIymlb+G6/3XyZRrVVg74LlSH?=
 =?us-ascii?Q?fHpvpMcIk8ks2eAD52p0cKhHp7O7zfNp5dJd+Ynrcc9OV3HJcNnB6G/9VE5t?=
 =?us-ascii?Q?Tt448E7du10N/ho1AMoaAhSZX/1TwUi5DQD6HEdzaMVKy8HgUtzmmho+oEkK?=
 =?us-ascii?Q?6OhjIXQjQt2ZU3Ow6VaUYT5eyN6oc4DeO5H/Z0VqxnSrnKZEL1ivBrYe2pYU?=
 =?us-ascii?Q?2aUsFSXlPQ+Gx1f5yJqR5I2yt/W1YIHurtwSe+M6Ia3jfp4Gell4btqsCpMV?=
 =?us-ascii?Q?a+PPqg9irtWIW9M+ogYS1aRDLr9kdUlqkJ3HGCfZDhBflqm26STuk/ISlK4Y?=
 =?us-ascii?Q?l3kkJWIVjbw/rC0shLeEiKob30FXYCdESLf9SWqiFFP2iQ0D5U26475ZViEA?=
 =?us-ascii?Q?h/vHuUihldwOUpinE+myc+cCdo2Iqcw8H/kay9HPoqirIpGPOKgXvroHviP6?=
 =?us-ascii?Q?X21o0OQPFuh3HkFKpVuZ0dyf153oitrhsWnB++hYA/c0gjSLSKjKq69tHEBD?=
 =?us-ascii?Q?Aq26UOqGSYcF1saGEyxVC3/dduHmBh8uVOSt3maP1g4TUgPr/y+I42CvVk0q?=
 =?us-ascii?Q?jf7WCMEkWQc1BWOBF1I5yzHDcvjkEZCGY6uXPjlCZ4uuzGcp/TChr7kRv3pU?=
 =?us-ascii?Q?gZl9Fol4d0QG+0Oi6F4=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06206041-0d64-4064-5d7f-08de1580e2eb
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 17:47:24.3230
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zJ8WN9pBjBSwLLni8oSawo5SZddhxf2cvKcqzdPCQGpzlXQJu9ADtPxgZ2c/yM6V
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5931
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5361F3F758
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.193.4:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:208:c1::17:received,52.101.193.4:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: XU7CFA7S3HZWQ7BSU4SH2WJSISITH573
X-Message-ID-Hash: XU7CFA7S3HZWQ7BSU4SH2WJSISITH573
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Christian Koenig <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 1/8] dma-buf: Add support for map/unmap APIs for interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XU7CFA7S3HZWQ7BSU4SH2WJSISITH573/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Oct 26, 2025 at 09:44:13PM -0700, Vivek Kasireddy wrote:
> For the map operation, the dma-buf core will create an xarray but
> the exporter needs to populate it with the interconnect specific
> addresses. And, similarly for unmap, the exporter is expected to
> cleanup the individual entries of the xarray.

I don't think we should limit this to xarrays, nor do I think it is a
great datastructure for what is usually needed here..

I just posted the patches showing what iommufd needs, and it wants
something like

struct mapping {
   struct p2p_provider *provider;
   size_t nelms;
   struct phys_vec *phys;
};

Which is not something that make sense as an xarray.

I think the interconnect should have its own functions for map/unmap,
ie instead of trying to have them as a commmon
dma_buf_interconnect_ops do something like

struct dma_buf_interconnect_ops {
        const char *name;
        bool (*supports_interconnects)(struct dma_buf_attachment *attach,
                                      const struct dma_buf_interconnect_match *,
                                      unsigned int num_ics);
};

struct dma_buf_iov_interconnect_ops {
     struct dma_buf_interconnect_ops ic_ops;
     struct xx *(*map)(struct dma_buf_attachment *attach,
     	 		   unsigned int *bar_number,
			   size_t *nelms);
     // No unmap for iov
};

static inline struct xx *dma_buf_iov_map(struct dma_buf_attachment *attach,
     	 		   unsigned int *bar_number,
			   size_t *nelms)
{
     return container_of(attach->ic_ops, struct dma_buf_iov_interconnect_ops, ic_ops)->map(
                 attach, bar_number, nelms));
}

> +/**
> + * dma_buf_attachment_is_dynamic - check if the importer can handle move_notify.
> + * @attach: the attachment to check
> + *
> + * Returns true if a DMA-buf importer has indicated that it can handle dmabuf
> + * location changes through the move_notify callback.
> + */
> +static inline bool
> +dma_buf_attachment_is_dynamic(struct dma_buf_attachment *attach)
> +{
> +	return !!attach->importer_ops;
> +}

Why is this in this patch?

I also think this patch should be second in the series, it makes more
sense to figure out how to attach with an interconnect then show how
to map/unmap with that interconnect

Like I'm not sure why this introduces allow_ic?

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
