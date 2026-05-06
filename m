Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNjpCBBgBGqiHQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:27:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1DB532393
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:27:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B0763F820
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:27:10 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id EDA6A3F75F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 10:46:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b="LqF/UBuS";
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of nicolas.frattaroli@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=nicolas.frattaroli@collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
ARC-Seal: i=1; a=rsa-sha256; t=1778064375; cv=none;
	d=zohomail.com; s=zohoarc;
	b=dD+MAHs7bn+0hkCGxAH2Y14qOgcWvY61twD7s6yo6x9dTjPI36bSumE9WInf7BLanZa5cV3iDcTwI0V2CYS8TPeQ5DPD9+i7ikH5LqfVgDWMigtuZ/KASMXc/cCiM+8o0RTqmHWu//A96sukafLW5HT9UQvPCs37VabZe17CH0Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1778064375; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=RvG681xq2rNXteugTNEM7Um/68qeSlyFUSIc0ImpD0o=;
	b=eLvhIOnbvatlm909dRF7SgeKmb4GVtOH4neuNjiY38W61SSCYN8IiGFV0k2GU0rOfaBbrF2kPdutXqVUxH8UGh0vdrIRmREqeSi5C4vT+wrHHk/bKpFVgD8/1SQDQbzHom9sr7k/sW7VDmFfeKV2qrXzaFriqSnVlPHncqaBpOU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778064375;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=RvG681xq2rNXteugTNEM7Um/68qeSlyFUSIc0ImpD0o=;
	b=LqF/UBuSIuFQj0g3V9cB/8wAouiRG9F2IhpfRD0BNmzdvc//GE4ixLEkX4q+hdQU
	9AyDOYVy3BtuB6TKO9ufIcLmMgqt2S3T4Qv5XAoHjYcYRUfW/yRcWiheUTuu+4I4sCV
	lUyDjBtjb3xfnkYglxmKGp9GX0GVEIgtFRfKsAOs=
Received: by mx.zohomail.com with SMTPS id 1778064373709928.0603511785826;
	Wed, 6 May 2026 03:46:13 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Wed, 06 May 2026 12:45:55 +0200
Message-Id: <20260506-panthor-explicit-reclaim-v1-0-44f82ac147ce@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y2NwQqDMBBEf0X23KVpSkX8leIhJmvdYjTdRBHEf
 29aPQ0PZt5sEEmYItTFBkILR57GDLdLAbY344uQXWbQSpfqoUoMZkz9JEhrGNhyQiE7GPZ4d11
 HTunKVRbyPAh1vP7Vz+bgOLdvsunnOxtCnzl/pqMGrYmEdvKeU1048Zg4XM+EZt+/ZGdBLq8AA
 AA=
X-Change-ID: 20260506-panthor-explicit-reclaim-3dffed028d8c
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.15.2
X-Spamd-Bar: ----
X-MailFrom: nicolas.frattaroli@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4V6SYKQ2VTMW3X5T4C2JCN7B7F6BSIDZ
X-Message-ID-Hash: 4V6SYKQ2VTMW3X5T4C2JCN7B7F6BSIDZ
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:43 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/4] Let userspace explicitly trigger memory reclaims
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4V6SYKQ2VTMW3X5T4C2JCN7B7F6BSIDZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: AC1DB532393
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[168];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.834];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

RAM is not, in fact, cheap. Especially on embedded systems with a low
amount of memory, but known and well-defined userspace, more explicit
resource management can lead to better utilisation patterns. As an
example, a resource manager process on a purpose-built device may wish
to launch, and then explicitly swap out, memory of processes that are
kept "warm", to improve perceived startup latency of individual
full-screen applications without making the kernel figure out the usage
pattern from observation alone in order to swap out the right pages.

To allow for this explicit control in the context of panthor's GPU
memory, add two new sysfs knobs. The first, mem_reclaim, runs an
explicit priv BO reclaim cycle on the TGID written to it.

The second, mem_claim, does the opposite: it swaps BOs back into active
memory.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
Nicolas Frattaroli (4):
      drm/panthor: Add freed_sz parameter to reclaim_priv_bos
      MAINTAINERS: Add sysfs ABI docs to list of panthor files
      drm/panthor: Add explicit memory reclaim sysfs knob
      drm/panthor: Add explicit memory claim sysfs knob

 Documentation/ABI/testing/sysfs-driver-panthor-mem | 34 ++++++++
 MAINTAINERS                                        |  1 +
 drivers/gpu/drm/panthor/panthor_drv.c              | 93 ++++++++++++++++++++++
 drivers/gpu/drm/panthor/panthor_gem.c              |  7 +-
 drivers/gpu/drm/panthor/panthor_gem.h              |  1 +
 drivers/gpu/drm/panthor/panthor_mmu.c              | 70 +++++++++++++++-
 drivers/gpu/drm/panthor/panthor_mmu.h              |  4 +
 7 files changed, 205 insertions(+), 5 deletions(-)
---
base-commit: 2c4b906cd135bbb44855287d0d0eff0ee0b47afe
change-id: 20260506-panthor-explicit-reclaim-3dffed028d8c

Best regards,
--  
Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
