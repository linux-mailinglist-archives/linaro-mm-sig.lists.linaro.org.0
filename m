Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEAWKHPzE2puHwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 09:00:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 021945C6D83
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 09:00:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C9673F821
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 May 2026 07:00:02 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id CADFF3F7FA
	for <linaro-mm-sig@lists.linaro.org>; Sat, 23 May 2026 18:14:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=qaJcoC4g;
	spf=pass (lists.linaro.org: domain of devnexen@gmail.com designates 209.85.221.45 as permitted sender) smtp.mailfrom=devnexen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-449de065cb3so8000525f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 23 May 2026 11:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779560090; x=1780164890; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PKrZA3SQ6hneCPeQUwipbEL8KL38eo+epb8OIzHcMbI=;
        b=qaJcoC4gHR06HsTLdN0G7UC7uUaGAKbsTf7IhlwYHRugmaIoNbRPw65XRT0hFhVAdo
         ttchRVCtsDR2Tj35528wtH8ce5hphHB66QR4GNkuGlwudkeMtUyNoNtc+MT7TBrngeq3
         5jrgAIshPbPIsgsP7Gl67lTtw1KPvCYYO+iygaPvf655Oc6BoFoGsv3PhZzYVt9JOp+2
         SCXJo90hz8Bb7spinlXmR1l2wfQ7C0Vsf0G7KMOO+hMBNSG4OYU0+V1uZetbipVndrPe
         fq2cK4IRWcFOYITH8ihMq+d4qLah3MBaRp1ReRoPBBWbXVZr/qLq4xtp7nG6z/SdZzE+
         wj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779560090; x=1780164890;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKrZA3SQ6hneCPeQUwipbEL8KL38eo+epb8OIzHcMbI=;
        b=jngj7ZN4utPzWr3wZA/Yb8MQuLNoKHlQvkbxZr0k6pSKrfuARi85iU7/jHQkYg11Kg
         MEX+zCl3xvINuw3j6ziCXiRH74St8/FpGeCJJKWNvG5opaD50sex8VDqZG8HuljM5gD5
         jx0CjD51MNlgTYOinn/3hcow8mQGw0kSYOWemRjfPc8Ctz1xNnvHSaB0i0UIJ53npjIL
         Wt5CraWHpY8LxUB2dcMpRZxPm10McseD1IlMPfKLxinVYL38qFiF3DvV+WQJtmkw0IQM
         LB2LHj4N3e4Bt6fYrwDt3ZymMAI4IeqfTltBmoELCAXOX/mrEMmZIuAuWzrRzyyRnvN2
         C/Uw==
X-Forwarded-Encrypted: i=1; AFNElJ85mfvYdyPImAchSmLvKGrttsG9JBk1b8j71bxJFJMShgnmsFn/RnNAXwBTzNoKx+Kwfj7yrwsiz3DWEov9@lists.linaro.org
X-Gm-Message-State: AOJu0YysaCIopZd0WH5M5DDbkjg6kQdLJc6B0EwBnemxeJHGuu10CoXo
	t0iQPcJZYiqbb0LGM6mqUl5LJcmuK6XH4NWC6tez6/b5COC4zJL2RuLD
X-Gm-Gg: Acq92OFx6DcUk5nuX4rwrtfo3H2Ol7eOJPuoKyuoix3aty1WpazD2/8Qka/6b3QXtHw
	S+bL3Fdfz6TIAOKNxQauXkv+1r4a6ovkMVr31xLQSJPBU9D/jDFlhMiqwIzrcnTMMrjJXO0i9Ux
	HdinA0JQ86fza5cxyGthOv7ZaNo0A2UndIO8ltOOAFMzI/MxKB4GcOg+kehq6eKjr2X5GqWjXIx
	Pdknf36aqrHZNERc/YBwGLHSfBKxrUUopJBROvrJSSkwEzldT9E8V4VljyRXJo9IGCV+aP7nxLt
	kr3cYnLvcXAIWgpEphs2veJif6G8ahUvVxIp0tA6kh82I82wrYh5HPUod6JUG52je56+hTF3Xmb
	oAp1d6QR7zGw7WXzwl+DHssksl3fhnBccK3ibyM39y0kbi6BwkfyIcdbgY5yTSFaC0wo702ofS9
	ncB87yfhzmCt0aJHpQdSCZ67BinMJt8RKjcXgOi/aLsMJ4zyu73VLGNIiN53QNQk/zYoQYSHvdE
	4AZsskS6XI=
