Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7F05F58C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Oct 2022 19:01:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39E093F5C3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Oct 2022 17:01:46 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2077.outbound.protection.outlook.com [40.107.244.77])
	by lists.linaro.org (Postfix) with ESMTPS id B4DC23F4FE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Aug 2022 16:11:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n3q/IG1l3/1oZk82TSX8PxUCpcqeoYLpw+LUrAFpbpPiA2J5OXTP1ouQ7N3dwcshdwdyQhCvtzZpcOZfCR/PvZMjkT1Qi3A4Q5K3/ifxvBzcSz627CfS7J1/uykxWrS1+YAg6kXgtZu8nDt5wYc0vfHvPl/3KM1pc0KgQB/1Vyk0S/qzkOSbl/C+ZbJCW6gjPIV2tNtpz0Hx1ZZLr30688AdqDQi7RtV/jG5It9QJzihHkNlBh8qBo+X75N1BjyXiY4Ry9XDmTGTUl9G0RKBnS7SYSS+TFvD9lq7h4g2pG3H6NmF9U854V4xCPf7zSBwZz4ZSAIxY+TUzduJiyJgxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JdfrhO4qtY8mBEYKYotoEifH6Kd67gbnXu9+pK1ShaE=;
 b=ocQhniO2mz6QZDkALO+iCvIf9gnhOYl3SSmja+4uguzJ1KRzENUexFKl+GOtI0SjNVIpijy5APw30V7cyT3nc24JTK+d/P9VZ51B2gOEKdj4YIgVaRdrZ/BZMxr5NCmel5v/xXHtgZlNdP7/Gq7Mv7N1JH0Mz2QAJru3CI6gbd8PWh5DyUjh3tFimw4MakLQ3A+HLQ0EjAZt/JCJqu2FEdz5dRrog8QRqk+D77OmZaozvxgY4RtNDeT5BytXO0J0KaTPWTCXa8CPQKSbSJo9pQ9cY6teYDfRymJrMO4k1AmuxvDSx5RCRFwHLT8QnuVh0yru5bqeatfwqXrvgDLdKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JdfrhO4qtY8mBEYKYotoEifH6Kd67gbnXu9+pK1ShaE=;
 b=lG5ZfDcssxapS9Pdyc4+zjIgssnT0rL2rmD1VTlDPXAgTUKHnaJjPXvSzsyHLOCStN9cyi/VJ1+LdnMT+kuMFcZOeouDgybVHK8CsbyWNmcfY3oYOHwHUGOe3e8DGwdF8TZWM1rKlCcFhC/hvQoZREL3bDQzS/TmTNadXWGA2KO+tDioMFsG4ufXITOkBWuggQPAknKULuLRlcda7NScjqQVDbf0h3oJktqIvXe5w32uxtD4kD/cIrc7Msu0albMT2fzKKNZeFFWAMTkKsVeshqlw8YDauX4T4LVBmWENeSE0W1h4PxaUQ/IM2ZvhirMoDn+f29TcksHPX6TchaMsA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB4192.namprd12.prod.outlook.com (2603:10b6:208:1d5::15)
 by CO6PR12MB5458.namprd12.prod.outlook.com (2603:10b6:5:35b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 17 Aug
 2022 16:11:44 +0000
Received: from MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5]) by MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5%6]) with mapi id 15.20.5525.019; Wed, 17 Aug 2022
 16:11:44 +0000
From: Jason Gunthorpe <jgg@nvidia.com>
To: Alex Williamson <alex.williamson@redhat.com>,
	=?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	Cornelia Huck <cohuck@redhat.com>,
	dri-devel@lists.freedesktop.org,
	kvm@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org,
	Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 17 Aug 2022 13:11:39 -0300
