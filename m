Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B044B6B33
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 12:34:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C17673EECF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 11:34:14 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by lists.linaro.org (Postfix) with ESMTPS id F2D11401C3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 15:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643299155; x=1674835155;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=H+/eoThfG+75X7A+Op4iugtDZzzkJmdbY8DLaA/CLPA=;
  b=O30m5ypjrnzNyIPbLT0ahPnxo4vGqWDh7yNfGsW9U+C+fxaQNLotKjiL
   U0UxC5cGgDwEEeGoYLvkeR1XJNKcCDI3NtJAJHytvF8QYvKi+qL3PKhbU
   pllIcSfBWe4ilZ6XsRbjhxl7IfhSTgvxfpmlrPZhdQszl7IBuG3EXm5ea
   tsOXN9Bohzvff4MumUT8LOtDayzjbSHm/ww9bR+5GU1CNrtsd2NfIotBx
   Jc1LHuag1H/dXkUpJYCc2NxyXKIwJOSVprxaSQpWYOJwCZJ/zBnggTcw3
   NZ1FgEJTfYgRCI/FivrL+7D28bAx2/034NICoqJBZEhNzhIm6DReD7Jf3
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245734955"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600";
   d="scan'208";a="245734955"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 07:59:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600";
   d="scan'208";a="480345386"
Received: from anithaha-mobl.amr.corp.intel.com (HELO ldmartin-desk2) ([10.212.224.126])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 07:59:13 -0800
Date: Thu, 27 Jan 2022 07:59:13 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20220127155913.vt7a74zmsglghzom@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <b7a3fe1d-3b85-cb7e-19cf-1611ff4f3c9e@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7a3fe1d-3b85-cb7e-19cf-1611ff4f3c9e@suse.de>
X-MailFrom: lucas.demarchi@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: O5XWIT7YP5MTBC6JF23ZEL4RRCFE4A24
X-Message-ID-Hash: O5XWIT7YP5MTBC6JF23ZEL4RRCFE4A24
X-Mailman-Approved-At: Tue, 15 Feb 2022 11:33:27 +0000
CC: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O5XWIT7YP5MTBC6JF23ZEL4RRCFE4A24/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 03:33:12PM +0100, Thomas Zimmermann wrote:
>
>
>Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
>>When dma_buf_map struct is passed around, it's useful to be able to
>>initialize a second map that takes care of reading/writing to an offset
>>of the original map.
>>
>>Add a helper that copies the struct and add the offset to the proper
>>address.
>>
>>Cc: Sumit Semwal <sumit.semwal@linaro.org>
>>Cc: Christian K=F6nig <christian.koenig@amd.com>
>>Cc: linux-media@vger.kernel.org
>>Cc: dri-devel@lists.freedesktop.org
>>Cc: linaro-mm-sig@lists.linaro.org
>>Cc: linux-kernel@vger.kernel.org
>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>---
>>  include/linux/dma-buf-map.h | 29 +++++++++++++++++++++++++++++
>>  1 file changed, 29 insertions(+)
>>
>>diff --git a/include/linux/dma-buf-map.h b/include/linux/dma-buf-map.h
>>index 65e927d9ce33..3514a859f628 100644
>>--- a/include/linux/dma-buf-map.h
>>+++ b/include/linux/dma-buf-map.h
>>@@ -131,6 +131,35 @@ struct dma_buf_map {
>>  		.is_iomem =3D false, \
>>  	}
>>+/**
>>+ * DMA_BUF_MAP_INIT_OFFSET - Initializes struct dma_buf_map from another=
 dma_buf_map
>>+ * @map_:	The dma-buf mapping structure to copy from
>>+ * @offset:	Offset to add to the other mapping
>>+ *
>>+ * Initializes a new dma_buf_struct based on another. This is the equiva=
lent of doing:
>>+ *
>>+ * .. code-block: c
>>+ *
>>+ *	dma_buf_map map =3D other_map;
>>+ *	dma_buf_map_incr(&map, &offset);
>>+ *
>>+ * Example usage:
>>+ *
>>+ * .. code-block: c
>>+ *
>>+ *	void foo(struct device *dev, struct dma_buf_map *base_map)
>>+ *	{
>>+ *		...
>>+ *		struct dma_buf_map =3D DMA_BUF_MAP_INIT_OFFSET(base_map, FIELD_OFFSE=
T);
>>+ *		...
>>+ *	}
>>+ */
>>+#define DMA_BUF_MAP_INIT_OFFSET(map_, offset_)	(struct dma_buf_map)	\
>>+	{								\
>>+		.vaddr =3D (map_)->vaddr + (offset_),			\
>>+		.is_iomem =3D (map_)->is_iomem,				\
>>+	}
>>+
>
>It's illegal to access .vaddr  with raw pointer. Always use a=20
>dma_buf_memcpy_() interface. So why would you need this macro when you=20
>have dma_buf_memcpy_*() with an offset parameter?

I did a better job with an example in 20220127093332.wnkd2qy4tvwg5i5l@ldmar=
tin-desk2

While doing this series I had code like this when using the API in a functi=
on to
parse/update part of the struct mapped:

	int bla_parse_foo(struct dma_buf_map *bla_map)
	{
		struct dma_buf_map foo_map =3D *bla_map;
		...

		dma_buf_map_incr(&foo_map, offsetof(struct bla, foo));

		...
	}

Pasting the rest of the reply here:

I had exactly this code above, but after writting quite a few patches
using it, particularly with functions that have to write to 2 maps (see
patch 6 for example), it felt much better to have something to
initialize correctly from the start

         struct dma_buf_map other_map =3D *bla_map;
         /* poor Lucas forgetting dma_buf_map_incr(map, offsetof(...)); */

is error prone and hard to debug since you will be reading/writting
from/to another location rather than exploding

While with the construct below

         other_map;
         ...
         other_map =3D INITIALIZER()

I can rely on the compiler complaining about uninitialized var. And
in most of the cases I can just have this single line in the beggining of t=
he
function when the offset is constant:

         struct dma_buf_map other_map =3D INITIALIZER(bla_map, offsetof(..)=
);


This is useful when you have several small functions in charge of
updating/reading inner struct members.

>
>I've also been very careful to distinguish between .vaddr and=20
>.vaddr_iomem, even in places where I wouldn't have to. This macro=20
>breaks the assumption.

That's one reason I think if we have this macro, it should be in the
dma_buf_map.h header (or whatever we rename these APIs to). It's the
only place where we can safely add code that relies on the implementation
of the "private" fields in struct dma_buf_map.

Lucas De Marchi

>
>Best regards
>Thomas
>
>>  /**
>>   * dma_buf_map_set_vaddr - Sets a dma-buf mapping structure to an addre=
ss in system memory
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
