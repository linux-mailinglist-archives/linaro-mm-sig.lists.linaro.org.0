Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMdlNyrzE2puHwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 08:58:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDAE5C6D51
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 08:58:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 955E83F821
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 06:58:49 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010030.outbound.protection.outlook.com [52.101.46.30])
	by lists.linaro.org (Postfix) with ESMTPS id 052063F78C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 21:44:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=gU5KD0mq;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of jhubbard@nvidia.com designates 52.101.46.30 as permitted sender) smtp.mailfrom=jhubbard@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HZ63SkEaPIHwoc+Fm2njBRUah4R4e0EYrlQ4gnBtNpKWn9GNrd+ZMZEW07QmgNykPp1xu1e4X8qyHVRs09J9X30Vv4un4g5+exqM9erVp+44fU0giAGgBJ3c1+iGaen6EYb5bkslmkusy7lNCWV+NWI8toqr9iaUBnC3ouIzl8wp8Ps6qVgWZvDhgTzN4WgVgJ1V0hBOFxK2ete9Kvc9HGoq75UAAffjnAxCZP6RT+oc/juy+FCNpWqgB5FjvuCjmtf/gFkCl79noRcM+sbJEU7O8rs0dj4gN7GlUqtreKzU67pDsVXhMfdz/Qi1b30xA0QmeIZoa5ph1ymUY8WMLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=klVbuwWQc2ZpjoJNgtANE313HxMoS8qEvKoZqw+RXuE=;
 b=Ov/QrcGh7JB2CP74q6bLnG5ov8+AegW4wosqjNYzdcmzpA11jB8NHUoFK/ejBV5bpB9SHQYIpU97dsz5Luvxr3BJlPsJwXvu0gnTwuBSJTj7qqtgMg7k76AvCcPOaJeaRN9ROTk5j/l81m7X2E5hEXWM7fqdiuyxgDvXTXjy0MhzcC0tZOlJF26uDkx7nLS4lVm/kvke24BOs32DOzvM0IpYxe4ejyB7p4BnS5AtcLangIyHh+urSClRRegVjwQE6WYxHRo7MvSmq0bN+4h9Th5TyPm3S3udBlkHbT4ecSw8CdcHK1hHH/MDCR5O6Oo+7q0gAzla3kQqbEs6kjPM6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=klVbuwWQc2ZpjoJNgtANE313HxMoS8qEvKoZqw+RXuE=;
 b=gU5KD0mqW3ppuXB1Z3iY7qtZTRUFXrI5icJ47PIr4GJikfQa4xhoveQQ7IzhP0jnPM7rXCOzw/puq4IYT9tEjOEPwSV50wXgjWjCHvBZDR5u0SayaiBW86R9i0/50BliEJLXz221rtYU+L70sIZsDJAsNFW37MdScRuEcOtGPJexpWsdvcYGREe+ay55PGk00YD9jHOcRLdJL1DaZt1iCYM7/f1BgxL/Vj1xAiaPEIbu6w0v8igV/hGaP2tgJO9jEWaNIBspIGLn2aLse8GqCbEPfJHFs65VaFfvMgoanCn/PEzwkaH1wzISao9wt1gKV7YYJtHgI2RkjU4+9couHg==
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 BY5PR12MB4321.namprd12.prod.outlook.com (2603:10b6:a03:204::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Wed, 20 May
 2026 21:43:57 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%5]) with mapi id 15.20.9913.012; Wed, 20 May 2026
 21:43:57 +0000
