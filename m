Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A75D6408C68
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4A9262CF6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0677F69D0D; Mon, 13 Sep 2021 13:18:05 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C06963426;
	Mon, 13 Sep 2021 13:18:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B631E61F3E
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9AFDB61C55; Mon, 13 Sep 2021 13:17:29 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id 4C6D6619C1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:27 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id
 192-20020a1c04c9000000b002f7a4ab0a49so5241602wme.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R6hl7Kj0yqQ18nUKlg1tjNnt1DaG6v6UQcKSpcEHFSE=;
 b=N1yh3KLMPT2mSLdGaNPMr4FcR2oS5TudmRGaIzNscK5H43U4M9/1H/Zjf1pdaepVW8
 mmP4W86H2+S2MuPhd6iRL1B1CF07HnuqLLDI4CkZPRL5M1O7HO/y7AaIsZbp3uShV/I3
 Zavhexb7l14JcmV5JgKo3j/16BkY6WUZZDf4Za2Uxi75ko8zgiy0arh4QncD/OfhJHk2
 c+6ml7UNDHKPzr48GZyzH+QzsHDwRk3HyQ4VubasIElM+5sfz3n3Scyla6SIqlKaA9Vz
 NMWd7qJBkaWGbrTW2pWQuf9M9CDkEzaRqkmdoVPQdoSm9SlcPHPvXoIH3G9BPmVCs/FF
 dbAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R6hl7Kj0yqQ18nUKlg1tjNnt1DaG6v6UQcKSpcEHFSE=;
 b=2rYI0nCCAGKKNwSkn2AwTpDU3RxVdzEErS9F0w03R3FSHeAJPBOqK7l1us053M7SN/
 CX4AeU+9sNanLWw+aUmeOJQB4gHx66v62Af4ojB/eOo/8xfJT3unQq7J5foGW7vejEUZ
 2wVd0RT2OP8OJCWggMl3P17bPTBfvsuqtCq/Sg5FZd0+8zhpVfNV7KQInaGk2kEUPVFx
 gsiAdfMu60frFO/TrzDl8TOqZpy9oDQlMYj3/Bqbrn9/+Q/nIUyTcT5FNNq+pMHoa24t
 B91twB6WJxqPyVua7EwnXVaJafBJ2izqLtkKxLRVSXxk1OrtMlfAjBvE+ZF2d92rFiTg
 iLtw==
X-Gm-Message-State: AOAM530dWp7B9HEcE46K2W2xrLM/jHCEgqU2wbNSAVemQ3WTsQG/KTCy
 kKBe1cjJ7KQqr+4L/dcp7bwNctYJf3gI7vgK
X-Google-Smtp-Source: ABdhPJzynpoOddBfRnKkBOAXF99mq6o+MV9PdUiMtxClU6QvSUdcyopeL7XqvPv6o1S/dqJefTgVHg==
X-Received: by 2002:a1c:9a12:: with SMTP id c18mr871983wme.51.1631539046477;
 Mon, 13 Sep 2021 06:17:26 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:26 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:52 +0200
Message-Id: <20210913131707.45639-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 11/26] drm/radeon: use new iterator in
 radeon_sync_resv
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yYWRlb25fc3luYy5jIHwgMjIgKysrLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fc3luYy5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fc3luYy5jCmluZGV4IDkyNTdiNjAxNDRjNC4uMTRhNGQ4MTM1YmFkIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9zeW5jLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JhZGVvbi9yYWRlb25fc3luYy5jCkBAIC05MSwzMyArOTEsMTcgQEAgaW50IHJhZGVvbl9z
eW5jX3Jlc3Yoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYsCiAJCSAgICAgc3RydWN0IGRtYV9y
ZXN2ICpyZXN2LAogCQkgICAgIGJvb2wgc2hhcmVkKQogewotCXN0cnVjdCBkbWFfcmVzdl9saXN0
ICpmbGlzdDsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmOworCXN0cnVjdCBkbWFfcmVzdl9jdXJzb3Ig
Y3Vyc29yOwogCXN0cnVjdCByYWRlb25fZmVuY2UgKmZlbmNlOwotCXVuc2lnbmVkIGk7CisJc3Ry
dWN0IGRtYV9mZW5jZSAqZjsKIAlpbnQgciA9IDA7CiAKLQkvKiBhbHdheXMgc3luYyB0byB0aGUg
ZXhjbHVzaXZlIGZlbmNlICovCi0JZiA9IGRtYV9yZXN2X2V4Y2xfZmVuY2UocmVzdik7Ci0JZmVu
Y2UgPSBmID8gdG9fcmFkZW9uX2ZlbmNlKGYpIDogTlVMTDsKLQlpZiAoZmVuY2UgJiYgZmVuY2Ut
PnJkZXYgPT0gcmRldikKLQkJcmFkZW9uX3N5bmNfZmVuY2Uoc3luYywgZmVuY2UpOwotCWVsc2Ug
aWYgKGYpCi0JCXIgPSBkbWFfZmVuY2Vfd2FpdChmLCB0cnVlKTsKLQotCWZsaXN0ID0gZG1hX3Jl
c3Zfc2hhcmVkX2xpc3QocmVzdik7Ci0JaWYgKHNoYXJlZCB8fCAhZmxpc3QgfHwgcikKLQkJcmV0
dXJuIHI7Ci0KLQlmb3IgKGkgPSAwOyBpIDwgZmxpc3QtPnNoYXJlZF9jb3VudDsgKytpKSB7Ci0J
CWYgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZsaXN0LT5zaGFyZWRbaV0sCi0JCQkJCSAg
ICAgIGRtYV9yZXN2X2hlbGQocmVzdikpOworCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlKHJlc3Ys
ICZjdXJzb3IsIHNoYXJlZCwgZikgewogCQlmZW5jZSA9IHRvX3JhZGVvbl9mZW5jZShmKTsKIAkJ
aWYgKGZlbmNlICYmIGZlbmNlLT5yZGV2ID09IHJkZXYpCiAJCQlyYWRlb25fc3luY19mZW5jZShz
eW5jLCBmZW5jZSk7CiAJCWVsc2UKIAkJCXIgPSBkbWFfZmVuY2Vfd2FpdChmLCB0cnVlKTsKLQog
CQlpZiAocikKIAkJCWJyZWFrOwogCX0KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
