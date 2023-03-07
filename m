Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1BB6BBA6D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:06:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 758CA3F0AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:06:03 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id 5C3183F09B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Mar 2023 14:27:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=g3xFbOLp;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: linasend@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id 7CD0C4261B;
	Tue,  7 Mar 2023 14:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678199275;
	bh=HxG6/03qUzMmm6Reqvh7X3TDLICxkEPU4hm2AoOUuLM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=g3xFbOLpqvFL/hWEeMzgFc3LbdSVcVVsMJh/7XdjhA21c4wx1kxrwdRtnbBmxPrrB
	 2CGtpUGuIbw1gEu5imAbrxziNlTiqNnrk9HQk6htxBgOV6yuRyAeYQAftV86CAMQyw
	 rFeLzqMi0pBOmRpRumEPybDrr5v4ua3EE16+Kga4TDShw9EzMtRDc5h6TWQR4AZqq7
	 3g7gcLKGYG8RlArpFBJ0vDqyTFx613T1iY05PGhXC9pjVYp6nnc64K8hGhUGFW22jy
	 LTR2hm4pngwLC6oJFdPUBUSRu+WicCyQcDZg4hcZo9sny6I9PNUD4JoUMn1kTrd0Pt
	 ZdyZOrGEziyIA==
From: Asahi Lina <lina@asahilina.net>
Date: Tue, 07 Mar 2023 23:25:35 +0900
MIME-Version: 1.0
Message-Id: <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678199191; l=1943;
 i=lina@asahilina.net; s=20230221; h=from:subject:message-id;
 bh=HxG6/03qUzMmm6Reqvh7X3TDLICxkEPU4hm2AoOUuLM=;
 b=gWfErbdeUWtPqx2eFx2Rt2xD+1XYyU5Cx/mGxM2DFb9ZT5eqFV3aK1C6shksKCRoFpXgeFx1G
 VYNphDGVo+oCMIwMR6FaFIFL6uXkU2jraVwiGVuBeBb8B9h5YjTCH5I
X-Developer-Key: i=lina@asahilina.net; a=ed25519;
 pk=Qn8jZuOtR1m5GaiDfTrAoQ4NE1XoYVZ/wmt5YtXWFC4=
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5C3183F09B
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
Message-ID-Hash: EAXAJ7Q5EGFHNIOMXQ3NZBDS2JIWA4FJ
X-Message-ID-Hash: EAXAJ7Q5EGFHNIOMXQ3NZBDS2JIWA4FJ
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:02:39 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EAXAJ7Q5EGFHNIOMXQ3NZBDS2JIWA4FJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Some hardware may require more complex resource utilization accounting
than the simple job count supported by drm_sched internally. Add a
can_run_job callback to allow drivers to implement more logic before
deciding whether to run a GPU job.

Signed-off-by: Asahi Lina <lina@asahilina.net>
---
 drivers/gpu/drm/scheduler/sched_main.c | 10 ++++++++++
 include/drm/gpu_scheduler.h            |  8 ++++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
index 4e6ad6e122bc..5c0add2c7546 100644
--- a/drivers/gpu/drm/scheduler/sched_main.c
+++ b/drivers/gpu/drm/scheduler/sched_main.c
@@ -1001,6 +1001,16 @@ static int drm_sched_main(void *param)
 		if (!entity)
 			continue;
 
+		if (sched->ops->can_run_job) {
+			sched_job = to_drm_sched_job(spsc_queue_peek(&entity->job_queue));
+			if (!sched_job) {
+				complete_all(&entity->entity_idle);
+				continue;
+			}
+			if (!sched->ops->can_run_job(sched_job))
+				continue;
+		}
+
 		sched_job = drm_sched_entity_pop_job(entity);
 
 		if (!sched_job) {
diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
index 9db9e5e504ee..bd89ea9507b9 100644
--- a/include/drm/gpu_scheduler.h
+++ b/include/drm/gpu_scheduler.h
@@ -396,6 +396,14 @@ struct drm_sched_backend_ops {
 	struct dma_fence *(*prepare_job)(struct drm_sched_job *sched_job,
 					 struct drm_sched_entity *s_entity);
 
+	/**
+	 * @can_run_job: Called before job execution to check whether the
+	 * hardware is free enough to run the job.  This can be used to
+	 * implement more complex hardware resource policies than the
+	 * hw_submission limit.
+	 */
+	bool (*can_run_job)(struct drm_sched_job *sched_job);
+
 	/**
          * @run_job: Called to execute the job once all of the dependencies
          * have been resolved.  This may be called multiple times, if

-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
