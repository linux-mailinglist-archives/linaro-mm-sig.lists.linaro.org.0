Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AADCA4614AC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 631FC60E2A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D312761A46; Mon, 29 Nov 2021 12:08:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C774A62CA5;
	Mon, 29 Nov 2021 12:08:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E68B362079
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 821E861E96; Mon, 29 Nov 2021 12:07:27 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by lists.linaro.org (Postfix) with ESMTPS id 463A161A3A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:25 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 r9-20020a7bc089000000b00332f4abf43fso10817075wmh.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ao0QlwnIR0BPrNFzKmnkW6LgKGwtPEdX/Cj9AXAbbyo=;
 b=jevFp14fe/qtyapDl2L94QQ1SJX8LTYt3/+Rk4yVNJ3D2j5rmp+A8waLILQZZN8qma
 lpSd5jyBKq6/U5YB0uJt2bFs5rd+tzmIAdq34vOZV0VzBln/Xd9KeLJ2mwUMwehhm/UM
 oB4hERJvA5y/cggH8/Qs/BnimO8KVZW+3N9amUOAyc2lmiPsPbyrg0uRuK61mWnLeTJJ
 RGQGh7lgy6gFq6OqFrcb/5DP/vYw1xI6uRaOU/UxUH/uzJ0nAUVDyoldPUMSrpWzkQqt
 +b3y5OGU7wX8o3T6ub4a9aJunF4d6Kes/W69EwIZzrYW5YpdRudDZrs2CRzgN7kLWxUn
 zTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ao0QlwnIR0BPrNFzKmnkW6LgKGwtPEdX/Cj9AXAbbyo=;
 b=EVuzn0qhzmEi6C6pN6/7fWYzVloNKlZJ9lFFImnw9rtMSQVrkhr2ixWTKbCG3a+NYH
 mXynXJnDj+dqwPp2hInOm2QB1fny8lBwGGkgKManGVoe/lDvetXk3meHDjR8yythaxrH
 cxjFHuOwOUmauRwILja1KvJn1Kgoz2ZzF08TEWJ29IvINxyIQT8ZREIioN5Iei+RJd79
 HUh7hP7x6V0fAlp8WJ69jVPTqaJtfFflu5WMr+cOtUBmp05m5sDT/fROIopchWA3lGU7
 C4w02AgaC6AMkNfbhb6eRnFxti5cY7QXzXaXG9N799QWkjnos9cqfVfk+IMNIOfAV9jg
 d4hw==
X-Gm-Message-State: AOAM532j1MB8OG5AkTVTOfed7mst61XLryHOpVbc9PBUGEwN8+fV2hLE
 6JEhbNFqOBBztn6tLHWP6Kg4uF0RzUY=
X-Google-Smtp-Source: ABdhPJyrnR/81obxJKIzYMVAvUsSU+yK/bVJWztl2phcRNfRcgdST2eKpZZ6arJm8pKSG7JHstJPaQ==
X-Received: by 2002:a1c:448b:: with SMTP id r133mr36603134wma.85.1638187643831; 
 Mon, 29 Nov 2021 04:07:23 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:23 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:47 +0100
