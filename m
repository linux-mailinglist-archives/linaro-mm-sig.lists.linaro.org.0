Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E054D45A562
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:22:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8485662D23
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D85E262D3D; Tue, 23 Nov 2021 14:22:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0A6F62D45;
	Tue, 23 Nov 2021 14:22:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8035262172
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 264A562C93; Tue, 23 Nov 2021 14:21:30 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 7266162C9E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:27 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id a18so2696396wrn.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UeVGp8prroNFBBkWzJroj9VafnuWlSITqFksKk2su68=;
 b=Iv/TxAnifxh6vEjMeYuZ6VDiXws0v9pyilzUms4criacfWdFgIHwDzUEWNw2Zyn+pz
 /PPD0mlLezrFH+YgYJKHorUsBH0V4Wuk0Vd30jgvh79S+r7kitwMigGIzu4VhRb6oXfN
 7zxOTOwr3I9IF6NraEtVNH/JdeYcSBssHUwpPDi9XFhWmINa8h2XAGNiNaYYwDWYK6a/
 jrW6STCbvvCJiCuPd9rX5D6W4rNttYQaqEzmlHbv43yxHisnW0+slFJfUHOpcOqk3Otj
 dj/1oaKtEFy872NPuZ61YUHSqgkywuPynxzIBZR1D2dhdy5Y7aHIlNsxatbGwpV+Q7Gb
 Rq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UeVGp8prroNFBBkWzJroj9VafnuWlSITqFksKk2su68=;
 b=Q/LYFuT5rhwI0eqRGoZLI/9CPgd20DSh5OWj0pyhoIhegW6Hars67BG4wpR59vm4aO
 R/ho1KszTInMFNQhutwowETz+P3UreCtZWe4PZjLdNY2Mf8KAw+XspBWoMjvZWv0q2Rf
 9rlOnMQcFZR9/CoNfpjiJbEZLAE8lNnwjqhzltFdA7yLLM1PewNnYY4ysFpg6LeGMiwq
 CGSsm0LPCMh62N2khVhGVpjkVDtrvqlBYTLNSc+/m77nteuIaHnw9U04HpIcfG7a3Ic4
 My3g//2dwJ8ncMhI8hsa2yTMGUKrw8AamaRRsUQBSi7iiqM0WveT+KdIsvWdYfONNxGs
 gFJQ==
X-Gm-Message-State: AOAM532OeQVqSlh9HWjkZhnkScH/a2NucBHmf3o2lUu8HSAWYC74HXzh
 5uPNaYuxyve5d3/V+JGJtdI=
X-Google-Smtp-Source: ABdhPJydoWLun2Lona4C6JNk9ptBjjSxh1zZg9ZRryxr/+ClCo5eRph7eLxajU/yyhS7EUN9rcTUww==
X-Received: by 2002:adf:fb86:: with SMTP id a6mr7603351wrr.35.1637677285648;
 Tue, 23 Nov 2021 06:21:25 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:25 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:51 +0100
