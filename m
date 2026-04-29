Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ABYDKldBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:16:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DB75320A4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:16:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B619D3F820
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:16:55 +0000 (UTC)
Received: from web04.chillydomains.com (web04.chillydomains.com [193.19.92.170])
	by lists.linaro.org (Postfix) with ESMTPS id BF632404B4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 19:53:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=web04.chillydomains.com header.s=dkim header.b="lrxD/WNw";
	dmarc=none;
	spf=none (lists.linaro.org: domain of mfritsche@reauktion.de has no SPF policy when checking 193.19.92.170) smtp.mailfrom=mfritsche@reauktion.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=web04.chillydomains.com; s=dkim; h=From:To:Cc:Subject:Date:
	Message-ID:X-Mailer:In-Reply-To:References:MIME-Version:
	Content-Transfer-Encoding; bh=+BMPRzE2ZaYndt8PUP9j3vTLvi6F1/BIe/
	+XCjPPh4w=; b=lrxD/WNwHIEekuNqi8vyqW3sAshhJYlyBWCJnbqSeTMYEytjp+
	UyGR2ATf8nRI1fDgeTXCln6LGbfU4BNAUXh/sUDzdti6LlZajf/4fLrePDzBpnfR
	Zo7FfaU9+6/4cWOP1EtpX0Nzmz3AyYUTl73wrxubhby8h1gzOUF1xTtmF0vyGvLV
	CjZU8gbZvp74M1UX9jJuJSqdVC+xjGUQYsICFy+ocDlBL0TMO0Ua+6ZF5cHRPUD/
	DjvymalihIlfMzkrStbDUkw4uHkM/LTqfTPDlJT+m0gGPrUxqjE7F2chM01iLOPb
	OTNNJgyb9YhYocCpHiL/e7PC4y/B+Zw4YCyA==
Received: (qmail 2739579 invoked by uid 7799); 29 Apr 2026 21:53:28 +0200
Received: by simscan 1.4.0 ppid: 2739543, pid: 2739553, t: 0.6181s
         scanners: clamav: 0.103.9/m:62/d:27778
Received: from 31.29.52.71.dynamic-pppoe.dt.ipv4.wtnet.de (HELO localhost) (automation@reauktion.de@31.29.52.71) by web04.chillydomains.com with SMTP [61968]; 29 Apr 2026 21:53:28 +0200
From: Markus Fritsche <mfritsche@reauktion.de>
To: Tomasz Figa <tfiga@chromium.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Heiko Stuebner <heiko@sntech.de>
Date: Wed, 29 Apr 2026 19:53:05 +0000
Message-ID: <20260429195306.239666-3-mfritsche@reauktion.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260429195306.239666-1-mfritsche@reauktion.de>
References: <20260429195306.239666-1-mfritsche@reauktion.de>
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: mfritsche@reauktion.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SZ7QREERBTIWXXP3GGMN2X5S5GZU4YRY
X-Message-ID-Hash: SZ7QREERBTIWXXP3GGMN2X5S5GZU4YRY
X-Mailman-Approved-At: Wed, 13 May 2026 11:15:57 +0000
CC: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 2/3] media: hantro: attach dma_resv release fence at buf_queue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SZ7QREERBTIWXXP3GGMN2X5S5GZU4YRY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: A1DB75320A4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[327];
	R_DKIM_REJECT(1.00)[web04.chillydomains.com:s=dkim];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[reauktion.de : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[web04.chillydomains.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[mfritsche@reauktion.de,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.631];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reauktion.de:email,reauktion.de:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

Opt the hantro driver into the new vb2 release-fence helper.

When userspace QBUFs a buffer to hantro, the buffer is added to the
driver's m2m queue via v4l2_m2m_buf_queue. We additionally call
vb2_buffer_attach_release_fence() so each plane's dmabuf->resv
gets a real producer fence attached. The fence is signalled by
vb2_buffer_done when hantro completes the decode (via
v4l2_m2m_buf_done_and_job_finish in hantro_drv.c, which converges
on vb2_buffer_done).

Wayland compositors (and any other userspace) that import hantro
CAPTURE buffers and wait on the dmabuf's implicit-sync fence now
wait on a real fence representing the producer's actual completion,
not a stub. Validated end-to-end on PineTab2 (RK3566 / Mali-G52 /
mainline 6.19 with this series backported) playing 1080p30 H.264 in
chromium under stock KDE Plasma 6.6.4 Wayland: KWin's
Transaction::watchDmaBuf wait completes correctly the moment
hantro's IRQ fires, instead of falling back to a stub-resolved
poll.

Signed-off-by: Markus Fritsche <mfritsche@reauktion.de>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 62d3962c1..e95a3433a 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -877,6 +877,18 @@ static void hantro_buf_queue(struct vb2_buffer *vb)
 	}
 
 	v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
+
+	/*
+	 * Opt in to vb2's dma_resv release-fence path. Userspace
+	 * consumers that imported this buffer's dmabuf and wait on
+	 * its implicit-sync fence (poll(POLLIN) or
+	 * DMA_BUF_IOCTL_EXPORT_SYNC_FILE) get a real producer fence
+	 * representing this device's completion, instead of the stub
+	 * fence dma_buf_export_sync_file substitutes when dma_resv
+	 * is empty. Best-effort: a fence-allocation failure means we
+	 * lose implicit-sync precision, no functional regression.
+	 */
+	(void)vb2_buffer_attach_release_fence(vb);
 }
 
 static bool hantro_vq_is_coded(struct vb2_queue *q)
-- 
2.47.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
