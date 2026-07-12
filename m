Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GVKjIQwTVGrehgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Jul 2026 00:19:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ABD746224
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Jul 2026 00:19:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=Nvidia.com header.s=selector2 header.b=CgzVsmcA;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=nvidia.com (policy=reject);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2DBF40A6F
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 12 Jul 2026 22:19:54 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013045.outbound.protection.outlook.com [40.93.196.45])
	by lists.linaro.org (Postfix) with ESMTPS id C15EB3F757
	for <linaro-mm-sig@lists.linaro.org>; Sun, 12 Jul 2026 22:19:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vvLKxktm6CH3omDWqO0E6G7mUQ9+W7u4yPkroNsGFrdcIrid0xKQmUpNy9pG+iOYr+jiSlt/HtmWD0DLnL07Cw2/IUSl1FE0E4GqBZgP3U90Bx0IvwOHd8yF/TM/pWKVXxngP1JVMlfsoIJRzuzwJonhOaohvLl81aBgzg2OJto/UKrGw52hPSk+sZiN+sNtLKoP7JafoVH9VhtIFDzLT4a7Tdr3R0L67VLheWRGHjJ0iDZPoULuXaccAlHrJBzgURtpK8ASK5XCN2/pGjG2WCUDFaaOmT8WMBUIR28SvVL6K1xnf3BkED7LJJ0L1frc/AJBe8fmYAANIxBpg5dMSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0pBg2Zvhy3lLlv0pJ3JysI/SLTC+HlufjfVrN+eNtaY=;
 b=SdfgRqFG5Yc3yS6v78+rpizimGT9qlYgWh6C/7oRTFerpZru3qFoVS6wnL1rWxrrGMdyplnKuWL9UK8EwiHIgT1v2pMrToYuXMqUUXLnFOtrNC4AoK/vwBvxVhLvNulnqVb2R35R7fYUKmoJ35ENb8zE+y8GYBAjr1zH76ZJ81ScfJbAsWHFnxI7Vfgz4T6ad+BSRs40NzS3RpSQu5tJagPclFN3EDP6jyDNnrEpBLwOJHPA38uOlE+C58ntgGD3jbb7vKduQHjpKl0IsEPuTzCBzfw1fyPsVXjzOvs4WwmXvuufsrYqCnYgavg9Y9PL6JUXnxxVMx8DdStwK/VKAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0pBg2Zvhy3lLlv0pJ3JysI/SLTC+HlufjfVrN+eNtaY=;
 b=CgzVsmcAEZUT8jRY8JYgUkoxjK42axn/oRcFYYJ1ztQXr5ZNf/w45Pmyp2Um3/v7EQlHL8u1ejQ2QInfpzS2u53f4DwQFUCBc+WcTvCLa9d0gnP+3D3jrr7zPJ3W1bZxrDt+wvsef38Vb738+2D3H20gpZPf4QfOj5ytPjhqUZU45NB/HCaAJJZc8L/Ar9F/P9xx/vVca3drp4JNsUXSZpgx/c9DV3XMOsWq4f+kVWyrR2WSi4MiYs3kSLnPrp6SN1LRTRux+13vjqNIInxUsX8GaFAhmwvQ1+jHCZjisAEu/41dG1UpPPNpLdMx6v02JUSi9rzF9nN2GrNSMWYiYw==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by SA0PR12MB7002.namprd12.prod.outlook.com (2603:10b6:806:2c0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.19; Sun, 12 Jul
 2026 22:19:36 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%4]) with mapi id 15.21.0202.014; Sun, 12 Jul 2026
 22:19:36 +0000
Date: Sun, 12 Jul 2026 19:19:34 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Ackerley Tng <ackerleytng@google.com>
Message-ID: <20260712221934.GF674038@nvidia.com>
References: <20250529053513.1592088-1-yilun.xu@linux.intel.com>
 <20250529053513.1592088-11-yilun.xu@linux.intel.com>
 <20250602133009.GC233377@nvidia.com>
 <CAEvNRgFpJWQ5M5sQhGpQUV3GbBq9N+MQhhaxdxa=D8ky94SCsw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAEvNRgFpJWQ5M5sQhGpQUV3GbBq9N+MQhhaxdxa=D8ky94SCsw@mail.gmail.com>
