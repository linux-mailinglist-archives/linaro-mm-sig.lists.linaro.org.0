Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F53A416CBF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 09:18:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C749D62631
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 07:18:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 99EBB6263B; Fri, 24 Sep 2021 07:18:32 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48F5D60B55;
	Fri, 24 Sep 2021 07:18:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EF3D9607A0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 07:18:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E197B60A91; Fri, 24 Sep 2021 07:18:05 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id CBAB8609C0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 07:18:03 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id t28so10952455wra.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 00:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2PlrT9rqD3g2RKXKoyVvQWRQ3kbYLZy4tSH1wo/aiKQ=;
 b=SaurTfbrOAd1J73wEzqbrLFpDyn2RrO6QVmlzVe7sKR0/jOw8/NPFHu4wTePTSY9mP
 42rkkc3M61pzMmreOtQ6XbS5O9OR77p2ChkYTqGDWpVYcL2qRTet4raiLMWNuiNRS0G0
 bl4tOYIPzQAGpWYPAPFTAZvL22CoLuIg3dzMucKHOGybZdohP0G+8PBzBczTrbbsvZO2
 LqalR9ZQ53ZqyplvI3d9jrkGLlk0FUaAE1NADzVL2dTAVR+9vrL9Ga/PBJ9R3p3yNtYb
 NqRZoWMjaNZ0UxDOh2oWSNvqlHKYEqwNW6AJMqCQLNMzJhOLFr10rTyTaaL1ObgnqXNk
 BZ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2PlrT9rqD3g2RKXKoyVvQWRQ3kbYLZy4tSH1wo/aiKQ=;
 b=e3HSHYyoXjdIRxssLJu8T9bCrrhbsgAhDse6heaj6omXS4M1hESjQ57Uh/ljEJSVHa
 qrL229e2S+dCdybIv/s3qTWwAGqMCxYWJMWhWcGZfRmyD3P+fkdDFD8KiiBEQlnlnrfX
 gZudUAj92dVFUbDTT82SkfFubsHSht9jndaTKPlsOEGEmkntqW1vtCziiOdmbUyCLgT0
 sqEa4cnsFSdDk+M4W6MQqR2BC/yN3u1m61w3Q4jye2oq1FMPXVJxTozv3dQrwwNOp1Hy
 fwyrGz3iGSDU4sn0Cj7ZY0uVzeaGJrty/uE94MPpRMBGGoES/73yhzpirQW081nrl3e+
 yiag==
X-Gm-Message-State: AOAM532MTldvYDySw/A+EToWnXteZ9FTiNM6ZHKalJg2j7lYxloh0FmU
 fG9/opMCdyZS4AFeIV3Eb7igZBNE8iQ=
X-Google-Smtp-Source: ABdhPJzvIL8GC2I1KfdrZn6W+rA/52hCsdX2n9uHkXWGyod5dX4v5NWGRmuVcxlMOunU1chC77sVZg==
X-Received: by 2002:a5d:404b:: with SMTP id w11mr9287302wrp.437.1632467882926; 
 Fri, 24 Sep 2021 00:18:02 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 b7sm9200070wrm.9.2021.09.24.00.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 00:18:02 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, etnaviv@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Date: Fri, 24 Sep 2021 09:17:57 +0200
Message-Id: <20210924071759.22659-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924071759.22659-1-christian.koenig@amd.com>
References: <20210924071759.22659-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/4] drm/msm: allow compile_test on !ARM
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
Cc: christian.gmeiner@gmail.com, linux+etnaviv@armlinux.org.uk, sean@poorly.run,
 robdclark@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

