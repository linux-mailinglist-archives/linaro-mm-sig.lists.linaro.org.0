Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5B04853A4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 14:37:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE41F3EDA3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Jan 2022 13:37:04 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by lists.linaro.org (Postfix) with ESMTPS id 1718D3ECBF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Dec 2021 17:23:09 +0000 (UTC)
Received: by mail-lj1-f173.google.com with SMTP id k27so45739037ljc.4
        for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Dec 2021 09:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+tf4nBFZgti+nl0o1bJRk3qvXgnYx/HTJhgteUE1QXw=;
        b=gH9FQ3nysBpaf6G5Z0BPfhrqQtpn+qTmTd9UB7DUm+POlRm9S/SWcJhtT6sWg8x5VG
         5wF/wNm7rAkcswm9tYQ+CR7jZhIoTCyvDYLB7k3A7y1VmhocDh4hpQHOMgOns1Zs2jEp
         a8xCGzZH9LvUYy31L0ngkPTIni39sm99s1tDL2lPqEJYEMz/R72swz7s82+NAfYC3Y2n
         ZwN8MwlCkUqzY6M3n5PPQRrVfnVFwAL180ELTGvhAOdIpyXLvNDrhQN8zc6co8nNtpIC
         3HzPMQFQk6TgJ+rS48DAfXKP2meFfw6HhUdjPeaS2dPj9EChx7KhfBUwex5IrnrVLfyx
         UFsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+tf4nBFZgti+nl0o1bJRk3qvXgnYx/HTJhgteUE1QXw=;
        b=yYaOYOyqQT6PS+ioQV6oxhxxsuRt8BCPcFXZbs+9EVHo4AbnW4y3S4Epw8rX4N7Qd0
         DoLSVuTJQnFy17XUgDQK4sWFzz85DsuKCyfiQGaLzwcZS9qnMYZKM4TAM6aoKidwEy4f
         QJG4YROPOiaBMxAm4IdsTSPs8276ed6Nvn9LpZ1NGutWRDhWmTRCEVS+DrzMNbKdbleA
         ezGrIvOccONcSmPkcoEBXvR0TOd9AOSoSiGwNLM78ColJefAtShPWT31TFaNz9KtY7Mj
         u8cRgUoS78VF39k8khL31kebbFa85+rccpigApmkqduHbr2PNTpOjSSSwDLJyFFyoWv8
         0PtQ==
X-Gm-Message-State: AOAM533LpoAUMp8HGFF/RcTgjtp8zt60T4DdgVsRr/7syLYyVJYcAbez
	GcOc3JNVLunPNeRSWCeuXCQQ5Bq2IS0=
X-Google-Smtp-Source: ABdhPJxxcwPDUWvaddgiXQGl/eGIsXz0jw20BcLQgPCKVg4rWRtMVdGV8LZ3Vvbkd2/qzkOSH5LouA==
X-Received: by 2002:ac2:52a3:: with SMTP id r3mr28192890lfm.580.1640874412548;
        Thu, 30 Dec 2021 06:26:52 -0800 (PST)
Received: from localhost.localdomain ([94.103.235.97])
        by smtp.gmail.com with ESMTPSA id v27sm2510259lfo.97.2021.12.30.06.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Dec 2021 06:26:52 -0800 (PST)
From: Pavel Skripkin <paskripkin@gmail.com>
To: kraxel@redhat.com,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	daniel.vetter@ffwll.ch
Date: Thu, 30 Dec 2021 17:26:49 +0300
Message-Id: <20211230142649.23022-1-paskripkin@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QWCH2AWEQJG64XY4UJLOJYFNYK2SP7ZI
X-Message-ID-Hash: QWCH2AWEQJG64XY4UJLOJYFNYK2SP7ZI
X-Mailman-Approved-At: Wed, 05 Jan 2022 13:36:38 +0000
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Pavel Skripkin <paskripkin@gmail.com>, syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] udmabuf: validate ubuf->pagecount
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QWCH2AWEQJG64XY4UJLOJYFNYK2SP7ZI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Syzbot has reported GPF in sg_alloc_append_table_from_pages(). The
problem was in ubuf->pages == ZERO_PTR.

ubuf->pagecount is calculated from arguments passed from user-space. If
user creates udmabuf with list.size == 0 then ubuf->pagecount will be
also equal to zero; it causes kmalloc_array() to return ZERO_PTR.

Fix it by validating ubuf->pagecount before passing it to
kmalloc_array().

Fixes: fbb0de795078 ("Add udmabuf misc device")
Reported-and-tested-by: syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com
Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
---

Happy New Year and Merry Christmas! :)


With regards,
Pavel Skripkin

---
 drivers/dma-buf/udmabuf.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index c57a609db75b..e7330684d3b8 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -190,6 +190,10 @@ static long udmabuf_create(struct miscdevice *device,
 		if (ubuf->pagecount > pglimit)
 			goto err;
 	}
+
+	if (!ubuf->pagecount)
+		goto err;
+
 	ubuf->pages = kmalloc_array(ubuf->pagecount, sizeof(*ubuf->pages),
 				    GFP_KERNEL);
 	if (!ubuf->pages) {
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
