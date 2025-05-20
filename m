Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3600DABDEE4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 May 2025 17:25:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 569D74600F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 May 2025 15:25:24 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id 65A6746053
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 May 2025 15:24:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=y9Yk8ipc;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.46 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-acb39c45b4eso805704066b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 May 2025 08:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747754684; x=1748359484; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t+mAUVqOxIXjZijXnkHFZmAFDQtFJ4Kh5PO6PLUJhLU=;
        b=y9Yk8ipcphNZYQ2sn4E9nSXGKsBSReTEUComvNj0ZMssFktnzIYEguu1ixYUzt7qfV
         57cMpH4bR+QZpkiAYktCoeokEcvZXIwtZ2RQ0YEJV9MaxvqOZiMRRet1xtSU3EXkoaD+
         Iy0R5/neFpsCDRe8re8a2+DKQY6vgYIaap3o7m7A7txZdmWs5WWVlZLXkU87oPKN7Dmt
         oTU4YXYN3UtV5rpsQgIzKRDUj5Eu4Fx1jDWfALnGtNuSWYmacHXS1RWXX0ds2ferrgaS
         F4F7k+44GmEgWEz+QCGGlVOKUbb/jsZdnhYpApe3dQ9lnLyk01+CY0kW9MS0g+AUv5CQ
         rAzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747754684; x=1748359484;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t+mAUVqOxIXjZijXnkHFZmAFDQtFJ4Kh5PO6PLUJhLU=;
        b=QLGlVTUq693afuirPRy1/p2ZubidukulwyS27Z3AGzuzNHX4yCmGCM8Z0/98GNdAao
         9xyTYaZKLqMaxL1gOe9Wqyxml/HCFVyJpCBTz5a1SykmAnokX78r/2V6J0SwjE22ahOH
         wQvrCNVnpNv5YEWca64ulkR0aDJs/fXtmkHCUyNsLPJuvXsbcpoRQa0HrpoQ65t/mQiI
         kxs9N1eY/FcgQqTs/KIGHaCw0YUHL0PFJzHUqFbTV8I6CkbKX3XYscl979TNlTfVp4Lt
         aMFRyPBpqHH4PVts3fOesnurgsbirym+vbhXCJJCLsh7di0PV8gB4fTcCbYY92m44vjZ
         KRLg==
X-Forwarded-Encrypted: i=1; AJvYcCVoJUdPEEUKLcZ8Gjrt9wMj8S5EtgDD7RGljgvzyvkkqAIdah+nw3ImXc4PrwypTsE8e96gvKuOQAG5hpQ6@lists.linaro.org
X-Gm-Message-State: AOJu0YwsJJDmp2lL5wd9uvlu/tc9u7yXp0OsBvOOvduTgt3fpdY2Pqob
	clC3gGpv1sHwuq2mw0IUbsUU66YuaSeJQt4faYWO8VxZoZqA4YmVcHgPu6sssEi8EDCEuw==
X-Gm-Gg: ASbGncukxAiwFAawtzyJs17mQ9087JX5THX97yMboGGHcZLdxGONs1Te6iZPaw8zWYJ
	e+7MF4LhnsSQ491f8tA7hcyw3hDa6SPk7g9XlijP6jal5pkwHQfYJZwECgAA5p5MrMMisrFSHgY
	HKtVmlrgwXDf7ydkrwVLagUfWvtL6/2wDfvZ11aRKOZSYVFf7I4RmFTykC7R5/PGa2E5ruw5JWY
	idmngmirzE4P/NJoLaulBO3djMAdSikS5V8PCOLkxl/3hBbQ9UnozWZQNlohB15Vx3xT3n3pFNa
	OhXRug1BhVUdpe6bo+ky/abpO6/TOpaRl6eVHrIh3WxDKz0uQezDfyWVS5Mz1KoB71SbA79iLcU
	6t7QOJqkiJc1XIYKP5/uyI3LEQn7U
X-Google-Smtp-Source: AGHT+IHJnNS8PsiFV8EVtrc16G9fq8ki6tRPk/s/IIABC/OTj/P3BcTFh9xpStaXrxgzCYdbyyVt2g==
X-Received: by 2002:a17:906:22d1:b0:ad5:3055:784d with SMTP id a640c23a62f3a-ad53055f81cmr1041003666b.34.1747754684274;
        Tue, 20 May 2025 08:24:44 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d278257sm742608766b.82.2025.05.20.08.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 08:24:43 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Tue, 20 May 2025 17:16:45 +0200
Message-ID: <20250520152436.474778-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250520152436.474778-1-jens.wiklander@linaro.org>
References: <20250520152436.474778-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-5.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.46:from];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.218.46:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 65A6746053
X-Spamd-Bar: -----
Message-ID-Hash: CB6CKI6GPADJZ4HGK3Z4WTYCUXSTUPTG
X-Message-ID-Hash: CB6CKI6GPADJZ4HGK3Z4WTYCUXSTUPTG
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v9 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CB6CKI6GPADJZ4HGK3Z4WTYCUXSTUPTG/>
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
