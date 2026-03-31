Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DcbJlKby2lBJgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 12:00:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B673677D2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 12:00:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A945E402FF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 10:00:42 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id EE0883F903
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 10:00:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OoUjbDYI;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AEAE260123;
	Tue, 31 Mar 2026 10:00:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EBE4C2BCB3;
	Tue, 31 Mar 2026 10:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774951230;
	bh=FW0dQAbf77gP2JI3DUHh/5HKOkFfWCP2QQfOOyILTUY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=OoUjbDYIQaQ3VSdGFwz8NRODvH9y/n3Kkmc5lP4aaipNKjSHtzPw5pFG8oZBl2/gI
	 5mK06fcq0AcR6L/LGS4bToqUCyKZUejqaLW7JzoKZlbCefXVWzV45V9IpFIlfqucWl
	 6nsG2TRceTEHqy6fbfjhcfWv90GPOEt027/3adzAiymJ6u8qygO+SCe2Xpzv4OtN77
	 QRFrJ/2Ex/myw6Zu3odAvIdWHW4MEE/uPKHyHmWn1IFAStzHxyVvrvqN7PoNpIGwgY
	 OnEKmBZU/HrGi4Vpb1ux4jkASJ8SYex354JGDwvITT1XtE85z3C8XOXtu6fwXR8FEn
	 AAHytpNI+yrjQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Mar 2026 12:00:12 +0200
MIME-Version: 1.0
Message-Id: <20260331-dma-buf-heaps-as-modules-v4-3-e18fda504419@kernel.org>
References: <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
In-Reply-To: <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1745; i=mripard@kernel.org;
 h=from:subject:message-id; bh=FW0dQAbf77gP2JI3DUHh/5HKOkFfWCP2QQfOOyILTUY=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJmnZ+s/e/ZI4PqR9yY/Xv2e9P7GTx+Hqt23ZZsm/t3/8
 m7MtzMvkzqmsjAIczLIiimyPJEJO728fXGVg/3KHzBzWJlAhjBwcQrARK5xMtb7e4p+fx8c3r9n
 ecNvh6Ritgs5Ik+WW3MbPvTVv72DR1/owof492YHrXdNEOpep3SVlYOxTl/UReeju8LsBc7JSjd
 Vp3o+v/dEV6GB+ckzZz7BWqd/l3UkL1xIyn4UvvJHes76jRlKAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: EKWBVMCHYL2IOAYFZ322NAHZR5LIMIPW
X-Message-ID-Hash: EKWBVMCHYL2IOAYFZ322NAHZR5LIMIPW
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 3/8] dma: contiguous: Make dma_contiguous_default_area static
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EKWBVMCHYL2IOAYFZ322NAHZR5LIMIPW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	ASN_FAIL(0.00)[118.186.210.44.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-0.747];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: A2B673677D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that dev_get_cma_area() is no longer inline, we don't have any user
of dma_contiguous_default_area() outside of contiguous.c so we can make
it static.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 include/linux/dma-map-ops.h | 2 --
 kernel/dma/contiguous.c     | 2 +-
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/include/linux/dma-map-ops.h b/include/linux/dma-map-ops.h
index 8604106c0c01b6a9dadc45263f3b1d9ecfacd4aa..bef279ebeae7de59dd504e631f47c64d7e223736 100644
--- a/include/linux/dma-map-ops.h
+++ b/include/linux/dma-map-ops.h
@@ -89,12 +89,10 @@ static inline void set_dma_ops(struct device *dev,
 {
 }
 #endif /* CONFIG_ARCH_HAS_DMA_OPS */
 
 #ifdef CONFIG_DMA_CMA
-extern struct cma *dma_contiguous_default_area;
-
 struct cma *dev_get_cma_area(struct device *dev);
 struct cma *dma_contiguous_get_area_by_idx(unsigned int idx);
 
 void dma_contiguous_reserve(phys_addr_t addr_limit);
 int __init dma_contiguous_reserve_area(phys_addr_t size, phys_addr_t base,
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 40a0ead24979cfdf25e4779545536a5438e26356..fd8d3518a2323f0a631fb185ef92a24c35f8d25d 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -81,11 +81,11 @@ struct cma *dma_contiguous_get_area_by_idx(unsigned int idx)
 
 	return dma_contiguous_areas[idx];
 }
 EXPORT_SYMBOL_GPL(dma_contiguous_get_area_by_idx);
 
-struct cma *dma_contiguous_default_area;
+static struct cma *dma_contiguous_default_area;
 
 /*
  * Default global CMA area size can be defined in kernel's .config.
  * This is useful mainly for distro maintainers to create a kernel
  * that works correctly for most supported systems.

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