Message-Id: <1-v1-9e6e1739ed95+5fa-vfio_dma_buf_jgg@nvidia.com>
In-Reply-To: <0-v1-9e6e1739ed95+5fa-vfio_dma_buf_jgg@nvidia.com>
References: 
X-ClientProxiedBy: MN2PR22CA0001.namprd22.prod.outlook.com
 (2603:10b6:208:238::6) To MN2PR12MB4192.namprd12.prod.outlook.com
 (2603:10b6:208:1d5::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ee05919-9f07-4a9c-a0d3-08da806b2d3a
X-MS-TrafficTypeDiagnostic: CO6PR12MB5458:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ydwQxtLpjr7JYsH4YZABu+9MI8pSJE2iZvA+YZXSRWhu0wgNsVx3rezrWOgRXWDg2JNx9D3Rhbl2ijhU0tmF7mQf57W2s4Q/YQsQV8olTIpd492kSojKSBDt0JSZqUcpEEIZ2ww42UvOhaTmWrOyKkMdAu64W2VnDjHAwo1Hrc5g0b3ybjYW+ytl6R003nCwkt2dxCdG2Wbx9umTkJ3SrtyX6LKPMf/t5Uj8A6DvlZHZgANYe7hWpB3qg2hxQhB3nzN2B4RznAGw+sHOIi7z3L8HbmUBWXM+XkcGEVAcq8oQKXhekUkiCqKykVBETBpABJWWUMbsgrfOBdzygTsZJFPETLGmOoQQIKO2tbgaNhercwadXwQA/dUMKj3gK1Xq7hFGaI3mIiHeK2V+4AB7NllBlevBiZJIGo5FWS3Qepopok/umEKHGWIj3Kw3yNZ9hLHy5OWE932Kj2BwTrOSmO8UyFe3emjEzDw5FPw1WiALuT69IOwu3TXPU/N3uvp9gZircQ74rQrbg+33MUrsLBAJGKCgVf34zGq1xY9iJavuaYlZIdPrQPggVdGsUoOyLiESajWmu82W7nWHgygecuEZuD0M4ZkoRYc4dGxEfb1cnUjWvXZ28bp6bPg+SejVxugVCZl/B+4BT41upTagHzdTWHDa7nxxJs6EXBecUcLcAbUS3PkWpgXuey6vuYoTRIwOeCZwjgV15Z5aPEnpRItCMeaRb2ArV0YVw2pn8SvNn90rFMtaXHSF4poUQNEyHK/vnYQfJ96+LCrHNK/+U1oPn+4ONT/EkDWluZdnAOM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB4192.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(39860400002)(376002)(136003)(346002)(366004)(26005)(316002)(41300700001)(2616005)(7416002)(6666004)(6512007)(2906002)(66476007)(66946007)(8676002)(4326008)(38100700002)(66556008)(186003)(5660300002)(478600001)(54906003)(83380400001)(8936002)(110136005)(86362001)(36756003)(6486002)(6506007)(4216001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?LUJmppj+tXZHx1xUUDxiMWrW1MF6aVvXj15bHJJA8S7G+WQBbcJCYq8nqQdA?=
 =?us-ascii?Q?jQOxl7ZEp5B3wycp4gg+st5WD90SZ8SNSPwgzMcx6WkGRg+/ynT4L1ePEvQR?=
 =?us-ascii?Q?W7YfmnKwadpyq55m3RePtrfbriROPVbEnWESyHAAaAJffIIHBxiZvNDjPOw0?=
 =?us-ascii?Q?zVjQLbN25abPRk/S/OIGffwcS1+oALPPUV/pPLyeTeve99KtH0s0K8ffnF5W?=
 =?us-ascii?Q?rYSCbVHvoZhkJe4HTImM4b6iMOag/FFWYoSV24Kt2o47F6EOY7mCbz8LlWTX?=
 =?us-ascii?Q?f2n1HlqM20hFJJo97+/58aFkjPMz1waZQ3dPbNyK/17RQqNJj8ql/2O+uLYv?=
 =?us-ascii?Q?qLoC+89mUyh/5trF6vq66x0zMWzazZ9DRTDywJCyoQtqx8AQo7zjq3W4WMSf?=
 =?us-ascii?Q?sSaa0HMlsNX9f3Q/t1da6szAU53sdktWNTiCfIRc6MUIs/od4nBln3IVdmYr?=
 =?us-ascii?Q?rRKEFCdAImsu1Bdnyacl6ffvjMyT5z3tu4Wk9LluRybsodfADmetW5GD/X6e?=
 =?us-ascii?Q?iXdp8WpXpQDj9aHOjDGEmfQwJACVtu5FdKeBFGV0npB9i3pW56WPrjqrvlxT?=
 =?us-ascii?Q?55Ac+Xo4n0nvCYOD7potomMH+exxNqLP9LfpK7ur612Lbs236Kcp+YXwFJf0?=
 =?us-ascii?Q?BAYBuM/v8TGi7B+WseQgXgIrRFQ7yWbpCa0g+VvyXd+9uFq3p3xmwt37yqzy?=
 =?us-ascii?Q?PEprmgoH68/Fmwsbj9PIAR088wk6McgBeBdIaEV7IIupPd+3zci4PQbIh4hE?=
 =?us-ascii?Q?Ko+Yu66Ti4Jr38kNFlLPIGtc1+bQcbG3he7ZKbry4IfFE47u3kfa9EnH1n4a?=
 =?us-ascii?Q?SQ1YVPu7Ez9+wor5EJODAMkF8D2lWM8RlcWbpXrM/d6yMdkRsC3t6kxzYsfv?=
 =?us-ascii?Q?OEc+2WnenSEWoGwKA5s/oj4lJc7+FeLVPbhM+Yn3J2wZAI3K7esK9PnHIpQ5?=
 =?us-ascii?Q?3OmdKIBB2IAiQkTA6wCsX3w3xgB+NuQyRspIrdKqZE4IZuUjkMnTaflitFT7?=
 =?us-ascii?Q?s4Ix8gIjJa0CCjARW2iR3d9IEhHulKzwVCK/Rr8oXwYsOByFMblYE3nPM794?=
 =?us-ascii?Q?+Ux0vI5ykN3Hq55uQvhTJn71RycNAIPxuKvSiNv5FaxCXUUT/tnpIF2RPFw7?=
 =?us-ascii?Q?8uT0GcdfrmnoI1OhyaNoucDXb78B9f2LTcPQGB/KxcZjtnoipXHmE702+6q1?=
 =?us-ascii?Q?j7qqSIhM5o8QEnQHkt/MeMuEWNHzXwnleUScjHHc3P5HSXIFULkxXVSfalqK?=
 =?us-ascii?Q?znapBDGfv81qYIOHCIB6+ihosO30wWiI6xQhwancbRJuaWQePFCFkVDHORJN?=
 =?us-ascii?Q?pQlDegT83VGsRgRAdVuj8PP74DO2Oik1QyD1X63j/rMO+H0o7jTy0lgLk3fh?=
 =?us-ascii?Q?l7M7eIKLJkG35uLgoYmPigshHkFrQvDkgRkvcNI9HOsV5/yCJALbZAX6XViC?=
 =?us-ascii?Q?D0PpYIOP2SMwv3GV3aB9m6AARKWre1Wz8UtOci6+w7mIFbONlzYEyoSP2wzI?=
 =?us-ascii?Q?hs8bj84TJ62/zo89L/mnunKEgv88aRInprZr1wQAaRE9mpeAlLQEu/PBYNts?=
 =?us-ascii?Q?oawRDY6dG+sqDPOCI4rQgBXXdnUFIPrPrRQDSEyA?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ee05919-9f07-4a9c-a0d3-08da806b2d3a
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 16:11:43.6737
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v9q1rzjCycPfxT2mZ7SifTBODJFDfaHgnG/4dPCmTLFmZESzKEfC6x29cPONpoG/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR12MB5458
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: G6GQZYX3KAV4HHBEG7NAV55FN5A4BFMW
X-Message-ID-Hash: G6GQZYX3KAV4HHBEG7NAV55FN5A4BFMW
X-Mailman-Approved-At: Wed, 05 Oct 2022 16:59:03 +0000
CC: Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org, Maor Gottlieb <maorg@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] dma-buf: Add dma_buf_try_get()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G6GQZYX3KAV4HHBEG7NAV55FN5A4BFMW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Used to increment the refcount of the dma buf's struct file, only if the
refcount is not zero. Useful to allow the struct file's lifetime to
control the lifetime of the dmabuf while still letting the driver to keep
track of created dmabufs.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
---
 include/linux/dma-buf.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 71731796c8c3a8..a35f1554f2fb36 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -618,6 +618,19 @@ int dma_buf_fd(struct dma_buf *dmabuf, int flags);
 struct dma_buf *dma_buf_get(int fd);
 void dma_buf_put(struct dma_buf *dmabuf);
 
+/**
+ * dma_buf_try_get - try to get a reference on a dmabuf
+ * @dmabuf - the dmabuf to get
+ *
+ * Returns true if a reference was successfully obtained. The caller must
+ * interlock with the dmabuf's release function in some way, such as RCU, to
+ * ensure that this is not called on freed memory.
+ */
+static inline bool dma_buf_try_get(struct dma_buf *dmabuf)
+{
+	return get_file_rcu(dmabuf->file);
+}
+
 struct sg_table *dma_buf_map_attachment(struct dma_buf_attachment *,
 					enum dma_data_direction);
 void dma_buf_unmap_attachment(struct dma_buf_attachment *, struct sg_table *,
-- 
2.37.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