TVNNIGlzIG9uZSBvZiB0aGUgZmV3IGRyaXZlcnMgd2hpY2ggd29uJ3QgZXZlbiBjb21waWxlCnRl
c3Qgb24gIUFSTSBwbGF0Zm9ybXMuCgpMb29raW5nIGludG8gdGhpcyBhIGJpdCBtb3JlIGl0IHR1
cm5lZCBvdXQgdGhhdCB0aGVyZSBpcwphY3R1YWxseSBub3QgdGhhdCBtdWNoIG1pc3NpbmcgdG8g
YXQgbGVhc3QgbGV0IHRoZSBkcml2ZXIKY29tcGlsZSBvbiB4ODYgYXMgd2VsbC4KClNvIHRoaXMg
cGF0Y2ggcmVwbGFjZXMgdGhlIHVzZSBvZiBwaHlzX3RvX3BhZ2UoKSB3aXRoIHRoZQpvcGVuIGNv
ZGVkIHZlcnNpb24gYW5kIHByb3ZpZGVzIGEgZHVtbXkgZm9yIG9mX2RybV9maW5kX2JyaWRnZSgp
LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vS2NvbmZpZyAgIHwgIDQgKystLQogZHJpdmVy
cy9ncHUvZHJtL21zbS9tc21fZ2VtLmMgfCAgMiArLQogaW5jbHVkZS9kcm0vZHJtX2JyaWRnZS5o
ICAgICAgfCAxMCArKysrKysrKystCiAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9LY29uZmln
IGIvZHJpdmVycy9ncHUvZHJtL21zbS9LY29uZmlnCmluZGV4IGU5YzZhZjc4YjFkNy4uNTg3OWY2
N2JjODhjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL0tjb25maWcKKysrIGIvZHJp
dmVycy9ncHUvZHJtL21zbS9LY29uZmlnCkBAIC0zLDkgKzMsOSBAQAogY29uZmlnIERSTV9NU00K
IAl0cmlzdGF0ZSAiTVNNIERSTSIKIAlkZXBlbmRzIG9uIERSTQotCWRlcGVuZHMgb24gQVJDSF9R
Q09NIHx8IFNPQ19JTVg1IHx8IChBUk0gJiYgQ09NUElMRV9URVNUKQorCWRlcGVuZHMgb24gQVJD
SF9RQ09NIHx8IFNPQ19JTVg1IHx8IENPTVBJTEVfVEVTVAogCWRlcGVuZHMgb24gSU9NTVVfU1VQ
UE9SVAotCWRlcGVuZHMgb24gT0YgJiYgQ09NTU9OX0NMSworCWRlcGVuZHMgb24gKE9GICYmIENP
TU1PTl9DTEspIHx8IENPTVBJTEVfVEVTVAogCWRlcGVuZHMgb24gUUNPTV9PQ01FTSB8fCBRQ09N
X09DTUVNPW4KIAlkZXBlbmRzIG9uIFFDT01fTExDQyB8fCBRQ09NX0xMQ0M9bgogCWRlcGVuZHMg
b24gUUNPTV9DT01NQU5EX0RCIHx8IFFDT01fQ09NTUFORF9EQj1uCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5j
CmluZGV4IDE0OTA3NjIyNzY5Zi4uNWJkNTExZjA3YzA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwpA
QCAtODUsNyArODUsNyBAQCBzdGF0aWMgc3RydWN0IHBhZ2UgKipnZXRfcGFnZXNfdnJhbShzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgaW50IG5wYWdlcykKIAogCXBhZGRyID0gcGh5c2FkZHIo
b2JqKTsKIAlmb3IgKGkgPSAwOyBpIDwgbnBhZ2VzOyBpKyspIHsKLQkJcFtpXSA9IHBoeXNfdG9f
cGFnZShwYWRkcik7CisJCXBbaV0gPSBwZm5fdG9fcGFnZShfX3BoeXNfdG9fcGZuKHBhZGRyKSk7
CiAJCXBhZGRyICs9IFBBR0VfU0laRTsKIAl9CiAKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2Ry
bV9icmlkZ2UuaCBiL2luY2x1ZGUvZHJtL2RybV9icmlkZ2UuaAppbmRleCA5Y2RiZDIwOTM4OGUu
LmE0NDUyOThlMWMyNSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2JyaWRnZS5oCisrKyBi
L2luY2x1ZGUvZHJtL2RybV9icmlkZ2UuaApAQCAtNzkwLDExICs3OTAsMTkgQEAgZHJtX3ByaXZf
dG9fYnJpZGdlKHN0cnVjdCBkcm1fcHJpdmF0ZV9vYmogKnByaXYpCiAKIHZvaWQgZHJtX2JyaWRn
ZV9hZGQoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSk7CiB2b2lkIGRybV9icmlkZ2VfcmVtb3Zl
KHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpOwotc3RydWN0IGRybV9icmlkZ2UgKm9mX2RybV9m
aW5kX2JyaWRnZShzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKTsKIGludCBkcm1fYnJpZGdlX2F0dGFj
aChzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsIHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2Us
CiAJCSAgICAgIHN0cnVjdCBkcm1fYnJpZGdlICpwcmV2aW91cywKIAkJICAgICAgZW51bSBkcm1f
YnJpZGdlX2F0dGFjaF9mbGFncyBmbGFncyk7CiAKKyNpZmRlZiBDT05GSUdfT0YKK3N0cnVjdCBk
cm1fYnJpZGdlICpvZl9kcm1fZmluZF9icmlkZ2Uoc3RydWN0IGRldmljZV9ub2RlICpucCk7Cisj
ZWxzZQorc3RhdGljIGlubGluZSBzdHJ1Y3QgZHJtX2JyaWRnZSAqb2ZfZHJtX2ZpbmRfYnJpZGdl
KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCit7CisJcmV0dXJuIE5VTEw7Cit9CisjZW5kaWYKKwog
LyoqCiAgKiBkcm1fYnJpZGdlX2dldF9uZXh0X2JyaWRnZSgpIC0gR2V0IHRoZSBuZXh0IGJyaWRn
ZSBpbiB0aGUgY2hhaW4KICAqIEBicmlkZ2U6IGJyaWRnZSBvYmplY3QKLS0gCjIuMjUuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