Message-Id: <20211123142111.3885-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/26] dma-buf: finally make the
 dma_resv_list private
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RHJpdmVycyBzaG91bGQgbmV2ZXIgdG91Y2ggdGhpcyBkaXJlY3RseS4KClNpZ25lZC1vZmYtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJz
L2RtYS1idWYvZG1hLXJlc3YuYyB8IDI2ICsrKysrKysrKysrKysrKysrKysrKysrKysrCiBpbmNs
dWRlL2xpbnV4L2RtYS1yZXN2LmggICB8IDI2ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAy
IGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1y
ZXN2LmMKaW5kZXggMGRhZWQ2N2NhYjBlLi42MTFiYmE1NTI4YWQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBA
IC01Niw2ICs1NiwxOSBAQAogREVGSU5FX1dEX0NMQVNTKHJlc2VydmF0aW9uX3d3X2NsYXNzKTsK
IEVYUE9SVF9TWU1CT0wocmVzZXJ2YXRpb25fd3dfY2xhc3MpOwogCisvKioKKyAqIHN0cnVjdCBk
bWFfcmVzdl9saXN0IC0gYSBsaXN0IG9mIHNoYXJlZCBmZW5jZXMKKyAqIEByY3U6IGZvciBpbnRl
cm5hbCB1c2UKKyAqIEBzaGFyZWRfY291bnQ6IHRhYmxlIG9mIHNoYXJlZCBmZW5jZXMKKyAqIEBz
aGFyZWRfbWF4OiBmb3IgZ3Jvd2luZyBzaGFyZWQgZmVuY2UgdGFibGUKKyAqIEBzaGFyZWQ6IHNo
YXJlZCBmZW5jZSB0YWJsZQorICovCitzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCB7CisJc3RydWN0IHJj
dV9oZWFkIHJjdTsKKwl1MzIgc2hhcmVkX2NvdW50LCBzaGFyZWRfbWF4OworCXN0cnVjdCBkbWFf
ZmVuY2UgX19yY3UgKnNoYXJlZFtdOworfTsKKwogLyoqCiAgKiBkbWFfcmVzdl9saXN0X2FsbG9j
IC0gYWxsb2NhdGUgZmVuY2UgbGlzdAogICogQHNoYXJlZF9tYXg6IG51bWJlciBvZiBmZW5jZXMg
d2UgbmVlZCBzcGFjZSBmb3IKQEAgLTE2MSw2ICsxNzQsMTkgQEAgdm9pZCBkbWFfcmVzdl9maW5p
KHN0cnVjdCBkbWFfcmVzdiAqb2JqKQogfQogRVhQT1JUX1NZTUJPTChkbWFfcmVzdl9maW5pKTsK
IAorLyoqCisgKiBkbWFfcmVzdl9zaGFyZWRfbGlzdCAtIGdldCB0aGUgcmVzZXJ2YXRpb24gb2Jq
ZWN0J3Mgc2hhcmVkIGZlbmNlIGxpc3QKKyAqIEBvYmo6IHRoZSByZXNlcnZhdGlvbiBvYmplY3QK
KyAqCisgKiBSZXR1cm5zIHRoZSBzaGFyZWQgZmVuY2UgbGlzdC4gQ2FsbGVyIG11c3QgZWl0aGVy
IGhvbGQgdGhlIG9iamVjdHMKKyAqIHRocm91Z2ggZG1hX3Jlc3ZfbG9jaygpIG9yIHRoZSBSQ1Ug
cmVhZCBzaWRlIGxvY2sgdGhyb3VnaCByY3VfcmVhZF9sb2NrKCksCisgKiBvciBvbmUgb2YgdGhl
IHZhcmlhbnRzIG9mIGVhY2gKKyAqLworc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX3Jlc3ZfbGlz
dCAqZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qoc3RydWN0IGRtYV9yZXN2ICpvYmopCit7CisJcmV0dXJu
IHJjdV9kZXJlZmVyZW5jZV9jaGVjayhvYmotPmZlbmNlLCBkbWFfcmVzdl9oZWxkKG9iaikpOwor
fQorCiAvKioKICAqIGRtYV9yZXN2X3Jlc2VydmVfc2hhcmVkIC0gUmVzZXJ2ZSBzcGFjZSB0byBh
ZGQgc2hhcmVkIGZlbmNlcyB0bwogICogYSBkbWFfcmVzdi4KZGlmZiAtLWdpdCBhL2luY2x1ZGUv
bGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAppbmRleCAwZWIwYzA4
YzUxYzkuLmUwY2VjM2E1N2MwOCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5o
CisrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaApAQCAtNDcsMTggKzQ3LDcgQEAKIAogZXh0
ZXJuIHN0cnVjdCB3d19jbGFzcyByZXNlcnZhdGlvbl93d19jbGFzczsKIAotLyoqCi0gKiBzdHJ1
Y3QgZG1hX3Jlc3ZfbGlzdCAtIGEgbGlzdCBvZiBzaGFyZWQgZmVuY2VzCi0gKiBAcmN1OiBmb3Ig
aW50ZXJuYWwgdXNlCi0gKiBAc2hhcmVkX2NvdW50OiB0YWJsZSBvZiBzaGFyZWQgZmVuY2VzCi0g
KiBAc2hhcmVkX21heDogZm9yIGdyb3dpbmcgc2hhcmVkIGZlbmNlIHRhYmxlCi0gKiBAc2hhcmVk
OiBzaGFyZWQgZmVuY2UgdGFibGUKLSAqLwotc3RydWN0IGRtYV9yZXN2X2xpc3QgewotCXN0cnVj
dCByY3VfaGVhZCByY3U7Ci0JdTMyIHNoYXJlZF9jb3VudCwgc2hhcmVkX21heDsKLQlzdHJ1Y3Qg
ZG1hX2ZlbmNlIF9fcmN1ICpzaGFyZWRbXTsKLX07CitzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdDsKIAog
LyoqCiAgKiBzdHJ1Y3QgZG1hX3Jlc3YgLSBhIHJlc2VydmF0aW9uIG9iamVjdCBtYW5hZ2VzIGZl
bmNlcyBmb3IgYSBidWZmZXIKQEAgLTQ0MCwxOSArNDI5LDYgQEAgZG1hX3Jlc3ZfZXhjbF9mZW5j
ZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKIAlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX2NoZWNrKG9i
ai0+ZmVuY2VfZXhjbCwgZG1hX3Jlc3ZfaGVsZChvYmopKTsKIH0KIAotLyoqCi0gKiBkbWFfcmVz
dl9zaGFyZWRfbGlzdCAtIGdldCB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0J3Mgc2hhcmVkIGZlbmNl
IGxpc3QKLSAqIEBvYmo6IHRoZSByZXNlcnZhdGlvbiBvYmplY3QKLSAqCi0gKiBSZXR1cm5zIHRo
ZSBzaGFyZWQgZmVuY2UgbGlzdC4gQ2FsbGVyIG11c3QgZWl0aGVyIGhvbGQgdGhlIG9iamVjdHMK
LSAqIHRocm91Z2ggZG1hX3Jlc3ZfbG9jaygpIG9yIHRoZSBSQ1UgcmVhZCBzaWRlIGxvY2sgdGhy
b3VnaCByY3VfcmVhZF9sb2NrKCksCi0gKiBvciBvbmUgb2YgdGhlIHZhcmlhbnRzIG9mIGVhY2gK
LSAqLwotc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZG1hX3Jlc3Zfc2hhcmVk
X2xpc3Qoc3RydWN0IGRtYV9yZXN2ICpvYmopCi17Ci0JcmV0dXJuIHJjdV9kZXJlZmVyZW5jZV9j
aGVjayhvYmotPmZlbmNlLCBkbWFfcmVzdl9oZWxkKG9iaikpOwotfQotCiB2b2lkIGRtYV9yZXN2
X2luaXQoc3RydWN0IGRtYV9yZXN2ICpvYmopOwogdm9pZCBkbWFfcmVzdl9maW5pKHN0cnVjdCBk
bWFfcmVzdiAqb2JqKTsKIGludCBkbWFfcmVzdl9yZXNlcnZlX3NoYXJlZChzdHJ1Y3QgZG1hX3Jl
c3YgKm9iaiwgdW5zaWduZWQgaW50IG51bV9mZW5jZXMpOwotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
