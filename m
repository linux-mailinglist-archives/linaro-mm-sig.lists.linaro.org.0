Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D1BB53462
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 15:51:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73BB8443DD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Sep 2025 13:51:09 +0000 (UTC)
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	by lists.linaro.org (Postfix) with ESMTPS id 9597E44D28
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 13:50:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="uDj3kiS/";
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 74.125.224.52 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-60170e15cf6so502328d50.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Sep 2025 06:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757598626; x=1758203426; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oMt0VPE9nsvTEazWH1lgiwsk3x9NY1aluOH28YbXegk=;
        b=uDj3kiS/S0IGxJ5kfNGqJRZtIjJD4fONB73XY5XvanNprIp861dQ2w5GPM07IjPDNy
         HRVN6pdGFeDYyvzgAr/aSFlFa7gFVgWlBrGY+vvZ6LvRSFA+gKg3r4diZS6dmfh7PA9g
         ZK5K4qAXSmLzBP86xSgvhjbLkMLer2YGx3VrVztkmp0iSswd+RQaH7YqXmfdLp3JFsjR
         9KqzUWPo8YVFBXW/DErc6XcQtPnuEpJnyyY7H0b8PEFOmYW6lfHTez+KpoSzjLdw+I5w
         0ifleqJKaQ0znmA9Q8qWwz1L4MNnoG2Q7kwf17jfUKbqeuALEkZ7+fxGdcu7VUvg3xKK
         h8Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757598626; x=1758203426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oMt0VPE9nsvTEazWH1lgiwsk3x9NY1aluOH28YbXegk=;
        b=Dp+Thdl06+VnHcjusSelFt48A4hb+eCnaocpJesH+CKHL+LEPCTKkftbitY2D44AwQ
         BHiVLTVQRjIOKRAdfW8f2od8ypmtx0Pb/0eO+qAevB9AsY196nXMqOlJV6vl8Y2/8Dii
         SzOZH7YPGBE5oT2XEpcJjhDL3scG1j1aI5c9RKnSmSvZmLr/PTO3GGMsRnW05D1+4zMh
         vDLwvR2HBVTgU0DycftJK0An01+fxCmcYSk/Ls70dCHOlq0BGBLi8FPP4TqaM7ffecE6
         5MwNQVWU/cNAW43SkGXviIbhgVyozT873O06YuVmSDmvAVi/BNYerZDuIeK23HSMlM6y
         u14w==
X-Forwarded-Encrypted: i=1; AJvYcCXTppGp7iD0QRYcGu7Ol6JZqm2vxzkHELV61szwQPUnpOfl36DnhdvAZTBAa5Myz8kctFAtXnBC0zXuhEJv@lists.linaro.org
X-Gm-Message-State: AOJu0Yw1x4dB97V0SQmmwOHKwcxWPHcwP07JpVwy8B6S5cBgxfVZlknc
	+qicMfMBmq/ZcF+ZhAV/r5rv8Xxch0B1FDI7MmH63poQLXl3JdcNw8z3/l3LG4wihZPGLA==
X-Gm-Gg: ASbGnctlPBbpcpBHdvDMJeFyM4BXmi0Xnq4t8EKTQmIzZ9Hw2VonPUst9NJgmtNHLkw
	+2AUU55Ym5VG5/SOGMVysgh1hKK5wuYenBXidSD3u7rX7B/Up/s6DyGanJTF6mVB5BWka8wyJLi
	zn8cnuZK6d8ME3HqzJxVKBd9NXEMt4r7bvBPWhApxhgij6gfUHu1PuqnQKTvgT6/HVPtpvHZSNj
	q1JVJ3gybdJsrIGqoKneDuIIeQf1/uj9n5K1kx21Es93i30gaD8wrTWtqL+xEnNU6l9X+OHzysW
	0dUSxNPPOFy8y34fAoXB13kAHUNdQCZjy/YyYQshJyparExD85yZqshaBlON7kSNLjG2wx73nuR
	GJf32s63i14ZGaBatVg0/6qubqvFuWd3681gxBcq7UkHop65ptbFu6plfdFq/ZrAuHgESBJc6/q
	g=
X-Google-Smtp-Source: AGHT+IG0oRMoou++RsxpxUsUtwpzC5AT+90eCVdw6DARCJFWQoizSSi/Z2eS8ssSBxttr2gzHNfb5w==
X-Received: by 2002:a05:690c:7506:b0:72a:6e48:d7a9 with SMTP id 00721157ae682-72a6e49273amr160447507b3.10.1757598625802;
        Thu, 11 Sep 2025 06:50:25 -0700 (PDT)
Received: from rayden.urgonet (h-37-123-177-177.A175.priv.bahnhof.se. [37.123.177.177])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-72f7623434csm3526257b3.11.2025.09.11.06.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 06:50:24 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Thu, 11 Sep 2025 15:49:43 +0200
Message-ID: <20250911135007.1275833-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250911135007.1275833-1-jens.wiklander@linaro.org>
References: <20250911135007.1275833-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9597E44D28
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:74.125.0.0/16:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[74.125.224.52:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	ASN(0.00)[asn:15169, ipnet:74.125.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,oss.qualcomm.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: R64N2I2YWRPLTNVAF523GNUKF5UXDXF5
X-Message-ID-Hash: R64N2I2YWRPLTNVAF523GNUKF5UXDXF5
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Jens Wiklander <jens.wiklander@linaro.org>, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v12 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R64N2I2YWRPLTNVAF523GNUKF5UXDXF5/>
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

Reviewed-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
Reviewed-by: T.J. Mercier <tjmercier@google.com>
Acked-by: Sumit Semwal <sumit.semwal@linaro.org>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/dma-buf/dma-heap.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index 3cbe87d4a464..8ab49924f8b7 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -11,6 +11,7 @@
 #include <linux/dma-buf.h>
 #include <linux/dma-heap.h>
 #include <linux/err.h>
+#include <linux/export.h>
 #include <linux/list.h>
 #include <linux/nospec.h>
 #include <linux/syscalls.h>
@@ -202,6 +203,7 @@ void *dma_heap_get_drvdata(struct dma_heap *heap)
 {
 	return heap->priv;
 }
+EXPORT_SYMBOL_NS_GPL(dma_heap_get_drvdata, "DMA_BUF_HEAP");
 
 /**
  * dma_heap_get_name - get heap name
@@ -214,6 +216,7 @@ const char *dma_heap_get_name(struct dma_heap *heap)
 {
 	return heap->name;
 }
+EXPORT_SYMBOL_NS_GPL(dma_heap_get_name, "DMA_BUF_HEAP");
 
 /**
  * dma_heap_add - adds a heap to dmabuf heaps
@@ -303,6 +306,7 @@ struct dma_heap *dma_heap_add(const struct dma_heap_export_info *exp_info)
 	kfree(heap);
 	return err_ret;
 }
+EXPORT_SYMBOL_NS_GPL(dma_heap_add, "DMA_BUF_HEAP");
 
 static char *dma_heap_devnode(const struct device *dev, umode_t *mode)
 {
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
