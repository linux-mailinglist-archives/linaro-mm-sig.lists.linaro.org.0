Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB4BB240F6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 08:04:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24F9844D28
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 06:04:33 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id 4382C45D50
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Aug 2025 06:03:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Sr0AEaw5;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.44 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-615460d9897so7062798a12.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 23:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755065033; x=1755669833; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S9RDpqZGncYw4GV9WsRoAupSSI2K1DVKB1tocQmYgMc=;
        b=Sr0AEaw5gpaayf/2DpQDhxLzDTjXdK4cbqMmKTfU2tcAGWougF8xBDbVCL+Pp4g7sX
         ekoAzjYj+R/BkdY766Vxm7UBpM10LjtnrsV/TMDNCuepXrELujWDrBF1V7Vlc754k23t
         pkuxIxxZQqCpCUgy9moDzefSOCmkmqzJk7lnnQvjCDDcKpqIQXU56uEPv1ploDIpiH3n
         6rZ7XCX5qG8VZy/Bz4ZPbN9mLESyFUBN29C8i7xtbv+kn1LvMo/jluWbNWwF7rJXXMfm
         d+1JbAI4el/ZtDpWTWIw1hlV0t4ysFXbsk1Mstjj6EYDX7gEKrNNoixqsGl4H8UpSwtd
         zLZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755065033; x=1755669833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S9RDpqZGncYw4GV9WsRoAupSSI2K1DVKB1tocQmYgMc=;
        b=rUClj8N0u1Lbu9F1dP14/YRG6wHJhw2yT3PMmgko1puz5OwNdtkgnI86kXszCmbSWk
         Qb3V3xUBxho/xXKnzRW1L/yx2yb6Q0a3A0tkh09ZpPyDXdHBsNbH3Ssq5WnWIQj808xI
         J3qwwVtcjCZpeEndWSnw1S5G8C81Swrh4ZHDKD1G2ztopCVKcMtb6KfSlTlhwt6MqS5d
         2pJ0dPCJk6FLzrguZjyemEwX0IZjQe8t+/43jwNtHKu09tqhTkJfn/K0OX221X03TW3j
         ohArkyYexINdNuum0r7IP230GZT5hUkXwa4NuoDg3uI8nFmDQtiXTo6nsWdP3oJmNwbh
         JK4A==
X-Forwarded-Encrypted: i=1; AJvYcCVCzchxWhUNi7NbdZDpWVI1uADF9v91tFzR7/eHkqK4q2cUxUo0ep00hGi35KWVvhB/UvhBRFDZnQCIDdHI@lists.linaro.org
X-Gm-Message-State: AOJu0Yxhk/hdSv2Lx+ZWDI7MY8UV5gKEDTgkrVQNHpDXDcqqbG8gEMyg
	32hRy5LFj/OKHJVnpdK0c58QP0rWWBH/KEAIHBplHbaTVi/raLzmyED4H/Oal2zXugGPwA==
X-Gm-Gg: ASbGncsPyk00SW1jDmGUX8AoIJh85qLNXajevMPZyK1yqbGm2RchfPKCAoWFBA8puFN
	tKnzSS23DySKb+Jr4I4rJpjmNlhVM6YAMcMW1/AAUvHhs54W9A8h2jWkrHoDWFn/GyuMvM1B6fD
	qWkfJl/vZTQv+JeE5d1X6Lpbkx0VCgFcv0xBrbIVfNMlbKMucGfwbu9q+nFyL/UrwrFzWAHkBBx
	DflH10GhZXxBssLoa+0WaNL2/WNucVV0EoBF6aXe0c9bzXt2anam1gSq7ZhG0LChgr7EQVQcVwd
	QQR1i3hMneMt02ENgJMDjjKJfQNO9iCpzesuliDUuXpTaTOtKnaKrKTeR4nEJnVeUhqNydK59Kj
	qEK8ign6+U8x+BQBsHiMLBztwUO5gYPnCr/Ef6pZrYfJiDAlvySOzXaqPMiyAH0vI9Mdlp0aO8M
	0=
X-Google-Smtp-Source: AGHT+IHPDW4Qxib/c3fl/QvNCJB64Z5YGN/d1oTyw+2Hx0fudTx9zXp/j1zq+pONC9zrU1nldBcONA==
X-Received: by 2002:a05:6402:22cc:b0:618:534:550a with SMTP id 4fb4d7f45d1cf-6186c000f03mr916573a12.24.1755065033114;
        Tue, 12 Aug 2025 23:03:53 -0700 (PDT)
Received: from rayden.urgonet (h-37-123-177-177.A175.priv.bahnhof.se. [37.123.177.177])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f2b892sm21498679a12.25.2025.08.12.23.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 23:03:52 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Wed, 13 Aug 2025 08:02:51 +0200
Message-ID: <20250813060339.2977604-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250813060339.2977604-1-jens.wiklander@linaro.org>
References: <20250813060339.2977604-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.208.44:from];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.44:from];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4382C45D50
X-Spamd-Bar: -
Message-ID-Hash: WUHEPT36LN457ZWEJRUMN7IHFBPJXCAN
X-Message-ID-Hash: WUHEPT36LN457ZWEJRUMN7IHFBPJXCAN
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Jens Wiklander <jens.wiklander@linaro.org>, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v11 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WUHEPT36LN457ZWEJRUMN7IHFBPJXCAN/>
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
Reviewed-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
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
