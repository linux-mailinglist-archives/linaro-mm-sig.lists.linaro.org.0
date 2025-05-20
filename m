Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (unknown [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFE1ABD41E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 May 2025 12:02:56 +0200 (CEST)
Received: from server-108-138-64-24.iad12.r.cloudfront.net (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 521F845F8E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 May 2025 10:02:55 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B46C7459C5
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 May 2025 10:00:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JO+mWJwv;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E9FCF4A517;
	Tue, 20 May 2025 10:00:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 760E2C4CEE9;
	Tue, 20 May 2025 10:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747735258;
	bh=VtvyvJBr+xABbz7Z/Y+DSfzvO6xe8ZmQbFMl50W4Adg=;
	h=From:Date:Subject:To:Cc:From;
	b=JO+mWJwvZgebav7s6IIkQQVajz5Ge2lf2xdMS8+oBzHJAuNCNko1ml50feRmIYcFI
	 QwgZBahA6ywZWArWlTWEm6nZB/7CIVFtF4s6HXfpDo+pVW6O1snVx/y2siukRT5dMr
	 SPSVqb6bMl8w29K6mx9l1p/4EZGm7w/Jv755v0YLniNRfYegH4sdqsDxX2WE1MAANh
	 o9GCJeXo4uWFQdt+HzU4W2MfMEs7n24gEf2z3J0fIj++BsLnWRRDaP0FHSVt5ilcTS
	 BRGizJ3OF34h/Qi77xMYbHtYjpm9/VGIFLAvqS59B4NUUKqi5HOrr8RIPG8HieI4lB
	 bSPh57dhwneWg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 20 May 2025 12:00:53 +0200
MIME-Version: 1.0
Message-Id: <20250520-dma-buf-heap-names-doc-v1-1-ab31f74809ee@kernel.org>
X-B4-Tracking: v=1; b=H4sIANRSLGgC/x3MQQqAIBBA0avIrBtQoxZdJVpMOtYsMlGKILx70
 vIt/n+hcBYuMKkXMt9S5IwNplPgdoobo/hmsNoOerAa/UG4XgF3poSRDi7oT4e9saMh0i7wCC1
 OmYM8/3heav0A9+Bmw2gAAAA=
X-Change-ID: 20250520-dma-buf-heap-names-doc-31261aa0cfe6
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1869; i=mripard@kernel.org;
 h=from:subject:message-id; bh=VtvyvJBr+xABbz7Z/Y+DSfzvO6xe8ZmQbFMl50W4Adg=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDBk6QdfNUwoC2mY7pIvHTVs8LUzhR8fqpk8ldpqXXYO+O
 L6P7ovrmMrCIMzJICumyPJEJuz08vbFVQ72K3/AzGFlAhnCwMUpABPRncbYMNGk4Iwsd2V1e+ps
 3XsTpqmfUFMKzhEQbT7z/vnN71oLWd43tjx9LOK9OMr45ZwALfM9jA2npgk1H3Pw2nPqeQ5TlOY
 Egfsssh+6FB8yV/ZemSf31+Q6o/MSDc63D7dYN0/+7+ixShwA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: B46C7459C5
X-Spamd-Bar: ---
Message-ID-Hash: V42XGQHDREP7ZD7LWWHKVPVQLCXJMNPO
X-Message-ID-Hash: V42XGQHDREP7ZD7LWWHKVPVQLCXJMNPO
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] Documentation: dma-buf: heaps: Add naming guidelines
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V42XGQHDREP7ZD7LWWHKVPVQLCXJMNPO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

We've discussed a number of times of how some heap names are bad, but
not really what makes a good heap name.

Let's document what we expect the heap names to look like.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 Documentation/userspace-api/dma-buf-heaps.rst | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentation/userspace-api/dma-buf-heaps.rst
index 535f49047ce6450796bf4380c989e109355efc05..b24618e360a9a9ba0bd85135d8c1760776f1a37f 100644
--- a/Documentation/userspace-api/dma-buf-heaps.rst
+++ b/Documentation/userspace-api/dma-buf-heaps.rst
@@ -21,5 +21,24 @@ following heaps:
    usually created either through the kernel commandline through the
    `cma` parameter, a memory region Device-Tree node with the
    `linux,cma-default` property set, or through the `CMA_SIZE_MBYTES` or
    `CMA_SIZE_PERCENTAGE` Kconfig options. Depending on the platform, it
    might be called ``reserved``, ``linux,cma``, or ``default-pool``.
+
+Naming Convention
+=================
+
+A good heap name is a name that:
+
+- Is stable, and won't change from one version to the other;
+
+- Describes the memory region the heap will allocate from, and will
+  uniquely identify it in a given platform;
+
+- Doesn't use implementation details, such as the allocator;
+
+- Can describe intended usage.
+
+For example, assuming a platform with a reserved memory region located
+at the RAM address 0x42000000, intended to allocate video framebuffers,
+and backed by the CMA kernel allocator. Good names would be
+`memory@42000000` or `video@42000000`, but `cma-video` wouldn't.

---
base-commit: 92a09c47464d040866cf2b4cd052bc60555185fb
change-id: 20250520-dma-buf-heap-names-doc-31261aa0cfe6

Best regards,
-- 
Maxime Ripard <mripard@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
