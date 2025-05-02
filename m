Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6C0AA6ECE
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 12:04:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 272AB3F935
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 10:04:43 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 0A82345588
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 May 2025 10:01:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=MX2a9Wi4;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.47 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac339f53df9so391408566b.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 May 2025 03:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746180072; x=1746784872; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K96TP7RufWR0A5oYw5jAf7HfaOkuZ/rMipxLAIxdi/A=;
        b=MX2a9Wi4t9NEw7IGm3rt0TA6/FPtkCJWLmyChOo/Om+2Q6sYIE5g/Hl7W4HBCx4zhL
         T5uyzgehTZ7/2TRiE1Iw/NIV6IvWrDbpXm7RaGWXZx6Hth7Xvz57aYnkhzmoQq+N4uLL
         FyrVSN+gq1QRo50V9PiPgbsPfvne6NG0uOcwPcCUh2AdRgVMMcl7wqKn/t3L52FQyaPD
         Hew7M1HLW37VBYE8slrgDALMDjrKDi99sFhPvx/FnVvqyn6hWqWtGN3Xh0TT7zEp1dJn
         XlI4sbuBjhG6n9Pnn26VmP2omzmSdH4+CWvbVz/aVgBoVtaPq/hb+nunElW7zVGnpKTS
         M8ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746180072; x=1746784872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K96TP7RufWR0A5oYw5jAf7HfaOkuZ/rMipxLAIxdi/A=;
        b=fa6ESLVwmGzhlQtbolzO/cv1HcEmlxTPfGuROXJ/L69Xc1GjB8AU9QUZcpvcVIbRXs
         cca3haDcOLUvA95seEo728RpyEYv0GzzrVDoJ0iEyjQ4P5pQ52i974qxK3M8Y6op2tyI
         CrgD2UnObYbLtTKvzvylDRgQOmB4Vm6G/3iiQZLIjyFTBOyB+64Y3sFvFkplZ/kGwaIn
         /9AXndZKhRBVDNYwr1wSIA7NQ01yCH2EG+7npO5+gOQISRvoLxt5s+YazPpcOLrADZjB
         zeqkAGM9JAinoUx5hyIL0Qq2Szr6xAG/e11H2jR14hfzuub8KQJTuR6EDdpKYHWwi4NP
         GcKA==
X-Forwarded-Encrypted: i=1; AJvYcCWYZ0mfB1Ho0l9pwdpFV7qqKfZWa51NJebdLUXuM4W7tRYr3ceFMFPfVpUEakFuS1i+U2WMwc745/QuqvH3@lists.linaro.org
X-Gm-Message-State: AOJu0Yxli0G5XAagVdQBY8pzZf8K6rR+lMjlIozKak2v2h3YfShlehld
	+sptU4quufuHjReruFJzcqlA0sxaWIaUaZq7DFjwoFlCpnfncQVqn3bg5SaJ2NAyYg==
X-Gm-Gg: ASbGnctn9ElKJe+eHeqzjGHLMavqHtXMckozTxEdMcl3MmL9F3iSbucXxVAxGmtU5sA
	ku68JeLrkXcHefrKxBoVSkh9Y0vrKRyfwIwkGncM7IAXxgdzfpuZDCyAyHCVa3j61DL8rw+BtTV
	rwwa3EGIjfj18RMII7z9JqQ2Gf4Uki2coEg8kncmxnzQvvH/01nUNghNeaxgA1RzBg/rmudApWg
	u0eUVp9vgm1tjVpJQr6U+8TxgM1Y5hrzoBPkBr797QcNqBlmeE3tizMpcQEfIsElYC4/GStVTnl
	/d1NFFQ1dvlxeRXVEaEEwDr9AuVuIGV6Ax8t9c+CwLhlq1pi9ELyea46CehHXCETMsjZNl+ZhEA
	2IOT1caz7+8wMhvDz/Xq9bNLKg5rr
X-Google-Smtp-Source: AGHT+IEw/QFZ4Q15wjtCZMc2Ys2EDGftsTen4aFJcOHmrUkANvg/HjzdHRZE7b55C3GGic4/3YhYzw==
X-Received: by 2002:a17:907:74a:b0:acf:15d:2387 with SMTP id a640c23a62f3a-ad17ada7132mr232347066b.19.1746180071962;
        Fri, 02 May 2025 03:01:11 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1891473a1sm26030566b.4.2025.05.02.03.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 03:01:11 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  2 May 2025 11:59:24 +0200
Message-ID: <20250502100049.1746335-11-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502100049.1746335-1-jens.wiklander@linaro.org>
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0A82345588
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:email,mail-ej1-f47.google.com:helo,mail-ej1-f47.google.com:rdns,linux.dev:email,arm.com:email];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,samsung.com,lists.linux.dev];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: M45UVBIAWXSNDL3CX43GRNQTPLFJPIGN
X-Message-ID-Hash: M45UVBIAWXSNDL3CX43GRNQTPLFJPIGN
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Jens Wiklander <jens.wiklander@linaro.org>, Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 10/14] dma-contiguous: export dma_contiguous_default_area
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M45UVBIAWXSNDL3CX43GRNQTPLFJPIGN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Export the global variable dma_contiguous_default_area so
dev_get_cma_area() can be called a module.

Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: iommu@lists.linux.dev
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 kernel/dma/contiguous.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 8df0dfaaca18..eb361794a9c5 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -53,6 +53,7 @@
 #endif
 
 struct cma *dma_contiguous_default_area;
+EXPORT_SYMBOL(dma_contiguous_default_area);
 
 /*
  * Default global CMA area size can be defined in kernel's .config.
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
