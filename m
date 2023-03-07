Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8667E6BBA68
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:04:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 950E93F0AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:04:09 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id AE43E3F09B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Mar 2023 14:27:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b="sdJUn/+T";
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: linasend@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id C587C424CD;
	Tue,  7 Mar 2023 14:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678199237;
	bh=BAqN8OMTaXAhucXUriExOzQpMpPUhvwTh5OsDzrSkpo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=sdJUn/+TKQ7o8T8HGDCq3r2jd7AAtYK04d56jZmlkVNBzcSniG/yHCP6fDIbG9ehZ
	 kSFIfPufTMbHtE461pYVmVq6FGQDfJAAWzZ+90gdyChquINRMvLM7Mg7xqF3pK2ikK
	 qiAnhXlPguV04IZom9jBVBQYf/B2wNZqnpf4IeV4QUImr7ycS2rQu7K+yITkcDLmhI
	 VqIH6ZmHfnCKkRScdcKV56rpQVzl1pvVoqyVKpWimedHzo3r7Xioq4dddbVh9q9+4x
	 X/8VYqv9CrMVzNN3zky2OB830unrsw9d1jxOn5VWOFJIiSIKvp0HQl9KEC13yFGfV1
	 vfcseqiRi4TEw==
From: Asahi Lina <lina@asahilina.net>
Date: Tue, 07 Mar 2023 23:25:30 +0900
MIME-Version: 1.0
Message-Id: <20230307-rust-drm-v1-5-917ff5bc80a8@asahilina.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678199191; l=2745;
 i=lina@asahilina.net; s=20230221; h=from:subject:message-id;
 bh=BAqN8OMTaXAhucXUriExOzQpMpPUhvwTh5OsDzrSkpo=;
 b=g9pqskVqJS3ljWoohfpCNH4NDQdA/LBauCNqtM+x0fz44GOfEY/N8GW4sqZzjgPhnydgE4j/x
 Si9bKq4ETQwDZpvyu6TbEWKU1rzJi6sGVUQQEwWgtVhiU5HoHMICe3I
X-Developer-Key: i=lina@asahilina.net; a=ed25519;
 pk=Qn8jZuOtR1m5GaiDfTrAoQ4NE1XoYVZ/wmt5YtXWFC4=
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AE43E3F09B
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
Message-ID-Hash: V3T2VPIMOZL5ZLSYZT2VBZ3SHLVI4VAZ
X-Message-ID-Hash: V3T2VPIMOZL5ZLSYZT2VBZ3SHLVI4VAZ
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:02:20 +0000
CC: Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 05/18] drm/gem-shmem: Export VM ops functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V3T2VPIMOZL5ZLSYZT2VBZ3SHLVI4VAZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

There doesn't seem to be a way for the Rust bindings to get a
compile-time constant reference to drm_gem_shmem_vm_ops, so we need to
duplicate that structure in Rust... this isn't nice...

Signed-off-by: Asahi Lina <lina@asahilina.net>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 9 ++++++---
 include/drm/drm_gem_shmem_helper.h     | 3 +++
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 75185a960fc4..10c09819410e 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -534,7 +534,7 @@ int drm_gem_shmem_dumb_create(struct drm_file *file, struct drm_device *dev,
 }
 EXPORT_SYMBOL_GPL(drm_gem_shmem_dumb_create);
 
-static vm_fault_t drm_gem_shmem_fault(struct vm_fault *vmf)
+vm_fault_t drm_gem_shmem_fault(struct vm_fault *vmf)
 {
 	struct vm_area_struct *vma = vmf->vma;
 	struct drm_gem_object *obj = vma->vm_private_data;
@@ -563,8 +563,9 @@ static vm_fault_t drm_gem_shmem_fault(struct vm_fault *vmf)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(drm_gem_shmem_fault);
 
-static void drm_gem_shmem_vm_open(struct vm_area_struct *vma)
+void drm_gem_shmem_vm_open(struct vm_area_struct *vma)
 {
 	struct drm_gem_object *obj = vma->vm_private_data;
 	struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);
@@ -585,8 +586,9 @@ static void drm_gem_shmem_vm_open(struct vm_area_struct *vma)
 
 	drm_gem_vm_open(vma);
 }
+EXPORT_SYMBOL_GPL(drm_gem_shmem_vm_open);
 
-static void drm_gem_shmem_vm_close(struct vm_area_struct *vma)
+void drm_gem_shmem_vm_close(struct vm_area_struct *vma)
 {
 	struct drm_gem_object *obj = vma->vm_private_data;
 	struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);
@@ -594,6 +596,7 @@ static void drm_gem_shmem_vm_close(struct vm_area_struct *vma)
 	drm_gem_shmem_put_pages(shmem);
 	drm_gem_vm_close(vma);
 }
+EXPORT_SYMBOL_GPL(drm_gem_shmem_vm_close);
 
 const struct vm_operations_struct drm_gem_shmem_vm_ops = {
 	.fault = drm_gem_shmem_fault,
diff --git a/include/drm/drm_gem_shmem_helper.h b/include/drm/drm_gem_shmem_helper.h
index a2201b2488c5..b9f349b3ed76 100644
--- a/include/drm/drm_gem_shmem_helper.h
+++ b/include/drm/drm_gem_shmem_helper.h
@@ -138,6 +138,9 @@ void drm_gem_shmem_print_info(const struct drm_gem_shmem_object *shmem,
 			      struct drm_printer *p, unsigned int indent);
 
 extern const struct vm_operations_struct drm_gem_shmem_vm_ops;
+vm_fault_t drm_gem_shmem_fault(struct vm_fault *vmf);
+void drm_gem_shmem_vm_open(struct vm_area_struct *vma);
+void drm_gem_shmem_vm_close(struct vm_area_struct *vma);
 
 /*
  * GEM object functions

-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
