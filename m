Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1083FAD38B2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 15:17:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 341F3447F5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 13:17:45 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 56CB9447EA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jun 2025 13:16:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=pd9E7vI2;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.41 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ade5ca8bc69so311930966b.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jun 2025 06:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749561373; x=1750166173; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8BDcE4876d7+lQswV9isKuNGeIH7ZLPwvjK7CukY8ng=;
        b=pd9E7vI2i8ICyVH7IR/MIqg5fW2lyu1R0bUF7sJuo4vyeLdL7zsJLc71Jz7POHWg+u
         4JnrPEog8WTa7pYY+Sbs0QyKbKq652BFTEGbJ7ya/h7Vv54neDJ5OrsNylVMhQJftQqv
         zgYRTFgOzUXCZ7ri00aUcXsyHqRAi+sQlETSJ7r2FjuO06xbcQ1XP6nN+mJ6CJkWoqEE
         Dc0VfGobaciLbZ7sn1HsfpE1V/wL+MXADr0A0/02sPYzXgoyDx8zYiAisef5HLBz16xJ
         Eh0ZjVIwkK8BShAOVYndDsoFA88A8I+xQO1CslF9KH1P2ldyGhBAPLkvFuUc03jyYz2t
         L8Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749561373; x=1750166173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8BDcE4876d7+lQswV9isKuNGeIH7ZLPwvjK7CukY8ng=;
        b=luTGCXe35gCQKlKsk/zNrI+QuJNohAiOkv9pxgn8UtDmC+oSsBR32cpBreaswY35mW
         4dNUGb1Pw/L6g42Dvd2yHbmmSJK3xXxhj2MNNsb7rmuw4OpLUUEqvRkohpLHYbppgtyE
         9bNCNZA5+KpCl8iw4mJfrwilX+LPorVxva9KrebpLAxeRFIM7jhOckCNxiSsKHvXy7t7
         K1Ug0CZh48p9ysk4UckbQ9Xv+xiefen0Nu6zuPyEbCJjw5YNaEJJEavcw4A84u86dNl1
         wyVo39A6RwPsYPb6o/3wY4YtRp9+uzzuHDSs++v3hOXBIMLMDZWbRxkFZGPrVSLlFJd8
         IMzw==
X-Forwarded-Encrypted: i=1; AJvYcCXSWPcOuyA/8ZBKNUBpYUbtnVkQzyZrPROMWk0oTfcuempjWjrb8WGleQu5N6VmIz9LVmX6HsD9HSVITONm@lists.linaro.org
X-Gm-Message-State: AOJu0YwK1Fe4H++gC1S1nzBIBQQ3EC8zISD2FqmIV/MeXHHx+wZYnAxV
	zeXVmwzi3RfH1MwvI6i23mIEHOzEezonVyA0NsS+tCzafdjUWM2WFxyWQOmhNy0uwtaa7g==
X-Gm-Gg: ASbGnct2+7jemLCPu7vTNzvrDpGxPwFWQbv7XWsyouC6VkYo7b2IB0AAbjEFWtHpoZL
	ea5d1/o2YGJ0FbvDT7uImGOCXLLWunjWF8x47Ul/I06Ta7+Zs0nsQQqBR2gbfW9JZ2c7mXK2ej7
	Uu9I9DniUVV1H5e24yYdy/VHGuUVrXEoa3PBD4MRPcvm6pFpm/dxRBcBMc8IKgK2vVNtLHnhaZA
	fAHb3XFaZ/U14XKu+b/ZyFcnRk4OTpLHyyZsi4EdXCHGAQtht4SX8RlrHRok6eyt49DHvzmtxlt
	L98rKW76kGW+XsRVOfAlhO9sbm/DoKH/lzlMlYIUjZiqca/PDgZplI1hlrdXH8g8OmaUYo/+3X+
	WUa3OMkSWHT19bmOsItTTNRSSb3yYpyRr7t8eIsY=
X-Google-Smtp-Source: AGHT+IFOBF4P1tAbssgL5dehUIWLuQRa8S7VHpp+Y5ehx9RZ7YktqSDlhzjcJArhhbW8+ISbCVgNJQ==
X-Received: by 2002:a17:907:9720:b0:adb:413e:2a2f with SMTP id a640c23a62f3a-ade1aa0fbdbmr1346195566b.9.1749561373268;
        Tue, 10 Jun 2025 06:16:13 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade3206a1efsm643651666b.67.2025.06.10.06.16.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 06:16:12 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Tue, 10 Jun 2025 15:13:46 +0200
Message-ID: <20250610131600.2972232-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250610131600.2972232-1-jens.wiklander@linaro.org>
References: <20250610131600.2972232-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.41:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Queue-Id: 56CB9447EA
X-Spamd-Bar: -
Message-ID-Hash: UZILXAUOU5L7UFOQYKYHZJDOHG7QLAXE
X-Message-ID-Hash: UZILXAUOU5L7UFOQYKYHZJDOHG7QLAXE
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v10 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UZILXAUOU5L7UFOQYKYHZJDOHG7QLAXE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Export the dma-buf heap functions to allow them to be used by the OP-TEE
driver. The OP-TEE driver wants to register and manage specific secure
DMA heaps with it.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/dma-buf/dma-heap.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index 3cbe87d4a464..cdddf0e24dce 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -202,6 +202,7 @@ void *dma_heap_get_drvdata(struct dma_heap *heap)
 {
 	return heap->priv;
 }
+EXPORT_SYMBOL(dma_heap_get_drvdata);
 
 /**
  * dma_heap_get_name - get heap name
@@ -214,6 +215,7 @@ const char *dma_heap_get_name(struct dma_heap *heap)
 {
 	return heap->name;
 }
+EXPORT_SYMBOL(dma_heap_get_name);
 
 /**
  * dma_heap_add - adds a heap to dmabuf heaps
@@ -303,6 +305,7 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
 	kfree(heap);
 	return err_ret;
 }
+EXPORT_SYMBOL(dma_heap_add);
 
 static char *dma_heap_devnode(const struct device *dev, umode_t *mode)
 {
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
