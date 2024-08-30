Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B99E39657FA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 09:04:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C29324118C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 07:04:55 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 6F039445FF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 07:04:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=bQdwKABp;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.47 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a83597ce5beso247182966b.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 00:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725001477; x=1725606277; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJjNgUGJenoBaIKVAgwwwsHux2S25WdElfpi6ReEk9U=;
        b=bQdwKABpuXufWS0c+sL2ePPM/kDW0oEa3iEA1WKvcqQNm9vZylDN0r+U4dUB9L2LpF
         Ea5pAhuipmVhDpOkbLVihh+Z0GN2cQwbWbLhGr7yu0HttfG99oaQ8zmv9+t9Sn82yf2z
         BJUWIs1+mPosKCZl9IOH7PxXPJqu0RUmzHbS2HWlzJGiAjJUGvuTv24Orn19OApaTnpk
         jt372Og9Uy1i8Uu3e3Ds9EK7klRa03yFJlwsueeaIGME90adYHfyV3eIIbmtHZu2uIQ8
         P4Cl+eYAFIkrOtGxZ1sOjvDiS5IOTZ/6Z1+cijUsoBR6aJ0y9/vDs8FmaY03qtOlTwGy
         lIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725001477; x=1725606277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MJjNgUGJenoBaIKVAgwwwsHux2S25WdElfpi6ReEk9U=;
        b=lZsLfPQL98BiK6wxhTY6J/W1za+bNLQZk2h9PwnwabuCYaVos1Oi7cm3HyAO7uMDiE
         VTNNdl1WXpGCwqTAuX2DDTrgSMgtZVEdV3cD2ek7DHf2pZuUNpZXMeSKShIq5io+cgxi
         Cbw3cibVjr9xBMZjHBD2HP3jbUJffBTt3cnT3hGUp8+SlbRIDDqbqn025REmZQEhFpzH
         M+3K6NpMdsLZ5uOOfevEb8mNlcOS386/iYagxtBzSMPmdRKlGDloRP9zuPGs2Ut+WesX
         x+8+EltWhaJEEXUvOldaA4wmTXgS69ReZUCX/lszZC7RYkHzilFHw77H5TLTJ1rXKKy4
         wqTA==
X-Forwarded-Encrypted: i=1; AJvYcCXhGy7SIqxFFTuZTP0q4DvTeQppKIrIbb1poELdhG8AetjOo2O75mUN/qMnraM1IscEFDu7Y0qAT10o9bmZ@lists.linaro.org
X-Gm-Message-State: AOJu0Yxvlzh8riGArQ+6MY1ERQkeODdIhwnb7x1xtg3IQC3l6jFbMzIj
	Ub4izFyNrxzCb3sVoK5YJkOzNbblAOqA4DMiSZlZC75HlvHwqTOmkIUuXPIFecPO9A==
X-Google-Smtp-Source: AGHT+IH87EkQZslfXd1cN/MuD1B1+tjpJHcDRiz/ebksiuYOXdKRtj8j5p8EyAgrD5jVzjEwQczjhA==
X-Received: by 2002:a17:906:4788:b0:a7d:89ac:9539 with SMTP id a640c23a62f3a-a898231fe8emr528271266b.7.1725001477275;
        Fri, 30 Aug 2024 00:04:37 -0700 (PDT)
Received: from rayden.urgonet (h-217-31-164-171.A175.priv.bahnhof.se. [217.31.164.171])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89892232c7sm178026866b.222.2024.08.30.00.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 00:04:36 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Date: Fri, 30 Aug 2024 09:03:48 +0200
Message-Id: <20240830070351.2855919-2-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240830070351.2855919-1-jens.wiklander@linaro.org>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Bar: -----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6F039445FF
X-Spamd-Result: default: False [-5.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: BXLDMJZG7MJSEC3EODP6EHG64DOFK4FY
X-Message-ID-Hash: BXLDMJZG7MJSEC3EODP6EHG64DOFK4FY
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 1/4] dma-buf: heaps: restricted_heap: add no_map attribute
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BXLDMJZG7MJSEC3EODP6EHG64DOFK4FY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add a no_map attribute to struct restricted_heap_attachment and struct
restricted_heap to skip the call to dma_map_sgtable() if set. This
avoids trying to map a dma-buf that doens't refer to memory accessible
by the kernel.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/dma-buf/heaps/restricted_heap.c | 17 +++++++++++++----
 drivers/dma-buf/heaps/restricted_heap.h |  2 ++
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/dma-buf/heaps/restricted_heap.c b/drivers/dma-buf/heaps/restricted_heap.c
index 8bc8a5e3f969..4bf28e3727ca 100644
--- a/drivers/dma-buf/heaps/restricted_heap.c
+++ b/drivers/dma-buf/heaps/restricted_heap.c
@@ -16,6 +16,7 @@
 struct restricted_heap_attachment {
 	struct sg_table			*table;
 	struct device			*dev;
+	bool no_map;
 };
 
 static int
@@ -54,6 +55,8 @@ restricted_heap_memory_free(struct restricted_heap *rheap, struct restricted_buf
 static int restricted_heap_attach(struct dma_buf *dmabuf, struct dma_buf_attachment *attachment)
 {
 	struct restricted_buffer *restricted_buf = dmabuf->priv;
+	struct dma_heap *heap = restricted_buf->heap;
+	struct restricted_heap *rheap = dma_heap_get_drvdata(heap);
 	struct restricted_heap_attachment *a;
 	struct sg_table *table;
 
@@ -70,6 +73,7 @@ static int restricted_heap_attach(struct dma_buf *dmabuf, struct dma_buf_attachm
 	sg_dma_mark_restricted(table->sgl);
 	a->table = table;
 	a->dev = attachment->dev;
+	a->no_map = rheap->no_map;
 	attachment->priv = a;
 
 	return 0;
@@ -92,9 +96,12 @@ restricted_heap_map_dma_buf(struct dma_buf_attachment *attachment,
 	struct sg_table *table = a->table;
 	int ret;
 
-	ret = dma_map_sgtable(attachment->dev, table, direction, DMA_ATTR_SKIP_CPU_SYNC);
-	if (ret)
-		return ERR_PTR(ret);
+	if (!a->no_map) {
+		ret = dma_map_sgtable(attachment->dev, table, direction,
+				      DMA_ATTR_SKIP_CPU_SYNC);
+		if (ret)
+			return ERR_PTR(ret);
+	}
 	return table;
 }
 
@@ -106,7 +113,9 @@ restricted_heap_unmap_dma_buf(struct dma_buf_attachment *attachment, struct sg_t
 
 	WARN_ON(a->table != table);
 
-	dma_unmap_sgtable(attachment->dev, table, direction, DMA_ATTR_SKIP_CPU_SYNC);
+	if (!a->no_map)
+		dma_unmap_sgtable(attachment->dev, table, direction,
+				  DMA_ATTR_SKIP_CPU_SYNC);
 }
 
 static int
diff --git a/drivers/dma-buf/heaps/restricted_heap.h b/drivers/dma-buf/heaps/restricted_heap.h
index 7dec4b8a471b..94cc0842f70d 100644
--- a/drivers/dma-buf/heaps/restricted_heap.h
+++ b/drivers/dma-buf/heaps/restricted_heap.h
@@ -27,6 +27,8 @@ struct restricted_heap {
 	unsigned long		cma_paddr;
 	unsigned long		cma_size;
 
+	bool			no_map;
+
 	void			*priv_data;
 };
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