Message-Id: <20211129120659.1815-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 16/28] dma-buf: finally make
 dma_resv_excl_fence private
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
L2RtYS1idWYvZG1hLXJlc3YuYyB8IDE3ICsrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2xpbnV4
L2RtYS1yZXN2LmggICB8IDE3IC0tLS0tLS0tLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDE3
IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKaW5kZXggNjk0NzE2
YTNkNjZkLi45YWNjZWFiYzkzOTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVz
di5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBAIC0xNDcsNiArMTQ3LDIzIEBA
IHZvaWQgZG1hX3Jlc3ZfZmluaShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKIH0KIEVYUE9SVF9TWU1C
T0woZG1hX3Jlc3ZfZmluaSk7CiAKKy8qKgorICogZG1hX3Jlc3ZfZXhjbF9mZW5jZSAtIHJldHVy
biB0aGUgb2JqZWN0J3MgZXhjbHVzaXZlIGZlbmNlCisgKiBAb2JqOiB0aGUgcmVzZXJ2YXRpb24g
b2JqZWN0CisgKgorICogUmV0dXJucyB0aGUgZXhjbHVzaXZlIGZlbmNlIChpZiBhbnkpLiBDYWxs
ZXIgbXVzdCBlaXRoZXIgaG9sZCB0aGUgb2JqZWN0cworICogdGhyb3VnaCBkbWFfcmVzdl9sb2Nr
KCkgb3IgdGhlIFJDVSByZWFkIHNpZGUgbG9jayB0aHJvdWdoIHJjdV9yZWFkX2xvY2soKSwKKyAq
IG9yIG9uZSBvZiB0aGUgdmFyaWFudHMgb2YgZWFjaAorICoKKyAqIFJFVFVSTlMKKyAqIFRoZSBl
eGNsdXNpdmUgZmVuY2Ugb3IgTlVMTAorICovCitzdGF0aWMgaW5saW5lIHN0cnVjdCBkbWFfZmVu
Y2UgKgorZG1hX3Jlc3ZfZXhjbF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKK3sKKwlyZXR1
cm4gcmN1X2RlcmVmZXJlbmNlX2NoZWNrKG9iai0+ZmVuY2VfZXhjbCwgZG1hX3Jlc3ZfaGVsZChv
YmopKTsKK30KKwogLyoqCiAgKiBkbWFfcmVzdl9zaGFyZWRfbGlzdCAtIGdldCB0aGUgcmVzZXJ2
YXRpb24gb2JqZWN0J3Mgc2hhcmVkIGZlbmNlIGxpc3QKICAqIEBvYmo6IHRoZSByZXNlcnZhdGlv
biBvYmplY3QKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUv
bGludXgvZG1hLXJlc3YuaAppbmRleCBjZGZiYmRhNmY2MDAuLjQwYWM5ZDQ4NmY4ZiAxMDA2NDQK
LS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJl
c3YuaApAQCAtNDEyLDIzICs0MTIsNiBAQCBzdGF0aWMgaW5saW5lIHZvaWQgZG1hX3Jlc3ZfdW5s
b2NrKHN0cnVjdCBkbWFfcmVzdiAqb2JqKQogCXd3X211dGV4X3VubG9jaygmb2JqLT5sb2NrKTsK
IH0KIAotLyoqCi0gKiBkbWFfcmVzdl9leGNsX2ZlbmNlIC0gcmV0dXJuIHRoZSBvYmplY3QncyBl
eGNsdXNpdmUgZmVuY2UKLSAqIEBvYmo6IHRoZSByZXNlcnZhdGlvbiBvYmplY3QKLSAqCi0gKiBS
ZXR1cm5zIHRoZSBleGNsdXNpdmUgZmVuY2UgKGlmIGFueSkuIENhbGxlciBtdXN0IGVpdGhlciBo
b2xkIHRoZSBvYmplY3RzCi0gKiB0aHJvdWdoIGRtYV9yZXN2X2xvY2soKSBvciB0aGUgUkNVIHJl
YWQgc2lkZSBsb2NrIHRocm91Z2ggcmN1X3JlYWRfbG9jaygpLAotICogb3Igb25lIG9mIHRoZSB2
YXJpYW50cyBvZiBlYWNoCi0gKgotICogUkVUVVJOUwotICogVGhlIGV4Y2x1c2l2ZSBmZW5jZSBv
ciBOVUxMCi0gKi8KLXN0YXRpYyBpbmxpbmUgc3RydWN0IGRtYV9mZW5jZSAqCi1kbWFfcmVzdl9l
eGNsX2ZlbmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqKQotewotCXJldHVybiByY3VfZGVyZWZlcmVu
Y2VfY2hlY2sob2JqLT5mZW5jZV9leGNsLCBkbWFfcmVzdl9oZWxkKG9iaikpOwotfQotCiB2b2lk
IGRtYV9yZXN2X2luaXQoc3RydWN0IGRtYV9yZXN2ICpvYmopOwogdm9pZCBkbWFfcmVzdl9maW5p
KHN0cnVjdCBkbWFfcmVzdiAqb2JqKTsKIGludCBkbWFfcmVzdl9yZXNlcnZlX3NoYXJlZChzdHJ1
Y3QgZG1hX3Jlc3YgKm9iaiwgdW5zaWduZWQgaW50IG51bV9mZW5jZXMpOwotLSAKMi4yNS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
