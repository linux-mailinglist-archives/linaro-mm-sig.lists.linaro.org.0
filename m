Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DzGHQ/dGWpWzggAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 20:38:07 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9EA6075B3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 20:38:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5929940983
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 May 2026 18:38:06 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 336E140988
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 May 2026 18:37:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=BCIvgsDe;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=lyude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1780079857;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FW4muBq04eUEQ5DPUv/MIH2aGLX2hNQSawY7hFA7cfc=;
	b=BCIvgsDe7e7xU3fhsqx9uBywLF5HncnBzZe3zwIbeeorNE9/Y6e6BDLPNAUWtWCOaRHhbj
	9usDpNip+xr5AtN6s3edWgZNY3mwlO0kKuAtntSgwm/jGV/qKI+a2QwrIzEdrMuLqV6KnD
	PWu4bBdOw0THQ6oHyqe+g9A9NZaLvQE=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-297-kMqJ3efKP_6-3Cyqrp-ceg-1; Fri,
 29 May 2026 14:37:34 -0400
X-MC-Unique: kMqJ3efKP_6-3Cyqrp-ceg-1
X-Mimecast-MFC-AGG-ID: kMqJ3efKP_6-3Cyqrp-ceg_1780079851
Received: from mx-prod-int-10.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-10.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.95])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 25A85195608B;
	Fri, 29 May 2026 18:37:31 +0000 (UTC)
Received: from GoldenWind.redhat.com (unknown [10.22.89.101])
	by mx-prod-int-10.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 0DCF21776;
	Fri, 29 May 2026 18:37:27 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org,
	nouveau@lists.freedesktop.org
Date: Fri, 29 May 2026 14:34:04 -0400
Message-ID: <20260529183702.677677-7-lyude@redhat.com>
In-Reply-To: <20260529183702.677677-1-lyude@redhat.com>
References: <20260529183702.677677-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.6 on 10.30.177.95
X-Mimecast-MFC-PROC-ID: wSXRz6_Lpfrj6HkzLXX26rmzp_DT_0yKjKu4eHtDdXs_1780079851
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ---
Message-ID-Hash: JPGQ2OHLDSUFOZGYBXKMLFSPIOJUKRKP
X-Message-ID-Hash: JPGQ2OHLDSUFOZGYBXKMLFSPIOJUKRKP
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Lyude Paul <lyude@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v15 6/6] rust: drm: gem: Introduce shmem::Object::sg_table()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JPGQ2OHLDSUFOZGYBXKMLFSPIOJUKRKP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; x-default="true"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,vger.kernel.org,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,redhat.com,linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	NEURAL_HAM(-0.00)[-0.962];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: 4C9EA6075B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In order to do this, we need to be careful to ensure that any interface we
expose for scatterlists ensures that any mappings created from one are
destroyed on driver-unbind. To do this, we introduce a Devres resource into
shmem::Object that we use in order to ensure that we release any SGTable
mappings on driver-unbind.

There's some other slightly unfortunate caveats of this:

* Drivers don't have explicit control at the moment over when unmapping
  happens (which is exactly the same as the C side atm, so it might not be
  a problem).
* We can't just return `SGTableMap` to the user through an Arc to attempt
  to fix the last caveat - because that implies the gem object would need
  to hold a reference count to the scatterlist mapping, which just leaves
  us with the same problem.

Signed-off-by: Lyude Paul <lyude@redhat.com>

---
V3:
* Rename OwnedSGTable to shmem::SGTable. Since the current version of the
  SGTable abstractions now has a `Owned` and `Borrowed` variant, I think
  renaming this to shmem::SGTable makes things less confusing.
  We do however, keep the name of owned_sg_table() as-is.
V4:
* Clarify safety comments for SGTable to explain why the object is
  thread-safe.
* Rename from SGTableRef to SGTable
V10:
* Use Devres in order to ensure that SGTables are revocable, and are
  unmapped on driver-unbind.
V11:
* s/create_sg_table()/get_sg_table()
* Get rid of extraneous `ret = ` in shmem::Object::get_sg_table()
V12:
* Actually move sgt_res in this patch and not the next one
V13:
* Use DmaResvGuard suggestion from Alexander
* Use Alexander's (much better) solution for get_sg_table()
* Use SetOnce instead of UnsafeCell
* s/SGTableRef/SGTableMap
* Fix typo in SGTableMap documentation
* Create fallible constructor for SGTableMap
* Don't reuse dma_resv lock for protecting Object contents, just use Mutex
  + SetOnce
* Drop use of drm_gem_shmem_get_pages_sgt_locked(), since we don't need to
  hold the dma_resv lock ourselves for anything but this function.
* Check that the device we receive in the bounds for sg_table() and
  owned_sg_table() that said Device is in fact, the correct device.
* Remove redundant docs in owned_sg_table(), just point it back to
  sg_table().
* Implement Deborah's suggestion to fix double-free in
  free_callback()
* Restore original order of Object<T>
* Fix doc typo for SGTableMap
V14:
* Use new InitOnce container over the Mutex/SetOnce horror show we had
  before.
* Start using LazyInit container for storing Devres for sgt unmap
* Add some kunit tests for sg_table (not sure why I didn't do this before)
  using some of the boilerplate code leftover from the vmap bindings
* Get rid of the owned SGTable variant for now, we'll add it back in a
  future patch if people actually need it.
* Use new LazyInit container from me to get rid of the horrid
  Mutex<SetOnce<>> mess.
* Add the best we can do for unit tests w/r/t SGTable at the moment

 rust/kernel/drm/gem/shmem.rs | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/rust/kernel/drm/gem/shmem.rs b/rust/kernel/drm/gem/shmem.rs
index 494e0d0d8d0d6..5655c2a1ae8fb 100644
--- a/rust/kernel/drm/gem/shmem.rs
+++ b/rust/kernel/drm/gem/shmem.rs
@@ -664,4 +664,28 @@ fn vmap_io() -> Result {
 
         Ok(())
     }
+
+    // TODO: I would love to actually test the success paths of sg_table(), but that would require
+    // also implementing dummy dma_ops so that trying to create a mapping doesn't explode. So, leave
+    // that for someone else.
+
+    // Ensures that passing the wrong device to sg_table() fails as we expect, and also ensure it
+    // skips initializing `sgt_res` since we could otherwise create `sgt_res` with the wrong device
+    // bound to it.
+    #[test]
+    fn fail_sg_table_on_wrong_dev() -> Result {
+        let (_dev, drm) = create_drm_dev()?;
+        let wrong_dev = faux::Registration::new(c"EvilKunit", None)?;
+
+        let obj = Object::<KunitObject>::new(&drm, PAGE_SIZE, ObjectConfig::default(), ())?;
+
+        assert_eq!(obj.sg_table(wrong_dev.as_ref()).err().unwrap(), EINVAL);
+
+        // If sgt_res was not initialized mistakenly with the wrong device, this should still fail.
+        assert_eq!(obj.sg_table(wrong_dev.as_ref()).err().unwrap(), EINVAL);
+
+        // TODO: Someday, we should test that creating an sg_table here still succeeds.
+
+        Ok(())
+    }
 }
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
