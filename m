Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIchDFYF8WnhbwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2026 21:07:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DA32B48B00D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2026 21:07:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9A13406B0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2026 19:07:00 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 190F2404B4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2026 19:06:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="Po747hD/";
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lyude@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777403198;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9iRHxmN/dnU79hS18x4XdzAf0Ghs0AIzOreSmFvd9Ao=;
	b=Po747hD/FMkdYr6TDnuT3nvX0TalvrlQIjNf4kPK/gqjTEBnCtOMzcWP19y0hmr13UtnC4
	ZQGhjRHB+SBext3Q5mrBKvHle1i878Ijb/B9/R6oSBdkXZfpPmAsibzNIW3BCS2SC3sfhb
	bUe8jBHF+QW40/0Cnsa1YMGVVVsgun0=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-548-m-cxBrJOOYG3wQjYE6K5SA-1; Tue,
 28 Apr 2026 15:06:35 -0400
X-MC-Unique: m-cxBrJOOYG3wQjYE6K5SA-1
X-Mimecast-MFC-AGG-ID: m-cxBrJOOYG3wQjYE6K5SA_1777403192
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 77E2D18003F6;
	Tue, 28 Apr 2026 19:06:31 +0000 (UTC)
Received: from GoldenWind.lan (unknown [10.22.88.40])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id DAD4F180047F;
	Tue, 28 Apr 2026 19:06:27 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: nouveau@lists.freedesktop.org,
	Gary Guo <gary@garyguo.net>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	rust-for-linux@vger.kernel.org,
	Danilo Krummrich <dakr@kernel.org>,
	dri-devel@lists.freedesktop.org
Date: Tue, 28 Apr 2026 15:03:42 -0400
Message-ID: <20260428190605.3355690-3-lyude@redhat.com>
In-Reply-To: <20260428190605.3355690-1-lyude@redhat.com>
References: <20260428190605.3355690-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: SPD3X1FTIFuD2Cwg9j78LxDD1aLvw2aS1wxG229V748_1777403192
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: -----
Message-ID-Hash: S3PYXYND5KZHRUPHB2YDWFCK4GANSFXY
X-Message-ID-Hash: S3PYXYND5KZHRUPHB2YDWFCK4GANSFXY
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v13 2/5] drm/gem/shmem: Introduce __drm_gem_shmem_free_sgt_locked()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S3PYXYND5KZHRUPHB2YDWFCK4GANSFXY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; x-default="true"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: DA32B48B00D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[google.com,gmail.com,oracle.com,amd.com,asahilina.net,kernel.org,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org,linuxfoundation.org];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	NEURAL_HAM(-0.00)[-0.038];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:email]

One of the complications of trying to use the shmem helpers to create a
scatterlist for shmem objects is that we need to be able to provide a
guarantee that the driver cannot be unbound for the lifetime of the
scatterlist.

The easiest way of handling this seems to be just hooking up an unmap
operation to devres the first time we create a scatterlist, which allows us
to still take advantage of gem shmem facilities without breaking that
guarantee. To allow for this, we extract __drm_gem_shmem_free_sgt_locked()
- which allows a caller (e.g. the rust bindings) to manually unmap the sgt
for a gem object as needed.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>

---
V10:
* Fix incorrect function name in documentation for
  __drm_gem_shmem_release_sgt_locked()

 drivers/gpu/drm/drm_gem_shmem_helper.c | 32 +++++++++++++++++++++-----
 include/drm/drm_gem_shmem_helper.h     |  1 +
 2 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 545933c7f7121..c989459eb2159 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -158,6 +158,30 @@ struct drm_gem_shmem_object *drm_gem_shmem_create(struct drm_device *dev, size_t
 }
 EXPORT_SYMBOL_GPL(drm_gem_shmem_create);
 
+/**
+ * __drm_gem_shmem_release_sgt_locked - Unpin and DMA unmap pages, and release the
+ * cached scatter/gather table for an shmem GEM object.
+ * @shmem: shmem GEM object
+ *
+ * If the passed shmem object has an active scatter/gather table for driver
+ * usage, this function will unmap it and release the memory associated with it.
+ * It is the responsibility of the caller to ensure it holds the dma_resv_lock
+ * for this object.
+ *
+ * Drivers should not need to call this function themselves, it is mainly
+ * intended for usage in the Rust shmem bindings.
+ */
+void __drm_gem_shmem_free_sgt_locked(struct drm_gem_shmem_object *shmem)
+{
+	dma_resv_assert_held(shmem->base.resv);
+
+	dma_unmap_sgtable(shmem->base.dev->dev, shmem->sgt, DMA_BIDIRECTIONAL, 0);
+	sg_free_table(shmem->sgt);
+	kfree(shmem->sgt);
+	shmem->sgt = NULL;
+}
+EXPORT_SYMBOL_GPL(__drm_gem_shmem_free_sgt_locked);
+
 /**
  * drm_gem_shmem_release - Release resources associated with a shmem GEM object.
  * @shmem: shmem GEM object
@@ -176,12 +200,8 @@ void drm_gem_shmem_release(struct drm_gem_shmem_object *shmem)
 
 		drm_WARN_ON(obj->dev, refcount_read(&shmem->vmap_use_count));
 
-		if (shmem->sgt) {
-			dma_unmap_sgtable(obj->dev->dev, shmem->sgt,
-					  DMA_BIDIRECTIONAL, 0);
-			sg_free_table(shmem->sgt);
-			kfree(shmem->sgt);
-		}
+		if (shmem->sgt)
+			__drm_gem_shmem_free_sgt_locked(shmem);
 		if (shmem->pages)
 			drm_gem_shmem_put_pages_locked(shmem);
 
diff --git a/include/drm/drm_gem_shmem_helper.h b/include/drm/drm_gem_shmem_helper.h
index 5ccdae21b94a9..b2c23af628e1a 100644
--- a/include/drm/drm_gem_shmem_helper.h
+++ b/include/drm/drm_gem_shmem_helper.h
@@ -111,6 +111,7 @@ int drm_gem_shmem_init(struct drm_device *dev, struct drm_gem_shmem_object *shme
 struct drm_gem_shmem_object *drm_gem_shmem_create(struct drm_device *dev, size_t size);
 void drm_gem_shmem_release(struct drm_gem_shmem_object *shmem);
 void drm_gem_shmem_free(struct drm_gem_shmem_object *shmem);
+void __drm_gem_shmem_free_sgt_locked(struct drm_gem_shmem_object *shmem);
 
 void drm_gem_shmem_put_pages_locked(struct drm_gem_shmem_object *shmem);
 int drm_gem_shmem_pin(struct drm_gem_shmem_object *shmem);
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
