Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C35548D854
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 13:57:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7E7F3ED9A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jan 2022 12:57:57 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by lists.linaro.org (Postfix) with ESMTPS id AB01C3ED7E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jan 2022 12:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1642078673; x=1673614673;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=iycjm2C+Mf7QsOANPLMYnMeG7Nklub2C0BsuRJJMnhc=;
  b=jJaTHLTlG0OEH0zaRjpsLlQH+DyQNr0GXLCZYehDZZDSYYusknLhP+Jx
   8kB9plpM8nWZdADWsMkC5ytTLBgiAmuXWhJjxO6oTgeKcvWW5IBNoEGqB
   IrSwW+1VsXsU9iWCgKOGGXz51JNJ8/40upNCVq5u/FdDze4eXo4yYPGPX
   SKQ/DB02yx/X1Zfip2DTfNGaZLeiFxZtmSANgxJRuTtyYXYzk2hOqXG8s
   9L6W5Nfah3I0WmcifJ3iKJdK9+adGXo4J6UZZuEcc8YjyNQuYuiNJ5aqk
   S3yV7rlLtD3g8pnAXMMwFroM6YW8cgt77eEZtFsdEmvQpsiO8XRCDTx+3
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="307345747"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600";
   d="scan'208";a="307345747"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2022 04:57:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600";
   d="scan'208";a="691791936"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by orsmga005.jf.intel.com with ESMTP; 13 Jan 2022 04:57:52 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 04:57:51 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 04:57:51 -0800
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.020;
 Thu, 13 Jan 2022 04:57:51 -0800
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: "guangming.cao@mediatek.com" <guangming.cao@mediatek.com>,
	"sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
Thread-Topic: [PATCH v3] dma-buf: dma-heap: Add a size check for allocation
Thread-Index: AQHYCHnKJjUnVmCmlECrXD1d8qRuLKxg6T0Q
Date: Thu, 13 Jan 2022 12:57:51 +0000
Message-ID: <4f88205c1b344aea8608960e2f85b8f4@intel.com>
References: <CAO_48GF=ttKqSOm9GRoA3Mq+-RQOtRjWp449XPcz-wH=kjaTjw@mail.gmail.com>
 <20220113123406.11520-1-guangming.cao@mediatek.com>
In-Reply-To: <20220113123406.11520-1-guangming.cao@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Message-ID-Hash: B6YLPDH4UG3AOX46AOFQ7RHCFYWHYWG7
X-Message-ID-Hash: B6YLPDH4UG3AOX46AOFQ7RHCFYWHYWG7
X-MailFrom: michael.j.ruhl@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "mingyuan.ma@mediatek.com" <mingyuan.ma@mediatek.com>, "wsd_upstream@mediatek.com" <wsd_upstream@mediatek.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "yf.wang@mediatek.com" <yf.wang@mediatek.com>, "libo.kang@mediatek.com" <libo.kang@mediatek.com>, "benjamin.gaignard@linaro.org" <benjamin.gaignard@linaro.org>, "bo.song@mediatek.com" <bo.song@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "lmark@codeaurora.org" <lmark@codeaurora.org>, "labbott@redhat.com" <labbott@redhat.com>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "jianjiao.zeng@mediatek.com" <jianjiao.zeng@mediatek.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: dma-heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B6YLPDH4UG3AOX46AOFQ7RHCFYWHYWG7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit


>-----Original Message-----
>From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf Of
>guangming.cao@mediatek.com
>Sent: Thursday, January 13, 2022 7:34 AM
>To: sumit.semwal@linaro.org
>Cc: linux-arm-kernel@lists.infradead.org; mingyuan.ma@mediatek.com;
>Guangming <Guangming.Cao@mediatek.com>;
>wsd_upstream@mediatek.com; linux-kernel@vger.kernel.org; dri-
>devel@lists.freedesktop.org; linaro-mm-sig@lists.linaro.org;
>yf.wang@mediatek.com; libo.kang@mediatek.com;
>benjamin.gaignard@linaro.org; bo.song@mediatek.com;
>matthias.bgg@gmail.com; linux-mediatek@lists.infradead.org;
>lmark@codeaurora.org; labbott@redhat.com; christian.koenig@amd.com;
>jianjiao.zeng@mediatek.com; linux-media@vger.kernel.org
>Subject: [PATCH v3] dma-buf: dma-heap: Add a size check for allocation
>
>From: Guangming <Guangming.Cao@mediatek.com>
>
>Add a size check for allocation since the allocation size is
>always less than the total DRAM size.
>
>Without this check, once the invalid size allocation runs on a process that
>can't be killed by OOM flow(such as "gralloc" on Android devices), it will
>cause a kernel exception, and to make matters worse, we can't find who are
>using
>so many memory with "dma_buf_debug_show" since the relevant dma-buf
>hasn't exported.
>
>To make OOM issue easier, maybe need dma-buf framework to dump the
>buffer size
>under allocating in "dma_buf_debug_show".
>
>Signed-off-by: Guangming <Guangming.Cao@mediatek.com>
>Signed-off-by: jianjiao zeng <jianjiao.zeng@mediatek.com>
>---
>v3: 1. update patch, use right shift to replace division.
>    2. update patch, add reason in code and commit message.
>v2: 1. update size limitation as total_dram page size.
>    2. update commit message
>---
> drivers/dma-buf/dma-heap.c | 10 ++++++++++
> 1 file changed, 10 insertions(+)
>
>diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
>index 56bf5ad01ad5..1fd382712584 100644
>--- a/drivers/dma-buf/dma-heap.c
>+++ b/drivers/dma-buf/dma-heap.c
>@@ -55,6 +55,16 @@ static int dma_heap_buffer_alloc(struct dma_heap
>*heap, size_t len,
> 	struct dma_buf *dmabuf;
> 	int fd;
>
>+	/*
>+	 * Invalid size check. The "len" should be less than totalram.
>+	 *
>+	 * Without this check, once the invalid size allocation runs on a process
>that
>+	 * can't be killed by OOM flow(such as "gralloc" on Android devices), it
>will
>+	 * cause a kernel exception, and to make matters worse, we can't find
>who are using
>+	 * so many memory with "dma_buf_debug_show" since the relevant
>dma-buf hasn't exported.
>+	 */
>+	if (len >> PAGE_SHIFT > totalram_pages())

If your "heap" is from cma, is this still a valid check?

M

>+		return -EINVAL;
> 	/*
> 	 * Allocations from all heaps have to begin
> 	 * and end on page boundaries.
>--
>2.17.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
