Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5613E979BF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 14:43:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86CD260F1F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 12:43:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 77E376184B; Wed, 21 Aug 2019 12:43:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DEAFF6186A;
	Wed, 21 Aug 2019 12:36:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 262D76181B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:35:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 18CF361846; Wed, 21 Aug 2019 12:35:52 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 789916182E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:31:54 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id b16so1849031wrq.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 05:31:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ni/csKYEDyOv/GI6Uu6YVFIStPM3qd3+Rn6zbLv7UUM=;
 b=ovb5W7jk+f/jci7/Z7V/8x8PJkjQZyy/dI6jo2/OoJsSXscu6i6eIdkl2dUz3K04eR
 SGrlUCa0pmMZJcWBna2INucVRbHAKaaMXMvF824pDuF0a7qs48Ezft+SFSEL0EzL5uHw
 LbDbu/pz6fpuvC7daiHYbo6pvVixLugIGX1ww2H+WyIRkLFbMyYt3NW8rtBBE7e7X82c
 lKF7h1VCZADwLdqf1LjSTCi9lbRKfKYSbuV8bzSk5tjpeuuGKNXr3lA2naUe0Ic6TY0c
 Cc3X90lyDcKEgGY3Qd4afcIe4Cs0QX7028c7QfMoJVdvLAtnG+lvkc8gQfWKbwXUV0dl
 U4yA==
X-Gm-Message-State: APjAAAWBhiedXgyDmSGKfWqA395bGRTyRfR1uSU318reFNBdyq0eK5ux
 azkhtyKimFJ4gbhVrhaLgHc=
X-Google-Smtp-Source: APXvYqynWHiNIzC4shkDTUZTBtVbuOpu7CcIRalVRJfof4Zw588JseDXLH/DpOXIFmxsKWDuM5O1oQ==
X-Received: by 2002:adf:fc03:: with SMTP id i3mr37946824wrr.48.1566390713679; 
 Wed, 21 Aug 2019 05:31:53 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8189:dd33:a934:c4fa])
 by smtp.gmail.com with ESMTPSA id v3sm23084571wrq.34.2019.08.21.05.31.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 05:31:53 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Wed, 21 Aug 2019 14:31:42 +0200
Message-Id: <20190821123147.110736-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821123147.110736-1-christian.koenig@amd.com>
References: <20190821123147.110736-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 05/10] dma-buf/resv: add
	dma_resv_prune_fences
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