X-ClientProxiedBy: YT4PR01CA0464.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:d6::21) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|SA0PR12MB7002:EE_
X-MS-Office365-Filtering-Correlation-Id: c652ef0a-4174-4e03-917c-08dee063a7c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|23010399003|7416014|376014|22082099003|18002099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: 
	+0BoDsQdCifYoL5unJB6kmCzcnjPsx78Sh4VsfABrl8txWgnRZQfl2o0elPbodbP1Pyk3qZoQngUV6ivi2VsX1DHaPjFNXuouc+6rBqKf6gSLXhNCOwmSnwIwMAYfCK2LRv0HDI3D/hdsObPllthiqPT+EKoShiUA2x/RFS3QVZLjNXrZ7PHKSfThgEWdmmnmD6BV8qSFrXArYf8fIc5qb9dkHNahOo50P0Xf/kGuOGdRSQWVJ3I5ULZbFnNIBHGm1+/eD5MPejRQIzn1kHJ7iuEoAWBvCIzcU7rbY654J3YBtCWMZn4F9VgbhIYxISrEKBL/3AZmKvVYoakxeANw9na76lULQ7PIa8lIUySFVAOXnJyQm/0rQgbSKjYf88/efmtwc8aWRKHTqUBLwejb+/Tb76D9KTapJMWyTibVQP/MDwyghHPBIrIoUC0+/qjVtwYrG97m8q28/v3DFhgeQxn9J7doI6fX1uB+N7OHQUmluiwaNd1Y/7SSRDKj6h5tL/K+sscWmyRrgVT2uKqPpKwm5VSfAOtb55J/lAvDaOdIOEjpHtJWpVJnq2+b4fCnukPy4qj0Ki6wYAUmm6fCGeKQfrcWNlaSv1+BCd3A4H9ExlQEnh4pEUTZP5nkYOiKAA6b0QJ5ySLMYLzqm9S4g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(23010399003)(7416014)(376014)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?PP/6uM3A7aRgjy5635Ioe8Fy4Uk04JmBb1B7yp16xRVpSVSrca5isDQA0EZa?=
 =?us-ascii?Q?yP8odGKGEl4L0b+NbgH9/tXw7j4P3Pc7mSvNyXXWkm0dYuV4dHwlQ7ysksWy?=
 =?us-ascii?Q?mcC/B2O9VR4Cg/j8U86DlEucdd3hDX0+aKS89bGOsBJXnY43IMp1R7XtGtL/?=
 =?us-ascii?Q?D12m+FQ0kWQaA1n15OlYBJpCQRpQB1IW3ejW1T7hqQuuN4PnWCrmdtS1KRNh?=
 =?us-ascii?Q?4jY8Qox11ErJCDlIKjjRYxjYo6D5AssMbqGEfNsJt5yVZQCPP5p4dcLeRe+v?=
 =?us-ascii?Q?2UJSJFG6qy5VynthH0qZcu7wrdwj7dMRyMKtFLBhkYyNsXFhodVrcMTOYcGL?=
 =?us-ascii?Q?AJmwx5QG9foCZjztUrklb0YeQgHcqB+BSMcb9dY/r2pChCjyKs664hTMit1L?=
 =?us-ascii?Q?GTest/BuszkMip3DzRiq/QethmWK01RaCcGldQyzsbo169xaLgb7HB/LA2eS?=
 =?us-ascii?Q?xp1NMOZuWwD4iWpTvgV49ltKskhUl+sOnKZVMbLxZtYPWcuUGxki56JuYtrG?=
 =?us-ascii?Q?T+Oj8UcRb5sHO/AAlupDXRvZ2g7CrI72Pe7BoH45KOIZnKVYFzDa0g97w3pS?=
 =?us-ascii?Q?SoK1Of3JO6x5Vb+XuCw3SAu99WFNIO3MTTJ0b8lQqkRwWaQtXaW1Czorbr40?=
 =?us-ascii?Q?s0J1ZBLZjwA6nn7MadMzGL4iKIrqoTzfs7drET1fcCxWx2p6l6fRtdF3CO2l?=
 =?us-ascii?Q?MFJa0+QrtpBgtmsnu9Ms1Y4bOeNGY5BnD9AAXHBmvaXmabySm9yXtVkbR04n?=
 =?us-ascii?Q?jPH8AmF3B7pjgsQj02W4jWOKdVpv6ndKCLJkrDRg2NZ8knNwZjVJNR5B/wCi?=
 =?us-ascii?Q?ZGARIU3lNKqKTiJWBrmKmqrLEb2BJkQ4B7UQo3cwOh4405p9ADyoTP+Epco4?=
 =?us-ascii?Q?oXeB5OXD3n5MlkZ+DPe/1ZXTDneaIMkPClm4A63T0EAic/alaMcKub2WM5Te?=
 =?us-ascii?Q?T0WcMrPxgF1rE0G6l1e74ROFHiXQU0kXM3yBufQqCRQrYlvGmvg4WWdZt0eE?=
 =?us-ascii?Q?ELO+tObx775FtAMgYrvM2rDyGVM2HIVORPyziPN4kPZdVG0X8v83LseSlnzz?=
 =?us-ascii?Q?KM4G++qOc83QmiyYhli9UU7fMFoPr1uQomQsWFJMDYqkcrcXFQPzVUQoODz4?=
 =?us-ascii?Q?JONyfxNMLCKeY5Ls3jWYihn/snpIkxtaqBuNPIHfuG8t6SxKaeM21TcwKOps?=
 =?us-ascii?Q?I9a75hTn6gNHr5C41iEFcbtRc641FA1ctfft6cI2FXevbimotkuViGgx21YO?=
 =?us-ascii?Q?zJr8I62/iI99kGIBC7rxeW7U5poVyW22wLaXCd3ihHdzTBOyb+x+X6hESW0J?=
 =?us-ascii?Q?Ashe4IERR02ehIzeLgo7uS6u3vP7tWHNgwoaifihrY+F5AwDuNzIA1D86HqL?=
 =?us-ascii?Q?tr3/sc7zJX6JFsMqCODt5OingKVSsOPTxkuymGQeV3UxBlsXdAeQtm0eFSiq?=
 =?us-ascii?Q?knz4fosr8UdsLDxnkB8+CjqC7nAT/JgwfBGUXzFtatCe81JLLvP2zvlS8rdw?=
 =?us-ascii?Q?gbsfGhlgVC88GrfV5nuNWyEs4LDETur/O51gqmfQSY7vSnHW773yfwcyRDqB?=
 =?us-ascii?Q?Fb+Lok/5dmpprts22q+H2E7dbGDmx3E/iwoolCFVyiV7QQlrNB6ODZezLgut?=
 =?us-ascii?Q?gYLpq2f3dWDu5u435JGCarg0wlo6u6oa8hHonlqIMh2tPg9MuFEWcrqFFTDo?=
 =?us-ascii?Q?9QaAQz6p1cIpkCYBjfsURHM2GiAbUsXHQmhcmzuV7vxFO0+D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c652ef0a-4174-4e03-917c-08dee063a7c7
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2026 22:19:35.6936
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5vCmbWngIZj3sQddl8ImYB+v0kJNuT3fM9CizR2Yk0OoCtju6dYYgOiPy1yIfPd4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB7002
X-Spamd-Bar: -----------
Message-ID-Hash: 36WWR3CFX2XLKU7PR5YLK7R256CHDKPR
X-Message-ID-Hash: 36WWR3CFX2XLKU7PR5YLK7R256CHDKPR
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, kvm@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, dan.j.williams@intel.com, aik@amd.com, linux-coco@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, vivek.kasireddy@intel.com, yilun.xu@intel.com, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, daniel.vetter@ffwll.ch, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com, linux-pci@vger.kernel.org, zhiw@nvidia.com, simona.vetter@ffwll.ch, shameerali.kolothum.thodi@huawei.com, aneesh.kumar@kernel.org, iommu@lists.linux.dev, kevin.tian@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 10/30] vfio/pci: Export vfio dma-buf specific info for importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/36WWR3CFX2XLKU7PR5YLK7R256CHDKPR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ackerleytng@google.com,m:yilun.xu@linux.intel.com,m:kvm@vger.kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:pbonzini@redhat.com,m:seanjc@google.com,m:alex.williamson@redhat.com,m:dan.j.williams@intel.com,m:aik@amd.com,m:linux-coco@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:vivek.kasireddy@intel.com,m:yilun.xu@intel.com,m:linux-kernel@vger.kernel.org,m:lukas@wunner.de,m:yan.y.zhao@intel.com,m:daniel.vetter@ffwll.ch,m:leon@kernel.org,m:baolu.lu@linux.intel.com,m:zhenzhong.duan@intel.com,m:tao1.su@intel.com,m:linux-pci@vger.kernel.org,m:zhiw@nvidia.com,m:simona.vetter@ffwll.ch,m:shameerali.kolothum.thodi@huawei.com,m:aneesh.kumar@kernel.org,m:iommu@lists.linux.dev,m:kevin.tian@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,nvidia.com:from_mime,linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 00ABD746224

On Sat, Jul 11, 2026 at 06:01:31PM -0700, Ackerley Tng wrote:

> In the course of a CoCo guest's operation, will the guest need to
> convert between private/shared MMIO? Will the guest need some pages
> shared and others private? If these are required operations, guest_memfd
> already provides the tracking and is going to have a conversion ioctl
> very soon. Instead of further extending dmabuf to track more things, how
> about letting guest_memfd track it?

Use another FD type was sort of my fallback if we couldn't get DMABUF
into something workable. I'm kind of surprised to see guestmemfd
proposed as the other FD, but I don't know much about its insides.

If VFIO can create one and fill it with MMIO physical addresses then
maybe it is OK?

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
