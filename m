Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EACD54138BE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:39:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69EC966BF4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:38:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 084726171E; Tue, 21 Sep 2021 17:38:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B041961A28;
	Tue, 21 Sep 2021 17:38:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6D3E3618C3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E1FC7617B3; Tue, 21 Sep 2021 17:37:29 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id DB8BE6140D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:25 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id u15so41555460wru.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jIUir/k9ok0mhA9lZLcDk0nsv9skwzmV2ts7X5dBo9o=;
 b=qNFqSzSSKxBU2c+wJ5dNSFN3fmWJWKj5/S4wITuPePVjHBThf10BU6Ze2py7g3GP6T
 TM6MV+9qgUO0IlFwkr3BrgNkBAKd93By5Yus3sXAyJMWVRy8kO9yzZ9NfpNQ5RPBWZd8
 DwHc2mgfbLsoF5nocFHowXpq3ZxK56Auy3a4Trd+wJli9+gjHxwtA4BOQVkPnnjtH2gf
 VloDBtHT4iwZzoTRUejVNkoQWsSp8TfEsgAutrQl9Dc2obrhEVcICN/BHYm9e1nQVjjg
 jnVEIBTjknqgbeHpF1FqEVd+G8u5EMgpLpVn52kxOGHrqLtZUMjWhnE7rePe2qbbLSps
 eQ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jIUir/k9ok0mhA9lZLcDk0nsv9skwzmV2ts7X5dBo9o=;
 b=i+X6bpuLq7YGY88MDOvLIIWtQaTyyY3cUszrceGHf7QMS8aZR/NLqHWuNNAAuuWhZ8
 0fcAB3RgncEkQyqHgw5gcRn9X6DEuK8nAcSHByKgD7ZpNBT8uOf/jXEqzEJ4UfWlcxXq
 oqd/f6g0ZODntQ7r+lkndVpuueeS9CNwTWj+DM73zA3hprv8T1zAwRl0zzYQeY/Tm+x3
 NfH2AF/MaPTIWeX/G20mTaXTmLCW4RKc69Rf8C0pvhC1dn0XOJnqnoS5GNN3pR8QqLcT
 2THGYzQiGj9WBfuTwKqR5rLHxbYC9NCKXJnC9TVnetMNwi5vafvzhL6tsMx55dN9MCle
 AUew==
X-Gm-Message-State: AOAM532ZQVHMNcpGEVhCZGRjlM121RLzeLrAIWAchdkUkv/k9LGDyObn
 tzjVVz5LKONmZe0xQezjpvIGJZXYnwY=
X-Google-Smtp-Source: ABdhPJxOWEBg2QDxOb4uSsvYLkB5zttxf6ozsEDB1Zi+AcbsCDbTDDFsJzVS3kZiRxPdXo9f6M61xg==
X-Received: by 2002:a5d:6944:: with SMTP id r4mr36621549wrw.186.1632245844899; 
 Tue, 21 Sep 2021 10:37:24 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:24 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:57 +0200
Message-Id: <20210921173659.246165-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 24/26] drm/etnaviv: use new iterator in
 etnaviv_gem_describe
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