QWRkIGEgbmV3IGRtYV9yZXN2X3BydW5lX2ZlbmNlcygpIGZ1bmN0aW9uIHRvIGltcHJvdmUgbWVt
b3J5IG1hbmFnZW1lbnQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgICAgICAg
ICAgICAgICAgIHwgMzcgKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyAgIHwgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2JhdGNoX3Bvb2wuYyB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zt
YS5jICAgICAgICAgICAgfCAgMyArLQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyAgICAg
ICAgICAgICAgIHwgIDIgKy0KIGluY2x1ZGUvbGludXgvZG1hLXJlc3YuaCAgICAgICAgICAgICAg
ICAgICB8ICAxICsKIDYgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtcmVzdi5jCmluZGV4IDQyYThmM2YxMTY4MS4uMjRhZGMzMmQzNmQ0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYworKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLXJlc3YuYwpAQCAtMzAxLDYgKzMwMSw0MyBAQCB2b2lkIGRtYV9yZXN2X2FkZF9leGNsX2Zl
bmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKIH0KIEVY
UE9SVF9TWU1CT0woZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2UpOwogCisvKioKKyAqIGRtYV9yZXN2
X3BydW5lX2ZlbmNlcyAtIHBydW5lIHNpZ25hbGVkIGZlbmNlcyBmcm9tIHRoZSByZXN2IG9iamVj
dAorICogQG9iajogdGhlIHJlc2VydmF0aW9uIG9iamVjdCB0byBwcnVuZQorICoKKyAqIFBydW5l
IGFsbCBzaWduYWxlZCBmZW5jZXMgZnJvbSB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0LgorICovCit2
b2lkIGRtYV9yZXN2X3BydW5lX2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKK3sKKwlzdHJ1
Y3QgZG1hX3Jlc3ZfbGlzdCAqbGlzdDsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwl1bnNp
Z25lZCBpbnQgaTsKKworCWRtYV9yZXN2X2Fzc2VydF9oZWxkKG9iaik7CisKKwlmZW5jZSA9IGRt
YV9yZXN2X2dldF9leGNsKG9iaik7CisJaWYgKGRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkp
IHsKKwkJUkNVX0lOSVRfUE9JTlRFUihvYmotPmZlbmNlX2V4Y2wsIE5VTEwpOworCQlkbWFfZmVu
Y2VfcHV0KGZlbmNlKTsKKwl9CisKKwlsaXN0ID0gZG1hX3Jlc3ZfZ2V0X2xpc3Qob2JqKTsKKwlp
ZiAoIWxpc3QpCisJCXJldHVybjsKKworCWZvciAoaSA9IDA7IGkgPCBsaXN0LT5zaGFyZWRfY291
bnQ7ICsraSkgeworCQlmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQobGlzdC0+c2hh
cmVkW2ldLAorCQkJCQkJICBkbWFfcmVzdl9oZWxkKG9iaikpOworCisJCWlmICghZG1hX2ZlbmNl
X2lzX3NpZ25hbGVkKGZlbmNlKSkKKwkJCWNvbnRpbnVlOworCisJCVJDVV9JTklUX1BPSU5URVIo
bGlzdC0+c2hhcmVkW2ldLCBkbWFfZmVuY2VfZ2V0X3N0dWIoKSk7CisJCWRtYV9mZW5jZV9wdXQo
ZmVuY2UpOworCX0KK30KK0VYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfcHJ1bmVfZmVuY2VzKTsKKwog
LyoqCiAqIGRtYV9yZXN2X2NvcHlfZmVuY2VzIC0gQ29weSBhbGwgZmVuY2VzIGZyb20gc3JjIHRv
IGRzdC4KICogQGRzdDogdGhlIGRlc3RpbmF0aW9uIHJlc2VydmF0aW9uIG9iamVjdApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKaW5kZXggOGFmNTVjZDNlNjkwLi5hNzZk
MzZmOGZiNzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93
YWl0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpAQCAt
ODUsOCArODUsNyBAQCBpOTE1X2dlbV9vYmplY3Rfd2FpdF9yZXNlcnZhdGlvbihzdHJ1Y3QgZG1h
X3Jlc3YgKnJlc3YsCiAJICogc2lnbmFsZWQuCiAJICovCiAJaWYgKHBydW5lX2ZlbmNlcyAmJiBk
bWFfcmVzdl90cnlsb2NrKHJlc3YpKSB7Ci0JCWlmIChkbWFfcmVzdl90ZXN0X3NpZ25hbGVkX3Jj
dShyZXN2LCB0cnVlKSkKLQkJCWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKHJlc3YsIE5VTEwpOwor
CQlkbWFfcmVzdl9wcnVuZV9mZW5jZXMocmVzdik7CiAJCWRtYV9yZXN2X3VubG9jayhyZXN2KTsK
IAl9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bv
b2wuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYwppbmRleCA1
ZjgyYTc2M2U2NGMuLjI3NGNmNWIxOWZjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2JhdGNoX3Bvb2wuYwpAQCAtMTE0LDcgKzExNCw3IEBAIGk5MTVfZ2VtX2JhdGNoX3Bvb2xf
Z2V0KHN0cnVjdCBpOTE1X2dlbV9iYXRjaF9wb29sICpwb29sLAogCQkJICovCiAJCQlpZiAocmN1
X2FjY2Vzc19wb2ludGVyKHJlc3YtPmZlbmNlKSkgewogCQkJCWRtYV9yZXN2X2xvY2socmVzdiwg
TlVMTCk7Ci0JCQkJZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2UocmVzdiwgTlVMTCk7CisJCQkJZG1h
X3Jlc3ZfcHJ1bmVfZmVuY2VzKHJlc3YpOwogCQkJCWRtYV9yZXN2X3VubG9jayhyZXN2KTsKIAkJ
CX0KIAkJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKaW5kZXggZWJmZDAzZDExN2NkLi5mY2JlNDMz
YTk2OGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwpAQCAtMTAwLDggKzEwMCw3IEBAIHN0YXRp
YyB2b2lkIF9faTkxNV92bWFfcmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCiAJLyog
UHJ1bmUgdGhlIHNoYXJlZCBmZW5jZSBhcnJheXMgaWZmIGNvbXBsZXRlbHkgaWRsZSAoaW5jLiBl
eHRlcm5hbCkgKi8KIAlpZiAoZG1hX3Jlc3ZfdHJ5bG9jayhvYmotPmJhc2UucmVzdikpIHsKLQkJ
aWYgKGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWRfcmN1KG9iai0+YmFzZS5yZXN2LCB0cnVlKSkKLQkJ
CWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKG9iai0+YmFzZS5yZXN2LCBOVUxMKTsKKwkJZG1hX3Jl
c3ZfcHJ1bmVfZmVuY2VzKG9iai0+YmFzZS5yZXN2KTsKIAkJZG1hX3Jlc3ZfdW5sb2NrKG9iai0+
YmFzZS5yZXN2KTsKIAl9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2Jv
LmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCmluZGV4IDU4ZDFmMmIyODEzMi4uZjc4
ZjUyY2MyZTZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKQEAgLTE4MTgsNyArMTgxOCw3IEBAIGludCB0
dG1fYm9fd2FpdChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogCWlmICh0aW1lb3V0ID09
IDApCiAJCXJldHVybiAtRUJVU1k7CiAKLQlkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShiby0+YmFz
ZS5yZXN2LCBOVUxMKTsKKwlkbWFfcmVzdl9wcnVuZV9mZW5jZXMoYm8tPmJhc2UucmVzdik7CiAJ
cmV0dXJuIDA7CiB9CiBFWFBPUlRfU1lNQk9MKHR0bV9ib193YWl0KTsKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAppbmRleCBl
ZTUwZDEwZjA1MmIuLjAzYjBmOTU2ODJiMCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEt
cmVzdi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaApAQCAtMjc5LDYgKzI3OSw3IEBA
IGludCBkbWFfcmVzdl9yZXNlcnZlX3NoYXJlZChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgdW5zaWdu
ZWQgaW50IG51bV9mZW5jZXMpOwogdm9pZCBkbWFfcmVzdl9hZGRfc2hhcmVkX2ZlbmNlKHN0cnVj
dCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7CiAKIHZvaWQgZG1hX3Jl
c3ZfYWRkX2V4Y2xfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKTsKK3ZvaWQgZG1hX3Jlc3ZfcHJ1bmVfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2Jq
KTsKIAogaW50IGRtYV9yZXN2X2dldF9mZW5jZXNfcmN1KHN0cnVjdCBkbWFfcmVzdiAqb2JqLAog
CQkJICAgIHN0cnVjdCBkbWFfZmVuY2UgKipwZmVuY2VfZXhjbCwKLS0gCjIuMTcuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
