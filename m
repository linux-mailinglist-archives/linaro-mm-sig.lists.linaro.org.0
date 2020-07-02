Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 34707219FD9
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:17:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DBDF6659B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:17:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4E85B665A5; Thu,  9 Jul 2020 12:17:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44E32668CC;
	Thu,  9 Jul 2020 11:34:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9E50F6600B
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2020 01:23:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8C64161633; Thu,  2 Jul 2020 01:23:07 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id A22C661633
 for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2020 01:23:04 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6F5920748;
 Thu,  2 Jul 2020 01:23:02 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed,  1 Jul 2020 21:21:16 -0400
Message-Id: <20200702012202.2700645-7-sashal@kernel.org>
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
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 5.7 07/53] drm/ttm: Fix dma_fence
	refcnt leak when adding move fence
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
bWl0IDExNDI1YzQ1MTllMmM5NzRhMTAwZmM5ODQ4NjcwNDZkOTA1YjkzODAgXQoKdHRtX2JvX2Fk
ZF9tb3ZlX2ZlbmNlKCkgaW52b2tlcyBkbWFfZmVuY2VfZ2V0KCksIHdoaWNoIHJldHVybnMgYQpy
ZWZlcmVuY2Ugb2YgdGhlIHNwZWNpZmllZCBkbWFfZmVuY2Ugb2JqZWN0IHRvICJmZW5jZSIgd2l0
aCBpbmNyZWFzZWQKcmVmY250LgoKV2hlbiB0dG1fYm9fYWRkX21vdmVfZmVuY2UoKSByZXR1cm5z
LCBsb2NhbCB2YXJpYWJsZSAiZmVuY2UiIGJlY29tZXMKaW52YWxpZCwgc28gdGhlIHJlZmNvdW50
IHNob3VsZCBiZSBkZWNyZWFzZWQgdG8ga2VlcCByZWZjb3VudCBiYWxhbmNlZC4KClRoZSByZWZl
cmVuY2UgY291bnRpbmcgaXNzdWUgaGFwcGVucyBpbiBvbmUgZXhjZXB0aW9uIGhhbmRsaW5nIHBh
dGggb2YKdHRtX2JvX2FkZF9tb3ZlX2ZlbmNlKCkuIFdoZW4gbm9fd2FpdF9ncHUgZmxhZyBpcyBl
cXVhbHMgdG8gdHJ1ZSwgdGhlCmZ1bmN0aW9uIGZvcmdldHMgdG8gZGVjcmVhc2UgdGhlIHJlZmNu
dCBpbmNyZWFzZWQgYnkgZG1hX2ZlbmNlX2dldCgpLApjYXVzaW5nIGEgcmVmY250IGxlYWsuCgpG
aXggdGhpcyBpc3N1ZSBieSBjYWxsaW5nIGRtYV9mZW5jZV9wdXQoKSB3aGVuIG5vX3dhaXRfZ3B1
IGZsYWcgaXMKZXF1YWxzIHRvIHRydWUuCgpTaWduZWQtb2ZmLWJ5OiBYaXl1IFlhbmcgPHhpeXV5
YW5nMTlAZnVkYW4uZWR1LmNuPgpTaWduZWQtb2ZmLWJ5OiBYaW4gVGFuIDx0YW54aW4uY3RmQGdt
YWlsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzM3
MDIyMS8KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS90dG0vdHRtX2JvLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCmluZGV4IDll
MDdjM2Y3NTE1NmIuLmVmNWJjMDBjNzNlMjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX2JvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwpAQCAtODgxLDgg
Kzg4MSwxMCBAQCBzdGF0aWMgaW50IHR0bV9ib19hZGRfbW92ZV9mZW5jZShzdHJ1Y3QgdHRtX2J1
ZmZlcl9vYmplY3QgKmJvLAogCWlmICghZmVuY2UpCiAJCXJldHVybiAwOwogCi0JaWYgKG5vX3dh
aXRfZ3B1KQorCWlmIChub193YWl0X2dwdSkgeworCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKIAkJ
cmV0dXJuIC1FQlVTWTsKKwl9CiAKIAlkbWFfcmVzdl9hZGRfc2hhcmVkX2ZlbmNlKGJvLT5iYXNl
LnJlc3YsIGZlbmNlKTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
