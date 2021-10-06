Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BC3423DCF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Oct 2021 14:36:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A91D661655
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Oct 2021 12:36:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8DC7260767; Wed,  6 Oct 2021 12:36:18 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C5D56057D;
	Wed,  6 Oct 2021 12:36:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5A13E60561
 for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Oct 2021 12:36:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 57D9B60591; Wed,  6 Oct 2021 12:36:14 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 4A2DD60561
 for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Oct 2021 12:36:12 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id s15so8373472wrv.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 06 Oct 2021 05:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BC8JYdK1Qu0/aQcZikfhJVKjP/atFAZpc20Z0L0BuCA=;
 b=abKRjK7veYtiBHtIGNTmHlg0nL2qqVYcjboGWEWZ/NNgRilFnZgevTmqEpM7Wi9sHi
 f/ROK0TD31VEY2vWDIT8j9yiFFJ/ZKtGCuMqI8xV7dUgYcqYcC6L52Q/Us8XksdQR9qG
 arEL0T4xpsgheI2llrN3+Dir/E3JfV+UHtl3tOUsPfTO3wOidjdIy9vD4AHNJEI344bB
 L/x2Er0EDxAfmYFT6VSldsbQIR09EFAdtBIyDT20RKFcYWBuYbHAbePAitCY3aomJ8bg
 j0GE9A4+gEZ4HYaEMYVupceMd1tGUiVIjhbg3YubuaIYjndZsREgRHAUbghLH42u8UBr
 vhZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BC8JYdK1Qu0/aQcZikfhJVKjP/atFAZpc20Z0L0BuCA=;
 b=XVOj1RF4e4sCC2hgnj46TPAbno4BpsC3/ugse0T548aS47y7mnuZUNhww9gXLBAksI
 7aXls+HE9/ijIq3XCb91u14yFeEeo7+SSacssQuucnimMHwZK50iP0fJP9Qut+lZnd2Z
 mtcigGqNWNaeNN584z7ne11gaveSgaHUrMLebhEFNqMtL7AVaYk2q9HdoseouMzzl1C1
 jg2q2JAYbi/PqjvV8YQTQ+2gi2ZrXdo8rboFtVk8p9hICwOh/H9+9/eZBGD0qpU+k7vz
 gvEB8TMgCY9mZAfZXDPAgzA08PquAzjHXWK/W7dpxx84V4HPFS2tV7lIjsaojqVmmlu6
 Dj5g==
X-Gm-Message-State: AOAM530iBuN5ScWbqAkN1nsBMoMM1OT/FC9feDsd0CmUjYQZ2ObeIIuO
 a02W0ZUNkMENTY5qR+L8bNBbZpjJcvE=
X-Google-Smtp-Source: ABdhPJwVwv3VWEYd7jtzwhszVYTIIG0IDAE548fEEOyXsiE+H0dJetJEqy1Pew5FbBmXaLP1Wz1J4A==
X-Received: by 2002:a05:600c:4f16:: with SMTP id
 l22mr5838560wmq.152.1633523771376; 
 Wed, 06 Oct 2021 05:36:11 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l124sm5194770wml.8.2021.10.06.05.36.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Oct 2021 05:36:10 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Date: Wed,  6 Oct 2021 14:36:08 +0200
