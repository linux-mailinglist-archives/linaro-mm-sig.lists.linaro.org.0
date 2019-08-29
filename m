Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E421A1CCB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Aug 2019 16:31:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C54D061813
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Aug 2019 14:31:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B546B61836; Thu, 29 Aug 2019 14:31:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98FFD6183D;
	Thu, 29 Aug 2019 14:29:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 291D560E2C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Aug 2019 14:29:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1C84961833; Thu, 29 Aug 2019 14:29:26 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 5C46360E6A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Aug 2019 14:29:22 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id y135so2209628wmc.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Aug 2019 07:29:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N4tzF5ZJXTgKfqcRosNis+efs/wFEuz1xTl1VpiMyO0=;
 b=riYe1Q2Ew2H7MlLtTbmS7dHxB4LG8PVmnVR1FXdm0IIYWfCNGIhF+SxPN65VCGZGNb
 ODdVWJ70W3WaWmOdeNWq1gSKi20p99VDB7Iecp+dr+hIV70ReRWOHiD4PQBZFsoq3Lq3
 ypGy3aZMPAh12paGzdVbUAQtO+c5R4rBUuMixHYYvyyKpV9dwZy+wPqwEbwiiapTxiKI
 FGO37r00Tua8XaD5U+SGBdbRXVCH+1aL+PEC/CRf8zU+iGKfoFWS2IGR9Xz/grTJrFEd
 Da60J2kDsvr97jizpNtIWPXzX5vJjUg/ISv7kVE2dC7EOBItPDDJuk45+UaA17hzyOBP
 wzmw==
X-Gm-Message-State: APjAAAVtdxNd/uiZoioh4YcXma3CNH2u6F7+XoNJMKB64N4RktI6Pvco
 HHVps7G5cN3tAYW3Fyhl9Wg=
X-Google-Smtp-Source: APXvYqx6tcKU1r7qaaYSr8sMssGM//Lu4xfotFoq5cn8rHzDfn/+zTlOF7MIv+pK5f1a63O1TAUJWA==
X-Received: by 2002:a1c:c542:: with SMTP id v63mr11679165wmf.97.1567088961582; 
 Thu, 29 Aug 2019 07:29:21 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:d57:5a0b:4833:fc9f])
 by smtp.gmail.com with ESMTPSA id w13sm6188214wre.44.2019.08.29.07.29.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 07:29:21 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 16:29:15 +0200
Message-Id: <20190829142917.13058-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829142917.13058-1-christian.koenig@amd.com>
References: <20190829142917.13058-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/4] drm/ttm: use the parent resv for ghost
	objects v2
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

