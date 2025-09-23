Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 972ADB9597E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 13:14:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11B41446DA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Sep 2025 11:14:49 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 16C2F3F689
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 11:14:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=kvrIPk5a;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.128.41 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-46b7bf21fceso25695495e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Sep 2025 04:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758626085; x=1759230885; darn=lists.linaro.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=veRQoXTOP5jOH7336MItrAXBwCoB6ZB/LrxpVKH7RUg=;
        b=kvrIPk5a35UT08Gnky+lZv6LN0OIPpSR5xXOFENnY2TylYXiAZR5bhG2QtEZwTHNlT
         s2wRJPvDh4vJcF9TYd04s5ytzqOZqbu3mX1L1eG11Mq8cv8HFDwTgnZE9TiKcDJzJyOR
         RSTRMblNk1TLz0cpFHYftU4YSJKZGbJxpwnzitd/YM9+w4vtILzqBs6tD8LYJBsc0Q/x
         WFmmRybzyU7gip/twB7BH/GgerbKBl5AKoYhjpdsEJX6jDm08WaFFFTjdPzX3zYJn2Ql
         o6kV3N+i2UKUMj0rj0uOLgIaAx1iRUn6Uij6At/u9ZNMwffZyrglTb+3WXqZUr30s4VH
         mdZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758626085; x=1759230885;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=veRQoXTOP5jOH7336MItrAXBwCoB6ZB/LrxpVKH7RUg=;
        b=hNUhIMCezPn+fVpef03qWsdlqkNDseGXCS5EsajJRsLc3vcVoMPJRigKQkjvR9nqlc
         qRdVepLO3WPmYyyIQAO36c2VS+4vXxIYB7yaQZkXIGO/hfQQFITN1I6egRoShJmiBS5T
         AOCePvMHZ5UPaei83SRLa0KW8tGmhlTEV4/amo4/ke5I3IDUiPF7jC7kSY0ibghz41GO
         0QE6kIU0b3CUcziXhgk3lg2W3js4QRAdQrmNL+rzE/kCBYBDEH3iRiMkudMrw8BxHER9
         32uIJNn4LNLw3vea5j+WXwgl7WMXA7XweApa4eTvY5r1kGzCFs9o9ZJ1hvPKg9o1/BNX
         qszw==
X-Forwarded-Encrypted: i=1; AJvYcCV52PXZU0lUo3a4v5kp5BmnDswV9W7LpI7Zf0O9hI/ZnpKx+wjeogRGdmaRlQzxIcENhK0w/WpTRaurjUAI@lists.linaro.org
X-Gm-Message-State: AOJu0YzfB0RzEZBfR19bi93UGM6rBP2q/r1Ua/E/5r4Orb+tVEjRIXTP
	3MfpKF1W7ZHtjOpJ3RED5hl+IvxjLmh23rTGHeczrqlRAstY0h9nzKiL98+JsO9/i7sWnw==
X-Gm-Gg: ASbGncsjkt8/naSCMxUDK7b3/RpU6n5lOH0vU5jAK8jSnBc2j+CbOdq4zbR4sSvFXFL
	gsK6kXZOVVkppYHi92GvKcCArfqhCESxNCAacuQyofLXdydJV+BJstQfbgK9oJ/U+oomzs8zGYs
	+aWJrLZuoxGbl9CX0BYUMaxVNyf/Vf21x5MAJMSEZqFVjAE0dUwNoXHTvQ//oe0ClxYMspzUCYE
	a7Kof/HVLAuYcXkz8+SFg/COP6EoaR/T8Dos16dWAdNjFrQij+MvTxxwd7swiYxkRoU83JdMyKV
	q2SHbvzE0Y677qfER7Yaf0G/2Rr3QUtkIgfIK5DKdeM6bezYzBZev4GbMXxAdTt5hUFB3z8sCI+
	Zt6wNqEOHV9KL9wRP/f7KSi8Dcoql
X-Google-Smtp-Source: AGHT+IGNA4ZE/G6xv8PAXiFATMi0x7yx2B6IdUPeinnVHdHE221ujk0cX1DYaOF+khzLyUivuysi8g==
X-Received: by 2002:a05:600c:3145:b0:45d:f804:bcda with SMTP id 5b1f17b1804b1-46e1d9817dbmr22553515e9.13.1758626085008;
        Tue, 23 Sep 2025 04:14:45 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-464f5a285efsm270902105e9.18.2025.09.23.04.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 04:14:44 -0700 (PDT)
Date: Tue, 23 Sep 2025 14:14:41 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <aNKBIcpF6kZRG6Mg@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Rspamd-Queue-Id: 16C2F3F689
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.41:from];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZTWOR7RGCTTMVKULM5BLDEL4HSR32SKU
X-Message-ID-Hash: ZTWOR7RGCTTMVKULM5BLDEL4HSR32SKU
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona.vetter@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix reference count leak in dma_buf_poll_add_cb()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZTWOR7RGCTTMVKULM5BLDEL4HSR32SKU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Call dma_fence_put(fence) if dma_fence_add_callback() fails.

Fixes: 6b51b02a3a0a ("dma-buf: fix and rework dma_buf_poll v7")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
From code review, not from testing.  Please review carefully.

 drivers/dma-buf/dma-buf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 2bcf9ceca997..a14e1f50b090 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -301,9 +301,9 @@ static bool dma_buf_poll_add_cb(struct dma_resv *resv, bool write,
 				fence) {
 		dma_fence_get(fence);
 		r = dma_fence_add_callback(fence, &dcb->cb, dma_buf_poll_cb);
+		dma_fence_put(fence);
 		if (!r)
 			return true;
-		dma_fence_put(fence);
 	}
 
 	return false;
-- 
2.51.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
