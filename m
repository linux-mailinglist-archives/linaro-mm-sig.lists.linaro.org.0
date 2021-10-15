Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E47C42F00A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Oct 2021 13:57:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34BAD6314C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Oct 2021 11:57:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 207256263B; Fri, 15 Oct 2021 11:57:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BB1861B00;
	Fri, 15 Oct 2021 11:57:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E1C2B61499
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 11:57:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DFF2B6197B; Fri, 15 Oct 2021 11:57:27 +0000 (UTC)
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by lists.linaro.org (Postfix) with ESMTPS id B614961499
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 11:57:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 15 Oct 2021 13:57:20 +0200
Message-Id: <20211015115720.79958-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
References: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/2] dma-buf: Fix dma_resv_test_signaled.
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Q29tbWl0IDdmYTgyOGNiOTI2NSAoImRtYS1idWY6IHVzZSBuZXcgaXRlcmF0b3IgaW4gZG1hX3Jl
c3ZfdGVzdF9zaWduYWxlZCIpCmFjY2lkZW50YWxseSBmb3Jnb3QgdG8gdGVzdCB3aGV0aGVyIHRo
ZSBkbWEtYnVmIGlzIGFjdHVhbGx5IHNpZ25hbGVkLCBicmVha2luZwpwcmV0dHkgbXVjaCBldmVy
eXRoaW5nIGRlcGVuZGluZyBvbiBpdC4KCkZpeGVzOiA3ZmE4MjhjYjkyNjUgKCJkbWEtYnVmOiB1
c2UgbmV3IGl0ZXJhdG9yIGluIGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWQiKQpDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1h
YXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1h
LXJlc3YuYyB8IDggKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwppbmRleCA3MGE4MDgyNjYwYzUuLjM3YWIyODc1ZTQ2
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMKQEAgLTY1NSwxNCArNjU1LDE2IEBAIGJvb2wgZG1hX3Jlc3ZfdGVz
dF9zaWduYWxlZChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB0ZXN0X2FsbCkKIHsKIAlzdHJ1
Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CisJYm9v
bCByZXQgPSB0cnVlOwogCiAJZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBvYmosIHRlc3Rf
YWxsKTsKIAlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkg
ewotCQlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKLQkJcmV0dXJuIGZhbHNlOworCQlyZXQg
PSBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpOworCQlpZiAoIXJldCkKKwkJCWJyZWFrOwog
CX0KIAlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKLQlyZXR1cm4gdHJ1ZTsKKwlyZXR1cm4g
cmV0OwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZCk7CiAKLS0g
CjIuMzMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
