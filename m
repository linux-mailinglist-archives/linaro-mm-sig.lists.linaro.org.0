Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B25450FD84
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 14:46:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF65A48002
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 12:46:45 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by lists.linaro.org (Postfix) with ESMTPS id 6E22F47FA4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 12:46:40 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id t6so21878276wra.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 05:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QWJNebhjBBDPg0cwekMSjS6qePRn97Mj0N6BUIsgDy0=;
        b=fW/mKAflpo7RWGocl/TrgqYK1m+lv3D25HAHRiow7NSCHvmDEw+UGqV2sp0vpmTJ8b
         ZCsaSg/i2tVNLQzDOMcrbC1IlrgRYG1L3Qj9ucb4cWeM0NvJBSK2ywHMzha5g4HOCDv/
         fcgL1aVCu2bEs7rX8/GmOMOWRTK5GoOV8h0+2TnKzK9eRzwSudRRbMxekQ+33+CvHBIY
         FXZmw7yNFBqi2fEEWLSQZmzwaWmloOIm3jJCLspSRjb98vsXApoSm4YX5usHNb5CXP9V
         3ssUP1M+LXFMrcuIqq9ksmQrqAwg1ndl9JAiFncDiNF8kqfsuqQx8bcmrrzcM5LNSLII
         qzww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QWJNebhjBBDPg0cwekMSjS6qePRn97Mj0N6BUIsgDy0=;
        b=nNpLMPx+f3MsBkBHs+6mvVuNRuLXy85X3nNPoMl60ccrQXS7rAtfWO2cDNMPhJY2JI
         mk5UmArX2aMUUBMIxcneHi9Q9Q8uQP9Puv9vSO5vANkwyZ6MyYG4btPr+GdEIgsNI7V0
         YIIUzJ+KlJ5dsSGEPZuDb0gEEl7+1r+Y+kzj3jd+7wSgPPyiMhnmQXZgygloNxHfZXMa
         WiNNJKhE4YtDWqJA3ZLrTHf02+ESmEQg2NDUoyRVVFv4I189f0mIjklDX4FMitoJRrT9
         TMLa4Ui6hZbm7q+a2YGMSV9fUd+Td7SJzSjh50zbvVmU4HTSCbAw0xS08mP9Mv49PxOz
         /rbw==
X-Gm-Message-State: AOAM53382SYzzDIvk/dJnv8q31jcz/duMuSUROh1YIfMLBXAIiq9vzWz
	tsQalkcWpXRlWm1Prdb8j00=
X-Google-Smtp-Source: ABdhPJy3I6knemy6thzL7TvwKzDO8Xk8r+AeuQt3EcSrgvCK5597hs0se5nJF+0rP6gmxMaGGx9efQ==
X-Received: by 2002:adf:e112:0:b0:206:d12:9c3a with SMTP id t18-20020adfe112000000b002060d129c3amr17784718wrz.391.1650977199474;
        Tue, 26 Apr 2022 05:46:39 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id s10-20020adf978a000000b0020ae0154f1esm3641025wrb.5.2022.04.26.05.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 05:46:38 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch
Date: Tue, 26 Apr 2022 14:46:35 +0200
Message-Id: <20220426124637.329764-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: II5DGMCZT3GPDJ3KD5KV72TVZSHBOGVJ
X-Message-ID-Hash: II5DGMCZT3GPDJ3KD5KV72TVZSHBOGVJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/3] dma-buf/sync_file: cleanup fence merging a bit
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/II5DGMCZT3GPDJ3KD5KV72TVZSHBOGVJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

