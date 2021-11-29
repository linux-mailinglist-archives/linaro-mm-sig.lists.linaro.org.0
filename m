Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B21461493
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:07:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52E8E60EA6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:07:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 387AE61A57; Mon, 29 Nov 2021 12:07:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52D8F62C9F;
	Mon, 29 Nov 2021 12:07:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F222562C93
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8728361A47; Mon, 29 Nov 2021 12:07:13 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 99DC260EA6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:09 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id l16so36248925wrp.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X6ySwafYwpXOWfjGt/R2GvQ9sadn6tgCtihtrrGmV/M=;
 b=UeZryZJHfTmF8fPhMaF6TBuRW/W96jpGtczNhEPhy1TYcEbhpyZSwD0kUioV/HHryK
 LFEL6CI2FTynk+RGLVIunP2cldCN8EFuB0S8nGuYB5TtBukEaWa44B12cfKAopZgn4mU
 e+Ma0ud5GWGG0xHNn6ALSyUy8tD0Sdck2FyxeqGSIAMpzllXtOdxVQmixwAgTArdZpDK
 q0h+dS2DoRCWyUmQeNAXWiSCIXlnEiBRbeLZrFzg6odhr4EMPMoUhan3If2f5nHdLl6Z
 wAYJ8Yng0qGxR+xvEYsl8EvjOEQ+Ut8bRfmEWKPe5sAW/sYmOC5s5haH0RPPFg8fZVom
 1bjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X6ySwafYwpXOWfjGt/R2GvQ9sadn6tgCtihtrrGmV/M=;
 b=wegYdTu8xGR0tkh9cU9HY6qAI3F55rNxCqMfARRSlbwI8yEnQvv5mjnX4fRU7zdqeA
 m7h/3wZS1hZbHR3AKRhYbIwevWBzIKPolk+8b1n83sFqeX2NFM4wc+W0YKByFXl/kB8j
 EB+S+3ut7NL4H84dPTSP+ZW9AbmSrnujj0YIdkmO1EopPwAF/nhglRvMAWokzqpPWoW4
 TR5lLpCaONVwxjfdqra/ZRNfBrxBd1LHGH0VVL8NWwn4w1f5hLtfGxeTPxV9jgwivHUZ
 wFm5bOamw+VFHguJywfPFzrGZHXwSsWDDSHnwZ/XKZ8VmgtUjNjTMYe2AC5oVABal93M
 kxDg==
X-Gm-Message-State: AOAM5326fY3PHEqAcnVkdPr8uYtVsG3rst5vUDqjuulwCa22b45geI4A
 a4nKp1/EPdwqa2r0NJSvOXM=
X-Google-Smtp-Source: ABdhPJwsfjTSI+Z+n7IWuo7CoBW7/ZRoSaoue71ExheG8op170QO+gs/hv21daWUTwzXUtMnI0feIg==
X-Received: by 2002:a05:6000:2ae:: with SMTP id
 l14mr33386653wry.142.1638187628520; 
 Mon, 29 Nov 2021 04:07:08 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:08 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:37 +0100
Message-Id: <20211129120659.1815-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 06/28] dma-buf: finally make the
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
ZXN2LmMKaW5kZXggYTY4OGRiZGVkM2QzLi5hMTJhM2EzOWYyODAgMTAwNjQ0Ci0tLSBhL2RyaXZl
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
d2UgbmVlZCBzcGFjZSBmb3IKQEAgLTEzMyw2ICsxNDYsMTkgQEAgdm9pZCBkbWFfcmVzdl9maW5p
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
bGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAppbmRleCBlMGJlMzQy
NjVlYWUuLjNiYWYyYTRhOWEwZCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5o
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
