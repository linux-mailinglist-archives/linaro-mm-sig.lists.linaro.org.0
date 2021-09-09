Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E7F404322
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 03:46:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE63D6338E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 01:46:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A5A5763426; Thu,  9 Sep 2021 01:46:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E3E360B23;
	Thu,  9 Sep 2021 01:46:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5311B60F1F
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 01:46:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 47C3F61021; Thu,  9 Sep 2021 01:46:40 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 199FA60B23
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 01:46:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 29D5761166;
 Thu,  9 Sep 2021 01:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631151997;
 bh=sQlpCIQOIZc/1gWnMmczeaTUI9JHZ8cwU8Uv5hxetBk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=swbu3TTJ6MgtIkcHmm76a0DHLOqTf+2Hz6Wmw137X31Gwhf/MJAMkIziMd8RqB4ou
 H4Vh4X0R6btRjNo/G+ZjDmpa77aLeaiP1PdclX/cawE8eGehW3n1RdH9KmTdIM4C78
 iAcGrCvJhekTuIvb/0wrTol5KI+X/mDl5mVKJU+6Sz+Qquj30I5y8yK4njtlr0I8Ep
 +22gP84R6p8cO2D/2TlT8Ff7bLajdrkvPvntgsL84tuK0dFNskDoQ2HKbLX7x80+6c
 YGnrOuUYfvvdUsp/Wl4PvBZn6sdDKjkKdEkSYnS+DOg3WufC7I35h2LLlxqPC0Yr4M
 q9xt8/uovnHzg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed,  8 Sep 2021 21:42:20 -0400
Message-Id: <20210909014623.128976-10-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909014623.128976-1-sashal@kernel.org>
References: <20210909014623.128976-1-sashal@kernel.org>
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