a3JlYWxsb2NfYXJyYXkoKSBpZ25vcmVzIGF0dGVtcHRzIHRvIHJlZHVjZSB0aGUgYXJyYXkgc2l6
ZSwgc28gdGhlIGF0dGVtcHQNCnRvIHNhdmUgbWVtb3J5IGlzIGNvbXBsZXRlbHkgcG9pbnRsZXNz
IGhlcmUuDQoNCkFsc28gbW92ZSB0ZXN0aW5nIGZvciB0aGUgbm8gZmVuY2UgY2FzZSBpbnRvIHN5
bmNfZmlsZV9zZXRfZmVuY2UoKSwgdGhpcw0Kd2F5IHdlIGRvbid0IGV2ZW4gdG91Y2ggdGhlIGZl
bmNlIGFycmF5IHdoZW4gd2UgZG9uJ3QgaGF2ZSBhbnkgZmVuY2VzLg0KDQpTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2
ZXJzL2RtYS1idWYvc3luY19maWxlLmMgfCAyMSArKysrKysrLS0tLS0tLS0tLS0tLS0NCiAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2Zp
bGUuYw0KaW5kZXggNTE0ZDIxMzI2MWRmLi4wZmU1NjQ1MzkxNjYgMTAwNjQ0DQotLS0gYS9kcml2
ZXJzL2RtYS1idWYvc3luY19maWxlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUu
Yw0KQEAgLTE1Nyw5ICsxNTcsMTUgQEAgc3RhdGljIGludCBzeW5jX2ZpbGVfc2V0X2ZlbmNlKHN0
cnVjdCBzeW5jX2ZpbGUgKnN5bmNfZmlsZSwNCiAJICogd2UgYWxyZWFkeSBvd24gYSBuZXcgcmVm
ZXJlbmNlIHRvIHRoZSBmZW5jZS4gRm9yIG51bV9mZW5jZSA+IDENCiAJICogd2Ugb3duIHRoZSBy
ZWZlcmVuY2Ugb2YgdGhlIGRtYV9mZW5jZV9hcnJheSBjcmVhdGlvbi4NCiAJICovDQotCWlmIChu
dW1fZmVuY2VzID09IDEpIHsNCisNCisJaWYgKG51bV9mZW5jZXMgPT0gMCkgew0KKwkJc3luY19m
aWxlLT5mZW5jZSA9IGRtYV9mZW5jZV9nZXRfc3R1YigpOw0KKwkJa2ZyZWUoZmVuY2VzKTsNCisN
CisJfSBlbHNlIGlmIChudW1fZmVuY2VzID09IDEpIHsNCiAJCXN5bmNfZmlsZS0+ZmVuY2UgPSBm
ZW5jZXNbMF07DQogCQlrZnJlZShmZW5jZXMpOw0KKw0KIAl9IGVsc2Ugew0KIAkJYXJyYXkgPSBk
bWFfZmVuY2VfYXJyYXlfY3JlYXRlKG51bV9mZW5jZXMsIGZlbmNlcywNCiAJCQkJCSAgICAgICBk
bWFfZmVuY2VfY29udGV4dF9hbGxvYygxKSwNCkBAIC0yNjEsMTkgKzI2Nyw2IEBAIHN0YXRpYyBz
dHJ1Y3Qgc3luY19maWxlICpzeW5jX2ZpbGVfbWVyZ2UoY29uc3QgY2hhciAqbmFtZSwgc3RydWN0
IHN5bmNfZmlsZSAqYSwNCiAJCX0NCiAJfQ0KIA0KLQlpZiAoaW5kZXggPT0gMCkNCi0JCWZlbmNl
c1tpbmRleCsrXSA9IGRtYV9mZW5jZV9nZXRfc3R1YigpOw0KLQ0KLQlpZiAobnVtX2ZlbmNlcyA+
IGluZGV4KSB7DQotCQlzdHJ1Y3QgZG1hX2ZlbmNlICoqdG1wOw0KLQ0KLQkJLyogS2VlcCBnb2lu
ZyBldmVuIHdoZW4gcmVkdWNpbmcgdGhlIHNpemUgZmFpbGVkICovDQotCQl0bXAgPSBrcmVhbGxv
Y19hcnJheShmZW5jZXMsIGluZGV4LCBzaXplb2YoKmZlbmNlcyksDQotCQkJCSAgICAgR0ZQX0tF
Uk5FTCk7DQotCQlpZiAodG1wKQ0KLQkJCWZlbmNlcyA9IHRtcDsNCi0JfQ0KLQ0KIAlpZiAoc3lu
Y19maWxlX3NldF9mZW5jZShzeW5jX2ZpbGUsIGZlbmNlcywgaW5kZXgpIDwgMCkNCiAJCWdvdG8g
ZXJyX3B1dF9mZW5jZXM7DQogDQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
