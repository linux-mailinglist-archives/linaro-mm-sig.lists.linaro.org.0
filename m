Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WB76NFBm5mmJvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:45:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4A64320A6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:45:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FC314095C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:45:51 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by lists.linaro.org (Postfix) with ESMTPS id B22BA3F907
	for <linaro-mm-sig@lists.linaro.org>; Sun, 19 Apr 2026 16:12:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="Pd/yto5P";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of michael.bommarito@gmail.com designates 209.85.222.178 as permitted sender) smtp.mailfrom=michael.bommarito@gmail.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8cbc593a67aso209066785a.2
        for <linaro-mm-sig@lists.linaro.org>; Sun, 19 Apr 2026 09:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776615155; x=1777219955; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B17bAyfAm7uzzttww80XtUu6/K1MgSIE6Bs+vc9UHtw=;
        b=Pd/yto5P28cy88ovEndZfdsjs3dlvujaG3hqXl+ijbJIObDUO4XdbSS1Yb4Z4JHbdD
         RRDBcdQyqu3izELY6ukoznuUZo0ztSDgzJSRyBHY9sRtlJyQy+SfvmqpiJOid+7LedFk
         wHHb2JdB5o0eb21gYp/LXWzRjLCAYlpcczyxa/Doc/7qnWr/UUw4HDTMwmV+wrSnLA2s
         s+fdhGqGUw/fw5CU3ArzeVP5NTyMPp1bh8z1Q0gA2qWc0JQWD1sFUZPOv0f/QMH/r6in
         m1NIqqVXRpvEhVSmtPvHyjzJrsVjW64YnBopubDiNHuS4sAFwjvvV6OUb0R7vvjA7+vI
         ilug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776615155; x=1777219955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B17bAyfAm7uzzttww80XtUu6/K1MgSIE6Bs+vc9UHtw=;
        b=LIIa+7u3Fhme5W53YxPdk3eDdD3B8lsO8dd0/6GFZ9iWJzP2TqzipZ5y+4IOptLLgQ
         Eo1XhlyCtv8K1uewdU86loii69RKd+Minc5XT0mMRr/BFcyto5Iz+qtddO1nScDcNLH+
         7QEe4+oejPgrLXQ9eM9iD1K7B4nR8Jpmru0dW4csHxubBz2AZi1sUw5Q/MPagXTjAVvk
         tcE6dYbjawfAdbf1PH6uf8lHVPqtWTKZAGbX0Ke3tg/ix2ElwAMbjzMI2NzZynStWSKT
         axb3knW9Vkk12/MWvE79uZd4RFXphPqjHutJHXKhTu3+XoMNaWZLx1TeVR1x6jMN60tR
         zobA==
X-Forwarded-Encrypted: i=1; AFNElJ+N3NPBIchsZwQB2dIc7WriZA5MTaNWYq/zA5ljtMKRbogY2TN13DdYEfwNrVb2mGzXjO0WbA6eE8ni9LqM@lists.linaro.org
X-Gm-Message-State: AOJu0YzXPLNZK6BHprNWZo8EocIgUFTyFzt6W7oaKTcrz4Yhf2oYXe+W
	0xa5tO/2iDu1AL4w755SMMSUK9d2mXuSc1jEJDFg26QUf5h6NDJMnETK
X-Gm-Gg: AeBDievUQBgMKg1GxRM+QQjAsOTP7Q+U6ECxe/RcXQ1Pmhpjxp6knpnw1xdR+QgUzUn
	u5sLBi6K/RZZ7vjEOJ4oUJXa0YuNLuo3L+IiX04aiSkEXxKRWpclDsA1XXu5LfH6J21Sy6mRdmU
	VW2e/mmXmWQavBFpVtjQU4PcPxpBSdR/wzfPI0cd8+Oh7rJ5l311qJDSp1hPJ4frVL/+U4oCd7F
	0sKGgUSBl+Wk8VNnL5vxEKe/QXpt2fOL975cYfvXt8AUo3LAdfrP2O8KgORVpFM2LQ54Fu1nP0F
	kS7iwUtyEjbVGRSueV36hXO9b+Qvd8ManivxaZF9gfvJmF3AKVr8UmZLdDaISteL+H3WwFndPRY
	c1aojWcsfs5pM8RqC4OeZE9TJxw58Ucw8wcH2BCnbTry33MNMsnhMsaYTJ0dEJ4l2Mo3bU3hl/M
	VE3SUZ7Wy5WpMQ5EIvHT3YaKgr5SCjka/Irnbc9CwqrCH+5lykq98316Y/Dtrou0n+bn43FaO9E
	QL0AlLLHxB9mBToBlQ4fxnxZpMv/no=
