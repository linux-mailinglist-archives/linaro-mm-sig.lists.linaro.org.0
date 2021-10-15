Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C35B42F009
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Oct 2021 13:57:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D41261A4D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Oct 2021 11:57:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 01C0C61A3F; Fri, 15 Oct 2021 11:57:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54E3B61A44;
	Fri, 15 Oct 2021 11:57:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C447C61945
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 11:57:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C0C6B6197B; Fri, 15 Oct 2021 11:57:27 +0000 (UTC)
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by lists.linaro.org (Postfix) with ESMTPS id 9B6C961945
 for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Oct 2021 11:57:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 15 Oct 2021 13:57:19 +0200
Message-Id: <20211015115720.79958-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
References: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf: Fix dma_resv_wait_timeout
 handling of timeout = 0.
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

Q29tbWl0IGFkYTVjNDhiMTFhMyAoImRtYS1idWY6IHVzZSBuZXcgaXRlcmF0b3IgaW4gZG1hX3Jl
c3Zfd2FpdF90aW1lb3V0IikKYWNjaWRlbnRhbGx5IHN0YXJ0ZWQgbWlzaGFuZGxpbmcgdGltZW91
dCA9IDAsIGJ5IGZvcmNpbmcgYSBibG9ja2luZyB3YWl0CndpdGggdGltZW91dCA9IDEgcGFzc2Vk
IHRvIGZlbmNlcy4gVGhpcyBpcyBub3QgaW50ZW5kZWQsIGFzIHRpbWVvdXQgPSAwCm1heSBiZSB1
c2VkIGZvciBwZWVraW5nLCBzaW1pbGFyIHRvIHRlc3Rfc2lnbmFsZWQuCgpGaXhlczogYWRhNWM0
OGIxMWEzICgiZG1hLWJ1ZjogdXNlIG5ldyBpdGVyYXRvciBpbiBkbWFfcmVzdl93YWl0X3RpbWVv
dXQiKQpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KU2lnbmVkLW9mZi1ieTogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4IDll
YjJiYWEzODdkNC4uNzBhODA4MjY2MGM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpAQCAtNjE3LDE4ICs2MTcs
MTggQEAgRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyk7CiBsb25nIGRtYV9y
ZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3YWl0X2FsbCwgYm9v
bCBpbnRyLAogCQkJICAgdW5zaWduZWQgbG9uZyB0aW1lb3V0KQogewotCWxvbmcgcmV0ID0gdGlt
ZW91dCA/IHRpbWVvdXQgOiAxOworCWxvbmcgcmV0ID0gdGltZW91dCA/OiAxOwogCXN0cnVjdCBk
bWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAogCWRtYV9y
ZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB3YWl0X2FsbCk7CiAJZG1hX3Jlc3ZfZm9yX2Vh
Y2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKKwkJcmV0ID0gZG1hX2ZlbmNlX3dh
aXRfdGltZW91dChmZW5jZSwgaW50ciwgdGltZW91dCk7CisJCWlmIChyZXQgPD0gMCkKKwkJCWJy
ZWFrOwogCi0JCXJldCA9IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsIGludHIsIHJldCk7
Ci0JCWlmIChyZXQgPD0gMCkgewotCQkJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Ci0JCQly
ZXR1cm4gcmV0OwotCQl9CisJCWlmICh0aW1lb3V0KQorCQkJdGltZW91dCA9IHJldDsKIAl9CiAJ
ZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAKLS0gCjIuMzMuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
