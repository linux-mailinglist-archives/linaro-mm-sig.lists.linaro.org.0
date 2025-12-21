Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2E5iK7QK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6C441174A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5912E44881
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:13:39 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id F074D3F69B
	for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Dec 2025 15:33:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=QUpjzkiL;
	spf=pass (lists.linaro.org: domain of swilczek.lx@gmail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=swilczek.lx@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-64d2c50f0d6so1048339a12.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Dec 2025 07:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766331182; x=1766935982; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tfKTmo4nJELW1fqaLs3q/xm7GxRxsQ6W6reyaDZwX/4=;
        b=QUpjzkiLvYC6QCwn/KGxZHX+hvUW+4GMcrRUkapDDyo0gzRT1B7QfjRauj6JDl3saC
         8zSX4pZzazhO4s4o8H1UVpVn4moEXwBheDIb01YRrrP970bXTzyZ/VW5b+Mn/nyDIAAX
         yCafJxRFGUThecuxwL980RPS8cwRemGnj/dR2KaW+1PlatkWZPpQzw4ulZl+ojNNOjHh
         kYnJQUsWH830MKq5TLk2glbOSvabcRxOOcHvN4fd5KTNyGUR1A8Uy0/umHyh7uv6rhE1
         Rx95GDekP2R3ztUAhqqYwmo7JttS+FKNXez9bk3D1NAV1g/C/gCSnlY3RwOA8+GBk1Dt
         qU5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766331182; x=1766935982;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tfKTmo4nJELW1fqaLs3q/xm7GxRxsQ6W6reyaDZwX/4=;
        b=DxFvspGl++HvOZ0spfS9B7nmsr/Upx1XbMrPNqttKr6I7LLlGQHlpCeZhKYbdS7SWl
         Gg38I5CGKEvND/IFlJqrbxvurARIAwrp0SypNqMzJT5MF30LR0Fvh2KAuva+rXZF0CFX
         H4ylomLegvUtqkjADNQsxDHTomsAnJifKvNB/gZ46vW8o+yn7CUT6BrankmQkg4XFnzq
         rMvMcOhkRJvoOXt1qgMvQx7vw5tp+qbSP+wYctSJO+69IldxC3t/DtSXG1c2ArRKUHO3
         k/wyD22DDa46sFxUaAFTUrvd9RmPids9VOYuWokNSp+Dd/hoK1FKPaog1hYLd/4A6Btr
         V9Bg==
X-Forwarded-Encrypted: i=1; AJvYcCW0mz5q2i1T+cPoPQIoHZxZ7NZKe3PO/ocRQOu7svwO2HBt+8P/TKw/1Dkv4YCSOD8qhswRM7hfl/WnohyP@lists.linaro.org
X-Gm-Message-State: AOJu0YwHY0hfgBNEpeNyVTy66nO7xz4OXRZy+FlOsSefdQuzCwHiWe37
	dkfxeRFsiIcINOqJAo7veDVDtM/66rCeIDXJQADjq5NfbAcA6KMug7vn
X-Gm-Gg: AY/fxX7yCK+H/+QOqfFc5BMTv+mFgp5BdNkhyGG3UrIvcO5ajawoA4H1F1yV+J07Qqp
	86zRnU9laY1Yc2B20Pgh3il90ow9pCno/9EWuvZKzpZoFp/Y4vhYwWV5en9eEcrisnEgO0BLTxV
	67Es0XnbWErgewHj9qM2w1l//dXMpRqYjDEN/D3klgkPvezbLbVqGBTIoAIIptGU1gShg/Lwqn+
	S35aLBUOLei1vo4b+MnMOJluJ619UckKUXs1ubE2VSMZT/Se/Z8pa9ynExp8o/SjEdaJ1j4zSsY
	UqvLlyizvbfUjVKmW8SCVM/YPLizdWWH0Y4kg3envtlk8zV6gejBQJJ4Dz6I1OWZXGL/+5s/BlF
	QHXowctwOFf9SaaqUyVlEnOQo4Kbb/4dSvZW1NTGmwTTMC35ue6Me/vNVwXVylKAjC7MjUcdAXh
	Y=
X-Google-Smtp-Source: AGHT+IHCJZ9Sq/rnbPBZLh9tgt8wtX1m3fVtbRYW12r7euLP7G7Br1Ulnd8nM/hRB9h1cJ2bDI4bvQ==
X-Received: by 2002:a05:6402:40cb:b0:64b:bb79:96bb with SMTP id 4fb4d7f45d1cf-64bbb799a91mr5639423a12.24.1766331181695;
        Sun, 21 Dec 2025 07:33:01 -0800 (PST)
Received: from prometheus ([85.11.110.37])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm7629741a12.31.2025.12.21.07.33.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 07:33:01 -0800 (PST)
From: Szymon Wilczek <swilczek.lx@gmail.com>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com
Date: Sun, 21 Dec 2025 16:32:50 +0100
Message-ID: <20251221153250.17591-1-swilczek.lx@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: swilczek.lx@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JWLH2X3ZUKONI73JRE6R5CPV2KCNRZ2O
X-Message-ID-Hash: JWLH2X3ZUKONI73JRE6R5CPV2KCNRZ2O
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:09 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com, Szymon Wilczek <swilczek.lx@gmail.com>, syzbot+4317d7108e14e5d56308@syzkaller.appspotmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix WARNING in dma_buf_vmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JWLH2X3ZUKONI73JRE6R5CPV2KCNRZ2O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2784];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swilczeklx@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,googlegroups.com,gmail.com,syzkaller.appspotmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,4317d7108e14e5d56308];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.969];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 4D6C441174A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When a driver's vmap callback returns an error (e.g. -ENOMEM), dma_buf_vmap()
triggers a WARN_ON_ONCE(). This is incorrect as vmap operations can legitimately
fail due to resource exhaustion or other transient conditions, as documented.

Fix this by removing the WARN_ON_ONCE(). The error code is already correctly
propagated to the caller.

Reported-by: syzbot+4317d7108e14e5d56308@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=4317d7108e14e5d56308
Signed-off-by: Szymon Wilczek <swilczek.lx@gmail.com>
---
 drivers/dma-buf/dma-buf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index edaa9e4ee4ae..14b55f67ee1c 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -1525,7 +1525,7 @@ int dma_buf_vmap(struct dma_buf *dmabuf, struct iosys_map *map)
 	BUG_ON(iosys_map_is_set(&dmabuf->vmap_ptr));
 
 	ret = dmabuf->ops->vmap(dmabuf, &ptr);
-	if (WARN_ON_ONCE(ret))
+	if (ret)
 		return ret;
 
 	dmabuf->vmap_ptr = ptr;
-- 
2.52.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
