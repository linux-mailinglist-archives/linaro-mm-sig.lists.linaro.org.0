Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2BFAA6EAB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 12:01:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D996345951
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 10:01:28 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id ADDC5402AD
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 May 2025 10:00:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=ylEGXJUl;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.52 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-acae7e7587dso270130966b.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 May 2025 03:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746180055; x=1746784855; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ItVLbwXh6klaFZ4DOTZKuJkyifurR/QGuqAr/eTlGU=;
        b=ylEGXJUlFSXVKfPT01JimImYgUaiyX86waUmVZONqOwyKRnHARQp8AHf2SNMWllO0v
         o96TLV7IK2LI6iJvc6JRTHul6HPNOjbfwvy8WLX6rH+2Uk/o4TZ29S2GB2Mq0yVs/kBv
         zPTDsizPxZ4yZAPqENEtiVsR7AOmxrG0kUoLEYP9KU8jQc16wx7MtmeWZH7FnYpZOLGJ
         zatQmQKchv4bOncFBq+EQ4iMF8lMlwY/A224r4j6DMevB7jv2FX0KeLiuYR2t7ECy79D
         twCt/DiSz80HibdMWwAtUeHUxi/ZfjQrtL44pki4+itKDSF3D14iwftgo+vHcUuXcYCD
         XK8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746180055; x=1746784855;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ItVLbwXh6klaFZ4DOTZKuJkyifurR/QGuqAr/eTlGU=;
        b=b8NTucWlRn0QaejxecICsuayv5cMWvLOoXCW0/wPzrdJvfzRMXMb9/rzbv058EXxBN
         DKAtnwPaEX4F1k4MoxG0Z5tNvHdUP1bYDbOCaLtpIFff0NpAvs7ZXsLVe44L8xdLVdXm
         xZsu+tYXKuQ2CUsyktlXxhsUl6fChHZe+ZbVHjTZLtJe3El3QStfmKHvi8/G0TPwwZOJ
         OuR9OAohpljqsG77ARCLpD3yfyLe7V6uSAca6Wzi61fY5hD4oc2AxUHB6RfqyROw1rjm
         xSorTGZuoQtPY77GC18KSARNtUfd6tFL9MjxLgqjYlfzTxXevmZFwglnmVD+DXVfe+fO
         sNig==
X-Forwarded-Encrypted: i=1; AJvYcCW1/7VybIuU5ok2N/USmsxWb0dwu1kdrW3mhtR1MoNMZszVe7z/UBnbOi0FSHwGiOXhVs0xCiciXQAZcr0R@lists.linaro.org
X-Gm-Message-State: AOJu0YxweGf9npSVE7vcc44WRWRIpqVTSHihK3x83Zi7+cwEPrAC9t/T
	7dz1r3YuOn7VOgleSbzrK4CGh3/NDDAQhrs3ciR0iqJdIebnVr8jXL5bhJ2L6Fu2sA==
X-Gm-Gg: ASbGncsWwvhe86RLHLc5VYMtGcI9vLxSQK7Thl313Om1fD+dMgeU6KGBZzk95cyqvOm
	5BAGbJYAeqk1jExHLhpQO7ta1+SoPw5/C/3r0gMhKCkv4yGvlZ5qgfv9UntJl6E8kOsSwO8NitR
	tmYuE60wz47D7TWIFh2BxtjlibQ7sZVSHOUL5VLwcf8Q25gaSnbwW2iBvaBvy40n8Bxhunjg9Jx
	SppMI1D5q+y1tuP2eVHQvynaFuxVwIyPU8VHtPv0cli8il4lGlaKEhpPyE9540Cfkrctp2IH+mC
	hTEzalHK1qEC+x8QmbOnNIQS5tLcVyB4RHqjF72oJDPHeqFxqS6pmPGQ4lOme+3Ah5r8gfcWsJ8
	xiG4CptYMtdTS5UZqmA==
X-Google-Smtp-Source: AGHT+IHsIhA3Bp5ORflZ8bo2wewMeJPgYiXyKbBXizljuVxA1br3p39Mij4FHprUjRbWMN7T6ANK8g==
X-Received: by 2002:a17:907:3f0f:b0:ace:9d35:6987 with SMTP id a640c23a62f3a-ad17ad24ac3mr199033566b.3.1746180054591;
        Fri, 02 May 2025 03:00:54 -0700 (PDT)
Received: from rayden.urgonet (h-98-128-140-123.A175.priv.bahnhof.se. [98.128.140.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1891473a1sm26030566b.4.2025.05.02.03.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 03:00:53 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Fri,  2 May 2025 11:59:15 +0200
Message-ID: <20250502100049.1746335-2-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502100049.1746335-1-jens.wiklander@linaro.org>
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ADDC5402AD
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:mid,linaro.org:email,mail-ej1-f52.google.com:helo,mail-ej1-f52.google.com:rdns];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 2BOKPPGHLLXVEWC22KQCOPWPKK7NLV2Z
X-Message-ID-Hash: 2BOKPPGHLLXVEWC22KQCOPWPKK7NLV2Z
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 01/14] tee: tee_device_alloc(): copy dma_mask from parent device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2BOKPPGHLLXVEWC22KQCOPWPKK7NLV2Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If a parent device is supplied to tee_device_alloc(), copy the dma_mask
field into the new device. This avoids future warnings when mapping a
DMA-buf for the device.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
Reviewed-by: Sumit Garg <sumit.garg@kernel.org>
---
 drivers/tee/tee_core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index d113679b1e2d..685afcaa3ea1 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -922,6 +922,8 @@ struct tee_device *tee_device_alloc(const struct tee_desc *teedesc,
 	teedev->dev.class = &tee_class;
 	teedev->dev.release = tee_release_device;
 	teedev->dev.parent = dev;
+	if (dev)
+		teedev->dev.dma_mask = dev->dma_mask;
 
 	teedev->dev.devt = MKDEV(MAJOR(tee_devt), teedev->id);
 
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
