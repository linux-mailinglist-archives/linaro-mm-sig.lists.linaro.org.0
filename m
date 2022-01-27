Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A27FA4B6B25
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 12:34:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4477401D2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 11:34:04 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by lists.linaro.org (Postfix) with ESMTPS id 56FCC401D7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 15:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643297921; x=1674833921;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=m6hvK8EvrQklv7boMPwOjx9XYUIbfEG+A3JROTW3WAY=;
  b=eBIaoMN3zDidBVQQtdm26Vlq+WzJaosF6Y0xPeTB5JgvLSoQXW8K3rR6
   4T3Ofxlfw8smbysgHIURq0sS9vUGbtnYS3zA7gggPC71XphCtnyCLEVoy
   qVFzthv8R//RR+Rx5gmvNqr2jsdzr9oSprQRpJElvQCqLAIj7jIY8p5kG
   X90U5nRSQWI4JK/JeGLWf3lwc67hVif7jf97iiviNGh1efKj3O96++uoj
   tn7LYGImVCINnNJFdLD6Ielbb5yv4T/PwVG8ThmATy/hOC6xUZ+5mghwn
   WbuJED2d0n3X2Tdeu5Hv3o9jMBZU7ktiezBjvtgHGb8iUjn9gJoV9CWyS
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="247107659"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600";
   d="scan'208";a="247107659"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 07:38:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600";
   d="scan'208";a="767547488"
Received: from anithaha-mobl.amr.corp.intel.com (HELO ldmartin-desk2) ([10.212.224.126])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 07:38:39 -0800
Date: Thu, 27 Jan 2022 07:38:38 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20220127153838.eefwiqkljdplyfd4@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-10-lucas.demarchi@intel.com>
 <7cb8a8a2-718d-6d5c-5de6-05bf990dd479@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7cb8a8a2-718d-6d5c-5de6-05bf990dd479@suse.de>
X-MailFrom: lucas.demarchi@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RFWBW3QQKS5IFZNN4NZOZFCNT2DSVG5Z
X-Message-ID-Hash: RFWBW3QQKS5IFZNN4NZOZFCNT2DSVG5Z
X-Mailman-Approved-At: Tue, 15 Feb 2022 11:33:24 +0000
CC: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 09/19] dma-buf-map: Add wrapper over memset
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RFWBW3QQKS5IFZNN4NZOZFCNT2DSVG5Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 03:54:21PM +0100, Thomas Zimmermann wrote:
>Hi
>
>Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
>>Just like memcpy_toio(), there is also need to write a direct value to a
>>memory block. Add dma_buf_map_memset() to abstract memset() vs memset_io()
>>
>>Cc: Matt Roper <matthew.d.roper@intel.com>
>>Cc: Sumit Semwal <sumit.semwal@linaro.org>
>>Cc: Christian K=F6nig <christian.koenig@amd.com>
>>Cc: linux-media@vger.kernel.org
>>Cc: dri-devel@lists.freedesktop.org
>>Cc: linaro-mm-sig@lists.linaro.org
>>Cc: linux-kernel@vger.kernel.org
>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>---
>>  include/linux/dma-buf-map.h | 17 +++++++++++++++++
>>  1 file changed, 17 insertions(+)
>>
>>diff --git a/include/linux/dma-buf-map.h b/include/linux/dma-buf-map.h
>>index 3514a859f628..c9fb04264cd0 100644
>>--- a/include/linux/dma-buf-map.h
>>+++ b/include/linux/dma-buf-map.h
>>@@ -317,6 +317,23 @@ static inline void dma_buf_map_memcpy_to(struct dma_=
buf_map *dst, const void *sr
>>  		memcpy(dst->vaddr, src, len);
>>  }
>>+/**
>>+ * dma_buf_map_memset - Memset into dma-buf mapping
>>+ * @dst:	The dma-buf mapping structure
>>+ * @value:	The value to set
>>+ * @len:	The number of bytes to set in dst
>>+ *
>>+ * Set value in dma-buf mapping. Depending on the buffer's location, the=
 helper
>>+ * picks the correct method of accessing the memory.
>>+ */
>>+static inline void dma_buf_map_memset(struct dma_buf_map *dst, int value=
, size_t len)
>>+{
>>+	if (dst->is_iomem)
>>+		memset_io(dst->vaddr_iomem, value, len);
>>+	else
>>+		memset(dst->vaddr, value, len);
>>+}
>
>Maybe add an offset parameter here.

yep, on v2 I will have 2 APIs, one with and one without offset.

thanks
Lucas De Marchi

>
>Best regards
>Thomas
>
>>+
>>  /**
>>   * dma_buf_map_incr - Increments the address stored in a dma-buf mapping
>>   * @map:	The dma-buf mapping structure
>
>--=20
>Thomas Zimmermann
>Graphics Driver Developer
>SUSE Software Solutions Germany GmbH
>Maxfeldstr. 5, 90409 N=FCrnberg, Germany
>(HRB 36809, AG N=FCrnberg)
>Gesch=E4ftsf=FChrer: Ivo Totev



_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
