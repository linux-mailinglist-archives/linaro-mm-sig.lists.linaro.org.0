Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B86181A6E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 14:53:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7E9365FD8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Mar 2020 13:53:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CAA0E65FE9; Wed, 11 Mar 2020 13:53:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6FD5D65FDF;
	Wed, 11 Mar 2020 13:52:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C740960804
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BB13265FB9; Wed, 11 Mar 2020 13:52:05 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id C0E2E60804
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 13:52:03 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a141so2227633wme.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2020 06:52:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xEoFbydtA55bQRoTqtzVl54mwFx3SL0wixHy09grPa0=;
 b=NKsikNy4uUc8/9C8xzWTvGd66Nlkkscvh3/IP4kJ6PSW3S2GG8PhAyLHbjJ0KQrjiv
 kYLYF8p26AiqmU5ecucRkQoaZ5kKcD+jvQ4drpM8L+me1YUVUv5+PcYs/+FJ0HcUA+P+
 vW12HGa9nPYIRtvxkG0+yekbQc7l0LY3HL9W+8uLvT3hrPkLnjp3rp2JiIR2q2G+5LP4
 OCyEvF+rWLbAg4s44oMYI106GhFvfx83K4z9ahah7LwHKiIaMJYAs23jTE7CDID1pviJ
 iX8gOFsiM84wJDwNgQe2d7BKDfBdSN/g4gqB4FydfIoGEecwTbacDXKvwoGNN1nzF0nX
 g/iQ==
X-Gm-Message-State: ANhLgQ2vmUQe8oI3JgAc72zofE7MPUlri2JIziqjBGC1pj2xKn3oiAJo
 ObGAT5U1w4mc4LLSinRzeSw=
X-Google-Smtp-Source: ADFU+vuIhHcOqb5hYvyJLF0VXhRNUC5gsOSa+CkV8rcXv1Lmvo1T20WArTWant8WOU2t0Mvf9O7HNQ==
X-Received: by 2002:a05:600c:4013:: with SMTP id
 i19mr2532147wmm.28.1583934722955; 
 Wed, 11 Mar 2020 06:52:02 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8dc:e796:e7da:a319])
 by smtp.gmail.com with ESMTPSA id 138sm3183811wmb.21.2020.03.11.06.52.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 06:52:02 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: David1.Zhou@amd.com, hch@infradead.org, jgg@ziepe.ca, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 14:51:54 +0100
Message-Id: <20200311135158.3310-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311135158.3310-1-christian.koenig@amd.com>
References: <20200311135158.3310-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/6] dma-buf: add peer2peer flag
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

QWRkIGEgcGVlcjJwZWVyIGZsYWcgbm90aW5nIHRoYXQgdGhlIGltcG9ydGVyIGNhbiBkZWFsIHdp
dGggZGV2aWNlCnJlc291cmNlcyB3aGljaCBhcmUgbm90IGJhY2tlZCBieSBwYWdlcy4KClNpZ25l
ZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0t
CiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgIDIgKysKIGluY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oICAgfCAxMCArKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYwppbmRleCBmNGFjZTlhZjIxOTEuLmY5MjIwOTI4ZWM5MCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
CkBAIC02ODksNiArNjg5LDggQEAgZG1hX2J1Zl9keW5hbWljX2F0dGFjaChzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmLCBzdHJ1Y3QgZGV2aWNlICpkZXYsCiAKIAlhdHRhY2gtPmRldiA9IGRldjsKIAlh
dHRhY2gtPmRtYWJ1ZiA9IGRtYWJ1ZjsKKwlpZiAoaW1wb3J0ZXJfb3BzKQorCQlhdHRhY2gtPnBl
ZXIycGVlciA9IGltcG9ydGVyX29wcy0+YWxsb3dfcGVlcjJwZWVyOwogCWF0dGFjaC0+aW1wb3J0
ZXJfb3BzID0gaW1wb3J0ZXJfb3BzOwogCWF0dGFjaC0+aW1wb3J0ZXJfcHJpdiA9IGltcG9ydGVy
X3ByaXY7CiAKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9s
aW51eC9kbWEtYnVmLmgKaW5kZXggMWFkZTQ4NmZjMmJiLi44MmUwYTRhNjQ2MDEgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
CkBAIC0zMzQsNiArMzM0LDE0IEBAIHN0cnVjdCBkbWFfYnVmIHsKICAqIEF0dGFjaG1lbnQgb3Bl
cmF0aW9ucyBpbXBsZW1lbnRlZCBieSB0aGUgaW1wb3J0ZXIuCiAgKi8KIHN0cnVjdCBkbWFfYnVm
X2F0dGFjaF9vcHMgeworCS8qKgorCSAqIEBhbGxvd19wZWVyMnBlZXI6CisJICoKKwkgKiBJZiB0
aGlzIGlzIHNldCB0byB0cnVlIHRoZSBpbXBvcnRlciBtdXN0IGJlIGFibGUgdG8gaGFuZGxlIHBl
ZXIKKwkgKiByZXNvdXJjZXMgd2l0aG91dCBzdHJ1Y3QgcGFnZXMuCisJICovCisJYm9vbCBhbGxv
d19wZWVyMnBlZXI7CisKIAkvKioKIAkgKiBAbW92ZV9ub3RpZnkKIAkgKgpAQCAtMzYyLDYgKzM3
MCw3IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgewogICogQG5vZGU6IGxpc3Qgb2YgZG1h
X2J1Zl9hdHRhY2htZW50LCBwcm90ZWN0ZWQgYnkgZG1hX3Jlc3YgbG9jayBvZiB0aGUgZG1hYnVm
LgogICogQHNndDogY2FjaGVkIG1hcHBpbmcuCiAgKiBAZGlyOiBkaXJlY3Rpb24gb2YgY2FjaGVk
IG1hcHBpbmcuCisgKiBAcGVlcjJwZWVyOiB0cnVlIGlmIHRoZSBpbXBvcnRlciBjYW4gaGFuZGxl
IHBlZXIgcmVzb3VyY2VzIHdpdGhvdXQgcGFnZXMuCiAgKiBAcHJpdjogZXhwb3J0ZXIgc3BlY2lm
aWMgYXR0YWNobWVudCBkYXRhLgogICogQGltcG9ydGVyX29wczogaW1wb3J0ZXIgb3BlcmF0aW9u
cyBmb3IgdGhpcyBhdHRhY2htZW50LCBpZiBwcm92aWRlZAogICogZG1hX2J1Zl9tYXAvdW5tYXBf
YXR0YWNobWVudCgpIG11c3QgYmUgY2FsbGVkIHdpdGggdGhlIGRtYV9yZXN2IGxvY2sgaGVsZC4K
QEAgLTM4Miw2ICszOTEsNyBAQCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50IHsKIAlzdHJ1Y3Qg
bGlzdF9oZWFkIG5vZGU7CiAJc3RydWN0IHNnX3RhYmxlICpzZ3Q7CiAJZW51bSBkbWFfZGF0YV9k
aXJlY3Rpb24gZGlyOworCWJvb2wgcGVlcjJwZWVyOwogCWNvbnN0IHN0cnVjdCBkbWFfYnVmX2F0
dGFjaF9vcHMgKmltcG9ydGVyX29wczsKIAl2b2lkICppbXBvcnRlcl9wcml2OwogCXZvaWQgKnBy
aXY7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
