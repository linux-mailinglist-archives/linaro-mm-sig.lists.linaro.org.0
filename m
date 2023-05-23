Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7296B70F30C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:37:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7145A41407
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:37:28 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by lists.linaro.org (Postfix) with ESMTPS id 6C8CA3E92C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 02:19:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=HSD7l7aK;
	spf=pass (lists.linaro.org: domain of azeemshaikh38@gmail.com designates 209.85.166.49 as permitted sender) smtp.mailfrom=azeemshaikh38@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-772ac011955so296035539f.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 19:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684808387; x=1687400387;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kzTqOaIPWfW9eLUYmANhI0oqNLmXhJYkC7KiwdLC9Pk=;
        b=HSD7l7aKqkH7bpomTMkzPvcKzQpp2eYwyn0IteDdsQLQjpEWrRaSrLc67veKl7F0/T
         cn2iJlW2p3p+ttdzw9ZAV7HQ8xxxsTjGKeDqk9ze5VrKHVaDEi+t3OW7XqBuV/glXXnC
         D2eds/9o/cQ3eOaOppD0DjNpMbm7bViiVNn4xVcB+ZMtP9Pzx2mqEv3rSuUKAgMxU6nL
         gqqvNmyRkrNekvbh16k/UGWh5sknRUXgxI9DzPtYOgcYIE58tIKFTJbuDRwL5PBaJyQ5
         8aQnfvzVb1Tev33snfKB5whGHevkySQHAoZR2clKZs9dZU5d0XWHlZc0r5BlpjMUYgkj
         FfsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684808387; x=1687400387;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kzTqOaIPWfW9eLUYmANhI0oqNLmXhJYkC7KiwdLC9Pk=;
        b=VBijPjD2Xu6+DnN8R8u4B3UARquzd+yDwMO3hzz7cjE9RCwv88EJaqQtpSbMguqeuV
         zhRAUTmdRD1w56Hc74JyYwqjCtrPSzW0XbQ4bhYgYH+oBdU17pCBiLtdn1kiqNnwZjLb
         HAXVrn9CX9mXMCG59XePhZsSnGgxIf2xpvYU+cwdCxrN4BJZj13a2fV+wAJJ7fp6k+4K
         q5Dz4nI/JOmn6qFVusQIIS4QDIetu2/wjIU/XG7DFnJC9ZqmAgQfIFEr+EtXIZCkIl10
         h91PsUavHyGSUV5LO7zQVsGousiX+p/t0Ev8zjPRdPIW50PboD5kgjI/nH1gXou/sr29
         qVyw==
X-Gm-Message-State: AC+VfDxcJhLjqYU5/kbWwyE9mmA10YBcfXg104Qw+52IUPeZl2MRVTwt
	wlwAh4Ji64P4YG+AgQvgyDyi4/23mF6RNw==
X-Google-Smtp-Source: ACHHUZ4+DJLABRuPBSRDE1JxdVeIA6RNnSI8JrvW9bu3YuMmFMvYwh3HXeHrlA5FYY/ygXGrB/itLA==
X-Received: by 2002:a92:d8cf:0:b0:338:1a22:bf47 with SMTP id l15-20020a92d8cf000000b003381a22bf47mr7507410ilo.21.1684808386720;
        Mon, 22 May 2023 19:19:46 -0700 (PDT)
Received: from azeems-kspp.c.googlers.com.com (54.70.188.35.bc.googleusercontent.com. [35.188.70.54])
        by smtp.gmail.com with ESMTPSA id x1-20020a920601000000b0033549a5fb36sm2131699ilg.27.2023.05.22.19.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 19:19:46 -0700 (PDT)
From: Azeem Shaikh <azeemshaikh38@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 23 May 2023 02:19:43 +0000
Message-ID: <20230523021943.2406847-1-azeemshaikh38@gmail.com>
X-Mailer: git-send-email 2.40.1.698.g37aff9b760-goog
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	BLOCKLISTDE_FAIL(0.00)[35.188.70.54:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.49:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,padovan.org,lists.freedesktop.org,amd.com,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6C8CA3E92C
X-Spamd-Bar: --
X-MailFrom: azeemshaikh38@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NCAVPVDK3VOO3P5LFKKNUDTMIBYLSKY4
X-Message-ID-Hash: NCAVPVDK3VOO3P5LFKKNUDTMIBYLSKY4
X-Mailman-Approved-At: Wed, 24 May 2023 09:35:38 +0000
CC: linux-hardening@vger.kernel.org, Azeem Shaikh <azeemshaikh38@gmail.com>, Gustavo Padovan <gustavo@padovan.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/sw_sync: Replace all non-returning strlcpy with strscpy
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NCAVPVDK3VOO3P5LFKKNUDTMIBYLSKY4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

strlcpy() reads the entire source buffer first.
This read may exceed the destination size limit.
This is both inefficient and can lead to linear read
overflows if a source string is not NUL-terminated [1].
In an effort to remove strlcpy() completely [2], replace
strlcpy() here with strscpy().
No return values were used, so direct replacement is safe.

[1] https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
[2] https://github.com/KSPP/linux/issues/89

Signed-off-by: Azeem Shaikh <azeemshaikh38@gmail.com>
---
 drivers/dma-buf/sw_sync.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
index 348b3a9170fa..63f0aeb66db6 100644
--- a/drivers/dma-buf/sw_sync.c
+++ b/drivers/dma-buf/sw_sync.c
@@ -85,7 +85,7 @@ static struct sync_timeline *sync_timeline_create(const char *name)
 
 	kref_init(&obj->kref);
 	obj->context = dma_fence_context_alloc(1);
-	strlcpy(obj->name, name, sizeof(obj->name));
+	strscpy(obj->name, name, sizeof(obj->name));
 
 	obj->pt_tree = RB_ROOT;
 	INIT_LIST_HEAD(&obj->pt_list);

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