X-Received: by 2002:a05:620a:2844:b0:8b2:1ee9:dcfb with SMTP id af79cd13be357-8e78f82cf5emr1427279685a.8.1776615155112;
        Sun, 19 Apr 2026 09:12:35 -0700 (PDT)
Received: from server0 (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8e7d8edb795sm598271385a.25.2026.04.19.09.12.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2026 09:12:34 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Sun, 19 Apr 2026 12:12:27 -0400
Message-ID: <20260419161227.1587668-1-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: michael.bommarito@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3P53FXP5HZ7RCHXG2EJXBBWWK3YTUSTZ
X-Message-ID-Hash: 3P53FXP5HZ7RCHXG2EJXBBWWK3YTUSTZ
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:44:55 +0000
CC: Al Viro <viro@zeniv.linux.org.uk>, Sam Day <me@samcday.com>, Christian Brauner <brauner@kernel.org>, Ingo Rohloff <ingo.rohloff@lauterbach.com>, Paul Cercueil <paul@crapouillou.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Simona Vetter <simona.vetter@ffwll.ch>, Kees Cook <kees@kernel.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] usb: gadget: f_fs: serialize DMABUF cancel against request completion
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3P53FXP5HZ7RCHXG2EJXBBWWK3YTUSTZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[25];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	FROM_NEQ_ENVFROM(0.00)[michaelbommarito@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 9B4A64320A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ffs_epfile_dmabuf_io_complete() calls usb_ep_free_request() on the
completed request but leaves priv->req, the back-pointer that
ffs_dmabuf_transfer() set on submission, pointing at the freed
memory.  A later FUNCTIONFS_DMABUF_DETACH ioctl or
ffs_epfile_release() on the close path still sees priv->req
non-NULL under ffs->eps_lock:

    if (priv->ep && priv->req)
            usb_ep_dequeue(priv->ep, priv->req);

so usb_ep_dequeue() is called on a freed usb_request.

On dummy_hcd the dequeue path only walks a live queue and
pointer-compares, so the freed pointer reads without faulting and
KASAN requires an explicit check at the FunctionFS call site to
surface the use-after-free.  On SG-capable in-tree UDCs the
dequeue path dereferences the supplied request immediately:

  * chipidea's ep_dequeue() does
    container_of(req, struct ci_hw_req, req) and reads
    hwreq->req.status before acquiring its own lock.
  * cdnsp's cdnsp_gadget_ep_dequeue() reads request->status first.

The narrower option of clearing priv->req via cmpxchg() in the
completion does not close the race: the completion runs without
eps_lock, so a cancel path holding eps_lock can still observe
priv->req non-NULL, race a concurrent completion that clears and
frees, and pass the freed pointer to usb_ep_dequeue().  A slightly
longer fix that moves the free into the cleanup work is needed.

Same class of lifetime race as the recent usbip-vudc timer fix [1].

Take eps_lock in the sole place that mutates priv->req from the
callback direction by moving usb_ep_free_request() out of the
completion into ffs_dmabuf_cleanup(), the existing work handler
scheduled by ffs_dmabuf_signal_done() on
ffs->io_completion_wq.  Clear priv->req there under eps_lock
before freeing, and only clear if priv->req still names our
request (a subsequent ffs_dmabuf_transfer() on the same
attachment may have queued a new one).

This keeps the existing dummy_hcd sync-dequeue invariant: the
completion callback is still invoked by the UDC without
eps_lock held (dummy_hcd drops its own lock before calling the
callback), and the callback now takes no f_fs lock at all.
Serialization against the cancel path happens in cleanup, which
runs from the workqueue with no f_fs lock held on entry.

The priv ref count protects the containing ffs_dmabuf_priv:
ffs_dmabuf_transfer() takes a ref via ffs_dmabuf_get(), cleanup
drops it via ffs_dmabuf_put(), so priv stays live for the
cleanup even after the cancel path's list_del + ffs_dmabuf_put.

The ffs_dmabuf_transfer() error path no longer frees usb_req
inline: fence->req and fence->ep are set before usb_ep_queue(),
so ffs_dmabuf_cleanup() (scheduled by the error-path
ffs_dmabuf_signal_done()) owns the free regardless of whether
the queue succeeded.

Reproduced under KASAN on both detach and close paths against
dummy_hcd with an observability hook
(kasan_check_byte(priv->req) immediately before usb_ep_dequeue)
at the two FunctionFS cancel sites to surface the stale-pointer
access; the hook is not part of this patch.  The KASAN
allocator / free stacks in the captured splats identify the
same request: alloc in dummy_alloc_request, free in
dummy_timer, fault reached from ffs_epfile_release (close) and
from the FUNCTIONFS_DMABUF_DETACH ioctl (detach).  With the
patch applied, both paths are silent under the same hook.

The bug is reached from the FunctionFS device node, which in
real deployments is owned by the privileged gadget daemon
(adbd, UMS, composite gadget services, etc.); it is not
reachable from unprivileged userspace or from a USB host on the
cable.  FunctionFS mounts default to GLOBAL_ROOT_UID, but the
filesystem supports uid=, gid=, and fmode= delegation to a
non-root gadget daemon, so on real deployments the attacker may
be a less-privileged service rather than root.

Fixes: 7b07a2a7ca02 ("usb: gadget: functionfs: Add DMABUF import interface")
Link: https://lore.kernel.org/all/20260417163552.807548-1-michael.bommarito@gmail.com/ [1]
Cc: stable@vger.kernel.org
Assisted-by: Claude:claude-opus-4-7
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 drivers/usb/gadget/function/f_fs.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
index 815639506520..75912ce6ab55 100644
--- a/drivers/usb/gadget/function/f_fs.c
+++ b/drivers/usb/gadget/function/f_fs.c
@@ -150,6 +150,8 @@ struct ffs_dma_fence {
 	struct dma_fence base;
 	struct ffs_dmabuf_priv *priv;
 	struct work_struct work;
+	struct usb_ep *ep;
+	struct usb_request *req;
 };
 
 struct ffs_epfile {
@@ -1385,6 +1387,21 @@ static void ffs_dmabuf_cleanup(struct work_struct *work)
 	struct ffs_dmabuf_priv *priv = dma_fence->priv;
 	struct dma_buf_attachment *attach = priv->attach;
 	struct dma_fence *fence = &dma_fence->base;
+	struct usb_request *req = dma_fence->req;
+	struct usb_ep *ep = dma_fence->ep;
+
+	/*
+	 * eps_lock pairs with the cancel paths so they cannot pass a freed
+	 * req to usb_ep_dequeue().  Only clear if priv->req still names ours;
+	 * a re-queue on the same attachment may have taken that slot.
+	 */
+	spin_lock_irq(&priv->ffs->eps_lock);
+	if (priv->req == req)
+		priv->req = NULL;
+	spin_unlock_irq(&priv->ffs->eps_lock);
+
+	if (ep && req)
+		usb_ep_free_request(ep, req);
 
 	ffs_dmabuf_put(attach);
 	dma_fence_put(fence);
@@ -1414,8 +1431,8 @@ static void ffs_epfile_dmabuf_io_complete(struct usb_ep *ep,
 					  struct usb_request *req)
 {
 	pr_vdebug("FFS: DMABUF transfer complete, status=%d\n", req->status);
+	/* req is freed by ffs_dmabuf_cleanup() under eps_lock. */
 	ffs_dmabuf_signal_done(req->context, req->status);
-	usb_ep_free_request(ep, req);
 }
 
 static const char *ffs_dmabuf_get_driver_name(struct dma_fence *fence)
@@ -1699,6 +1716,10 @@ static int ffs_dmabuf_transfer(struct file *file,
 	usb_req->context  = fence;
 	usb_req->complete = ffs_epfile_dmabuf_io_complete;
 
+	/* ffs_dmabuf_cleanup() frees usb_req via these two fields. */
+	fence->req = usb_req;
+	fence->ep = ep->ep;
+
 	cookie = dma_fence_begin_signalling();
 	ret = usb_ep_queue(ep->ep, usb_req, GFP_ATOMIC);
 	dma_fence_end_signalling(cookie);
@@ -1708,7 +1729,6 @@ static int ffs_dmabuf_transfer(struct file *file,
 	} else {
 		pr_warn("FFS: Failed to queue DMABUF: %d\n", ret);
 		ffs_dmabuf_signal_done(fence, ret);
-		usb_ep_free_request(ep->ep, usb_req);
 	}
 
 	spin_unlock_irq(&epfile->ffs->eps_lock);
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
