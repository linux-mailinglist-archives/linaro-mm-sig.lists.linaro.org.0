Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B629AAE352
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 16:42:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DC3E45531
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 14:42:56 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	by lists.linaro.org (Postfix) with ESMTPS id 282403F57F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 14:42:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=guZjK6sM;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250507144242euoutp017d05eb241482e3cb127a2d68d01d94c1~9Rcl1AgRm0094300943euoutp01w
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 14:42:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250507144242euoutp017d05eb241482e3cb127a2d68d01d94c1~9Rcl1AgRm0094300943euoutp01w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1746628962;
	bh=DbGys0US7skwcuhdvdVwOVZSicDyfO1yb004QE26BKw=;
	h=From:To:Cc:Subject:Date:References:From;
	b=guZjK6sMfp3Due0zdoki94a/Dg56CJlCqj03/DvPwtpLQo3/Xya1JZ1n/zmT5mEIS
	 7t4BjTrPEt1HLXZGXz6lFwhgJYwGIjXjQpkxuTcSlhABw38myQzDZFIyVLUQIwqQKo
	 jjbzMLV514rdjP4BgIf/ih2wEXpfN8Y81dPqf7yY=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20250507144241eucas1p14542a410069bfe5bc010996ee74b9695~9RcldqLTR0872208722eucas1p1q;
	Wed,  7 May 2025 14:42:41 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250507144240eusmtip204f7fa06fe1ac4f0301c67cd939a4fd8~9RcktY56O2360223602eusmtip2f;
	Wed,  7 May 2025 14:42:40 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
Date: Wed,  7 May 2025 16:42:00 +0200
Message-Id: <20250507144203.2081756-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CMS-MailID: 20250507144241eucas1p14542a410069bfe5bc010996ee74b9695
X-Msg-Generator: CA
X-RootMTR: 20250507144241eucas1p14542a410069bfe5bc010996ee74b9695
X-EPHeader: CA
X-CMS-RootMailID: 20250507144241eucas1p14542a410069bfe5bc010996ee74b9695
References: <CGME20250507144241eucas1p14542a410069bfe5bc010996ee74b9695@eucas1p1.samsung.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 282403F57F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:210.118.77.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[210.118.77.11:from];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[samsung.com:mid,samsung.com:dkim];
	DWL_DNSWL_BLOCKED(0.00)[samsung.com:dkim];
	RCPT_COUNT_TWELVE(0.00)[17];
	ASN(0.00)[asn:6619, ipnet:210.118.76.0/23, country:KR];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[samsung.com,chromium.org,kernel.org,xs4all.nl,redhat.com,intel.com,linaro.org,amd.com,ideasonboard.com,linux.intel.com,arm.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[182.198.249.207:received,203.254.199.222:received,210.118.77.11:from,106.120.51.32:received];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: Q7R752AVTEDQEHAFHCZPFP7IZGGYFLUE
X-Message-ID-Hash: Q7R752AVTEDQEHAFHCZPFP7IZGGYFLUE
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sergey Senozhatsky <senozhatsky@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Robin Murphy <robin.murphy@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/3] media: fix incorrect use of dma_sync_sg_*() calls
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q7R752AVTEDQEHAFHCZPFP7IZGGYFLUE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear All,

This patchset fixes the incorrect use of dma_sync_sg_*() calls in
media and related drivers. They are replaced with much safer
dma_sync_sgtable_*() variants, which take care of passing the proper
number of elements for the sync operation.

Best regards
Marek Szyprowski, PhD
Samsung R&D Institute Poland


Change log:
-v2: fixes typos and added cc: stable


Patch summary:

Marek Szyprowski (3):
  media: videobuf2: use sgtable-based scatterlist wrappers
  udmabuf: use sgtable-based scatterlist wrappers
  media: omap3isp: use sgtable-based scatterlist wrappers

 drivers/dma-buf/udmabuf.c                         | 5 ++---
 drivers/media/common/videobuf2/videobuf2-dma-sg.c | 4 ++--
 drivers/media/platform/ti/omap3isp/ispccdc.c      | 8 ++++----
 drivers/media/platform/ti/omap3isp/ispstat.c      | 6 ++----
 4 files changed, 10 insertions(+), 13 deletions(-)

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
