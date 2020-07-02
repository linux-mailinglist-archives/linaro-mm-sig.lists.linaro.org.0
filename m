Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 408B8219FD6
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:17:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A9456038C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:17:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5D03466558; Thu,  9 Jul 2020 12:17:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 739D0668C5;
	Thu,  9 Jul 2020 11:34:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 05DDD61504
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2020 01:23:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EE6B5664E3; Thu,  2 Jul 2020 01:23:04 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 7E6F261504
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2020 01:23:03 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AAAA20874;
 Thu,  2 Jul 2020 01:23:01 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed,  1 Jul 2020 21:21:15 -0400
Message-Id: <20200702012202.2700645-6-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200702012202.2700645-1-sashal@kernel.org>
References: <20200702012202.2700645-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: Sasha Levin <sashal@kernel.org>, Xin Tan <tanxin.ctf@gmail.com>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 5.7 06/53] drm/ttm: Fix dma_fence
	refcnt leak in ttm_bo_vm_fault_reserved
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RnJvbTogWGl5dSBZYW5nIDx4aXl1eWFuZzE5QGZ1ZGFuLmVkdS5jbj4KClsgVXBzdHJlYW0gY29t
bWl0IDM3Y2M0Yjk1ZDEzZjMxMWMwNGFhOGU5ZGFhY2NhMzkwNWFkNDVjYTcgXQoKdHRtX2JvX3Zt
X2ZhdWx0X3Jlc2VydmVkKCkgaW52b2tlcyBkbWFfZmVuY2VfZ2V0KCksIHdoaWNoIHJldHVybnMg
YQpyZWZlcmVuY2Ugb2YgdGhlIHNwZWNpZmllZCBkbWFfZmVuY2Ugb2JqZWN0IHRvICJtb3Zpbmci
IHdpdGggaW5jcmVhc2VkCnJlZmNudC4KCldoZW4gdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKCkg
cmV0dXJucywgbG9jYWwgdmFyaWFibGUgIm1vdmluZyIgYmVjb21lcwppbnZhbGlkLCBzbyB0aGUg
cmVmY291bnQgc2hvdWxkIGJlIGRlY3JlYXNlZCB0byBrZWVwIHJlZmNvdW50IGJhbGFuY2VkLgoK
VGhlIHJlZmVyZW5jZSBjb3VudGluZyBpc3N1ZSBoYXBwZW5zIGluIHNldmVyYWwgZXhjZXB0aW9u
IGhhbmRsaW5nIHBhdGhzCm9mIHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZCgpLiBXaGVuIHRob3Nl
IGVycm9yIHNjZW5hcmlvcyBvY2N1ciBzdWNoIGFzCiJlcnIiIGVxdWFscyB0byAtRUJVU1ksIHRo
ZSBmdW5jdGlvbiBmb3JnZXRzIHRvIGRlY3JlYXNlIHRoZSByZWZjbnQKaW5jcmVhc2VkIGJ5IGRt
YV9mZW5jZV9nZXQoKSwgY2F1c2luZyBhIHJlZmNudCBsZWFrLgoKRml4IHRoaXMgaXNzdWUgYnkg
Y2FsbGluZyBkbWFfZmVuY2VfcHV0KCkgd2hlbiBub193YWl0X2dwdSBmbGFnIGlzCmVxdWFscyB0
byB0cnVlLgoKU2lnbmVkLW9mZi1ieTogWGl5dSBZYW5nIDx4aXl1eWFuZzE5QGZ1ZGFuLmVkdS5j
bj4KU2lnbmVkLW9mZi1ieTogWGluIFRhbiA8dGFueGluLmN0ZkBnbWFpbC5jb20+ClJldmlld2Vk
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ckxpbms6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zNzAyMTkvClNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KU2lnbmVkLW9m
Zi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS90dG0vdHRtX2JvX3ZtLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyBiL2RyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX2JvX3ZtLmMKaW5kZXggMGFkMzBiMTEyOTgyMS4uNzIxMDBiODRjN2E5
MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jCkBAIC0zMDAsOCArMzAwLDEwIEBAIHZtX2ZhdWx0
X3QgdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHN0cnVjdCB2bV9mYXVsdCAqdm1mLAogCQkJYnJl
YWs7CiAJCWNhc2UgLUVCVVNZOgogCQljYXNlIC1FUkVTVEFSVFNZUzoKKwkJCWRtYV9mZW5jZV9w
dXQobW92aW5nKTsKIAkJCXJldHVybiBWTV9GQVVMVF9OT1BBR0U7CiAJCWRlZmF1bHQ6CisJCQlk
bWFfZmVuY2VfcHV0KG1vdmluZyk7CiAJCQlyZXR1cm4gVk1fRkFVTFRfU0lHQlVTOwogCQl9CiAK
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
