Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D965745A57F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:23:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B11A462CA1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:22:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1FEB862D4A; Tue, 23 Nov 2021 14:22:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61E5462D3C;
	Tue, 23 Nov 2021 14:22:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A212C6216E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 00EF462A45; Tue, 23 Nov 2021 14:21:48 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 9F08962D32
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:44 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id 133so18933750wme.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EIK2Rv95IimliWtAgRf2dZ+cHmRPtVUYQaZZCSFa3qI=;
 b=qpAC6sKMWV77V3k95KiVNbdd0UySTnLgi0VzWZv9Q/1SL/ZWKpsllwduR/ovq5Dr+J
 ywTgHzTZoIJgyj3ewsHXUd52Lzq9vtLBHP65/iyTjILANi35OpUnB0MS7/X9n9qaluZR
 V0kgzextpuq/SrBT5VTOBXSVJ6PXmByAkcuOy8kCpggQO50erPELeetj7+40NrV9E1EG
 4i6dlCW0c9FlpKe6LZuT/Oe402StZL6CSZuYYEA70wv/UjDtfYYhi3guOwdcvU/NBEc6
 BgvMAjSmJn8fnuXa0Iruw4M5bYZo7qKRc+Xa13ro30whfFd0JJpb1O172tloOWZDQ92R
 7pZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EIK2Rv95IimliWtAgRf2dZ+cHmRPtVUYQaZZCSFa3qI=;
 b=4HS8/OthJeXZp6x8PuZ07fc8bWFWq8Y4sWgW5ahUcCjoE5KlakkI8ejOiRa9D7ihFu
 DnjHqAhTNL4N4J88425hGXWdG5cq1VU3GZ1c6Kg+QTObWPAMdOsRkmn5YbTey4VbCydh
 peH3bLrm0fIUQAz3i79Lb6SC+XCL92YQGPmRL7vL025VW56Yjh9JKAMqFgXjHpfz+F+N
 sTgAxOncwKf2UGTuaguWrIzSxPtgHQbJio/WFsC1GiA+J7Xcqq3y0TY2SpbuV7mPhREF
 OB8ypBIJViUZf4VTJ1dBGeBfFlAv4EijEka+vS+rHkBVcWHeKvuTyNGFhBUG++K5rjIS
 VkgA==
X-Gm-Message-State: AOAM532+Z2gWE6D8lfp/1eY5CdDzAsqisEnoqQIyF9MQ7x3asgt7MmNR
 DipHp0ev6IgOQgmRxwOAcas=
X-Google-Smtp-Source: ABdhPJwBWMzR4LY8DWWvZwbJbBOfuTy7fXUYMxmrzrxW3z5zk3L6f+uEC9yCYX+eJ8XMwLU9hUdRXg==
X-Received: by 2002:a05:600c:1f17:: with SMTP id
 bd23mr3678317wmb.57.1637677302713; 
 Tue, 23 Nov 2021 06:21:42 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:42 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:21:01 +0100
Message-Id: <20211123142111.3885-17-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211123142111.3885-1-christian.koenig@amd.com>
References: <20211123142111.3885-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 16/26] dma-buf: finally make
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
LWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKaW5kZXggZjkxY2Ew
MjNiNTUwLi41MzliOWIxZGY2NDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVz
di5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBAIC0xNzUsNiArMTc1LDIzIEBA
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
bGludXgvZG1hLXJlc3YuaAppbmRleCAwODJmNzdiN2JjNjMuLjA2MjU3MWMwNGJjYSAxMDA2NDQK
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
