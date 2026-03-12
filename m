Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JSXF2tf5mndvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1444B430E17
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1ECB43F7D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:16:26 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by lists.linaro.org (Postfix) with ESMTPS id 78C5A3F80A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 15:05:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=bitbyteword.org header.s=google header.b=AHvuYllR;
	spf=pass (lists.linaro.org: domain of vineeth@bitbyteword.org designates 209.85.210.45 as permitted sender) smtp.mailfrom=vineeth@bitbyteword.org;
	dmarc=none
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7d73be007a1so876719a34.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 08:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitbyteword.org; s=google; t=1773327957; x=1773932757; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F6q/8hBK1ObEUJJeEuPBlXFpYM8cpAj3EFJgYDsQfdk=;
        b=AHvuYllRbunz/X+lIvPINr4U1DkngwfqzpYGvhx6x8Nd3SOV4F/tUDWJFOUDg8zIzn
         z/U7NWmf6hrL6bpr5ttocNwPYTnvfHA28de6WSZRYFrQhNxDBZiT9kB0AtmiZZYDfSdK
         pFDMM2sNuIxZt7JjixxUZfPOp6eER0Gy1Muhkdz7b0tNItDLrMDkxrRD03vM/WP4ZBHY
         VEXXy+5bk9rlbeaI4UpRZDy86T5pKsbT8UNLRAP3Sw107gI7Dh2BXgRKZjbp48GOsBZo
         7XhRlfkYs/+APv9XMv3gu5Ta6NM5DF45x1S2HcJJQPE/uKdjXN3heoUSHmjCk3cjtdQ9
         qicg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773327957; x=1773932757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=F6q/8hBK1ObEUJJeEuPBlXFpYM8cpAj3EFJgYDsQfdk=;
        b=fQBUz5dPL4joMMXZRkGjTB670aQHvQ2Y9R820fB0qvRQRLN5VEaH2xHN0o5ktf4Nd+
         M+/H7f/kPocV/yIYeisGkpvP2nCcAzvf8QBpaEuVKaS9IdOIY7jpjRGf23JIWDeazl8d
         L5UWuxvidTJvGvbpaU3/mvm8WinzEGniD/bdM3rudkbJ2LIWchJYJtL7toIbco8R7EY4
         zMa40xJjfB9zbiz7A+K/+H/6TBzEY9bIWlevCsyaQdtjillLqE27DJdi8jX7MVwriwtH
         AF92P8fXXYzIEmn/2Hy+pHKydEPgWr9RGyT2xgqWwe8bUMQeNHbpdQi+lUVAFx0jX1zn
         3RkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlAEgy0Sz11VtZfuNbA452eijkD9mnUz6pgScPA1l0EQQBQsoFKQsMR1OeGp4Ee461/+NMngDG7MBKhS1m@lists.linaro.org
X-Gm-Message-State: AOJu0YwjGAR+g2U9A2nZ4fgKxZAGUQI51BkM5Q8ZkjOi5GHelsGD+sK0
	refdov521PXhw0adoCVwjyCUkc3/T2HaU89xO3fRhSVJnk4sJCNHKA6tSHtwZSJhuFI=
X-Gm-Gg: ATEYQzxXwlZ9v8IqrY/0/kknDd+Ni8EC7FLvuv/WMdmSKj6wN8ukRgU5PRiw1juwMLy
	5ecaMCKgdeiyjQB5mVbjFCo2gMeq1pst3MpefNp1QvhzSzgWiVX/ZGBd4+J7DlBHJzS1f/RouN+
	CyewFlCQPltnQAFyZ7AryRS/GT+VdanmOMuSrrYJvlf8BM/SYgXmuERz0MgXRt99ZX/d8zLZeBF
	d4pYalpDbsTa8MlEoLg0mAWTQBUtSJwugGLK04WcAPuuso9G8VQbX++AxV3liWC9KbQjaL4qQ+h
	NttNhXJx9HK1BGfRNp7yxCGIZNtTeCd6MbJZ6EOQO2CRhgaoBsmjagTZiI/UCNGVP1Iz5H44PCd
	GjIAVc/VvBJ0VQNY+jcdKguJ5CRkoZnujn1gqU9Eb22DB3q0NbPi9FMRcw5vBLAViAVTjzJaLvo
	PJpbB5UvMwZeGhBoYQZCzHgHvqAOQfcWqvJkeCZJRZaLAcyhhkQBcAfrdVoBHYeYVOYwMH5Cu+b
	rM5
X-Received: by 2002:a05:6830:6a92:b0:7d7:4361:e33a with SMTP id 46e09a7af769-7d76a8da6b6mr4642874a34.30.1773327956799;
        Thu, 12 Mar 2026 08:05:56 -0700 (PDT)
Received: from vinmini.lan (c-73-143-21-186.hsd1.vt.comcast.net. [73.143.21.186])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d76aedae57sm4321776a34.28.2026.03.12.08.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:05:56 -0700 (PDT)
From: "Vineeth Pillai (Google)" <vineeth@bitbyteword.org>
To: 
Date: Thu, 12 Mar 2026 11:05:03 -0400
Message-ID: <20260312150523.2054552-9-vineeth@bitbyteword.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312150523.2054552-1-vineeth@bitbyteword.org>
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: vineeth@bitbyteword.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NAI6IXJT4S6V7RM73E5TEPWGXEMKYIZK
X-Message-ID-Hash: NAI6IXJT4S6V7RM73E5TEPWGXEMKYIZK
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:15:59 +0000
CC: "Vineeth Pillai (Google)" <vineeth@bitbyteword.org>, Steven Rostedt <rostedt@goodmis.org>, Peter Zijlstra <peterz@infradead.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/15] dma-buf: Use trace_invoke_##name() at guarded tracepoint call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NAI6IXJT4S6V7RM73E5TEPWGXEMKYIZK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.49 / 15.00];
	DATE_IN_PAST(1.00)[938];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.628];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vineeth@bitbyteword.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[bitbyteword.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,bitbyteword.org:mid,bitbyteword.org:email,linaro.org:email,goodmis.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1444B430E17
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace trace_foo() with the new trace_invoke_foo() at sites already
guarded by trace_foo_enabled(), avoiding a redundant
static_branch_unlikely() re-evaluation inside the tracepoint.
trace_invoke_foo() calls the tracepoint callbacks directly without
utilizing the static branch again.

Suggested-by: Steven Rostedt <rostedt@goodmis.org>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Vineeth Pillai (Google) <vineeth@bitbyteword.org>
Assisted-by: Claude:claude-sonnet-4-6
---
 drivers/dma-buf/dma-fence.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index 35afcfcac5910..8884ad1ff0dab 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -535,7 +535,7 @@ dma_fence_wait_timeout(struct dma_fence *fence, bool intr, signed long timeout)
 
 	if (trace_dma_fence_wait_start_enabled()) {
 		rcu_read_lock();
-		trace_dma_fence_wait_start(fence);
+		trace_invoke_dma_fence_wait_start(fence);
 		rcu_read_unlock();
 	}
 	if (fence->ops->wait)
@@ -544,7 +544,7 @@ dma_fence_wait_timeout(struct dma_fence *fence, bool intr, signed long timeout)
 		ret = dma_fence_default_wait(fence, intr, timeout);
 	if (trace_dma_fence_wait_end_enabled()) {
 		rcu_read_lock();
-		trace_dma_fence_wait_end(fence);
+		trace_invoke_dma_fence_wait_end(fence);
 		rcu_read_unlock();
 	}
 	return ret;
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
