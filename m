Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BD0C37816
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 05 Nov 2025 20:36:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1C2D3F7DD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Nov 2025 19:36:56 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010066.outbound.protection.outlook.com [40.93.198.66])
	by lists.linaro.org (Postfix) with ESMTPS id 6574C3F61F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Nov 2025 19:36:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=DMfoRNMV;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.198.66 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MJMknn9ePmrrY44eCcXD9D04d4rpSyOGK2gYFmUhCgTHTckiDHvDQLTwHZ4AhvXO2LObOfpBQ+nq+90sjQbbGZ23GShrXcJHpsaagRJZr2tE3lhc3t1AhUsDhcjGjbygRfyg9316qVCSU8GWTF7Z/H6o3Z9DVrIja7iC8yqkahFyV2JfwgKxfar3g5rLr65dOKM9BQX6viAY9Kss9J6SqjtPYJh2Po62ryQBRqlJ9HjZvCVGRh5+gtDCDp2uc4lFGjpbumclSTXLyOUK2t9kMa0NXwkI5Z+oZSNPiFAJG0+SdFmdgXd3wXAFWTDreT5uY/1AdRBESsqLL6UgL992Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G0x23lMbf6leT5ekWurUuOvCdWgQJigGj+5LNj0RzYE=;
 b=QLVBR20+RuprET4Gh6NpjH09UGz9u/ZLrycH/TJ19aaXyq3zO2rBfKnUALQl8iOa4ySvLRgJY0bel67A0WEAjAsa/Lq8YtwjWUS9CxobJnsgFbo8yHf/Jf+nm9tDmPyDc1gj+Smp5U5aBbstEqMPOKYNyyqhB713Wrgt0P+v9F5vXLx1UJDgpuppSSqNi5Z0/e/DbtprDrKQrtTBGlpQu3PLBnlXfEnfkAuTe4/ki3Z7xnB1C6/lcFQoP7fhcozgP4vtU4SrIvpRDzss5h6cy0zVJhZuhTN84qH6JpUEpnZxoEi2nbsBCcd7DHsmiElBy4fQazh5HOgIDW0MefQVVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G0x23lMbf6leT5ekWurUuOvCdWgQJigGj+5LNj0RzYE=;
 b=DMfoRNMVQ1Iw0iQGWVP2uveSfmz7tpfxmMU7zZyjQRvk7eqQibjZUPFRnZJc9/KevQ1ZE+sY77IjOR6C+OuIy7vLzF3L5PCrXyZ+1Pm0NGhX2duPz/21KeE6i55ZTZRoZZ+io1w5DBU/xXXcMgsewDr3QA+hadESIJIhBqleMCF75WkQ/VPjb9UCahqnDQ4oRsgJTHm5h1jX1uUZub3kJrPt/b7Zy9EGSnR+sZFR5zbpA7P3G1vz2WVY+Pg01Hxwo9XiwXLtO1Qn2zkL3xa18lCYirEb00fA8O1mDMWsdpRQuiBfJ9Q2Emn9tZUebzCD7WEziQKawMbAZ2Qo2NFiOw==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by SA1PR12MB8597.namprd12.prod.outlook.com (2603:10b6:806:251::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 19:36:40 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9298.006; Wed, 5 Nov 2025
 19:36:40 +0000
Date: Wed, 5 Nov 2025 15:36:38 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Alex Mastro <amastro@fb.com>
Message-ID: <20251105193638.GA1363252@nvidia.com>
References: <0-v1-64bed2430cdb+31b-iommufd_dmabuf_jgg@nvidia.com>
 <3-v1-64bed2430cdb+31b-iommufd_dmabuf_jgg@nvidia.com>
 <aQsDoHM+eGN0uLhk@devgpu015.cco6.facebook.com>
Content-Disposition: inline
In-Reply-To: <aQsDoHM+eGN0uLhk@devgpu015.cco6.facebook.com>
X-ClientProxiedBy: MN0P220CA0013.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:52e::28) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|SA1PR12MB8597:EE_
X-MS-Office365-Filtering-Correlation-Id: 702ae9ce-793b-4aa0-23f4-08de1ca2a425
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|7416014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?DxfC5dfRqfhBAbXWacMkOQhH2yXSgzrGu1OGtXhwTy3vY7JLrLaG/degoany?=
 =?us-ascii?Q?Z7GxpY4+Jri0SlyJmHP99MTpuxunpZ8fys+hid64Gn+29a3D1ODbBdNTcTB1?=
 =?us-ascii?Q?tz3W+ZJe5PCsSTExOK00cir5nluU0MqskIpszn/AJJG9ksxOcZpyUFmTychL?=
 =?us-ascii?Q?f/IMJ+xF0HpCC9qRqqGdGrer9TDwpWY+cfrlwZQGyO1ROuhfDBZazzLnFdPA?=
 =?us-ascii?Q?7YcKnsp2RKL9VA2+GywJSMgDm3i+V2n1XO3hPGf6GNj74T/W7uolvFMqqOmM?=
 =?us-ascii?Q?nyjjT06uCw6PMi/pcfrbKOHXccS0o3SGnml3Rgszd9PRtKhet5sTjUPWCBsF?=
 =?us-ascii?Q?3z6ahPI8VgwhiHxZiiEjxzuMulzTHstg06zKX2cY5wigmnhQoDGYvvZrmibl?=
 =?us-ascii?Q?4dPy3gem2xBfdBb66DyQAAmXKUnYlAOP/S9czmysk/D9AoE1RF3H+WO8+h7y?=
 =?us-ascii?Q?r70URBOEH4OXy/WkKacN6pwuARFiwdEHFrOz5g/mTyLEzGFVWx4JEHAVOAOG?=
 =?us-ascii?Q?aYP8gfB8z/EMJXHgI85KIaXsxq7vaTY8sTFb+zGQcNLW1wpQw6lix3LlpI7Z?=
 =?us-ascii?Q?sQvMe/GlAB5ZzhyTbk0G/AmZEdEmnJR5Ju4mS+LJOHb2kVFsTr4bHjl3X7+S?=
 =?us-ascii?Q?i+G1oD7VyZ//RXAyKNUmmhOJAPMRTR99/Nv6eY+DOxZQhfggUEEzDz1+vvUk?=
 =?us-ascii?Q?PIYvc2CzeD9nXWIZKHCnUjcW/1YqQ+ngq34ajmSnvwNmBs3rxA4bNgJl8rnz?=
 =?us-ascii?Q?7jidqEsY7otcxUSPLXxO5IcO5ANUM/kpekb4akWIU9b8a/ycIpNS8alSQK7I?=
 =?us-ascii?Q?kmnLEzuIV8/nxJ6TglGQeZiLTglk5GePP1pYotzQCkNOnqbDzRWgQTipvtdg?=
 =?us-ascii?Q?n3Z5JIYIOSu9vbnFGFp43QNCShbEimyRhr5OXLfUYasae4EhHLTNJrmWCyv0?=
 =?us-ascii?Q?rswiuKinMbP7HjAL09vgeF3WpyHcriRg0IxYha5n/dOdSSWfrzpwKXvIQrfc?=
 =?us-ascii?Q?ahnNtIIXO8Mf8VU0pPBonADMWJPmhadX37Ok7+ClkeQ05juFgR7K3MG64zqE?=
 =?us-ascii?Q?JtIFHRJ8fSpUB8ZjmXsLtuv3+xlZEevFbHkvJZ7R7EkOTsaaoWQZZvjPZ1IL?=
 =?us-ascii?Q?HWYFwDgvBQhqGOrMe3WOhaJspWoKW7KEp0lo9m+N5TUuG8lB11FSE0H1+3i9?=
 =?us-ascii?Q?vjP5AF62cgapTLklCEpBkUoMPXNhTU+xSfx++y+SgxlKobFGentI0CPN66c3?=
 =?us-ascii?Q?lxzE0QGRZ+Ix0Uv0M3pnMhxWrXDeXfB3txzmf8tHr1+em8wABmTArRNFPpKU?=
 =?us-ascii?Q?YsCILYbhPgxlJPYMKgpiUllKdG2HcHM/rgJ/AdsW1k+ASM40KrhA1dNmkf9Q?=
 =?us-ascii?Q?Qwo4DhJx2EUeIt4jUh/kTz1EE8OHPeAH8kLf3ccMHR85GZIcsYjVup2CX/pS?=
 =?us-ascii?Q?NdWeXkcMl3qHgn2PvMLDVcziH6V1oMdd?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?p7+XCOFyvgtzwkXvrryClpZXgkVyvsvK4pBUA+1vecl6RwVxdXZucu2l1mtB?=
 =?us-ascii?Q?vNT1b+nxhMB6wAc+gSyXSehAd7mIb2nv7FBOVdEhY5bNnmJgt3D3mWLS5U0n?=
 =?us-ascii?Q?2PpBsLyO/YBD7PpC4xVmyaAFl2wmeIr8rp6efyB54Ok/hRB34Q2X/D2Gb1r9?=
 =?us-ascii?Q?FCUWc25is+6i8ErQf/gI2Ah3kBZZp2PnbXVWADavWDJKR0dkXxrTh5SMq94M?=
 =?us-ascii?Q?kVlxrYZEuS2IwkIEgzgvVsOLRod/zsGsHrlyQDHfUBu3Vp+1simRVuatqhcR?=
 =?us-ascii?Q?rnT1f9s8Qd5VW2avwVEvFr3fbcU8OI4rIpoW4mpZXMnZxNVxWRWKiNvPrBHg?=
 =?us-ascii?Q?kyjkBZWTmr0DY5CxKdwALz9n/H62Tq91P5zzlvss+FgVJiq6Ryk/bYTBmAzr?=
 =?us-ascii?Q?uVQWU20eUp/yQk7Zb5CEr5h40ea3OrTCgO433g6kHz67TcqmkzTO7aps3Uy9?=
 =?us-ascii?Q?aB+NoesP6mfUfHIDBIU0g1cgQLOln+68hC4R9f+AK3AMqe5RxgW6vSHnwdjB?=
 =?us-ascii?Q?DDGhVdistwppPqR/v2NCywLEQ1ymuEuxTc1L3XDl9p0oHa8JQET6M5t1h2gK?=
 =?us-ascii?Q?6yZ50WD1K8wzZnVxCkfh1sLUwKfEuDIodcjttvgcCfBtYciTL9Owyp4woFtb?=
 =?us-ascii?Q?sEFP5Hz5oCGlTQvDi4oHa95PzR63zvKzo9wIPwRDRTB8DXUIl0yY0HEIC5pM?=
 =?us-ascii?Q?Y0G+SdGU9VP+8cEvYTcyryQfkAeWgYc5Aw3G+YnLn/pBlHiaOb5zKci4JSO0?=
 =?us-ascii?Q?xI+aLzg/RujL63Uayn1X5CNQ7ZhF2O1v0D5GpfxU41e+vL7GtaEm94JFVCen?=
 =?us-ascii?Q?ztN+PMMYvzdcFkIe9iQ1AouWymDZ+7malUYDQwpCYsFDBX8zaa7pW8EpJqlR?=
 =?us-ascii?Q?w5fXdcKv8flWSXI0X7u7hPW7LBZoWeH43BWC2DbCqGbQw0xKqxjPwfl81+eb?=
 =?us-ascii?Q?v3LtlKzt42teSTe4mNP5nr7j7kXzGpcJo4ZZjGuR4eVXjrqW+FZ2oV5voeFl?=
 =?us-ascii?Q?i6qBdO1NYOhbMWUtCJB5MUH6TbLKnVthQ91uc28xh9n8vKgjyMXrMfcd3AWl?=
 =?us-ascii?Q?r3xqmMiILK53DmWyXubf15iTHgcC3V6xKqQXXaEX8AfIpczov3etUC5OOySC?=
 =?us-ascii?Q?AZT7c0klvRKyXEfEX7HSvE+SkbWxqDGErGgViudvZu1K9Xbx9pTvnOWRP1lR?=
 =?us-ascii?Q?R1bFmRAKaJKAmS5ROqHlqS7doYafYv93V/aKkueBHvY+IsoaitJW+qQQYTvh?=
 =?us-ascii?Q?nW1xJVkc0i8fsLQ25y0Ed2xhd2iwS0TW3jVjB/wg6ZVOwOl6ZKW9EJPFnYdo?=
 =?us-ascii?Q?8btc6otucmFSODLClVUAxTrvG67wkI+9O0a+iefOdhHiEgYpTEkddElgMU1n?=
 =?us-ascii?Q?m1UvhLpsumtbGMaTLs0/WanOjEbWF0tdrqFSSr5UTnhU3V6GF1LxREJkKJE2?=
 =?us-ascii?Q?b07EzsVzhwAEoN05nOMMuzey4Z6YsHtZ09AyNggBBUM0ECEX9l5GWhznymsC?=
 =?us-ascii?Q?4DzJAcRqT2jRK3ukJk6O8l18MEauJqlEHPwPt90hR0ZcZ6F7APcjYnfIOXcM?=
 =?us-ascii?Q?AXKLQDbYqK3NWeng6fE=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 702ae9ce-793b-4aa0-23f4-08de1ca2a425
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 19:36:39.9529
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 67I4sqQPeI2DmuadAoALnhKhwcdOAvXXxzLwuC6Y0LOQpxm2jfMcJwgrJ037RfUC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB8597
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6574C3F61F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.198.66:from];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:208:c1::17:received,40.93.198.66:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: NSRHVYLYGXYJRPM4K5AXOZENWIK3BKS3
X-Message-ID-Hash: NSRHVYLYGXYJRPM4K5AXOZENWIK3BKS3
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>, Kevin Tian <kevin.tian@intel.com>, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Leon Romanovsky <leon@kernel.org>, Nicolin Chen <nicolinc@nvidia.com>, patches@lists.linux.dev, Simona Vetter <simona.vetter@ffwll.ch>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Xu Yilun <yilun.xu@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/8] iommufd: Allow a DMABUF to be revoked
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NSRHVYLYGXYJRPM4K5AXOZENWIK3BKS3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 04, 2025 at 11:58:24PM -0800, Alex Mastro wrote:
> On Mon, Oct 27, 2025 at 02:31:02PM -0300, Jason Gunthorpe wrote:
> > @@ -1024,8 +1027,15 @@ static int iopt_fill_domain(struct io_pagetable *iopt,
> >  			continue;
> >  
> >  		mutex_lock(&pages->mutex);
> > +		if (iopt_is_dmabuf(pages)) {
> > +			rc = iopt_dmabuf_track_domain(pages, area, domain);
> > +			if (rc)
> > +				goto out_unfill;
> 
> I think this error path results in locking pages->mutex recursively. Needs a
> mutex_unlock(&pages->mutex)?

Yes, let's use a guard then:

--- a/drivers/iommu/iommufd/io_pagetable.c
+++ b/drivers/iommu/iommufd/io_pagetable.c
@@ -1056,7 +1056,7 @@ static int iopt_fill_domain(struct io_pagetable *iopt,
                if (!pages)
                        continue;
 
-               mutex_lock(&pages->mutex);
+               guard(mutex)(&pages->mutex);
                if (iopt_is_dmabuf(pages)) {
                        rc = iopt_dmabuf_track_domain(pages, area, domain);
                        if (rc)
@@ -1066,7 +1066,6 @@ static int iopt_fill_domain(struct io_pagetable *iopt,
                if (rc) {
                        if (iopt_is_dmabuf(pages))
                                iopt_dmabuf_untrack_domain(pages, area, domain);
-                       mutex_unlock(&pages->mutex);
                        goto out_unfill;
                }
                if (!area->storage_domain) {

Thanks,
Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
