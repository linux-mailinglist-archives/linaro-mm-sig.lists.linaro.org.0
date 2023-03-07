Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B356BBA6E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:06:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A39083F329
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:06:26 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id C8AAC3F0A9
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Mar 2023 14:28:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=YJhY78Gg;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: linasend@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id E6EB8426E8;
	Tue,  7 Mar 2023 14:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678199282;
	bh=mMV3DK/LniFSMGRFdp6WL8dzfr5kUnLaVi0jQqujgO4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=YJhY78Ggk6+W6QBEOqupDX8aw5fWn6A/G56oEd7cyWJWvL0r748JHim/QFX3ga48h
	 YlBahQ3QVQCtfglCOCwzF6GQnjnzKV0/4hYvwC31Y0uSRr4V+b3CUQ18zAkJuPAhzS
	 ag95heC6renT1r1t7WaaCKqFa+8tqdzSsHCfhzZdGi7T9Kwk/2BnkgTAnLfc6MW1Au
	 QQuJCcei56DnsCxfewGchiUhK7mQhwLnKfv3ijhcbx+NBUlpUiX39s0hxPnFjbzUg0
	 pFeU78xSX4yDPScrSCDZRGPIo+U0IsltRbUa79WeKf7JcpsOlh5dgZBcvyy0t2tEmP
	 6/bMok2XoIg2Q==
From: Asahi Lina <lina@asahilina.net>
Date: Tue, 07 Mar 2023 23:25:36 +0900
MIME-Version: 1.0
Message-Id: <20230307-rust-drm-v1-11-917ff5bc80a8@asahilina.net>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
In-Reply-To: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678199191; l=2245;
 i=lina@asahilina.net; s=20230221; h=from:subject:message-id;
 bh=mMV3DK/LniFSMGRFdp6WL8dzfr5kUnLaVi0jQqujgO4=;
 b=my5v1HGy930nc+3OP/Xw50JgUtnm2HGl3Rz4cVd2S5YoFUr5PVzWJZx9x3QmCcStWOHa4pvE4
 +sIUSbGMdJ7CD+mn/ehaerq/gWofZP8Suo1RhZdOI9n3Y8dnSIkG167
X-Developer-Key: i=lina@asahilina.net; a=ed25519;
 pk=Qn8jZuOtR1m5GaiDfTrAoQ4NE1XoYVZ/wmt5YtXWFC4=
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C8AAC3F0A9
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[29];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	DKIM_TRACE(0.00)[asahilina.net:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QTR55HNBAFIMW5PPNV5BFA32JEEDWSEF
X-Message-ID-Hash: QTR55HNBAFIMW5PPNV5BFA32JEEDWSEF
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:02:39 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 11/18] drm/scheduler: Clean up jobs when the scheduler is torn down
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QTR55HNBAFIMW5PPNV5BFA32JEEDWSEF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

drm_sched_fini() currently leaves any pending jobs dangling, which
causes segfaults and other badness when job completion fences are
signaled after the scheduler is torn down.

Explicitly detach all jobs from their completion callbacks and free
them. This makes it possible to write a sensible safe abstraction for
drm_sched, without having to externally duplicate the tracking of
in-flight jobs.

This shouldn't regress any existing drivers, since calling
drm_sched_fini() with any pending jobs is broken and this change should
be a no-op if there are no pending jobs.

Signed-off-by: Asahi Lina <lina@asahilina.net>
---
 drivers/gpu/drm/scheduler/sched_main.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index 5c0add2c7546..0aab1e0aebdd 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -1119,10 +1119,33 @@ EXPORT_SYMBOL(drm_sched_init);
 void drm_sched_fini(struct drm_gpu_scheduler *sched)
 {
 	struct drm_sched_entity *s_entity;
+	struct drm_sched_job *s_job, *tmp;
 	int i;
 
-	if (sched->thread)
-		kthread_stop(sched->thread);
+	if (!sched->thread)
+		return;
+
+	/*
+	 * Stop the scheduler, detaching all jobs from their hardware callbacks
+	 * and cleaning up complete jobs.
+	 */
+	drm_sched_stop(sched, NULL);
+
+	/*
+	 * Iterate through the pending job list and free all jobs.
+	 * This assumes the driver has either guaranteed jobs are already stopped, or that
+	 * otherwise it is responsible for keeping any necessary data structures for
+	 * in-progress jobs alive even when the free_job() callback is called early (e.g. by
+	 * putting them in its own queue or doing its own refcounting).
+	 */
+	list_for_each_entry_safe(s_job, tmp, &sched->pending_list, list) {
+		spin_lock(&sched->job_list_lock);
+		list_del_init(&s_job->list);
+		spin_unlock(&sched->job_list_lock);
+		sched->ops->free_job(s_job);
+	}
+
+	kthread_stop(sched->thread);
 
 	for (i = DRM_SCHED_PRIORITY_COUNT - 1; i >= DRM_SCHED_PRIORITY_MIN; i--) {
 		struct drm_sched_rq *rq = &sched->sched_rq[i];

-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