X-Received: by 2002:a05:6000:41fa:b0:45a:c0e1:37b with SMTP id ffacd0b85a97d-45eb389fdedmr13444344f8f.32.1779560089580;
        Sat, 23 May 2026 11:14:49 -0700 (PDT)
Received: from dohko.chello.ie (188-141-5-72.dynamic.upc.ie. [188.141.5.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45eb6d4850dsm13042447f8f.17.2026.05.23.11.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 May 2026 11:14:49 -0700 (PDT)
From: David Carlier <devnexen@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Sat, 23 May 2026 19:14:46 +0100
Message-ID: <20260523181446.69525-1-devnexen@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: devnexen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SJFXUQXITRXICDVXXRSDKGT36AQC4HLX
X-Message-ID-Hash: SJFXUQXITRXICDVXXRSDKGT36AQC4HLX
X-Mailman-Approved-At: Mon, 25 May 2026 06:59:53 +0000
CC: gaoxiang17@xiaomi.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, syzbot+7f4987d0afb97dd090cb@syzkaller.appspotmail.com, David Carlier <devnexen@gmail.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix UAF in dma_buf_fd() tracepoint
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SJFXUQXITRXICDVXXRSDKGT36AQC4HLX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[36];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[xiaomi.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,syzkaller.appspotmail.com,gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.933];
	FROM_NEQ_ENVFROM(0.00)[devnexen@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,7f4987d0afb97dd090cb];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,syzkaller.appspot.com:url]
X-Rspamd-Queue-Id: 021945C6D83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Once FD_ADD() returns, the fd is live in the file descriptor table
and a thread sharing that table can close() it before DMA_BUF_TRACE()
runs. The close drops the last reference, __fput() frees the dma_buf,
and the tracepoint then dereferences dmabuf to take dmabuf->name_lock
-- slab-use-after-free.

Split FD_ADD() back into get_unused_fd_flags() + fd_install() and
emit the tracepoint between them. While the fdtable slot is reserved
with a NULL file pointer, a racing close() returns -EBADF without
entering __fput(), so the dma_buf stays alive across the trace. Same
approach as commit 2d76319c4cbb ("dma-buf: fix UAF in dma_buf_put()
tracepoint").

This undoes the FD_ADD() conversion done in commit 34dfce523c90
("dma: convert dma_buf_fd() to FD_ADD()"); FD_ADD() has no place to
hook the tracepoint safely.

Reported-by: syzbot+7f4987d0afb97dd090cb@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=7f4987d0afb97dd090cb
Fixes: 281a22631423 ("dma-buf: add some tracepoints to debug.")
Cc: stable@vger.kernel.org # 7.0.x
Signed-off-by: David Carlier <devnexen@gmail.com>
---
 drivers/dma-buf/dma-buf.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 71f37544a5c6..d504c636dc29 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -792,9 +792,13 @@ int dma_buf_fd(struct dma_buf *dmabuf, int flags)
 	if (!dmabuf || !dmabuf->file)
 		return -EINVAL;
 
-	fd = FD_ADD(flags, dmabuf->file);
+	fd = get_unused_fd_flags(flags);
+	if (fd < 0)
+		return fd;
+
 	DMA_BUF_TRACE(trace_dma_buf_fd, dmabuf, fd);
 
+	fd_install(fd, dmabuf->file);
 	return fd;
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_fd, "DMA_BUF");
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
