Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7E040F7DE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:36:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93C1366702
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:36:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0E31168641; Fri, 17 Sep 2021 12:36:23 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B862C69CDE;
	Fri, 17 Sep 2021 12:36:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3B4F666BF0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3356869CE3; Fri, 17 Sep 2021 12:35:32 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id 88FCA69CCD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:28 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id w29so14920321wra.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BrbXMO1uME+f7mLVpMCcy22kq2yF+JjSyltoWjwipSg=;
 b=bviXeXeCrAWZNOqQCBhHL015HD9zANiiD1Ju1cCP+d9sUE83p67saA0OHqEGKzTam7
 HdV54+gh2VmKuE40uOPj4Mf/xEl0M6s5KMpSN3xlzeRcYhJ4ckTPYjpgrzuSRTt4+0Hl
 RXD2oc23kLoXKDqDohUeLEIEWIWrhtqY627SP2iBr4l4lhB0k90vuQ549nrdMQrtdAD/
 cR4vAFJX1Nx1vEZY+Luy7W7qMZ3NHm6LXN3TIz1tcdlz+4mBCwAh0YlfdOvyes6GpVnh
 0IDr45hLwzmFtrnRsRWpKxoUXGATG5bN4+ndE8B/CKSububs2FOS2ENs951hQNB/3Uw/
 B81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BrbXMO1uME+f7mLVpMCcy22kq2yF+JjSyltoWjwipSg=;
 b=BhMf+nwV8alMRp1bYJnawcX9Pifmo5sjQG0jX0oFwbzxppMkXR0O1CS6FVe9BIno2f
 qGlR6fGHIFyxjJUCf+oXqI2TGF84H6WXU9CGLEtoU0PhoZOku8t5R39APvKaRBDThO0M
 qMq2+xj7SrWPNTDOi0lnICq5YPZvkFgqw+HGGHHsXW7YtCXI2aRZaIp2yNeyckUepqho
 bMHqMO9zAvRkORtuivZtEeJ5gDtxiW21n817s0XIJLVXc0liPSb2qevL40IH8MNtLaXl
 807aEqIZ3XYgO/NUof+o9hgdTyzk8j/ThsMe1Pnrdbzy0ig2CmDbcqvFupl8j1RMOmJM
 Cvxg==
X-Gm-Message-State: AOAM5302tjsIWfVFbgWRhxvBLdh2/xTWHirYzTt8de81pgvLCoLlHHXZ
 XOg/2a0izQ7XP1vyV2CLlQcm4B6Wvw8=
X-Google-Smtp-Source: ABdhPJx8Hxqa3VDTaoBwL3jmEPhMic46DgkUgKS4VuJlO4HQI4pbqyIWl+bnYxJEX+ODY9LowQLqTw==
X-Received: by 2002:adf:f101:: with SMTP id r1mr11239973wro.355.1631882127339; 
 Fri, 17 Sep 2021 05:35:27 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:27 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:35:00 +0200
Message-Id: <20210917123513.1106-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 13/26] drm/i915: use the new iterator in
 i915_gem_busy_ioctl
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2Ugd2hlcmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyB8IDMyICsrKysrKysrLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCmluZGV4IDYyMzRlMTcyNTljMS4u
YjFjYjdiYTY4OGRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fYnVzeS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMK
QEAgLTgyLDggKzgyLDggQEAgaTkxNV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCB2b2lkICpkYXRhLAogewogCXN0cnVjdCBkcm1faTkxNV9nZW1fYnVzeSAqYXJncyA9IGRh
dGE7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQlzdHJ1Y3QgZG1hX3Jlc3Zf
bGlzdCAqbGlzdDsKLQl1bnNpZ25lZCBpbnQgc2VxOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1
cnNvcjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAlpbnQgZXJyOwogCiAJZXJyID0gLUVO
T0VOVDsKQEAgLTEwOSwyNyArMTA5LDE3IEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkgKiB0byByZXBvcnQgdGhlIG92ZXJhbGwgYnVz
eW5lc3MuIFRoaXMgaXMgd2hhdCB0aGUgd2FpdC1pb2N0bCBkb2VzLgogCSAqCiAJICovCi1yZXRy
eToKLQlzZXEgPSByYXdfcmVhZF9zZXFjb3VudCgmb2JqLT5iYXNlLnJlc3YtPnNlcSk7Ci0KLQkv
KiBUcmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSBl
bmdpbmUgKi8KLQlhcmdzLT5idXN5ID0gYnVzeV9jaGVja193cml0ZXIoZG1hX3Jlc3ZfZXhjbF9m
ZW5jZShvYmotPmJhc2UucmVzdikpOwotCi0JLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8g
UkVBRCBzZXQgb2YgZW5naW5lcyAqLwotCWxpc3QgPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChvYmot
PmJhc2UucmVzdik7Ci0JaWYgKGxpc3QpIHsKLQkJdW5zaWduZWQgaW50IHNoYXJlZF9jb3VudCA9
IGxpc3QtPnNoYXJlZF9jb3VudCwgaTsKLQotCQlmb3IgKGkgPSAwOyBpIDwgc2hhcmVkX2NvdW50
OyArK2kpIHsKLQkJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0KLQkJCQlyY3VfZGVyZWZlcmVu
Y2UobGlzdC0+c2hhcmVkW2ldKTsKLQorCWFyZ3MtPmJ1c3kgPSBmYWxzZTsKKwlkbWFfcmVzdl9p
dGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+YmFzZS5yZXN2LCB0cnVlKTsKKwlkbWFfcmVzdl9mb3Jf
ZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgeworCQlpZiAoZG1hX3Jlc3ZfaXRl
cl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQkvKiBUcmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBm
ZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSBlbmdpbmUgKi8KKwkJCWFyZ3MtPmJ1c3kgPSBi
dXN5X2NoZWNrX3dyaXRlcihmZW5jZSk7CisJCWVsc2UKKwkJCS8qIFRyYW5zbGF0ZSBzaGFyZWQg
ZmVuY2VzIHRvIFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8KIAkJCWFyZ3MtPmJ1c3kgfD0gYnVzeV9j
aGVja19yZWFkZXIoZmVuY2UpOwotCQl9CiAJfQotCi0JaWYgKGFyZ3MtPmJ1c3kgJiYgcmVhZF9z
ZXFjb3VudF9yZXRyeSgmb2JqLT5iYXNlLnJlc3YtPnNlcSwgc2VxKSkKLQkJZ290byByZXRyeTsK
KwlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKIAogCWVyciA9IDA7CiBvdXQ6Ci0tIAoyLjI1
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