SW5zdGVhZCBvZiBoYW5kIHJvbGxpbmcgdGhlIGxvZ2ljLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMgfCAzMSArKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwppbmRleCA4ZjFiNWFmNDdkZDYuLjBlZWIzM2Rl
MmZmNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCkBAIC00MjgsMTkgKzQy
OCwxNyBAQCBpbnQgZXRuYXZpdl9nZW1fd2FpdF9ibyhzdHJ1Y3QgZXRuYXZpdl9ncHUgKmdwdSwg
c3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCiBzdGF0aWMgdm9pZCBldG5hdml2X2dlbV9kZXNj
cmliZV9mZW5jZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKIAljb25zdCBjaGFyICp0eXBlLCBz
dHJ1Y3Qgc2VxX2ZpbGUgKm0pCiB7Ci0JaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdO
QUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQotCQlzZXFfcHJpbnRmKG0sICJcdCU5czogJXMgJXMg
c2VxICVsbHVcbiIsCi0JCQkgICB0eXBlLAotCQkJICAgZmVuY2UtPm9wcy0+Z2V0X2RyaXZlcl9u
YW1lKGZlbmNlKSwKLQkJCSAgIGZlbmNlLT5vcHMtPmdldF90aW1lbGluZV9uYW1lKGZlbmNlKSwK
LQkJCSAgIGZlbmNlLT5zZXFubyk7CisJc2VxX3ByaW50ZihtLCAiXHQlOXM6ICVzICVzIHNlcSAl
bGx1XG4iLCB0eXBlLAorCQkgICBmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpLAor
CQkgICBmZW5jZS0+b3BzLT5nZXRfdGltZWxpbmVfbmFtZShmZW5jZSksCisJCSAgIGZlbmNlLT5z
ZXFubyk7CiB9CiAKIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX2Rlc2NyaWJlKHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pCiB7CiAJc3RydWN0IGV0bmF2aXZf
Z2VtX29iamVjdCAqZXRuYXZpdl9vYmogPSB0b19ldG5hdml2X2JvKG9iaik7CiAJc3RydWN0IGRt
YV9yZXN2ICpyb2JqID0gb2JqLT5yZXN2OwotCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmb2JqOwor
CXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsK
IAl1bnNpZ25lZCBsb25nIG9mZiA9IGRybV92bWFfbm9kZV9zdGFydCgmb2JqLT52bWFfbm9kZSk7
CiAKQEAgLTQ0OSwyMSArNDQ3LDE0IEBAIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX2Rlc2NyaWJl
KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pCiAJCQlvYmot
Pm5hbWUsIGtyZWZfcmVhZCgmb2JqLT5yZWZjb3VudCksCiAJCQlvZmYsIGV0bmF2aXZfb2JqLT52
YWRkciwgb2JqLT5zaXplKTsKIAotCXJjdV9yZWFkX2xvY2soKTsKLQlmb2JqID0gZG1hX3Jlc3Zf
c2hhcmVkX2xpc3Qocm9iaik7Ci0JaWYgKGZvYmopIHsKLQkJdW5zaWduZWQgaW50IGksIHNoYXJl
ZF9jb3VudCA9IGZvYmotPnNoYXJlZF9jb3VudDsKLQotCQlmb3IgKGkgPSAwOyBpIDwgc2hhcmVk
X2NvdW50OyBpKyspIHsKLQkJCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlKGZvYmotPnNoYXJlZFtp
XSk7CisJZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCByb2JqLCB0cnVlKTsKKwlkbWFfcmVz
dl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgeworCQlpZiAoZG1hX3Jl
c3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQlldG5hdml2X2dlbV9kZXNjcmliZV9m
ZW5jZShmZW5jZSwgIkV4Y2x1c2l2ZSIsIG0pOworCQllbHNlCiAJCQlldG5hdml2X2dlbV9kZXNj
cmliZV9mZW5jZShmZW5jZSwgIlNoYXJlZCIsIG0pOwotCQl9CiAJfQotCi0JZmVuY2UgPSBkbWFf
cmVzdl9leGNsX2ZlbmNlKHJvYmopOwotCWlmIChmZW5jZSkKLQkJZXRuYXZpdl9nZW1fZGVzY3Jp
YmVfZmVuY2UoZmVuY2UsICJFeGNsdXNpdmUiLCBtKTsKLQlyY3VfcmVhZF91bmxvY2soKTsKKwlk
bWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKIH0KIAogdm9pZCBldG5hdml2X2dlbV9kZXNjcmli
ZV9vYmplY3RzKHN0cnVjdCBldG5hdml2X2RybV9wcml2YXRlICpwcml2LAotLSAKMi4yNS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
