Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 400A6357BA7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Apr 2021 07:01:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BC06666F6
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Apr 2021 05:01:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 56404666FC; Thu,  8 Apr 2021 05:01:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0BF2665EE;
	Thu,  8 Apr 2021 05:00:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7B48E6656A
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Apr 2021 05:00:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6289F665EE; Thu,  8 Apr 2021 05:00:26 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by lists.linaro.org (Postfix) with ESMTPS id C728F6656A
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Apr 2021 05:00:24 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id d124so891416pfa.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Apr 2021 22:00:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yAhu6CqdAQ+BdgBQcTHerGRp4ijsbWysCLX6FzCbuNw=;
 b=bLcnma5agdd9d1Bk/OpZWp+7zPFlLrb+ri4EUmDbxuFoyCpcWJlGsluRyYT7FvcwnK
 Tg1QTRjejNzbiSTv+h1pOLNNEpVt4lgd4PMTFJSc47qtj0qxqq9leek+0oYiJ6AwrMaA
 zEdvLxa+qrUD3rrJMUn62X6ngy44gUAv0f/8ZiCpP6RMpVihLWv7hA1N0IMAdvPqfAlC
 Tz57eLg0JmBLIe+vBkZFqUQR8HYX7Zc9RR0FKJkRxs5UbEca2GVZgA7Z3+8hh2bh0r21
 E6h15wYgPdIgEUfSmFYZ0sHsBPd3h2ek2/eaxU15Aey0/sIBJaXYH9ktvpNU/tpwGcAC
 5xCg==
X-Gm-Message-State: AOAM53207NNGcmu5vGOXu5B+WxJP57wQoE/K5+q7hlv0DtfIsStRpZHH
 fOsgZFbfEQniY+1fPbQWWKS7nA==
X-Google-Smtp-Source: ABdhPJz087ziF9CITNv68k2QMOx7nCzUgfYsJUromTlsf7o5zATa6GEr68p54yhZQi867KciJ0i4+g==
X-Received: by 2002:a65:5c88:: with SMTP id a8mr6238482pgt.130.1617858024006; 
 Wed, 07 Apr 2021 22:00:24 -0700 (PDT)
Received: from localhost ([2401:fa00:8f:203:25d8:8458:73e8:75ac])
 by smtp.gmail.com with UTF8SMTPSA id w67sm23753647pgb.87.2021.04.07.22.00.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 07 Apr 2021 22:00:23 -0700 (PDT)
From: David Stevens <stevensd@chromium.org>
X-Google-Original-From: David Stevens <stevensd@google.com>
To: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Thu,  8 Apr 2021 13:59:26 +0900
Message-Id: <20210408045926.3202160-1-stevensd@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linaro-mm-sig@lists.linaro.org, David Stevens <stevensd@chromium.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] Revert "drm/syncobj: use dma_fence_get_stub"
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

