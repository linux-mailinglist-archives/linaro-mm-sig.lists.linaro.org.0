Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPmSDS8/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:45:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C464757CB43
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:45:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA5DB40961
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:45:01 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by lists.linaro.org (Postfix) with ESMTPS id 4A6383F781
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2026 13:59:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=bitbyteword.org header.s=google header.b="WiqG/aEu";
	spf=pass (lists.linaro.org: domain of vineeth@bitbyteword.org designates 209.85.222.182 as permitted sender) smtp.mailfrom=vineeth@bitbyteword.org;
	dmarc=none
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-910f734b477so188855885a.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 15 May 2026 06:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitbyteword.org; s=google; t=1778853573; x=1779458373; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=okrIOhQe2ZLHKZjZRr+SV2MUNrdUF09nc7mShRbgYsc=;
        b=WiqG/aEufqojQwSSttuBL7uzfmeRddh3/aeEVy7/BGy78ZmMcyea1k5VdQe7Mi1MW3
         srlG8SWrmm+PMIqMfrD9yXU+LjMlvfi3okj16uDL8k0UbZ78pklNMjJGu0KSoCNw5gTT
         TWkFGkE7XpLOM7Tk16LZt9jFRaWvRqm2rl5qBiqeRi2kJ7BKAeFdwWVEECWQso2v6JU1
         uAeXEZRE6EV74sDy1KwrOVue/7iFe+rCuscV4T6+/R+6pejcyMscP7tUVtYcamQRzNru
         xhCXIi7O0kdtjjJZMh9JVtYEaVmogUTkh2xtU6u3lV+W/Izj775iKFTF7+Aa9Nsg8e3j
         1sbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778853573; x=1779458373;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=okrIOhQe2ZLHKZjZRr+SV2MUNrdUF09nc7mShRbgYsc=;
        b=IryTgFCdNdBWIDKtZOCtEs/nGufIza3pUWgcDS+4pYTNCYfmep/y2jiUC5CMqtwixm
         SS7Ldhi65pi4tvFbkqYGJxh2lv/MVLEfdr/RcTV7qHu9DRDiQVanGeaGSwDw0+iZrRfa
         kf01Ex2jSZd56ojVRMV7PA0wvi60N8phuBGZCWIIZu0a+oWHB15n/7VsUPSy3HighqbM
         VulLU/I4wO4Kt1Um2QbDCRQqA0Q89Boa74up21IiknTr8ruX1ZaKHZJwdNk+xnRcAsR1
         RI8lvH41jIHRT81LqYxHxFEiFfZWVWICpWci7iLixMly7LhNOwY03Mi+sfLvXtoycpMQ
         1BHw==
X-Forwarded-Encrypted: i=1; AFNElJ8ubq/8mnqHYkQ3Mrfq+eRKqXAZzGhyEUEJbP/JUKKjP/qkJ7RY1nV+sPohnQ9LlfF2vb/iVzOSSkV4Y8Il@lists.linaro.org
X-Gm-Message-State: AOJu0YzzImKocTOFxxim8VCUjtUaGUTwXJNRsh/QQfYMHOKAI8LTiIwG
	BlHYQDhnHlXcezDlreiuRw4/PSjQyftdakoaXWl4n94CCtNSpEROPxI+iDveEOcicjQ=
X-Gm-Gg: Acq92OEE7zJTcrq+c3VyrT9QkMWTUuxxa0yHyEETkb1dEHKcriV2nUdyDAyFRmcGl+9
	i7R+nE/Miwd6UvP46O506CYQFJFVGE5vLILq4KzH95Dxe4JuIkttufhQcOc6hi9RICwdDuTrhRq
	Y+gv0e2zPsxbvlGOArfvihc2DOJGZuChD7zeFXy7vWcpr68jvYxm8LAREGj3+q+SnTXUJpSXV6n
	g4LwtLiXxvfapO8mxVZs1alCcREcPRyq/n3CptKraDswApeDKDujEJQ5K+/WNTkgyOVCf+HEsuq
	N7bDqhWObj80Nu5JNuQZ9o++9jLRGkLL8Zfmml3M1WQmeS27Wozf+yfkqrJh2e8NU5u2IbH7yEY
	SYg3MGnbOl5UZb87f/+U2cSGyA3GZvAw1zbSrFFQwUQ1yBTBo/ldNJiQxaznAhjqVJSTOLSY/M6
	oLCu8j3imNOjpGfvs//+yR16XRbDB1
X-Received: by 2002:a05:620a:44c4:b0:910:3078:5cf6 with SMTP id af79cd13be357-911d02ad04cmr617447785a.44.1778853572241;
        Fri, 15 May 2026 06:59:32 -0700 (PDT)
Received: from vinp2.lan ([2607:fb92:1900:6734:902:ab48:6190:9c1e])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-910bcf318e4sm535460585a.32.2026.05.15.06.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 06:59:31 -0700 (PDT)
From: "Vineeth Pillai (Google)" <vineeth@bitbyteword.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 15 May 2026 09:59:27 -0400
Message-ID: <20260515135927.2238823-1-vineeth@bitbyteword.org>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: vineeth@bitbyteword.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GSYRG3P57SC3FFGS33A7YDW454T5JQEJ
X-Message-ID-Hash: GSYRG3P57SC3FFGS33A7YDW454T5JQEJ
X-Mailman-Approved-At: Tue, 19 May 2026 10:44:45 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Steven Rostedt <rostedt@goodmis.org>, linux-trace-kernel@vger.kernel.org, Vineeth Pillai <vineeth@bitbyteword.org>, Peter Zijlstra <peterz@infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 05/11] dma-buf: Use trace_call__##name() at guarded tracepoint call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GSYRG3P57SC3FFGS33A7YDW454T5JQEJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.49 / 15.00];
	R_DKIM_REJECT(1.00)[bitbyteword.org:s=google];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[92];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[bitbyteword.org];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bitbyteword.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[vineeth@bitbyteword.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,linaro.org:email,bitbyteword.org:mid,bitbyteword.org:email]
X-Rspamd-Queue-Id: C464757CB43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Vineeth Pillai <vineeth@bitbyteword.org>

Replace trace_foo() with the new trace_call__foo() at sites already
guarded by trace_foo_enabled(), avoiding a redundant
static_branch_unlikely() re-evaluation inside the tracepoint.
trace_call__foo() calls the tracepoint callbacks directly without
utilizing the static branch again.

Original v2 series:
https://lore.kernel.org/linux-trace-kernel/20260323160052.17528-1-vineeth@bitbyteword.org/

Parts of the original v2 series have already been merged in mainline.
This patch is being reposted as a follow-up cleanup for the remaining
unmerged pieces.

Suggested-by: Steven Rostedt <rostedt@goodmis.org>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Vineeth Pillai (Google) <vineeth@bitbyteword.org>
Assisted-by: Claude:claude-sonnet-4-6
---
 drivers/dma-buf/dma-fence.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index a2aa82f4eedd..a41cdd9c9343 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -553,7 +553,7 @@ dma_fence_wait_timeout(struct dma_fence *fence, bool intr, signed long timeout)
 	}
 	if (trace_dma_fence_wait_end_enabled()) {
 		rcu_read_lock();
-		trace_dma_fence_wait_end(fence);
+		trace_call__dma_fence_wait_end(fence);
 		rcu_read_unlock();
 	}
 	return ret;
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
