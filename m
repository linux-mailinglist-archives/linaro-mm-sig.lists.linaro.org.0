Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE7740499F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 13:41:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 789326338E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 11:41:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0319661021; Thu,  9 Sep 2021 11:41:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32FCF6081B;
	Thu,  9 Sep 2021 11:41:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 445186088A
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 11:41:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 14848610CB; Thu,  9 Sep 2021 11:41:24 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id BB9F86081B
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 11:41:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 920C361186;
 Thu,  9 Sep 2021 11:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631187680;
 bh=sQlpCIQOIZc/1gWnMmczeaTUI9JHZ8cwU8Uv5hxetBk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YCS3GE+/i3ZMLCH/8H6Pu8OXrp/U6Bk86aMJ+Mw+q0xj6UeUurpsAxT9GCTaWqywN
 JOH25THMcnqHISenY8eJmt/7aKj48sxzusMbnHUjA31oVK8gVyoZbskXlyDNN6WKjU
 O5OqCZHVVWVCLhsgXhkYcDiGOYxjB1lBKqByaU+YoguIJoUMywQniOSyr+JBkryMrH
 jeAJBVGivRelE93h+fH7e2G5lVNNBAZeZCK8mbJF+Kq5Pyj+aCvRQoFS6tWN+yDL/i
 TYhpIRGkLjQdxzaLe4jz08N28t+ZNLzbHG40wCcXLZcehxmMICKmw35u7eHvYwasHr
 Gna7XmHxTzHHA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu,  9 Sep 2021 07:37:04 -0400
Message-Id: <20210909114106.141462-10-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909114106.141462-1-sashal@kernel.org>
References: <20210909114106.141462-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH AUTOSEL 5.14 010/252] dma-buf: fix
 dma_resv_test_signaled test_all handling v2
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
Cc: Sasha Levin <sashal@kernel.org>, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RnJvbTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgoKWyBVcHN0
cmVhbSBjb21taXQgOWQzODgxNGQxZTM0NmVhMzdhNTFjYmYzMWY0NDI0YzlkMDU5NDU5ZSBdCgpB
cyB0aGUgbmFtZSBpbXBsaWVzIGlmIHRlc3RpbmcgYWxsIGZlbmNlcyBpcyByZXF1ZXN0ZWQgd2UK
c2hvdWxkIGluZGVlZCB0ZXN0IGFsbCBmZW5jZXMgYW5kIG5vdCBza2lwIHRoZSBleGNsdXNpdmUK
b25lIGJlY2F1c2Ugd2Ugc2VlIHNoYXJlZCBvbmVzLgoKdjI6IGZpeCBsb2dpYyBvbmNlIG1vcmUK
ClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4KUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ckxp
bms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIxMDcw
MjExMTY0Mi4xNzI1OS0zLWNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbQpTaWduZWQtb2ZmLWJ5OiBT
YXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1y
ZXN2LmMgfCAzMyArKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAxMiBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4
IGYyNmM3MTc0N2Q0My4uZTc0NGZkODdjNjNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpAQCAtNjE1LDI1ICs2
MTUsMjEgQEAgc3RhdGljIGlubGluZSBpbnQgZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5nbGUo
c3RydWN0IGRtYV9mZW5jZSAqcGFzc2VkX2ZlbmNlKQogICovCiBib29sIGRtYV9yZXN2X3Rlc3Rf
c2lnbmFsZWQoc3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgdGVzdF9hbGwpCiB7Ci0JdW5zaWdu
ZWQgaW50IHNlcSwgc2hhcmVkX2NvdW50OworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCXVu
c2lnbmVkIGludCBzZXE7CiAJaW50IHJldDsKIAogCXJjdV9yZWFkX2xvY2soKTsKIHJldHJ5Ogog
CXJldCA9IHRydWU7Ci0Jc2hhcmVkX2NvdW50ID0gMDsKIAlzZXEgPSByZWFkX3NlcWNvdW50X2Jl
Z2luKCZvYmotPnNlcSk7CiAKIAlpZiAodGVzdF9hbGwpIHsKIAkJc3RydWN0IGRtYV9yZXN2X2xp
c3QgKmZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChvYmopOwotCQl1bnNpZ25lZCBpbnQgaTsK
LQotCQlpZiAoZm9iaikKLQkJCXNoYXJlZF9jb3VudCA9IGZvYmotPnNoYXJlZF9jb3VudDsKKwkJ
dW5zaWduZWQgaW50IGksIHNoYXJlZF9jb3VudDsKIAorCQlzaGFyZWRfY291bnQgPSBmb2JqID8g
Zm9iai0+c2hhcmVkX2NvdW50IDogMDsKIAkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsg
KytpKSB7Ci0JCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKLQogCQkJZmVuY2UgPSByY3VfZGVy
ZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKIAkJCXJldCA9IGRtYV9yZXN2X3Rlc3Rfc2lnbmFs
ZWRfc2luZ2xlKGZlbmNlKTsKIAkJCWlmIChyZXQgPCAwKQpAQCAtNjQxLDI0ICs2MzcsMTkgQEAg
Ym9vbCBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBib29sIHRl
c3RfYWxsKQogCQkJZWxzZSBpZiAoIXJldCkKIAkJCQlicmVhazsKIAkJfQotCi0JCWlmIChyZWFk
X3NlcWNvdW50X3JldHJ5KCZvYmotPnNlcSwgc2VxKSkKLQkJCWdvdG8gcmV0cnk7CiAJfQogCi0J
aWYgKCFzaGFyZWRfY291bnQpIHsKLQkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2VfZXhjbCA9IGRt
YV9yZXN2X2V4Y2xfZmVuY2Uob2JqKTsKLQotCQlpZiAoZmVuY2VfZXhjbCkgewotCQkJcmV0ID0g
ZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5nbGUoZmVuY2VfZXhjbCk7Ci0JCQlpZiAocmV0IDwg
MCkKLQkJCQlnb3RvIHJldHJ5OworCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmopOwor
CWlmIChyZXQgJiYgZmVuY2UpIHsKKwkJcmV0ID0gZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZF9zaW5n
bGUoZmVuY2UpOworCQlpZiAocmV0IDwgMCkKKwkJCWdvdG8gcmV0cnk7CiAKLQkJCWlmIChyZWFk
X3NlcWNvdW50X3JldHJ5KCZvYmotPnNlcSwgc2VxKSkKLQkJCQlnb3RvIHJldHJ5OwotCQl9CiAJ
fQogCisJaWYgKHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEpKQorCQlnb3RvIHJl
dHJ5OworCiAJcmN1X3JlYWRfdW5sb2NrKCk7CiAJcmV0dXJuIHJldDsKIH0KLS0gCjIuMzAuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
