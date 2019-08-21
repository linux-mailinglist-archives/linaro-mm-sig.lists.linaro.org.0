Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D66979CC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 14:45:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FD7D6182D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 12:45:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4FFB761839; Wed, 21 Aug 2019 12:45:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 854B961861;
	Wed, 21 Aug 2019 12:36:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D17F761833
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:35:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C270661841; Wed, 21 Aug 2019 12:35:59 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 5E9DB61837
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:32:04 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id o4so1941547wmh.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 05:32:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MZJwoU8EhjpqcfOVk/0UG/4FrwiANEoCi8kk0rWYdbg=;
 b=ksyqxpRmOKcg4fdxg/DHnSVl6AgEtQCgqCQWGAa6poCcBPoHqgYwiD8SkpZJ4CONZF
 nK80R6W5F5XjuWNw7bA1eNTJQ6+jyGPHG09ux+9iSLdamsEBFts/qbpaygNubW0iuv1t
 X44qLqjlNxZ4myKa2VsuuSZ/Ain5xgtpKnKV6fZkfHAodjpFx6wHrcDhB8uJcVzfbd95
 GjiJzJt55ARs8CUsB4vlKL1ktuJNIKnWywkqu2rmgJsJCe7RM6oIFBXmgRfzEdITWI2N
 qqYMheg6miy+KOO9L+Ph0CG0G63NQvLI7zFNL3r6gyPUpbMagLD59P1dM6BMIuIcfU3N
 zBPQ==
X-Gm-Message-State: APjAAAXY8DrQpU5xa5BJuvufzVI3RG6ZAitR7eN7D9JfO+PPpIg49McV
 5oGdmWUslvtpmXzsC4UxslE=
X-Google-Smtp-Source: APXvYqwZ8Gd/KOK6OMmUJsHhzoQ82fdVwJdWeRR2KTsdPwyQ4ORWAL/wvp+i3s7QDG9IRFkvzuVI5Q==
X-Received: by 2002:a1c:6a0b:: with SMTP id f11mr5415866wmc.87.1566390723528; 
 Wed, 21 Aug 2019 05:32:03 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8189:dd33:a934:c4fa])
 by smtp.gmail.com with ESMTPSA id v3sm23084571wrq.34.2019.08.21.05.32.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 05:32:00 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Wed, 21 Aug 2019 14:31:47 +0200
Message-Id: <20190821123147.110736-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821123147.110736-1-christian.koenig@amd.com>
References: <20190821123147.110736-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 10/10] dma-buf/resv: add other operations
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

