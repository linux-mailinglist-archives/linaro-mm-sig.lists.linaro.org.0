Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A58416CC0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 09:18:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1B7362439
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 07:18:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4452B61C4A; Fri, 24 Sep 2021 07:18:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9046362439;
	Fri, 24 Sep 2021 07:18:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 09C1C607A0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 07:18:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 04DCF60A91; Fri, 24 Sep 2021 07:18:07 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id E4F1A60B04
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 07:18:04 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id t8so24383512wrq.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 00:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AwV7Dzo05G1M7WPSGSE6Kp0r0Hu8Z0RNZajG98cvzrU=;
 b=TcWzDxVPitl7PsTMHPQzSbrHYAaqa7eBcAS4tjndb/ae1uaATmnfCtiUNJX27R0ID/
 36oXWGGY3NYz5Hip5qeHa+LXuTONWIXStYv7iSEUXjf8UOe7HtcSSMQ3HPeh3SyZ9Kcv
 whnKZDfRvDMpfLyF5sNzum8K7PSkDXRw8oJMioPKBlOCjWg1vUj0s9hifEOT0zS6V2A8
 pvzkJmdCnXi4tmf1uc87NRXWySBgKgzSkNJ+0dyph5mtMIdgU+8Y9wWOxsGwZioTD0iT
 E/4xGVth2IkloMy9lNzYNI9n6a6Tbv+SD3eV0XNjL646jBamcgxoRbHkELXBSq5oX3g8
 xFzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AwV7Dzo05G1M7WPSGSE6Kp0r0Hu8Z0RNZajG98cvzrU=;
 b=EIUXmJdHJa5mfcyYAxyJh4FZzC+8TRyag3FE955CVrlfb0L7/tWtAS9ZVOeJNJ/mkv
 z9/GAQvAmqS14HAWkazNf8g5rVIRzs1WTCbSsyzjtJ2+A8n88paGg1ER82VqdD5GD4H9
 I52XTmQBn1PUURaCUVNUVB1DqMKxnIg96ghSQsjh+GA3uEWyAX5ndXtpUh4/grd9gZCW
 ZuY8vNphw+nTNeoPtC3MO9GvP4xQ1IzvSjoBfho/kUeuyAbc7TQdoHjnEiaQ3K2dk7v8
 Sxxn6Ehp5anG6CbEjqjURkhBnUa3uRr8Bvg75O3pRQjf7vyLnb6LvGaxbr1XiRPG6Jz2
 NVoQ==
X-Gm-Message-State: AOAM530ZaGvc/DLaQtu8E8M2Emng7Xcjnd6M+DY+sC5q+PpTq/W7y6u1
 mY2jHNAqFfS/1W/XtloHnt8=
X-Google-Smtp-Source: ABdhPJxxTY5kzWJ30+okdI1Hp4dxwBDgVKVNeDPsnbdYr7Z1xmwPQhhUFBtxUi+JI6t45GtcLNW0rw==
X-Received: by 2002:a7b:c7c6:: with SMTP id z6mr473499wmk.34.1632467884025;
 Fri, 24 Sep 2021 00:18:04 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 b7sm9200070wrm.9.2021.09.24.00.18.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 00:18:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, etnaviv@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Date: Fri, 24 Sep 2021 09:17:58 +0200
Message-Id: <20210924071759.22659-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924071759.22659-1-christian.koenig@amd.com>
References: <20210924071759.22659-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 3/4] drm/msm: use the new dma_resv_describe
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
Cc: christian.gmeiner@gmail.com, linux+etnaviv@armlinux.org.uk, sean@poorly.run,
 robdclark@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SW5zdGVhZCBvZiBoYW5kIHJvbGxpbmcgcHJldHR5IG11Y2ggdGhlIHNhbWUgY29kZS4KClNpZ25l
ZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyB8IDIwICstLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL21z
bS9tc21fZ2VtLmMKaW5kZXggNWJkNTExZjA3YzA3Li4zODc4YjhkYzJkNTkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20v
bXNtX2dlbS5jCkBAIC04NjUsMjMgKzg2NSwxMSBAQCBpbnQgbXNtX2dlbV9jcHVfZmluaShzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKIH0KIAogI2lmZGVmIENPTkZJR19ERUJVR19GUwotc3Rh
dGljIHZvaWQgZGVzY3JpYmVfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IGNo
YXIgKnR5cGUsCi0JCXN0cnVjdCBzZXFfZmlsZSAqbSkKLXsKLQlpZiAoIWRtYV9mZW5jZV9pc19z
aWduYWxlZChmZW5jZSkpCi0JCXNlcV9wcmludGYobSwgIlx0JTlzOiAlcyAlcyBzZXEgJWxsdVxu
IiwgdHlwZSwKLQkJCQlmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpLAotCQkJCWZl
bmNlLT5vcHMtPmdldF90aW1lbGluZV9uYW1lKGZlbmNlKSwKLQkJCQlmZW5jZS0+c2Vxbm8pOwot
fQotCiB2b2lkIG1zbV9nZW1fZGVzY3JpYmUoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0
cnVjdCBzZXFfZmlsZSAqbSwKIAkJc3RydWN0IG1zbV9nZW1fc3RhdHMgKnN0YXRzKQogewogCXN0
cnVjdCBtc21fZ2VtX29iamVjdCAqbXNtX29iaiA9IHRvX21zbV9ibyhvYmopOwogCXN0cnVjdCBk
bWFfcmVzdiAqcm9iaiA9IG9iai0+cmVzdjsKLQlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7
Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJc3RydWN0IG1zbV9nZW1fdm1hICp2bWE7CiAJ
dWludDY0X3Qgb2ZmID0gZHJtX3ZtYV9ub2RlX3N0YXJ0KCZvYmotPnZtYV9ub2RlKTsKIAljb25z
dCBjaGFyICptYWR2OwpAQCAtOTU1LDEzICs5NDMsNyBAQCB2b2lkIG1zbV9nZW1fZGVzY3JpYmUo
c3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBzZXFfZmlsZSAqbSwKIAkJc2VxX3B1
dHMobSwgIlxuIik7CiAJfQogCi0JZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UoJmN1cnNvciwgcm9i
aiwgdHJ1ZSwgZmVuY2UpIHsKLQkJaWYgKGRtYV9yZXN2X2l0ZXJfaXNfZXhjbHVzaXZlKCZjdXJz
b3IpKQotCQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUiLCBtKTsKLQkJZWxzZQot
CQkJZGVzY3JpYmVfZmVuY2UoZmVuY2UsICJTaGFyZWQiLCBtKTsKLQl9Ci0KKwlkbWFfcmVzdl9k
ZXNjcmliZShyb2JqLCBtKTsKIAltc21fZ2VtX3VubG9jayhvYmopOwogfQogCi0tIAoyLjI1LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
