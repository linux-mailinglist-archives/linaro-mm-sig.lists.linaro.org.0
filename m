Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B450B3A9501
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 10:27:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B595C63520
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 08:27:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A666260501; Wed, 16 Jun 2021 08:27:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDAD06677A;
	Wed, 16 Jun 2021 08:27:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0DB3663E52
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0AE8B634FD; Wed, 16 Jun 2021 08:27:06 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by lists.linaro.org (Postfix) with ESMTPS id DE5D6618E8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:03 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id dj8so1542620edb.6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 01:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=5WMQmwGHbFSsJZWDXuAJvQZzGWBWH2W4bsFT3at8Zrc=;
 b=NVrqaPl19uEslX/a+KyWratsaSC97kBg4iUcUB8MZJukI/CUgyD9y2YUaJ2tOIj3Vb
 ixt1qRYMlSRMZnfCGzpujLwyyLlQeLXocGBTZH8KvIb+6ooOpakMj5YkfcoQRGgqTjPP
 AqYI7SqZDm6uW6UNrRpGRvdMe/7lQOiq5tnaQA0AG3Bs1b6+UKNgmls2Dz05f86K0etC
 UjAVH9NsRWKPjP5uVLJbNEf/l0yLnpTITa6piqgHIcAMbIwpks+BdphqoYZUTQKeDOuE
 KNxiTx8W3IbQw2UyIMREJWGpzjv2/kWL0J1pW9a+ZsrhV+6DA+cLIKnuoF+3a2+/Vmvi
 SY1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5WMQmwGHbFSsJZWDXuAJvQZzGWBWH2W4bsFT3at8Zrc=;
 b=IKBsDRF3Tkb/CgJJx9CrmKAb6eT/pzm4AHakBkYnEXUd0ALKe6YolKJowSffTzy5na
 EAXaqeLZ4v6EB9nHaLI6v7ENjNRkYZ/vz96q6QWIVzutWAq2oEslZJq6nChaz/AXZant
 qyShuG07LGHPe8pZttc2+cMGl+SbpCt0FsjwTYHdmT2JC23ctZx1izLhVmBOf2jd0OHj
 EiIhtGOOV67d96qYeYkDzz48Rtw8M5X7GVF2KJwk0XClp7fEyW5BrEx5P/llBK+PWg1n
 7SMJ7cNSpEhqpujhyUNdQW8VeyYiTgb0GJSOhjHvtJS+7iP5n5i/hONJu8PE8sgxYnfc
 2A2Q==
X-Gm-Message-State: AOAM533ZRqKjTOaJYo6/6xKHgfXrlykp8Jq6ZHM3bk4G/ljDibyFO3Ap
 9utJ8q4PgGOwqXZnTV+4Kh0=
X-Google-Smtp-Source: ABdhPJwV7+n84rFPY62ZziQgf22oMXHmHw5Wg3+23X3qqR6nGWr7dVvkNQCVJypfg3IWq7wiJAhiTA==
X-Received: by 2002:a05:6402:5:: with SMTP id d5mr2758141edu.312.1623832022944; 
 Wed, 16 Jun 2021 01:27:02 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8b88:17a4:582b:121f])
 by smtp.gmail.com with ESMTPSA id v7sm1152639edx.38.2021.06.16.01.27.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 01:27:02 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
Date: Wed, 16 Jun 2021 10:26:53 +0200
Message-Id: <20210616082655.111001-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210616082655.111001-1-christian.koenig@amd.com>
References: <20210616082655.111001-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 5/7] drm/msm: always wait for the exclusive
 fence
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

RHJpdmVycyBhbHNvIG5lZWQgdG8gdG8gc3luYyB0byB0aGUgZXhjbHVzaXZlIGZlbmNlIHdoZW4K
YSBzaGFyZWQgb25lIGlzIHByZXNlbnQuCgpDb21wbGV0ZWx5IHVudGVzdGVkIHNpbmNlIHRoZSBk
cml2ZXIgd29uJ3QgZXZlbiBjb21waWxlIG9uICFBUk0uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L21zbS9tc21fZ2VtLmMgfCAxNiArKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9tc20vbXNtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMKaW5kZXggYTk0
YTQzZGU5NWVmLi43MmEwN2UzMTFkZTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20v
bXNtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jCkBAIC04MTcsMTcg
KzgxNywxNSBAQCBpbnQgbXNtX2dlbV9zeW5jX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Km9iaiwKIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAlpbnQgaSwgcmV0OwogCi0JZm9iaiA9
IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iai0+cmVzdik7Ci0JaWYgKCFmb2JqIHx8IChmb2JqLT5z
aGFyZWRfY291bnQgPT0gMCkpIHsKLQkJZmVuY2UgPSBkbWFfcmVzdl9leGNsX2ZlbmNlKG9iai0+
cmVzdik7Ci0JCS8qIGRvbid0IG5lZWQgdG8gd2FpdCBvbiBvdXIgb3duIGZlbmNlcywgc2luY2Ug
cmluZyBpcyBmaWZvICovCi0JCWlmIChmZW5jZSAmJiAoZmVuY2UtPmNvbnRleHQgIT0gZmN0eC0+
Y29udGV4dCkpIHsKLQkJCXJldCA9IGRtYV9mZW5jZV93YWl0KGZlbmNlLCB0cnVlKTsKLQkJCWlm
IChyZXQpCi0JCQkJcmV0dXJuIHJldDsKLQkJfQorCWZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9mZW5j
ZShvYmotPnJlc3YpOworCS8qIGRvbid0IG5lZWQgdG8gd2FpdCBvbiBvdXIgb3duIGZlbmNlcywg
c2luY2UgcmluZyBpcyBmaWZvICovCisJaWYgKGZlbmNlICYmIChmZW5jZS0+Y29udGV4dCAhPSBm
Y3R4LT5jb250ZXh0KSkgeworCQlyZXQgPSBkbWFfZmVuY2Vfd2FpdChmZW5jZSwgdHJ1ZSk7CisJ
CWlmIChyZXQpCisJCQlyZXR1cm4gcmV0OwogCX0KIAorCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRf
bGlzdChvYmotPnJlc3YpOwogCWlmICghZXhjbHVzaXZlIHx8ICFmb2JqKQogCQlyZXR1cm4gMDsK
IAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