From: John Hubbard <jhubbard@nvidia.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Wed, 20 May 2026 14:43:50 -0700
Message-ID: <20260520214350.168689-1-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.54.0
X-NVConfidentiality: public
X-ClientProxiedBy: BY1P220CA0019.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::15) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|BY5PR12MB4321:EE_
X-MS-Office365-Filtering-Correlation-Id: 3aeddb3e-49ac-4057-10fa-08deb6b8e536
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|11063799006|6133799003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	lVOc8LfYI8ti6WB3DHf4nwUkluMH61o/adm/Sp9pKRrvVZOHdFsAUwAY6RbLC68NFM7KcEwohaH4UAUI1zdhf9T9AtaNJ0ne4H6uZtBUOf56QofffZi7sRaQZQjwLOHMejO/+gYovezkAIeQKRCObirLj1v83GytCt31si9D/mUHdsjbPmIwD7LyWvmV5/M4+5JaWkJ4RYNwMe6rWGqN6dxJUPCCVLZjvqgpQs6LopbhlRrHXjo18nPCxu0KK5ILNYTku/88FDEbqTJniAoTWtOUaZJHYo+HTWYNTrPy3IJsSehAF8w9BATLGP5Tqqlv99aTM2HVpt1tA7UxOOv4DQzAj5Xtq29hqU12/QVoEFpT7g8ArXttU25klCe7OgFzyhhA2hw57Kh9b3SKNK/1xc5lXH+k9lr3n/DBqJejU5agH1bzkdwxXUgSBmnSHmgi1okyhnsnr4mMVRLU7sJzUvrKaeMQ0tUzGedC95IG+ajA9vwLa9bYMiK8BREN0a95hkFXFojvDo1y/gkHBT6n6u7K6TbkO3L715IHAETTkPR8siPLcnt+S15PW8nZjn3ayllG5BBd28S6AGLQADjlOMf9Oeuw7eJIQauocnXcOCVsaA9TCxqy1FTcP0KEKA9cXYvhK+4WFBT0Ruagq99XvV1VyPMpIOQd8ZO1u4t/QNFE1l+O2rxIlvRDJdmzPOSp
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM3PR12MB9416.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(11063799006)(6133799003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0UH3FXkdYDC/xstOTve/TecnZPtJtnq3lyT2tmFpCxLP5SelxPwA68758heg?=
 =?us-ascii?Q?rso9MXSU309aDWuYrzAv+2GlRpnR/3v9bHaoYVJBBg/KIxRDljkNur1SXaPx?=
 =?us-ascii?Q?XMIp4f72LhrSTi+kP6RerVxkAExcletNXYFZmkv4ebO9ASuOLDli2+TBFZ0k?=
 =?us-ascii?Q?wC1LhD9WjLRYSFPP8KZMhbIhUgeyaolkKDJ+1mvCv8S+NdD5CzzxaCDGfjDS?=
 =?us-ascii?Q?OEPbETnFt+YlFKrQpBgwK6x/c2EW/RQBEr5gGh2vO5trz1UcePxGkTZL8j91?=
 =?us-ascii?Q?RhjR+tYWUFeE735Rtk2sZUe3I5xKodZ5ogsK+fiwzC2ph7SauzyzLu2Np9JT?=
 =?us-ascii?Q?RpJQTPWqoCnMnUoGlWHCK+3I40pU3XPSL7k/26UNxrJsXpst7m7fC5SD70mv?=
 =?us-ascii?Q?nSSvJo+CWXGHWlsDpBTBJV7MUmm2wBkJz3q+DAZRpnjT/EzOXo+JPOI4sRmy?=
 =?us-ascii?Q?oYZHH2YjSxsH6wvhfcyaauftCXB+5uAVQUQ98ok/JVJjMUufEqRrfT+mp82W?=
 =?us-ascii?Q?ntoTKcFWSgXbsNSlxI6mQiGCHEYcdhyTjScJWRYjPa84i2CSrKZeYYKiY4+a?=
 =?us-ascii?Q?+PJ8kb3ckubx2bRquN2jGhqi0OQzvAQyB/jd/FhkhFOMAWhIDFFCBSVLlWxP?=
 =?us-ascii?Q?z4N3SvTXoPP5ORIEOen+PSEWEnDGGd6bCH900e1jfD0KVDAjn5cE2cM7NCKP?=
 =?us-ascii?Q?xKjM8ABmI0VvO2ewMx0NJc9/q9Ggni6Kbkz3VcPgnmHeEzI08dAD4sS9mloW?=
 =?us-ascii?Q?3q7ymHLOhVuxvCdjtIHDFB6z8H5KsvvUOnrpy32UCX86tCVd4vYfbClBaaUp?=
 =?us-ascii?Q?HgiRfR/csYY9aqbFjN/gJhLsEuW+fE8g/Zlx0Gz05PFJpQzQAzP9t/usjfk+?=
 =?us-ascii?Q?3bgLxWjPuUyvK1lWZtth8tPOtxIsBh6Ui3F+ZY5UkMoKJL6GWWbgSZWLjLMq?=
 =?us-ascii?Q?6GJd7N+veNBbAaVH5Q8ed+ZWEcL/a0AqGClJ+y2du0AeJk9taA6ID0/BTKJ0?=
 =?us-ascii?Q?noFFZLjmNXs4xCydHFmXu1wQjtq9gyDVf3rNzmaSqmJxuGyNRIpkgjaesKWQ?=
 =?us-ascii?Q?cAY6MoOEbYoqda5OrXZyrsnsP44y0Cini4/wY6lsbhHN3WxI+qN3XYtZ3lAI?=
 =?us-ascii?Q?pgzBOkRubc8Dsy4dmYElFcCydm1lLHJQsrvAXMoAMyfhaFmuALspp0pwJ9ls?=
 =?us-ascii?Q?BukXu6aANh1K/UlC/61zOs1BXuJWc3NP7IPN3wXmHsi2sLd+WuSi93QH7G4r?=
 =?us-ascii?Q?uZho+4NqEcngf/AxCKM8k3hXUN9QhfKlQ5vPqO2uA0qbqN93pTmfRFP1wDkO?=
 =?us-ascii?Q?96HsH1pVRsUj7XHF7frtaB1oiyzxyTXy0+jEmP87TsloyLMBKWSteLq73/bl?=
 =?us-ascii?Q?DaA4BO5+X9lHNof0JCtPAnPFD9sI3HOkQyav6T3xJgVAVIthCaz+XIj9XkuJ?=
 =?us-ascii?Q?B+cBHUTD6vhkZYkCqyzU7AbkpX3JQqcZWrbMztv2kPCa0Uzp2Qt6vNYJn/Ys?=
 =?us-ascii?Q?ABvrJnt+hRttYjVMyLHeljGr3PMV1FJzwarFBJZqzjdjKAuYmue093zkQwwo?=
 =?us-ascii?Q?oijMQte12fvlyT7WdnqstYpiS9vTcxe0I+TuwaMiIar/BhUDwRjXB3Lcgjdi?=
 =?us-ascii?Q?wqMd1N/oxbSTJgZZDJvMF9ZlRtbiGK9m2cSHckHveZ3ZFG2UIeHbv2Ss9dQD?=
 =?us-ascii?Q?+5LgRuyu3/IxspmMuHNy0DEmcNBIaASk91bb+J1RpC/xvwbAFhhpNEvpqbd8?=
 =?us-ascii?Q?b6r7cRAJvg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aeddb3e-49ac-4057-10fa-08deb6b8e536
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2026 21:43:57.0788
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4v4kgy3M5Ez0ndA7bG8UxDZ75O8ZZcNULtXl8u24fCqFvepiWJ54IL1EaV81BV4Do+v8Zvd2nKjqmYT2bNIfVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4321
X-Spamd-Bar: -
X-MailFrom: jhubbard@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IM3IZTVJQZ76F6D43KCBHES6BHODTNW5
X-Message-ID-Hash: IM3IZTVJQZ76F6D43KCBHES6BHODTNW5
X-Mailman-Approved-At: Mon, 25 May 2026 06:58:25 +0000
CC: Christian Brauner <brauner@kernel.org>, Jens Axboe <axboe@kernel.dk>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, LKML <linux-kernel@vger.kernel.org>, John Hubbard <jhubbard@nvidia.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: set SB_I_NOEXEC on the pseudo filesystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IM3IZTVJQZ76F6D43KCBHES6BHODTNW5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	DATE_IN_PAST(1.00)[105];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jhubbard@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,nvidia.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 7FDAE5C6D51
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The dma-buf pseudo filesystem dispenses S_ANON_INODE inodes via
alloc_anon_inode() but never sets SB_I_NOEXEC on its superblock.
Since commit 1e7ab6f67824 ("anon_inode: rework assertions") in 6.17,
path_noexec() warns on exactly that combination, so an mmap() on any
dma-buf fd trips the warning:

  WARNING: CPU: 11 PID: 121813 at fs/exec.c:118 path_noexec+0x47/0x50
   do_mmap+0x2b5/0x680
   vm_mmap_pgoff+0x129/0x210
   ksys_mmap_pgoff+0x177/0x240
   __x64_sys_mmap+0x33/0x70

dma-bufs have no business being executable, which is the invariant
that the new assertion is enforcing. Set SB_I_NOEXEC on the dmabuf
superblock.

Reproducer on a CONFIG_DEBUG_VFS=y kernel:

  make -C tools/testing/selftests/dmabuf-heaps
  sudo ./tools/testing/selftests/dmabuf-heaps/dmabuf-heap -t system

The selftest allocates from /dev/dma_heap/system and mmaps the
returned fd, which trips the warning without this patch.

Fixes: 1e7ab6f67824 ("anon_inode: rework assertions")
Cc: stable@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/dma-buf/dma-buf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 71f37544a5c6..d86a99d7b8dc 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -216,6 +216,7 @@ static int dma_buf_fs_init_context(struct fs_context *fc)
 	if (!ctx)
 		return -ENOMEM;
 	ctx->dops = &dma_buf_dentry_ops;
+	fc->s_iflags |= SB_I_NOEXEC;
 	return 0;
 }
 
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