QWRkaXRpb25hbCB0byByZWFkZXJzIGFuZCB3cml0ZXJzIGFkZCBhbm90aGVyIGNsYXNzIG9mIG9w
ZXJhdGlvbnMKd2hpY2ggbmV2ZXIgcGFydGljaXBhdGUgaW4gaW1wbGljaXQgc3luY2hyb25pemF0
aW9uLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMjcgKysrKysrKysrKysr
KysrKysrKysrKysrLS0tCiBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggICB8ICAyICsrCiAyIGZp
bGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3Yu
YwppbmRleCA4ZWY3ZGJjN2ZkOGUuLmM2ZGQ2YzM2ZGJhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTI4
MCw2ICsyODAsNyBAQCB2b2lkIGRtYV9yZXN2X2luaXQoc3RydWN0IGRtYV9yZXN2ICpvYmopCiAK
IAlkbWFfcmVzdl9mZW5jZXNfaW5pdCgmb2JqLT53cml0ZXJzKTsKIAlkbWFfcmVzdl9mZW5jZXNf
aW5pdCgmb2JqLT5yZWFkZXJzKTsKKwlkbWFfcmVzdl9mZW5jZXNfaW5pdCgmb2JqLT5vdGhlcnMp
OwogfQogRVhQT1JUX1NZTUJPTChkbWFfcmVzdl9pbml0KTsKIApAQCAtMjk1LDYgKzI5Niw3IEBA
IHZvaWQgZG1hX3Jlc3ZfZmluaShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikKIAkgKi8KIAlkbWFfcmVz
dl9mZW5jZXNfZmluaSgmb2JqLT53cml0ZXJzKTsKIAlkbWFfcmVzdl9mZW5jZXNfZmluaSgmb2Jq
LT5yZWFkZXJzKTsKKwlkbWFfcmVzdl9mZW5jZXNfZmluaSgmb2JqLT5vdGhlcnMpOwogCXd3X211
dGV4X2Rlc3Ryb3koJm9iai0+bG9jayk7CiB9CiBFWFBPUlRfU1lNQk9MKGRtYV9yZXN2X2Zpbmkp
OwpAQCAtMzM0LDYgKzMzNiwxMCBAQCB2b2lkIGRtYV9yZXN2X3BydW5lX2ZlbmNlcyhzdHJ1Y3Qg
ZG1hX3Jlc3YgKm9iaikKIAlmZW5jZSA9IGRtYV9yZXN2X2ZlbmNlc19kZXJlZihvYmosICZvYmot
PnJlYWRlcnMpOwogCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQogCQlkbWFfcmVz
dl9mZW5jZXNfc2V0KG9iaiwgJm9iai0+cmVhZGVycywgTlVMTCk7CisKKwlmZW5jZSA9IGRtYV9y
ZXN2X2ZlbmNlc19kZXJlZihvYmosICZvYmotPm90aGVycyk7CisJaWYgKGRtYV9mZW5jZV9pc19z
aWduYWxlZChmZW5jZSkpCisJCWRtYV9yZXN2X2ZlbmNlc19zZXQob2JqLCAmb2JqLT5vdGhlcnMs
IE5VTEwpOwogfQogRVhQT1JUX1NZTUJPTChkbWFfcmVzdl9wcnVuZV9mZW5jZXMpOwogCkBAIC0z
NDYsMTcgKzM1MiwxOSBAQCBFWFBPUlRfU1lNQk9MKGRtYV9yZXN2X3BydW5lX2ZlbmNlcyk7CiAq
LwogaW50IGRtYV9yZXN2X2NvcHlfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqZHN0LCBzdHJ1Y3Qg
ZG1hX3Jlc3YgKnNyYykKIHsKLQlzdHJ1Y3QgZG1hX2ZlbmNlICp3cml0ZXJzLCAqcmVhZGVyczsK
KwlzdHJ1Y3QgZG1hX2ZlbmNlICp3cml0ZXJzLCAqcmVhZGVycywgKm90aGVyczsKIAogCWRtYV9y
ZXN2X2Fzc2VydF9oZWxkKGRzdCk7CiAKIAlyY3VfcmVhZF9sb2NrKCk7CiAJd3JpdGVycyA9IGRt
YV9yZXN2X2ZlbmNlc19nZXRfcmN1KCZzcmMtPndyaXRlcnMpOwogCXJlYWRlcnMgPSBkbWFfcmVz
dl9mZW5jZXNfZ2V0X3JjdSgmc3JjLT5yZWFkZXJzKTsKKwlvdGhlcnMgPSBkbWFfcmVzdl9mZW5j
ZXNfZ2V0X3JjdSgmc3JjLT5vdGhlcnMpOwogCXJjdV9yZWFkX3VubG9jaygpOwogCiAJZG1hX3Jl
c3ZfZmVuY2VzX3NldChkc3QsICZkc3QtPndyaXRlcnMsIHdyaXRlcnMpOwogCWRtYV9yZXN2X2Zl
bmNlc19zZXQoZHN0LCAmZHN0LT5yZWFkZXJzLCByZWFkZXJzKTsKKwlkbWFfcmVzdl9mZW5jZXNf
c2V0KGRzdCwgJmRzdC0+cmVhZGVycywgb3RoZXJzKTsKIAogCXJldHVybiAwOwogfQpAQCAtNDQw
LDEyICs0NDgsMTMgQEAgbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVvdXRfcmN1KHN0cnVjdCBkbWFf
cmVzdiAqb2JqLAogCQkJICAgICAgIGJvb2wgd2FpdF9hbGwsIGJvb2wgaW50ciwKIAkJCSAgICAg
ICB1bnNpZ25lZCBsb25nIHRpbWVvdXQpCiB7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqd3JpdGVycywg
KnJlYWRlcnM7CisJc3RydWN0IGRtYV9mZW5jZSAqd3JpdGVycywgKnJlYWRlcnMsICpvdGhlcnM7
CiAJbG9uZyByZXQgPSB0aW1lb3V0ID8gdGltZW91dCA6IDE7CiAKIAlyY3VfcmVhZF9sb2NrKCk7
CiAJd3JpdGVycyA9IGRtYV9yZXN2X2ZlbmNlc19nZXRfcmN1KCZvYmotPndyaXRlcnMpOwogCXJl
YWRlcnMgPSBkbWFfcmVzdl9mZW5jZXNfZ2V0X3JjdSgmb2JqLT5yZWFkZXJzKTsKKwlvdGhlcnMg
PSBkbWFfcmVzdl9mZW5jZXNfZ2V0X3JjdSgmb2JqLT5vdGhlcnMpOwogCXJjdV9yZWFkX3VubG9j
aygpOwogCiAJaWYgKHdhaXRfYWxsICYmIHJlYWRlcnMpIHsKQEAgLTQ1NCwxMiArNDYzLDE5IEBA
IGxvbmcgZG1hX3Jlc3Zfd2FpdF90aW1lb3V0X3JjdShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwKIAkJ
CWdvdG8gb3V0OwogCX0KIAorCWlmICh3YWl0X2FsbCAmJiBvdGhlcnMpIHsKKwkJcmV0ID0gZG1h
X2ZlbmNlX3dhaXRfdGltZW91dChvdGhlcnMsIGludHIsIHJldCk7CisJCWlmIChyZXQgPD0gMCkK
KwkJCWdvdG8gb3V0OworCX0KKwogCWlmICh3cml0ZXJzKQogCQlyZXQgPSBkbWFfZmVuY2Vfd2Fp
dF90aW1lb3V0KHdyaXRlcnMsIGludHIsIHJldCk7CiAKIG91dDoKIAlkbWFfZmVuY2VfcHV0KHdy
aXRlcnMpOwogCWRtYV9mZW5jZV9wdXQocmVhZGVycyk7CisJZG1hX2ZlbmNlX3B1dChvdGhlcnMp
OwogCXJldHVybiByZXQ7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl93YWl0X3RpbWVv
dXRfcmN1KTsKQEAgLTQ3NiwxMiArNDkyLDEzIEBAIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9yZXN2
X3dhaXRfdGltZW91dF9yY3UpOwogICovCiBib29sIGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWRfcmN1
KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBib29sIHRlc3RfYWxsKQogewotCXN0cnVjdCBkbWFfZmVu
Y2UgKndyaXRlcnMsICpyZWFkZXJzOworCXN0cnVjdCBkbWFfZmVuY2UgKndyaXRlcnMsICpyZWFk
ZXJzLCAqb3RoZXJzOwogCWJvb2wgcmV0ID0gdHJ1ZTsKIAogCXJjdV9yZWFkX2xvY2soKTsKIAl3
cml0ZXJzID0gZG1hX3Jlc3ZfZmVuY2VzX2dldF9yY3UoJm9iai0+d3JpdGVycyk7CiAJcmVhZGVy
cyA9IGRtYV9yZXN2X2ZlbmNlc19nZXRfcmN1KCZvYmotPnJlYWRlcnMpOworCW90aGVycyA9IGRt
YV9yZXN2X2ZlbmNlc19nZXRfcmN1KCZvYmotPm90aGVycyk7CiAJcmN1X3JlYWRfdW5sb2NrKCk7
CiAKIAlpZiAod3JpdGVycykKQEAgLTQ5MCw4ICs1MDcsMTIgQEAgYm9vbCBkbWFfcmVzdl90ZXN0
X3NpZ25hbGVkX3JjdShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB0ZXN0X2FsbCkKIAlpZiAo
dGVzdF9hbGwgJiYgcmVhZGVycykKIAkJcmV0ICY9IGRtYV9mZW5jZV9pc19zaWduYWxlZChyZWFk
ZXJzKTsKIAorCWlmICh0ZXN0X2FsbCAmJiBvdGhlcnMpCisJCXJldCAmPSBkbWFfZmVuY2VfaXNf
c2lnbmFsZWQob3RoZXJzKTsKKwogCWRtYV9mZW5jZV9wdXQod3JpdGVycyk7CiAJZG1hX2ZlbmNl
X3B1dChyZWFkZXJzKTsKKwlkbWFfZmVuY2VfcHV0KG90aGVycyk7CiAKIAlyZXR1cm4gcmV0Owog
fQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oIGIvaW5jbHVkZS9saW51eC9k
bWEtcmVzdi5oCmluZGV4IDcyYzNjNGY5OTcxMS4uYmY4ZDIxY2M3NzIwIDEwMDY0NAotLS0gYS9p
bmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKKysrIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oCkBA
IC03NiwxMiArNzYsMTQgQEAgdm9pZCBkbWFfcmVzdl9mZW5jZXNfY29tbWl0KHN0cnVjdCBkbWFf
cmVzdiAqb2JqLAogICogQHNlcTogc2VxdWVuY2UgY291bnQgZm9yIG1hbmFnaW5nIFJDVSByZWFk
LXNpZGUgc3luY2hyb25pemF0aW9uCiAgKiBAd3JpdGVyczogYXJyYXkgb2Ygd3JpdGUgb3BlcmF0
aW9ucyBmb3IgaW1wbGljaXQgc3luYwogICogQHJlYWRlcnM6IGFycmF5IG9mIHJlYWQgb3BlcmF0
aW9ucyBmb3IgaW1wbGljaXQgc3luYworICogQG90aGVyczogb3RoZXIgb3BlcmF0aW9ucyBub3Qg
cGFydGljaXBhdGluZyBpbiBpbXBsaWNpdCBzeW5jCiAgKi8KIHN0cnVjdCBkbWFfcmVzdiB7CiAJ
c3RydWN0IHd3X211dGV4IGxvY2s7CiAKIAlzdHJ1Y3QgZG1hX3Jlc3ZfZmVuY2VzIHdyaXRlcnM7
CiAJc3RydWN0IGRtYV9yZXN2X2ZlbmNlcyByZWFkZXJzOworCXN0cnVjdCBkbWFfcmVzdl9mZW5j
ZXMgb3RoZXJzOwogfTsKIAogI2RlZmluZSBkbWFfcmVzdl9oZWxkKG9iaikgbG9ja2RlcF9pc19o
ZWxkKCYob2JqKS0+bG9jay5iYXNlKQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
