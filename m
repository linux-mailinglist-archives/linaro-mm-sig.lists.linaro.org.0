Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8C3A76377
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Mar 2025 11:45:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C15344291
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Mar 2025 09:45:27 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 06E5E4046F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 31 Mar 2025 09:45:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=nO3j+lbM;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.128.54 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cfba466b2so42414945e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 31 Mar 2025 02:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743414314; x=1744019114; darn=lists.linaro.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aKS0Fboa1dtHIDG4S6gLCYTAz2lAP8mKMrYFIOMeSw4=;
        b=nO3j+lbM9Z8YCY3fF2+ViARx6gO87oh1itxcTq6R6md78wGPQ0Had7RGdJ2WzMRkYz
         HziMvsyHJXjCh6AsBN62OEcgJj9M3UCCut0KCq6g//4+LA4XbijvMta4IEzvGWCTUqUc
         nRsDhttVVZBkpThajuUOPMkeyqAQ57N0pQRd02ogUYLqB6IiIAKB+Sb2S3U8w5gXcutI
         EfujvrXeOAq5FO9WVEkPCW+vs5emZ9woBRRu0pDwO+Ev2Ym3zXN8M8hBJl1xjrcypo/r
         S49WLaxG7Ccjn2ooRdep7EKrVYgWwQDp2SH4Kb/jo7TyKeL33008KS2Aax/pVzyHwVfO
         esZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743414314; x=1744019114;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aKS0Fboa1dtHIDG4S6gLCYTAz2lAP8mKMrYFIOMeSw4=;
        b=ogsX4312s32NBIbnGdSpA2dJbKCm3E8Hj8oF3ezhfwNOyPqQ+G8bkYiP/y7HiEC/0N
         bLoHYM2lVYw5ZONy3F07I6E9UEt51Hj17NHRAeTs2mBP8+CtII9OU/++0EJCVjUKfMPE
         SzndQBjRZO/uVo4tZgqbq+dRzF0zz/tZDK+pQdxcadAuS6LTqM1hBfYxUPAPRGMGOcuM
         Go3McQcs9LBf3SB9rfkRHx5CBq+s7XBxn1JzlwvnSFY8wO5YSL47se96QfK4tmXEpdGN
         jr1QzjX9NMtWHBIX5zhPM/xvy3swNMzPlL62rTUj88wzRch0dprmxXDMUcqGazVTD27F
         fJDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwbg4ihZqbzLZciZRCrjq7AbjaAqPqc93enhpAIc1QIQ5TlQwHSpEU9uRl4KlWzRnxKntzh/6LNH2Ml9rN@lists.linaro.org
X-Gm-Message-State: AOJu0YzNQuLRt2OlKErsYdwbBmptX2k21YmpkufECbJW43ySWwBOJj2i
	r63HsG2weRW57zsGbRye7nSvpKAycXBtYOE8ogpHAO4/TOLQWbr9nRP0UVLR9OLhIg==
X-Gm-Gg: ASbGncvvM39WNBFkoc/UvhY49t9Vnn9iH6jlyb9KrTZGe2WWBm0LB2s9iTqUrQ2TFl5
	yYduQvDxyZX7MuHKey7zTcyso473QEm9v+4Sd/aN9oqumumfPTw5g4lGz5ZYVtZSZno7ThfTG9J
	K0OQCNlB3UrWk6iU92Lf1Kk3PSDUkQLK0rIwRnyZjYKWfMQ1LgsTekHFIi90/V6rsWk8S7p8EkB
	IRrvOGcG573q1qKruvl3x93QkSeqX6NRtAsnlR7qbWjHHuERsgL4RJyLNoRuRsvjsRZZFxSEdzj
	OH7hD4w9J9dASIvgpTeJsz/4keu7X+6tWZIrkW1dQ/ro+EorBw==
X-Google-Smtp-Source: AGHT+IFVzFpYmKBAGEXWi3zw7wUU5N+0+BO4pZCgxv4I35ZkC0wJP7yiqMMStfAjpc9DsFCTgkEtog==
X-Received: by 2002:a05:600c:83c4:b0:43c:ec28:d31b with SMTP id 5b1f17b1804b1-43db62283d1mr102074565e9.10.1743414313954;
        Mon, 31 Mar 2025 02:45:13 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43d8fbc10e1sm115778485e9.12.2025.03.31.02.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 02:45:13 -0700 (PDT)
Date: Mon, 31 Mar 2025 12:45:11 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Rob Clark <robdclark@chromium.org>
Message-ID: <5dbd6105-3acf-47ad-84d6-2920171916ac@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 06E5E4046F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.128.54:from];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,linaro.org:dkim,mail-wm1-f54.google.com:helo,mail-wm1-f54.google.com:rdns];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: ZTY4PYUYPL6THYYGTT3P2YL6U2JEHFMM
X-Message-ID-Hash: ZTY4PYUYPL6THYYGTT3P2YL6U2JEHFMM
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Dmitry Baryshkov <lumag@kernel.org>, Pekka Paalanen <pekka.paalanen@collabora.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/sw_sync: Decrement refcount on error in sw_sync_ioctl_get_deadline()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZTY4PYUYPL6THYYGTT3P2YL6U2JEHFMM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Call dma_fence_put(fence) before returning an error on this error path.

Fixes: 70e67aaec2f4 ("dma-buf/sw_sync: Add fence deadline support")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/dma-buf/sw_sync.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
index f5905d67dedb..b7615c5c6cac 100644
--- a/drivers/dma-buf/sw_sync.c
+++ b/drivers/dma-buf/sw_sync.c
@@ -438,8 +438,10 @@ static int sw_sync_ioctl_get_deadline(struct sync_timeline *obj, unsigned long a
 		return -EINVAL;
 
 	pt = dma_fence_to_sync_pt(fence);
-	if (!pt)
+	if (!pt) {
+		dma_fence_put(fence);
 		return -EINVAL;
+	}
 
 	spin_lock_irqsave(fence->lock, flags);
 	if (test_bit(SW_SYNC_HAS_DEADLINE_BIT, &fence->flags)) {
-- 
2.47.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