RnJvbTogRGF2aWQgU3RldmVucyA8c3RldmVuc2RAY2hyb21pdW0ub3JnPgoKVGhpcyByZXZlcnRz
IGNvbW1pdCA4NmJiZDg5ZDVkYTY2ZmU3NjAwNDlhZDNmMDRhZGM0MDdlYzBjNGQ2LgoKVXNpbmcg
dGhlIHNpbmdsZXRvbiBzdHViIGZlbmNlIGluIGRybV9zeW5jb2JqX2Fzc2lnbl9udWxsX2hhbmRs
ZSBtZWFucwp0aGF0IGFsbCBzeW5jb2JqcyBjcmVhdGVkIGluIGFuIGFscmVhZHkgc2lnbmFsZWQg
c3RhdGUgb3IgYW55IHN5bmNvYmpzCnNpZ25hbGVkIGJ5IHVzZXJzcGFjZSB3aWxsIHJlZmVyZW5j
ZSB0aGUgc2luZ2xldG9uIGZlbmNlIHdoZW4gZXhwb3J0ZWQKdG8gYSBzeW5jX2ZpbGUuIElmIHRo
b3NlIHN5bmNfZmlsZXMgYXJlIHF1ZXJpZWQgd2l0aCBTWU5DX0lPQ19GSUxFX0lORk8sCnRoZW4g
dGhlIHRpbWVzdGFtcF9ucyB2YWx1ZSByZXR1cm5lZCB3aWxsIGNvcnJlc3BvbmQgdG8gd2hlbmV2
ZXIgdGhlCnNpbmdsZXRvbiBzdHViIGZlbmNlIHdhcyBmaXJzdCBpbml0aWFsaXplZC4gVGhpcyBj
YW4gYnJlYWsgdGhlIGFiaWxpdHkKb2YgdXNlcnNwYWNlIHRvIHVzZSB0aW1lc3RhbXBzIG9mIHRo
ZXNlIGZlbmNlcywgYXMgdGhlIHNpbmdsZXRvbiBzdHViCmZlbmNlJ3MgdGltZXN0YW1wIGJlYXJz
IG5vIHJlbGF0aW9uc2hpcCB0byBhbnkgbWVhbmluZ2Z1bCBldmVudC4KClNpZ25lZC1vZmYtYnk6
IERhdmlkIFN0ZXZlbnMgPHN0ZXZlbnNkQGNocm9taXVtLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vZHJtX3N5bmNvYmouYyB8IDU4ICsrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX3N5bmNvYmouYwppbmRleCAzNDkxNDYwNDk4NDkuLjdjYzExZjFhODNmNCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9zeW5jb2JqLmMKQEAgLTIxMSw2ICsyMTEsMjEgQEAgc3RydWN0IHN5bmNvYmpfd2FpdF9lbnRy
eSB7CiBzdGF0aWMgdm9pZCBzeW5jb2JqX3dhaXRfc3luY29ial9mdW5jKHN0cnVjdCBkcm1fc3lu
Y29iaiAqc3luY29iaiwKIAkJCQkgICAgICBzdHJ1Y3Qgc3luY29ial93YWl0X2VudHJ5ICp3YWl0
KTsKIAorc3RydWN0IGRybV9zeW5jb2JqX3N0dWJfZmVuY2UgeworCXN0cnVjdCBkbWFfZmVuY2Ug
YmFzZTsKKwlzcGlubG9ja190IGxvY2s7Cit9OworCitzdGF0aWMgY29uc3QgY2hhciAqZHJtX3N5
bmNvYmpfc3R1Yl9mZW5jZV9nZXRfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKK3sKKwly
ZXR1cm4gInN5bmNvYmpzdHViIjsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vf
b3BzIGRybV9zeW5jb2JqX3N0dWJfZmVuY2Vfb3BzID0geworCS5nZXRfZHJpdmVyX25hbWUgPSBk
cm1fc3luY29ial9zdHViX2ZlbmNlX2dldF9uYW1lLAorCS5nZXRfdGltZWxpbmVfbmFtZSA9IGRy
bV9zeW5jb2JqX3N0dWJfZmVuY2VfZ2V0X25hbWUsCit9OworCiAvKioKICAqIGRybV9zeW5jb2Jq
X2ZpbmQgLSBsb29rdXAgYW5kIHJlZmVyZW5jZSBhIHN5bmMgb2JqZWN0LgogICogQGZpbGVfcHJp
dmF0ZTogZHJtIGZpbGUgcHJpdmF0ZSBwb2ludGVyCkBAIC0zNDQsMTggKzM1OSwyNCBAQCB2b2lk
IGRybV9zeW5jb2JqX3JlcGxhY2VfZmVuY2Uoc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqLAog
fQogRVhQT1JUX1NZTUJPTChkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKTsKIAotLyoqCi0gKiBk
cm1fc3luY29ial9hc3NpZ25fbnVsbF9oYW5kbGUgLSBhc3NpZ24gYSBzdHViIGZlbmNlIHRvIHRo
ZSBzeW5jIG9iamVjdAotICogQHN5bmNvYmo6IHN5bmMgb2JqZWN0IHRvIGFzc2lnbiB0aGUgZmVu
Y2Ugb24KLSAqCi0gKiBBc3NpZ24gYSBhbHJlYWR5IHNpZ25hbGVkIHN0dWIgZmVuY2UgdG8gdGhl
IHN5bmMgb2JqZWN0LgotICovCi1zdGF0aWMgdm9pZCBkcm1fc3luY29ial9hc3NpZ25fbnVsbF9o
YW5kbGUoc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqKQorc3RhdGljIGludCBkcm1fc3luY29i
al9hc3NpZ25fbnVsbF9oYW5kbGUoc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqKQogewotCXN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gZG1hX2ZlbmNlX2dldF9zdHViKCk7CisJc3RydWN0IGRy
bV9zeW5jb2JqX3N0dWJfZmVuY2UgKmZlbmNlOwogCi0JZHJtX3N5bmNvYmpfcmVwbGFjZV9mZW5j
ZShzeW5jb2JqLCBmZW5jZSk7Ci0JZG1hX2ZlbmNlX3B1dChmZW5jZSk7CisJZmVuY2UgPSBremFs
bG9jKHNpemVvZigqZmVuY2UpLCBHRlBfS0VSTkVMKTsKKwlpZiAoZmVuY2UgPT0gTlVMTCkKKwkJ
cmV0dXJuIC1FTk9NRU07CisKKwlzcGluX2xvY2tfaW5pdCgmZmVuY2UtPmxvY2spOworCWRtYV9m
ZW5jZV9pbml0KCZmZW5jZS0+YmFzZSwgJmRybV9zeW5jb2JqX3N0dWJfZmVuY2Vfb3BzLAorCQkg
ICAgICAgJmZlbmNlLT5sb2NrLCAwLCAwKTsKKwlkbWFfZmVuY2Vfc2lnbmFsKCZmZW5jZS0+YmFz
ZSk7CisKKwlkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN5bmNvYmosICZmZW5jZS0+YmFzZSk7
CisKKwlkbWFfZmVuY2VfcHV0KCZmZW5jZS0+YmFzZSk7CisKKwlyZXR1cm4gMDsKIH0KIAogLyog
NXMgZGVmYXVsdCBmb3Igd2FpdCBzdWJtaXNzaW9uICovCkBAIC00NjksNiArNDkwLDcgQEAgRVhQ
T1JUX1NZTUJPTChkcm1fc3luY29ial9mcmVlKTsKIGludCBkcm1fc3luY29ial9jcmVhdGUoc3Ry
dWN0IGRybV9zeW5jb2JqICoqb3V0X3N5bmNvYmosIHVpbnQzMl90IGZsYWdzLAogCQkgICAgICAg
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCiB7CisJaW50IHJldDsKIAlzdHJ1Y3QgZHJtX3N5bmNv
YmogKnN5bmNvYmo7CiAKIAlzeW5jb2JqID0ga3phbGxvYyhzaXplb2Yoc3RydWN0IGRybV9zeW5j
b2JqKSwgR0ZQX0tFUk5FTCk7CkBAIC00NzksOCArNTAxLDEzIEBAIGludCBkcm1fc3luY29ial9j
cmVhdGUoc3RydWN0IGRybV9zeW5jb2JqICoqb3V0X3N5bmNvYmosIHVpbnQzMl90IGZsYWdzLAog
CUlOSVRfTElTVF9IRUFEKCZzeW5jb2JqLT5jYl9saXN0KTsKIAlzcGluX2xvY2tfaW5pdCgmc3lu
Y29iai0+bG9jayk7CiAKLQlpZiAoZmxhZ3MgJiBEUk1fU1lOQ09CSl9DUkVBVEVfU0lHTkFMRUQp
Ci0JCWRybV9zeW5jb2JqX2Fzc2lnbl9udWxsX2hhbmRsZShzeW5jb2JqKTsKKwlpZiAoZmxhZ3Mg
JiBEUk1fU1lOQ09CSl9DUkVBVEVfU0lHTkFMRUQpIHsKKwkJcmV0ID0gZHJtX3N5bmNvYmpfYXNz
aWduX251bGxfaGFuZGxlKHN5bmNvYmopOworCQlpZiAocmV0IDwgMCkgeworCQkJZHJtX3N5bmNv
YmpfcHV0KHN5bmNvYmopOworCQkJcmV0dXJuIHJldDsKKwkJfQorCX0KIAogCWlmIChmZW5jZSkK
IAkJZHJtX3N5bmNvYmpfcmVwbGFjZV9mZW5jZShzeW5jb2JqLCBmZW5jZSk7CkBAIC0xMzIyLDgg
KzEzNDksMTEgQEAgZHJtX3N5bmNvYmpfc2lnbmFsX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHZvaWQgKmRhdGEsCiAJaWYgKHJldCA8IDApCiAJCXJldHVybiByZXQ7CiAKLQlmb3IgKGkg
PSAwOyBpIDwgYXJncy0+Y291bnRfaGFuZGxlczsgaSsrKQotCQlkcm1fc3luY29ial9hc3NpZ25f
bnVsbF9oYW5kbGUoc3luY29ianNbaV0pOworCWZvciAoaSA9IDA7IGkgPCBhcmdzLT5jb3VudF9o
YW5kbGVzOyBpKyspIHsKKwkJcmV0ID0gZHJtX3N5bmNvYmpfYXNzaWduX251bGxfaGFuZGxlKHN5
bmNvYmpzW2ldKTsKKwkJaWYgKHJldCA8IDApCisJCQlicmVhazsKKwl9CiAKIAlkcm1fc3luY29i
al9hcnJheV9mcmVlKHN5bmNvYmpzLCBhcmdzLT5jb3VudF9oYW5kbGVzKTsKIAotLSAKMi4zMS4w
LjIwOC5nNDA5Zjg5OWZmMC1nb29nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
