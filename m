Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCcBBrRh5mm6vgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:26:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BD54643131A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:26:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC35F402D3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:26:10 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by lists.linaro.org (Postfix) with ESMTPS id 1EE003F6DA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Mar 2026 16:01:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=bitbyteword.org header.s=google header.b=HckUiLQm;
	spf=pass (lists.linaro.org: domain of vineeth@bitbyteword.org designates 209.85.161.49 as permitted sender) smtp.mailfrom=vineeth@bitbyteword.org;
	dmarc=none
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-67c2db63127so174903eaf.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Mar 2026 09:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitbyteword.org; s=google; t=1774281678; x=1774886478; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rmhohN6RlSLZwmw7GnhmaqXlOUkxWsMUSbvXDFRlGSI=;
        b=HckUiLQmcVn0+wQTDbq9LZWAhGMPbV5YJ+0jKqdJqk5P13FHuRd700K3nt0Uu7BDri
         Ahc788E/C+ow3PJSdw7Vso1ujaEmDWgB6jcRkZMtbjGDVCpxFfVZ+Ka5fT5dvEBAQ2GF
         3EcYTW0IKK2+NebSVcovTNYpmnkCwLqq32HThpkzxCwELth/8hyY+lhlYJA9XGB2W8pM
         Sk53KxbqKS5ia4Ggy/3w5vKW2BepiTQ5h2XMz9i6CnPGdZZAR71R9EH2bYKIMpdiHG0H
         TegY2MXcibciIb7rAcotz15qSuJufoJW9z7Kw/xViOTrI0qX0h33ngcXgffVwyiZTloR
         3hLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774281678; x=1774886478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rmhohN6RlSLZwmw7GnhmaqXlOUkxWsMUSbvXDFRlGSI=;
        b=lAof/j+Ka/hRDb5uTo4urzHSmPuKmJdo4Cq58FxG2l53OVCZn5jH19pHxgUQRyQmZ1
         8HqTwSppDDIEzOS9wCammNNFxQxmpOdgR5eiYcnORwPEvkhUYGIan8p/hdumcHIL3DOb
         2xaO86IqNsp6Iy0U8Xk4i01t12ZXBqp2BTeL1ongwwNhaBMwwv0E5vFFwWFASjrb0Vxb
         wnhzl+CyHJTZ4CI4Q/LBq00EbicL/yy4mWvCRqR8+/W3O9K/wk997W/EhimUZTBAq7+A
         kFtbojTH/cdGA9lZ0aK3JihBZPeEGFympLXxWfFMRQHcKBhpu1zgg7XBSY5MHYtk3NLR
         lk6A==
X-Forwarded-Encrypted: i=1; AJvYcCW6s1G5vHFQH+rEB4l+dQFx95UNNvXCH2oijoxB8A+YrFmaJBR1S4LpzzPWQX86/jfNPw7anLZieMhuj8Yg@lists.linaro.org
X-Gm-Message-State: AOJu0YwLIzScQGXJuhzhzBMw2NJy8IzXQ3qaCOB8NWHPzjo/X3o4+SNX
	hPS4eNd9QG18eI9241QoqEawy+aQBsZHiDd6f0iDL3J44q91s+ENm4rmuMzh72WyIFg=
X-Gm-Gg: ATEYQzxw119LjhBVvoGHsrNkKgHEy0I6vgnuUp0gsdf6AwQMC9SX6GYOgN5Do142DUh
	fhO3BZm9M8ycx89NCy5iNCagNFcVwfE2K0cwi4/0jPTNUa3n8CG2bchvwIX8GEXq7m32iSVM57m
	J1TjQ82IIrqksmpnzmQnfH+xHp+jFwQ6Q5EQORjwHO/PBVuWITnlVSh84bLfBj8RwMd6RjbULmL
	rCi86cUnc8qqiU2u89vCKCkvxCECLv+fJJLCIjsBhhRNwzT5klAaZpVr01FND1UUZi4cJRIbhQS
	itkFlslpghgEPpy/zIWD+V8b5y7CYM3fUBpEE4SM8heHJxnhFLsp0L1uwpQT+EWJ5x42Q+uaFu7
	b2GzmLHeRhMPvB89zWZzBaO01KLHUL2d/orXat2dvAo7DWXuYIEMoDU2tJZrsP+5hQUfrkCpAtu
	/wmMWH/NYLXcwPj4MUwPz82oC0qsvKNJ5vXdF4YAlhMbLJXsyK6J+Q7qDB7UgxJ8QrxlHZ722sG
	Vuv
X-Received: by 2002:a05:6820:179b:b0:67d:6597:4d1f with SMTP id 006d021491bc7-67d65974f79mr5464593eaf.58.1774281678262;
        Mon, 23 Mar 2026 09:01:18 -0700 (PDT)
Received: from vinmini.lan (c-73-143-21-186.hsd1.vt.comcast.net. [73.143.21.186])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cfc9088df1sm843364185a.25.2026.03.23.09.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 09:01:17 -0700 (PDT)
From: "Vineeth Pillai (Google)" <vineeth@bitbyteword.org>
To: 
Date: Mon, 23 Mar 2026 12:00:27 -0400
Message-ID: <20260323160052.17528-9-vineeth@bitbyteword.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260323160052.17528-1-vineeth@bitbyteword.org>
References: <20260323160052.17528-1-vineeth@bitbyteword.org>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: vineeth@bitbyteword.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LPTBZVBJOU7OVQIKQE6HZVHLMPL7RC6T
X-Message-ID-Hash: LPTBZVBJOU7OVQIKQE6HZVHLMPL7RC6T
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:26 +0000
CC: "Vineeth Pillai (Google)" <vineeth@bitbyteword.org>, Steven Rostedt <rostedt@goodmis.org>, Peter Zijlstra <peterz@infradead.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 08/19] dma-buf: Use trace_call__##name() at guarded tracepoint call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LPTBZVBJOU7OVQIKQE6HZVHLMPL7RC6T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.49 / 15.00];
	DATE_IN_PAST(1.00)[673];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,goodmis.org:email,linaro.org:email,bitbyteword.org:mid,bitbyteword.org:email]
X-Rspamd-Queue-Id: BD54643131A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace trace_foo() with the new trace_call__foo() at sites already
guarded by trace_foo_enabled(), avoiding a redundant
static_branch_unlikely() re-evaluation inside the tracepoint.
trace_call__foo() calls the tracepoint callbacks directly without
utilizing the static branch again.

Suggested-by: Steven Rostedt <rostedt@goodmis.org>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Vineeth Pillai (Google) <vineeth@bitbyteword.org>
Assisted-by: Claude:claude-sonnet-4-6
---
 drivers/dma-buf/dma-fence.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index 35afcfcac5910..232e92196da43 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -535,7 +535,7 @@ dma_fence_wait_timeout(struct dma_fence *fence, bool intr, signed long timeout)
 
 	if (trace_dma_fence_wait_start_enabled()) {
 		rcu_read_lock();
-		trace_dma_fence_wait_start(fence);
+		trace_call__dma_fence_wait_start(fence);
 		rcu_read_unlock();
 	}
 	if (fence->ops->wait)
@@ -544,7 +544,7 @@ dma_fence_wait_timeout(struct dma_fence *fence, bool intr, signed long timeout)
 		ret = dma_fence_default_wait(fence, intr, timeout);
 	if (trace_dma_fence_wait_end_enabled()) {
 		rcu_read_lock();
-		trace_dma_fence_wait_end(fence);
+		trace_call__dma_fence_wait_end(fence);
 		rcu_read_unlock();
 	}
 	return ret;
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
