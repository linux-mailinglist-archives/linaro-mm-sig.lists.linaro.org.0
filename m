Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 564F541387C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:37:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3014961444
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:37:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0468362D34; Tue, 21 Sep 2021 17:37:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3440E6140D;
	Tue, 21 Sep 2021 17:37:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 73AE2611F7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 716DC61298; Tue, 21 Sep 2021 17:37:05 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 6A45B611F7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:03 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id i23so41642608wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jW0CZKhinxPGfzjKvZaoGAAQIdszIW4EWOO8ehQLYZI=;
 b=MJ4X53AX9uRBpu/Jc5jdXygrqf/sGNOkrUeNXt4JXW9Y1xATiW+3Qh6GjOI9cZYhww
 1tPWTrMJOoYgichkuU165EPe+fkjxUAJdfaUDfqXf+69Bmiaz+WmXy4ZS6KLCUN/BIBO
 U2p6Sop6SFrI3+RmkNvRl3ApesuULePFnm/eI32ea7v2oJvBz7KdFaV3dDL62A87pybP
 nVNcbFnMU/raqHwquaYbkT+3TZLdNyzUJdYCJRVeChf15UMOWd9yObkUuw/kcRjT5hkg
 czJ4mcDhRqyhRTcELWZ+3ShR7yAL+MqBS7V3LJUvIY8PB2V1vim9JAlClFlAboxaiZ+v
 K6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jW0CZKhinxPGfzjKvZaoGAAQIdszIW4EWOO8ehQLYZI=;
 b=lfJlvqrKtG5tImQMculrAGouZRyRrjwTXbUnJFXdCgm4Q8BtfETHXscDMrWGTjyOf1
 0mPpfzwpRc1li91ZM3Ny/z/yA7gtt/6kuBEOEELFsmppiq4QYD8/bocDZ5TRoIX5PVz5
 e0ZKKX6QtH2+K8zeMsUusDksU5FhqS/smWMpzEJtxjbcx0/b162/1TB+HY32Tb8nRcdq
 UsLZYN4Drtu4tiXaJ0JwNFwD+C/bhYSdXCwqkFinSrZT5eomN8Uc/rnkmB8ve1qx5sZr
 HYkBZMnpCABvJlebSUCRhegdbxUTjZkmTDbeQMAUe3kPlu8wlP8lbGTj0KHF+XWa0F38
 KSYA==
X-Gm-Message-State: AOAM531KDm//Zo7B2CLSTZrvUkU6EhbkIGoZM+d8zk356gwCCWH6BprY
 DhtgkZQ93vyH4CaVBY7CubE=
X-Google-Smtp-Source: ABdhPJxmNADm6OUXVWFFIsBVj9Gl3zy6BKQ/nRYBCw754qNDKg4F5Z3HVu5DgwqGKngK+WQNOwhs7Q==
X-Received: by 2002:a5d:54cf:: with SMTP id x15mr37435320wrv.27.1632245822495; 
 Tue, 21 Sep 2021 10:37:02 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:02 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:35 +0200
