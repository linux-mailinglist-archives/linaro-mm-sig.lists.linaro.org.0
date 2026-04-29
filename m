Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MxPAbFdBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:17:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B16F85320B2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:17:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4C45402E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:17:03 +0000 (UTC)
Received: from web04.chillydomains.com (web04.chillydomains.com [193.19.92.170])
	by lists.linaro.org (Postfix) with ESMTPS id CE2033F80C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 19:53:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=web04.chillydomains.com header.s=dkim header.b=nGSlbyXY;
	dmarc=none;
	spf=none (lists.linaro.org: domain of mfritsche@reauktion.de has no SPF policy when checking 193.19.92.170) smtp.mailfrom=mfritsche@reauktion.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=web04.chillydomains.com; s=dkim; h=From:To:Cc:Subject:Date:
	Message-ID:X-Mailer:In-Reply-To:References:MIME-Version:
	Content-Transfer-Encoding; bh=OaxA1KOQqFLnJwD8i8nhUbyHPWKOXYrj9Z
	YYoAP/kX0=; b=nGSlbyXYUKfQkPQwkan4V4FLTl1ALcyBc3+tUwIgRQWWxv/h2n
	pesTI414bf4N64kRjBeEU7tiq8EUc8Lt3K2VyQKx7gi/uE4xPiUZHDrY7kp9b/F4
	oHJit6O9XlrqQYW4MFIBZkv9UdCHcSUMc/OMHRIvBSZtRhCECuv3o9eU3XyLpG9V
	TmJpMAYX7743WkMFHRFlvFATt01iFwwFinKlU6eewGwo3VYsymZlNMdFiI2mRIYh
	3iMb+uUxr9SNY/mp3eHMABzA11kKqFvixLvby1WpBK3B2ddPiE27Vcc8VDeuGFsT
	ba9CvK9bEPNHt4W5Utk1BeuDJEL0QbRF4MgA==
Received: (qmail 2740071 invoked by uid 7799); 29 Apr 2026 21:53:35 +0200
Received: by simscan 1.4.0 ppid: 2740007, pid: 2740026, t: 0.6149s
         scanners: clamav: 0.103.9/m:62/d:27778
Received: from 31.29.52.71.dynamic-pppoe.dt.ipv4.wtnet.de (HELO localhost) (automation@reauktion.de@31.29.52.71) by web04.chillydomains.com with SMTP [64183]; 29 Apr 2026 21:53:35 +0200
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
Date: Wed, 29 Apr 2026 19:53:06 +0000
Message-ID: <20260429195306.239666-4-mfritsche@reauktion.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260429195306.239666-1-mfritsche@reauktion.de>
References: <20260429195306.239666-1-mfritsche@reauktion.de>
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: mfritsche@reauktion.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L2W532BKSC5XCKJDBTYAINNAZPDAH4Q3
X-Message-ID-Hash: L2W532BKSC5XCKJDBTYAINNAZPDAH4Q3
X-Mailman-Approved-At: Wed, 13 May 2026 11:15:57 +0000
CC: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 3/3] media: rockchip-rga: attach dma_resv release fence at buf_queue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L2W532BKSC5XCKJDBTYAINNAZPDAH4Q3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B16F85320B2
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
	NEURAL_SPAM(0.00)[0.643];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reauktion.de:email,reauktion.de:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

Opt the Rockchip RGA driver into the new vb2 release-fence helper.

Same shape as the hantro patch: rga_buf_queue enqueues the buffer
in the driver's m2m queue via v4l2_m2m_buf_queue and additionally
attaches a release fence to each plane's dmabuf->resv via
vb2_buffer_attach_release_fence(). vb2_buffer_done signals the
fence when RGA completes the M2M operation.

Userspace consumers of RGA-produced dmabufs (image-processing
pipelines, screen-rotation servers, gstreamer flows on Rockchip
boards) get spec-clean implicit-sync semantics, matching what
hantro now does in the same patch series.

Signed-off-by: Markus Fritsche <mfritsche@reauktion.de>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 70808049d..5557ca632 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -153,6 +153,16 @@ static void rga_buf_queue(struct vb2_buffer *vb)
 	struct rga_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 
 	v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
+
+	/*
+	 * Opt in to vb2's dma_resv release-fence path so userspace
+	 * consumers of RGA-produced dmabufs get a real producer fence
+	 * to wait on instead of the dma_buf core's stub fence. See
+	 * the leading patch in this series for rationale. Best-effort:
+	 * fence-allocation failure means we lose implicit-sync
+	 * precision but the m2m operation itself proceeds normally.
+	 */
+	(void)vb2_buffer_attach_release_fence(vb);
 }
 
 static void rga_buf_cleanup(struct vb2_buffer *vb)
-- 
2.47.3

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