VGhpcyB3YXkgd2UgY2FuIGV2ZW4gcGlwZWxpbmUgaW1wb3J0ZWQgQk8gZXZpY3Rpb25zLgoKdjI6
IExpbWl0IHRoaXMgdG8gb25seSBjYXNlcyB3aGVuIHRoZSBwYXJlbnQgb2JqZWN0IHVzZXMgYSBz
ZXBhcmF0ZQogICAgcmVzZXJ2YXRpb24gb2JqZWN0IGFzIHdlbGwuIFRoaXMgZml4ZXMgYW5vdGhl
ciBPT00gcHJvYmxlbS4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMg
fCAxNiArKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA3
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0
aWwuYyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYwppbmRleCBmZTgxYzU2NWU3
ZWYuLjJlYmU5ZmU3ZjZjOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9f
dXRpbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYwpAQCAtNTE3LDcg
KzUxNyw5IEBAIHN0YXRpYyBpbnQgdHRtX2J1ZmZlcl9vYmplY3RfdHJhbnNmZXIoc3RydWN0IHR0
bV9idWZmZXJfb2JqZWN0ICpibywKIAlrcmVmX2luaXQoJmZiby0+YmFzZS5rcmVmKTsKIAlmYm8t
PmJhc2UuZGVzdHJveSA9ICZ0dG1fdHJhbnNmZXJlZF9kZXN0cm95OwogCWZiby0+YmFzZS5hY2Nf
c2l6ZSA9IDA7Ci0JZmJvLT5iYXNlLmJhc2UucmVzdiA9ICZmYm8tPmJhc2UuYmFzZS5fcmVzdjsK
KwlpZiAoYm8tPmJhc2UucmVzdiA9PSAmYm8tPmJhc2UuX3Jlc3YpCisJCWZiby0+YmFzZS5iYXNl
LnJlc3YgPSAmZmJvLT5iYXNlLmJhc2UuX3Jlc3Y7CisKIAlkbWFfcmVzdl9pbml0KGZiby0+YmFz
ZS5iYXNlLnJlc3YpOwogCXJldCA9IGRtYV9yZXN2X3RyeWxvY2soZmJvLT5iYXNlLmJhc2UucmVz
dik7CiAJV0FSTl9PTighcmV0KTsKQEAgLTcxNiw3ICs3MTgsNyBAQCBpbnQgdHRtX2JvX21vdmVf
YWNjZWxfY2xlYW51cChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogCQlpZiAocmV0KQog
CQkJcmV0dXJuIHJldDsKIAotCQlkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShnaG9zdF9vYmotPmJh
c2UucmVzdiwgZmVuY2UpOworCQlkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZSgmZ2hvc3Rfb2JqLT5i
YXNlLl9yZXN2LCBmZW5jZSk7CiAKIAkJLyoqCiAJCSAqIElmIHdlJ3JlIG5vdCBtb3ZpbmcgdG8g
Zml4ZWQgbWVtb3J5LCB0aGUgVFRNIG9iamVjdApAQCAtNzI5LDcgKzczMSw3IEBAIGludCB0dG1f
Ym9fbW92ZV9hY2NlbF9jbGVhbnVwKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCiAJCWVs
c2UKIAkJCWJvLT50dG0gPSBOVUxMOwogCi0JCXR0bV9ib191bnJlc2VydmUoZ2hvc3Rfb2JqKTsK
KwkJZG1hX3Jlc3ZfdW5sb2NrKCZnaG9zdF9vYmotPmJhc2UuX3Jlc3YpOwogCQl0dG1fYm9fcHV0
KGdob3N0X29iaik7CiAJfQogCkBAIC03NzIsNyArNzc0LDcgQEAgaW50IHR0bV9ib19waXBlbGlu
ZV9tb3ZlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCiAJCWlmIChyZXQpCiAJCQlyZXR1
cm4gcmV0OwogCi0JCWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKGdob3N0X29iai0+YmFzZS5yZXN2
LCBmZW5jZSk7CisJCWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKCZnaG9zdF9vYmotPmJhc2UuX3Jl
c3YsIGZlbmNlKTsKIAogCQkvKioKIAkJICogSWYgd2UncmUgbm90IG1vdmluZyB0byBmaXhlZCBt
ZW1vcnksIHRoZSBUVE0gb2JqZWN0CkBAIC03ODUsNyArNzg3LDcgQEAgaW50IHR0bV9ib19waXBl
bGluZV9tb3ZlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCiAJCWVsc2UKIAkJCWJvLT50
dG0gPSBOVUxMOwogCi0JCXR0bV9ib191bnJlc2VydmUoZ2hvc3Rfb2JqKTsKKwkJZG1hX3Jlc3Zf
dW5sb2NrKCZnaG9zdF9vYmotPmJhc2UuX3Jlc3YpOwogCQl0dG1fYm9fcHV0KGdob3N0X29iaik7
CiAKIAl9IGVsc2UgaWYgKGZyb20tPmZsYWdzICYgVFRNX01FTVRZUEVfRkxBR19GSVhFRCkgewpA
QCAtODQxLDcgKzg0Myw3IEBAIGludCB0dG1fYm9fcGlwZWxpbmVfZ3V0dGluZyhzdHJ1Y3QgdHRt
X2J1ZmZlcl9vYmplY3QgKmJvKQogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQlyZXQgPSBk
bWFfcmVzdl9jb3B5X2ZlbmNlcyhnaG9zdC0+YmFzZS5yZXN2LCBiby0+YmFzZS5yZXN2KTsKKwly
ZXQgPSBkbWFfcmVzdl9jb3B5X2ZlbmNlcygmZ2hvc3QtPmJhc2UuX3Jlc3YsIGJvLT5iYXNlLnJl
c3YpOwogCS8qIExhc3QgcmVzb3J0LCB3YWl0IGZvciB0aGUgQk8gdG8gYmUgaWRsZSB3aGVuIHdl
IGFyZSBPT00gKi8KIAlpZiAocmV0KQogCQl0dG1fYm9fd2FpdChibywgZmFsc2UsIGZhbHNlKTsK
QEAgLTg1MCw3ICs4NTIsNyBAQCBpbnQgdHRtX2JvX3BpcGVsaW5lX2d1dHRpbmcoc3RydWN0IHR0
bV9idWZmZXJfb2JqZWN0ICpibykKIAliby0+bWVtLm1lbV90eXBlID0gVFRNX1BMX1NZU1RFTTsK
IAliby0+dHRtID0gTlVMTDsKIAotCXR0bV9ib191bnJlc2VydmUoZ2hvc3QpOworCWRtYV9yZXN2
X3VubG9jaygmZ2hvc3QtPmJhc2UuX3Jlc3YpOwogCXR0bV9ib19wdXQoZ2hvc3QpOwogCiAJcmV0
dXJuIDA7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