Message-Id: <20210921173659.246165-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 02/26] dma-buf: add dma_resv_for_each_fence
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QSBzaW1wbGVyIHZlcnNpb24gb2YgdGhlIGl0ZXJhdG9yIHRvIGJlIHVzZWQgd2hlbiB0aGUgZG1h
X3Jlc3Ygb2JqZWN0IGlzCmxvY2tlZC4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YyB8IDQ2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2xp
bnV4L2RtYS1yZXN2LmggICB8IDE5ICsrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwg
NjUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKaW5kZXggMTFiNTM5OWY0YmQzLi5lNjgxOWNi
YmNkMjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBAIC00MjEsNiArNDIxLDUyIEBAIHN0cnVjdCBkbWFfZmVu
Y2UgKmRtYV9yZXN2X2l0ZXJfbmV4dF91bmxvY2tlZChzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vy
c29yKQogfQogRVhQT1JUX1NZTUJPTChkbWFfcmVzdl9pdGVyX25leHRfdW5sb2NrZWQpOwogCisv
KioKKyAqIGRtYV9yZXN2X2l0ZXJfZmlyc3QgLSBmaXJzdCBmZW5jZSBmcm9tIGEgbG9ja2VkIGRt
YV9yZXN2IG9iamVjdAorICogQGN1cnNvcjogY3Vyc29yIHRvIHJlY29yZCB0aGUgY3VycmVudCBw
b3NpdGlvbgorICoKKyAqIFJldHVybiBhbGwgdGhlIGZlbmNlcyBpbiB0aGUgZG1hX3Jlc3Ygb2Jq
ZWN0IHdoaWxlIGhvbGRpbmcgdGhlCisgKiAmZG1hX3Jlc3YubG9jay4KKyAqLworc3RydWN0IGRt
YV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl9maXJzdChzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29y
KQoreworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCisJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQo
Y3Vyc29yLT5vYmopOworCisJY3Vyc29yLT5pbmRleCA9IC0xOworCWN1cnNvci0+ZmVuY2VzID0g
ZG1hX3Jlc3Zfc2hhcmVkX2xpc3QoY3Vyc29yLT5vYmopOworCisJZmVuY2UgPSBkbWFfcmVzdl9l
eGNsX2ZlbmNlKGN1cnNvci0+b2JqKTsKKwlpZiAoIWZlbmNlKQorCQlmZW5jZSA9IGRtYV9yZXN2
X2l0ZXJfbmV4dChjdXJzb3IpOworCisJY3Vyc29yLT5pc19yZXN0YXJ0ZWQgPSB0cnVlOworCXJl
dHVybiBmZW5jZTsKK30KK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9yZXN2X2l0ZXJfZmlyc3QpOwor
CisvKioKKyAqIGRtYV9yZXN2X2l0ZXJfbmV4dCAtIG5leHQgZmVuY2UgZnJvbSBhIGxvY2tlZCBk
bWFfcmVzdiBvYmplY3QKKyAqIEBjdXJzb3I6IGN1cnNvciB0byByZWNvcmQgdGhlIGN1cnJlbnQg
cG9zaXRpb24KKyAqCisgKiBSZXR1cm4gYWxsIHRoZSBmZW5jZXMgaW4gdGhlIGRtYV9yZXN2IG9i
amVjdCB3aGlsZSBob2xkaW5nIHRoZQorICogJmRtYV9yZXN2LmxvY2suCisgKi8KK3N0cnVjdCBk
bWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfbmV4dChzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29y
KQoreworCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGN1cnNvci0+b2JqKTsKKworCWN1cnNvci0+aXNf
cmVzdGFydGVkID0gZmFsc2U7CisJaWYgKCFjdXJzb3ItPmFsbF9mZW5jZXMgfHwgIWN1cnNvci0+
ZmVuY2VzIHx8CisJICAgICsrY3Vyc29yLT5pbmRleCA+PSBjdXJzb3ItPmZlbmNlcy0+c2hhcmVk
X2NvdW50KQorCQlyZXR1cm4gTlVMTDsKKworCXJldHVybiByY3VfZGVyZWZlcmVuY2VfcHJvdGVj
dGVkKGN1cnNvci0+ZmVuY2VzLT5zaGFyZWRbY3Vyc29yLT5pbmRleF0sCisJCQkJCSBkbWFfcmVz
dl9oZWxkKGN1cnNvci0+b2JqKSk7Cit9CitFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl9pdGVy
X25leHQpOworCiAvKioKICAqIGRtYV9yZXN2X2NvcHlfZmVuY2VzIC0gQ29weSBhbGwgZmVuY2Vz
IGZyb20gc3JjIHRvIGRzdC4KICAqIEBkc3Q6IHRoZSBkZXN0aW5hdGlvbiByZXNlcnZhdGlvbiBv
YmplY3QKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUvbGlu
dXgvZG1hLXJlc3YuaAppbmRleCBiYWY3N2E1NDIzOTIuLjcyZTdlYmFhNjc1ZiAxMDA2NDQKLS0t
IGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3Yu
aApAQCAtMTc5LDYgKzE3OSw4IEBAIHN0cnVjdCBkbWFfcmVzdl9pdGVyIHsKIAogc3RydWN0IGRt
YV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl9maXJzdF91bmxvY2tlZChzdHJ1Y3QgZG1hX3Jlc3ZfaXRl
ciAqY3Vyc29yKTsKIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfbmV4dF91bmxvY2tl
ZChzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29yKTsKK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9y
ZXN2X2l0ZXJfZmlyc3Qoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcik7CitzdHJ1Y3QgZG1h
X2ZlbmNlICpkbWFfcmVzdl9pdGVyX25leHQoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcik7
CiAKIC8qKgogICogZG1hX3Jlc3ZfaXRlcl9iZWdpbiAtIGluaXRpYWxpemUgYSBkbWFfcmVzdl9p
dGVyIG9iamVjdApAQCAtMjQ0LDYgKzI0NiwyMyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZG1hX3Jl
c3ZfaXRlcl9pc19yZXN0YXJ0ZWQoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcikKIAlmb3Ig
KGZlbmNlID0gZG1hX3Jlc3ZfaXRlcl9maXJzdF91bmxvY2tlZChjdXJzb3IpOwkJXAogCSAgICAg
ZmVuY2U7IGZlbmNlID0gZG1hX3Jlc3ZfaXRlcl9uZXh0X3VubG9ja2VkKGN1cnNvcikpCiAKKy8q
KgorICogZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UgLSBmZW5jZSBpdGVyYXRvcgorICogQGN1cnNv
cjogYSBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBwb2ludGVyCisgKiBAb2JqOiBhIGRtYV9yZXN2IG9i
amVjdCBwb2ludGVyCisgKiBAYWxsX2ZlbmNlczogdHJ1ZSBpZiBhbGwgZmVuY2VzIHNob3VsZCBi
ZSByZXR1cm5lZAorICogQGZlbmNlOiB0aGUgY3VycmVudCBmZW5jZQorICoKKyAqIEl0ZXJhdGUg
b3ZlciB0aGUgZmVuY2VzIGluIGEgc3RydWN0IGRtYV9yZXN2IG9iamVjdCB3aGlsZSBob2xkaW5n
IHRoZQorICogJmRtYV9yZXN2LmxvY2suIEBhbGxfZmVuY2VzIGNvbnRyb2xzIGlmIHRoZSBzaGFy
ZWQgZmVuY2VzIGFyZSByZXR1cm5lZCBhcworICogd2VsbC4gVGhlIGN1cnNvciBpbml0aWFsaXNh
dGlvbiBpcyBwYXJ0IG9mIHRoZSBpdGVyYXRvciBhbmQgdGhlIGZlbmNlIHN0YXlzCisgKiB2YWxp
ZCBhcyBsb25nIGFzIHRoZSBsb2NrIGlzIGhlbGQuCisgKi8KKyNkZWZpbmUgZG1hX3Jlc3ZfZm9y
X2VhY2hfZmVuY2UoY3Vyc29yLCBvYmosIGFsbF9mZW5jZXMsIGZlbmNlKQlcCisJZm9yIChkbWFf
cmVzdl9pdGVyX2JlZ2luKGN1cnNvciwgb2JqLCBhbGxfZmVuY2VzKSwJXAorCSAgICAgZmVuY2Ug
PSBkbWFfcmVzdl9pdGVyX2ZpcnN0KGN1cnNvcik7IGZlbmNlOwlcCisJICAgICBmZW5jZSA9IGRt
YV9yZXN2X2l0ZXJfbmV4dChjdXJzb3IpKQorCiAjZGVmaW5lIGRtYV9yZXN2X2hlbGQob2JqKSBs
b2NrZGVwX2lzX2hlbGQoJihvYmopLT5sb2NrLmJhc2UpCiAjZGVmaW5lIGRtYV9yZXN2X2Fzc2Vy
dF9oZWxkKG9iaikgbG9ja2RlcF9hc3NlcnRfaGVsZCgmKG9iaiktPmxvY2suYmFzZSkKIAotLSAK
Mi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
