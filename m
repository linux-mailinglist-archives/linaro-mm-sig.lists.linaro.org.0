Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FCF46BB5B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EAAAB61C40
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C870F62DC2; Tue,  7 Dec 2021 12:35:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB0C262D15;
	Tue,  7 Dec 2021 12:35:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D408261E5C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DCE6F62C9F; Tue,  7 Dec 2021 12:34:33 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id A397A62CFC
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:28 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id j3so29231694wrp.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ao0QlwnIR0BPrNFzKmnkW6LgKGwtPEdX/Cj9AXAbbyo=;
 b=lFiBNhuCOTWa1JmB8pVxFfIV376b05LFMBtL6k6esixehcvwxOYwCSY1wJ531gxsyI
 1ODDU3bSOCvguGl0n25Wk1Y9Y+URe1PfTrAJ36ANqQLiKDiQUCPhipWUOhrg5Vlr4QqD
 4GrCjm0c5zOlcifmlWUpe9oKRrhdUJ7TH/D4q+OEbzojeVJcX67JZ4vu/mbVzKbhQBLL
 yj2EjbuTupYL0cAGLjzhzO8iOENJfKXjWkDyoFwAfi8N8M4y4YhIaVg/4aAhlzRaBe94
 qwtAOgetxq+4DIcrFm9Nfqzpvht+T2lKmrVo/CLMoWmj6dcMkCUNOug2fcx2ttcpXVqA
 StSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ao0QlwnIR0BPrNFzKmnkW6LgKGwtPEdX/Cj9AXAbbyo=;
 b=ezO4kYrPfq1mNidc3tM3pqcln5nMiXY7TUfLvNU8psA4dFYlGZYJdsyZAwJbf44Q83
 aNWdTnYr7XqsbVP8OZlyx5LIjJM9yPfikzhQBrx31FPokC2rjccI24dNHv39mPRp6MMf
 zAF2oJaid96hJxkWnW75tMFSQqMypZmU/p9c47a43hSuHdkplCWQbgkndIVxWlOmIUu4
 mPpMkBJ1YhFcok6WXdYBa477UeS7b0RPlu+K4RTIs7+lE3mwy6TLNrP9n93t6JEnzmhR
 Dtp+WgUcY2FaFu9SdkGe0hLcss9+YbK8k2d3gZf5MOYuA0Wf0ATyBOs6KszjaO6qNf2C
 Ws/A==
X-Gm-Message-State: AOAM530UIA7KDPQUT815SWfXa61K22Jpnwa/A5BKYXgHDVMHxM/kfBsq
 GAqg3nnjsZwjgJNXBR4y3/c=
X-Google-Smtp-Source: ABdhPJzQ5FO8Kp/E6suVibkttAQSH1UhF+nOw1hpGKlA3Yx/YaL++9C1S6lYcCLgs2UJf88YOoKUaw==
X-Received: by 2002:adf:f990:: with SMTP id f16mr48996757wrr.128.1638880467050; 
 Tue, 07 Dec 2021 04:34:27 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:26 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:33:59 +0100
Message-Id: <20211207123411.167006-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 12/24] dma-buf: finally make
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
