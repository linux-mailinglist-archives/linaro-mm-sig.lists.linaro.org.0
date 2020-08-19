Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9362824A53E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Aug 2020 19:52:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 989C966572
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Aug 2020 17:52:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8B9AD6601F; Wed, 19 Aug 2020 17:52:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1668B65F8C;
	Wed, 19 Aug 2020 17:51:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9380860E39
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Aug 2020 17:51:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 84D49619D7; Wed, 19 Aug 2020 17:51:45 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id B86C760E39
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Aug 2020 17:51:44 +0000 (UTC)
Received: from kozik-lap.mshome.net (unknown [194.230.155.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE7BB2067C;
 Wed, 19 Aug 2020 17:51:41 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
Date: Wed, 19 Aug 2020 19:51:33 +0200
Message-Id: <20200819175134.19261-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [Linaro-mm-sig] [RESEND PATCH 1/2] dma-buf: Fix kerneldoc of
	dma_buf_set_name()
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Rml4IFc9MSBjb21waWxlIHdhcm5pbmdzIChpbnZhbGlkIGtlcm5lbGRvYyk6CgogICAgZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYzozMjg6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBt
ZW1iZXIgJ2RtYWJ1Zicgbm90IGRlc2NyaWJlZCBpbiAnZG1hX2J1Zl9zZXRfbmFtZScKClNpZ25l
ZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0tCiBkcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggMTY5OWE4ZTMwOWVmLi41
ODU2NGQ4MmEzYTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwpAQCAtMzE2LDkgKzMxNiw5IEBAIHN0YXRpYyBfX3Bv
bGxfdCBkbWFfYnVmX3BvbGwoc3RydWN0IGZpbGUgKmZpbGUsIHBvbGxfdGFibGUgKnBvbGwpCiAg
KiBuYW1lIG9mIHRoZSBkbWEtYnVmIGlmIHRoZSBzYW1lIHBpZWNlIG9mIG1lbW9yeSBpcyB1c2Vk
IGZvciBtdWx0aXBsZQogICogcHVycG9zZSBiZXR3ZWVuIGRpZmZlcmVudCBkZXZpY2VzLgogICoK
LSAqIEBkbWFidWYgW2luXSAgICAgZG1hYnVmIGJ1ZmZlciB0aGF0IHdpbGwgYmUgcmVuYW1lZC4K
LSAqIEBidWY6ICAgW2luXSAgICAgQSBwaWVjZSBvZiB1c2Vyc3BhY2UgbWVtb3J5IHRoYXQgY29u
dGFpbnMgdGhlIG5hbWUgb2YKLSAqICAgICAgICAgICAgICAgICAgdGhlIGRtYS1idWYuCisgKiBA
ZG1hYnVmOiBbaW5dICAgICBkbWFidWYgYnVmZmVyIHRoYXQgd2lsbCBiZSByZW5hbWVkLgorICog
QGJ1ZjogICAgW2luXSAgICAgQSBwaWVjZSBvZiB1c2Vyc3BhY2UgbWVtb3J5IHRoYXQgY29udGFp
bnMgdGhlIG5hbWUgb2YKKyAqICAgICAgICAgICAgICAgICAgIHRoZSBkbWEtYnVmLgogICoKICAq
IFJldHVybnMgMCBvbiBzdWNjZXNzLiBJZiB0aGUgZG1hLWJ1ZiBidWZmZXIgaXMgYWxyZWFkeSBh
dHRhY2hlZCB0bwogICogZGV2aWNlcywgcmV0dXJuIC1FQlVTWS4KLS0gCjIuMTcuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
