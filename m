Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFF8AA6EB8
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 12:02:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D1083F935
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 10:02:54 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 7C0B5454F2
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 May 2025 10:01:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Y78C3NQa;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.44 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac345bd8e13so303797166b.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 May 2025 03:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746180062; x=1746784862; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t+mAUVqOxIXjZijXnkHFZmAFDQtFJ4Kh5PO6PLUJhLU=;
        b=Y78C3NQaigQroOcogalqFc/Izv92gMcv93J14Wp42puBLPc0Dcs26Ijnmp8n53LLpL
         6cyhWAyobTnQf+FujZ371gr4Rghy34E4gjig07gxWi3lXhpNkLCxNyYmkrX4NXDsx16h
         MIgg8+Xg1P4UB9NkFB/FJ5MnGnA0jE4w2DGfGqhAqm/SXO7qjP7Ot19mkOTPcyE2tPlM
         Ohg0OewNUDjiJyb7YM0QOKn2ChDhD37/6PlsxpqwJWrx8ttPI7RA8mM+mSfS+8Ef/o1t
         2CmM7ZSnvxAou0iqknQ9Hc0nvLa9QmJyH6tRypvoPF885Y+VsBUp/pWzP8qdejufCBcD
         EuUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746180062; x=1746784862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t+mAUVqOxIXjZijXnkHFZmAFDQtFJ4Kh5PO6PLUJhLU=;
        b=pzS1l/k6KCiR2RAGJa+Aonr0IJnP6cLrJiV01yPTsRsJGP4JgPa0IYHNPAq1oc0EcG
         pVfc52pfsSmbND68b66HlVbGyNsmBA0/q440vX+Ga1ZPUqwc40FSlEbmslluCDe7/tjd
         Z9jGzS+p/4hvq3XyZruSu19PEkXA2RbW4RQzunixiVSFXPKldKT2nyRwueenqJYEJk78
         tsEkZcak/54wpkNnOji02c5NpwKsuyojqz393e8LF/B+GAX5WqazZNag8wzujewOtlIk
         oBsIDdk5TwJxmbBi1m3s0wkBUP0B4Viq97+qRRt10ERK1Ug7n/9/0x6WOF+HICQOccxu
         pUWg==
X-Forwarded-Encrypted: i=1; AJvYcCWj0awRgOd1gmP8NjxmWuUZamtXGex5BLonVHgHfElA/EtHo1gVwQWkmuPBLgF+rOC8AadZ7aXEcV+Hfwzz@lists.linaro.org
X-Gm-Message-State: AOJu0YxKMurqvaSyApoE8ZZ5xZkjMjoo+NXulzyIJkHUEIFykDWfFMBw
	GDgT1P5Hk4CgeNvcDS+jnWqeaAWWujboGMvs15BeMUI74gtaZl+Rb7tRn/CCW6cb3Q==
X-Gm-Gg: ASbGncsCDw0+qcMYNYuaUWHa2SKFzziSIAOWSSWutNXol3lDEMPKS5v28rmcHX3ksfs
	UEvoX5iM3feAfsMB98An68Qbd5Bf8loSUjVlIe1AggXqHnbh+xJTI1pk+CZgSJY6fSURhf5dSQh
	FykjGqteqIBEBhy3lbfahL3BoHopgk2Ltkspboea92XGbjvldct1isljwybdXzl9s6DXDzDe7YC
	x42pRzf/QA7+D87zLR/fuX5sVtMpKigLiu8uy7BQqxe1XTJEmBWkumygJyJa7aR/iKNX86F9+8z
	H/7LSWjXf1i48q6DcRV7wQ8riL97ojfLY0Bk2HfOXH0YHyXiZeFLHxBKFegEFOOc8xeFxscVX3B
	ie0S0R2nhr9KqCTnTPg==
X-Google-Smtp-Source: AGHT+IF8JUCWliZjcbeUSHN6uSsFMCJc6NTPRM+5qGy9ZTGCC1yXzVdzLyehffDilJirBntp5oHCOw==
X-Received: by 2002:a17:907:9411:b0:abf:fb78:673a with SMTP id a640c23a62f3a-ad17adaee50mr226144666b.29.1746180062402;
        Fri, 02 May 2025 03:01:02 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1891473a1sm26030566b.4.2025.05.02.03.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 03:01:01 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  2 May 2025 11:59:19 +0200
Message-ID: <20250502100049.1746335-6-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502100049.1746335-1-jens.wiklander@linaro.org>
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7C0B5454F2
X-Spamd-Bar: -----
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
	URIBL_BLOCKED(0.00)[mail-ej1-f44.google.com:helo,mail-ej1-f44.google.com:rdns,linaro.org:dkim,linaro.org:mid,linaro.org:email];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.44:from];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 3O6SZOGL3NL4LX3SOKU4CZNRMHDNYV6H
X-Message-ID-Hash: 3O6SZOGL3NL4LX3SOKU4CZNRMHDNYV6H
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 05/14] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3O6SZOGL3NL4LX3SOKU4CZNRMHDNYV6H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Export the dma-buf heap functions declared in <linux/dma-heap.h>.

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
