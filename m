Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A1C40D89A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:31:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5172969CCD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:31:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BA53963258; Thu, 16 Sep 2021 11:31:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9363F66807;
	Thu, 16 Sep 2021 11:30:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D841962D35
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D355E62DEF; Thu, 16 Sep 2021 11:30:50 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id C0E2A629CD
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:48 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id q11so8912013wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YvxszxniiDuLPK7ez/G/j9ZGFeJ7+aNuFyP3PTamFmA=;
 b=Ebm6l+S5zGYRm+mYirnUX1/rv/7TQNjYFbOczwcl4ZCg6lXJa4a0fBx1DJFLixCens
 LP6f6mgaYj7FKFG69WGoTPtLt5qFnALKToGfNFF3HXly2BxXSeEYopAv/LjYfmvq6gEF
 +AxPpQiVO3jAEgwR/9AC9o/OwtL50yBV0zCiHqyyGOG25M2nTDzG882d91TlHfBLBJLK
 +kO7AVylZyExtf2+1lLm+1thc8pwvenRGrrA9H9on0gKwWcniMY7ZT6gfF3lvUd7IxKN
 ABhe0ivG8MhTRjCKZ7KjW3M5x/0JMgcb9tUlOvuiM1YAoc7Srpf5urk/ikW8HBEll7ly
 YG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YvxszxniiDuLPK7ez/G/j9ZGFeJ7+aNuFyP3PTamFmA=;
 b=T0po/rYqi4VZAHFOd4T2CraQ3ix2YQ8ApDTbo9KmXBMfB2mfa3FH1OEy8CSZ5HaKJ0
 iE0s9bes7yrkp/Tj4+T4E/5nNM+uealkYEwx7js0qWpScoHwqSb7qpFpOYJZ0YSyZN/N
 tjxNOeH0xUYk0l5/yMJP8zZNnDpnME/J7rFIoF0J2e37MNJBe41eN+dk7nAZwfvH0o0R
 Hohj3urHx1WZ2xp38RJGmAxhl5ugkewnojdID7Bfqyh/8YUdlSMB0TO8BohxeNRdfNjQ
 SRKFDQ3O08W2evU0RRmoueI5n3YHYHuqWsNIZLItzYDKMFMizeTOFvqY4JCQJ8MoBL9U
 nEtg==
X-Gm-Message-State: AOAM533R57LNrDFbNQEOgp7p8uF4GC5klU8Zo2ILWPoh9/5CNb5ElTVV
 uKKexoWYOMK87m6tjkbBanhQhQ85bIouAHlf
X-Google-Smtp-Source: ABdhPJw2AFfKvpFgu+qFhyozZnxS9E0qTFCZL9JeXXoTGV9kPZNklKxgFBNmFrCAKv/6dEkVIeW0Qg==
X-Received: by 2002:a5d:5610:: with SMTP id l16mr5549144wrv.102.1631791847816; 
 Thu, 16 Sep 2021 04:30:47 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:47 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:18 +0200