Message-Id: <20211006123609.2026-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf: add dma_resv_for_each_fence v3
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
Cc: tvrtko.ursulin@linux.intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QSBzaW1wbGVyIHZlcnNpb24gb2YgdGhlIGl0ZXJhdG9yIHRvIGJlIHVzZWQgd2hlbiB0aGUgZG1h
X3Jlc3Ygb2JqZWN0IGlzCmxvY2tlZC4KCnYyOiBmaXggaW5kZXggY2hlY2sgaGVyZSBhcyB3ZWxs
CnYzOiBtaW5vciBjb2RpbmcgaW1wcm92ZW1lbnQsIHNvbWUgZG9jdW1lbnRhdGlvbiBjbGVhbnVw
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCA1MSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oICAgfCAyMCAr
KysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNzEgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1y
ZXN2LmMKaW5kZXggYTQ4MGFmOTU4MWJkLi4yZjk4Y2FhNjhhZTUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBA
IC00MjMsNiArNDIzLDU3IEBAIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfbmV4dF91
bmxvY2tlZChzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29yKQogfQogRVhQT1JUX1NZTUJPTChk
bWFfcmVzdl9pdGVyX25leHRfdW5sb2NrZWQpOwogCisvKioKKyAqIGRtYV9yZXN2X2l0ZXJfZmly
c3QgLSBmaXJzdCBmZW5jZSBmcm9tIGEgbG9ja2VkIGRtYV9yZXN2IG9iamVjdAorICogQGN1cnNv
cjogY3Vyc29yIHRvIHJlY29yZCB0aGUgY3VycmVudCBwb3NpdGlvbgorICoKKyAqIFJldHVybiB0
aGUgZmlyc3QgZmVuY2UgaW4gdGhlIGRtYV9yZXN2IG9iamVjdCB3aGlsZSBob2xkaW5nIHRoZQor
ICogJmRtYV9yZXN2LmxvY2suCisgKi8KK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJf
Zmlyc3Qoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcikKK3sKKwlzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZTsKKworCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGN1cnNvci0+b2JqKTsKKworCWN1cnNv
ci0+aW5kZXggPSAwOworCWlmIChjdXJzb3ItPmFsbF9mZW5jZXMpCisJCWN1cnNvci0+ZmVuY2Vz
ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3QoY3Vyc29yLT5vYmopOworCWVsc2UKKwkJY3Vyc29yLT5m
ZW5jZXMgPSBOVUxMOworCisJZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKGN1cnNvci0+b2Jq
KTsKKwlpZiAoIWZlbmNlKQorCQlmZW5jZSA9IGRtYV9yZXN2X2l0ZXJfbmV4dChjdXJzb3IpOwor
CisJY3Vyc29yLT5pc19yZXN0YXJ0ZWQgPSB0cnVlOworCXJldHVybiBmZW5jZTsKK30KK0VYUE9S
VF9TWU1CT0xfR1BMKGRtYV9yZXN2X2l0ZXJfZmlyc3QpOworCisvKioKKyAqIGRtYV9yZXN2X2l0
ZXJfbmV4dCAtIG5leHQgZmVuY2UgZnJvbSBhIGxvY2tlZCBkbWFfcmVzdiBvYmplY3QKKyAqIEBj
dXJzb3I6IGN1cnNvciB0byByZWNvcmQgdGhlIGN1cnJlbnQgcG9zaXRpb24KKyAqCisgKiBSZXR1
cm4gdGhlIG5leHQgZmVuY2VzIGZyb20gdGhlIGRtYV9yZXN2IG9iamVjdCB3aGlsZSBob2xkaW5n
IHRoZQorICogJmRtYV9yZXN2LmxvY2suCisgKi8KK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2
X2l0ZXJfbmV4dChzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29yKQoreworCXVuc2lnbmVkIGlu
dCBpZHg7CisKKwlkbWFfcmVzdl9hc3NlcnRfaGVsZChjdXJzb3ItPm9iaik7CisKKwljdXJzb3It
PmlzX3Jlc3RhcnRlZCA9IGZhbHNlOworCWlmICghY3Vyc29yLT5mZW5jZXMgfHwgY3Vyc29yLT5p
bmRleCA+PSBjdXJzb3ItPmZlbmNlcy0+c2hhcmVkX2NvdW50KQorCQlyZXR1cm4gTlVMTDsKKwor
CWlkeCA9IGN1cnNvci0+aW5kZXgrKzsKKwlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3Rl
ZChjdXJzb3ItPmZlbmNlcy0+c2hhcmVkW2lkeF0sCisJCQkJCSBkbWFfcmVzdl9oZWxkKGN1cnNv
ci0+b2JqKSk7Cit9CitFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl9pdGVyX25leHQpOworCiAv
KioKICAqIGRtYV9yZXN2X2NvcHlfZmVuY2VzIC0gQ29weSBhbGwgZmVuY2VzIGZyb20gc3JjIHRv
IGRzdC4KICAqIEBkc3Q6IHRoZSBkZXN0aW5hdGlvbiByZXNlcnZhdGlvbiBvYmplY3QKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3Yu
aAppbmRleCA3NjQxMzhhZDg1ODMuLjQ5MTM1OWNlYTU0YyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9s
aW51eC9kbWEtcmVzdi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaApAQCAtMTc5LDYg
KzE3OSw4IEBAIHN0cnVjdCBkbWFfcmVzdl9pdGVyIHsKIAogc3RydWN0IGRtYV9mZW5jZSAqZG1h
X3Jlc3ZfaXRlcl9maXJzdF91bmxvY2tlZChzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29yKTsK
IHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfbmV4dF91bmxvY2tlZChzdHJ1Y3QgZG1h
X3Jlc3ZfaXRlciAqY3Vyc29yKTsKK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfZmly
c3Qoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcik7CitzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFf
cmVzdl9pdGVyX25leHQoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcik7CiAKIC8qKgogICog
ZG1hX3Jlc3ZfaXRlcl9iZWdpbiAtIGluaXRpYWxpemUgYSBkbWFfcmVzdl9pdGVyIG9iamVjdApA
QCAtMjQ0LDYgKzI0NiwyNCBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZG1hX3Jlc3ZfaXRlcl9pc19y
ZXN0YXJ0ZWQoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcikKIAlmb3IgKGZlbmNlID0gZG1h
X3Jlc3ZfaXRlcl9maXJzdF91bmxvY2tlZChjdXJzb3IpOwkJXAogCSAgICAgZmVuY2U7IGZlbmNl
ID0gZG1hX3Jlc3ZfaXRlcl9uZXh0X3VubG9ja2VkKGN1cnNvcikpCiAKKy8qKgorICogZG1hX3Jl
c3ZfZm9yX2VhY2hfZmVuY2UgLSBmZW5jZSBpdGVyYXRvcgorICogQGN1cnNvcjogYSBzdHJ1Y3Qg
ZG1hX3Jlc3ZfaXRlciBwb2ludGVyCisgKiBAb2JqOiBhIGRtYV9yZXN2IG9iamVjdCBwb2ludGVy
CisgKiBAYWxsX2ZlbmNlczogdHJ1ZSBpZiBhbGwgZmVuY2VzIHNob3VsZCBiZSByZXR1cm5lZAor
ICogQGZlbmNlOiB0aGUgY3VycmVudCBmZW5jZQorICoKKyAqIEl0ZXJhdGUgb3ZlciB0aGUgZmVu
Y2VzIGluIGEgc3RydWN0IGRtYV9yZXN2IG9iamVjdCB3aGlsZSBob2xkaW5nIHRoZQorICogJmRt
YV9yZXN2LmxvY2suIEBhbGxfZmVuY2VzIGNvbnRyb2xzIGlmIHRoZSBzaGFyZWQgZmVuY2VzIGFy
ZSByZXR1cm5lZCBhcworICogd2VsbC4gVGhlIGN1cnNvciBpbml0aWFsaXNhdGlvbiBpcyBwYXJ0
IG9mIHRoZSBpdGVyYXRvciBhbmQgdGhlIGZlbmNlIHN0YXlzCisgKiB2YWxpZCBhcyBsb25nIGFz
IHRoZSBsb2NrIGlzIGhlbGQgYW5kIHNvIG5vIGV4dHJhIHJlZmVyZW5jZSB0byB0aGUgZmVuY2Ug
aXMKKyAqIHRha2VuLgorICovCisjZGVmaW5lIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKGN1cnNv
ciwgb2JqLCBhbGxfZmVuY2VzLCBmZW5jZSkJXAorCWZvciAoZG1hX3Jlc3ZfaXRlcl9iZWdpbihj
dXJzb3IsIG9iaiwgYWxsX2ZlbmNlcyksCVwKKwkgICAgIGZlbmNlID0gZG1hX3Jlc3ZfaXRlcl9m
aXJzdChjdXJzb3IpOyBmZW5jZTsJXAorCSAgICAgZmVuY2UgPSBkbWFfcmVzdl9pdGVyX25leHQo
Y3Vyc29yKSkKKwogI2RlZmluZSBkbWFfcmVzdl9oZWxkKG9iaikgbG9ja2RlcF9pc19oZWxkKCYo
b2JqKS0+bG9jay5iYXNlKQogI2RlZmluZSBkbWFfcmVzdl9hc3NlcnRfaGVsZChvYmopIGxvY2tk
ZXBfYXNzZXJ0X2hlbGQoJihvYmopLT5sb2NrLmJhc2UpCiAKLS0gCjIuMjUuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