Message-Id: <20210916113042.3631-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916113042.3631-1-christian.koenig@amd.com>
References: <20210916113042.3631-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 02/26] dma-buf: add dma_resv_for_each_fence
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QSBzaW1wbGVyIHZlcnNpb24gb2YgdGhlIGl0ZXJhdG9yIHRvIGJlIHVzZWQgd2hlbiB0aGUgZG1h
X3Jlc3Ygb2JqZWN0IGlzCmxvY2tlZC4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YyB8IDM3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvbGlu
dXgvZG1hLXJlc3YuaCAgIHwgMTggKysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQs
IDU1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4IDc3MDgzMTcwZWMzYi4uYmJmMzZh
MDhjZWQwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwpAQCAtMzIzLDYgKzMyMyw0MyBAQCB2b2lkIGRtYV9yZXN2
X2FkZF9leGNsX2ZlbmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSkKIH0KIEVYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2UpOwogCisvKioK
KyAqIGRtYV9yZXN2X3dhbGsgLSB3YWxrIG92ZXIgZmVuY2VzIGluIGEgZG1hX3Jlc3Ygb2JqCisg
KiBAb2JqOiB0aGUgZG1hX3Jlc3Ygb2JqZWN0CisgKiBAY3Vyc29yOiBjdXJzb3IgdG8gcmVjb3Jk
IHRoZSBjdXJyZW50IHBvc2l0aW9uCisgKiBAYWxsX2ZlbmNlczogdHJ1ZSByZXR1cm5zIGFsc28g
dGhlIHNoYXJlZCBmZW5jZXMKKyAqIEBmaXJzdDogaWYgd2Ugc2hvdWxkIHN0YXJ0IG92ZXIKKyAq
CisgKiBSZXR1cm4gYWxsIHRoZSBmZW5jZXMgaW4gdGhlIGRtYV9yZXN2IG9iamVjdCB3aGlsZSBo
b2xkaW5nIHRoZQorICogZG1hX3Jlc3Y6OmxvY2suCisgKi8KK3N0cnVjdCBkbWFfZmVuY2UgKmRt
YV9yZXN2X3dhbGsoc3RydWN0IGRtYV9yZXN2ICpvYmosCisJCQkJc3RydWN0IGRtYV9yZXN2X2l0
ZXIgKmN1cnNvciwKKwkJCQlib29sIGFsbF9mZW5jZXMsIGJvb2wgZmlyc3QpCit7CisJZG1hX3Jl
c3ZfYXNzZXJ0X2hlbGQob2JqKTsKKworCWN1cnNvci0+aXNfZmlyc3QgPSBmaXJzdDsKKwlpZiAo
Zmlyc3QpIHsKKwkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CisKKwkJY3Vyc29yLT5pbmRleCA9
IC0xOworCQljdXJzb3ItPmZlbmNlcyA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iaik7CisKKwkJ
ZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKG9iaik7CisJCWlmIChmZW5jZSkKKwkJCXJldHVy
biBmZW5jZTsKKwl9CisKKwlpZiAoIWFsbF9mZW5jZXMgfHwgIWN1cnNvci0+ZmVuY2VzIHx8CisJ
ICAgICsrY3Vyc29yLT5pbmRleCA+PSBjdXJzb3ItPmZlbmNlcy0+c2hhcmVkX2NvdW50KQorCQly
ZXR1cm4gTlVMTDsKKworCXJldHVybiByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGN1cnNvci0+
ZmVuY2VzLT5zaGFyZWRbY3Vyc29yLT5pbmRleF0sCisJCQkJCSBkbWFfcmVzdl9oZWxkKG9iaikp
OworfQorRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3Zfd2Fsayk7CisKIC8qKgogICogZG1hX3Jl
c3Zfd2Fsa191bmxvY2tlZCAtIHdhbGsgb3ZlciBmZW5jZXMgaW4gYSBkbWFfcmVzdiBvYmoKICAq
IEBvYmo6IHRoZSBkbWFfcmVzdiBvYmplY3QKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1h
LXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAppbmRleCAxY2Q2ODYzODRjNzEuLjY3
NjE1MTJiYTY2MiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oCisrKyBiL2lu
Y2x1ZGUvbGludXgvZG1hLXJlc3YuaApAQCAtMTY4LDYgKzE2OCwyMSBAQCBzdHJ1Y3QgZG1hX3Jl
c3ZfaXRlciB7CiAJYm9vbCBpc19maXJzdDsKIH07CiAKKy8qKgorICogZG1hX3Jlc3ZfZm9yX2Vh
Y2hfZmVuY2UgLSBmZW5jZSBpdGVyYXRvcgorICogQG9iajogYSBkbWFfcmVzdiBvYmplY3QgcG9p
bnRlcgorICogQGN1cnNvcjogYSBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBwb2ludGVyCisgKiBAYWxs
X2ZlbmNlczogdHJ1ZSBpZiBhbGwgZmVuY2VzIHNob3VsZCBiZSByZXR1cm5lZAorICogQGZlbmNl
OiB0aGUgY3VycmVudCBmZW5jZQorICoKKyAqIEl0ZXJhdGUgb3ZlciB0aGUgZmVuY2VzIGluIGEg
c3RydWN0IGRtYV9yZXN2IG9iamVjdCB3aGlsZSBob2xkaW5nIHRoZQorICogZG1hX3Jlc3Y6Omxv
Y2suIEBhbGxfZmVuY2VzIGNvbnRyb2xzIGlmIHRoZSBzaGFyZWQgZmVuY2VzIGFyZSByZXR1cm5l
ZCBhcworICogd2VsbC4KKyAqLworI2RlZmluZSBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZShvYmos
IGN1cnNvciwgYWxsX2ZlbmNlcywgZmVuY2UpCQkgIFwKKwlmb3IgKGZlbmNlID0gZG1hX3Jlc3Zf
d2FsayhvYmosIGN1cnNvciwgYWxsX2ZlbmNlcywgdHJ1ZSk7IGZlbmNlOyBcCisJICAgICBmZW5j
ZSA9IGRtYV9yZXN2X3dhbGsob2JqLCBjdXJzb3IsIGFsbF9mZW5jZXMsIGZhbHNlKSkKKwogLyoq
CiAgKiBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCAtIGZlbmNlIGl0ZXJhdG9yCiAg
KiBAb2JqOiBhIGRtYV9yZXN2IG9iamVjdCBwb2ludGVyCkBAIC00MTMsNiArNDI4LDkgQEAgdm9p
ZCBkbWFfcmVzdl9maW5pKHN0cnVjdCBkbWFfcmVzdiAqb2JqKTsKIGludCBkbWFfcmVzdl9yZXNl
cnZlX3NoYXJlZChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgdW5zaWduZWQgaW50IG51bV9mZW5jZXMp
Owogdm9pZCBkbWFfcmVzdl9hZGRfc2hhcmVkX2ZlbmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7CiB2b2lkIGRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKHN0
cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7CitzdHJ1Y3QgZG1h
X2ZlbmNlICpkbWFfcmVzdl93YWxrKHN0cnVjdCBkbWFfcmVzdiAqb2JqLAorCQkJCXN0cnVjdCBk
bWFfcmVzdl9pdGVyICpjdXJzb3IsCisJCQkJYm9vbCBmaXJzdCwgYm9vbCBhbGxfZmVuY2VzKTsK
IHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X3dhbGtfdW5sb2NrZWQoc3RydWN0IGRtYV9yZXN2
ICpvYmosCiAJCQkJCSBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29yLAogCQkJCQkgYm9vbCBm
aXJzdCwgYm9vbCBhbGxfZmVuY2VzKTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
