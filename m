Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EC938CF78
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 22:58:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1CC861320
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 20:58:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 54EE761A34; Fri, 21 May 2021 20:58:12 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 365E861391;
	Fri, 21 May 2021 20:58:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 251F561320
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 20:58:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2141361391; Fri, 21 May 2021 20:58:07 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
 [209.85.210.49])
 by lists.linaro.org (Postfix) with ESMTPS id 1906661320
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 20:58:05 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id
 69-20020a9d0a4b0000b02902ed42f141e1so19230968otg.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 13:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ab85Wj/pv/eyNCl9jj3/qpptG4tumUbJBe7Uftmergk=;
 b=DdprPYDEm5sNMdFVAXYdEMFrMv/Kiefs/9C+4QjFLvB8QUnGZbIUG3pRVi1U/IPHac
 49eUuSEqNHAgcpRgMKSnzzbhMjpsUgqMNscLpk4Bs9g5EOCfc6vMVciTzFeOi/tV0KRj
 vIsz9qHhNPT0nWQK0wsGkegXgR5jNtt/2dkWH1lGZO91/IDIb01+2nPAJJVvGrDhAOmV
 10moBR3buVC126UWuf8DQ15RzgkJM0DVply5vvzDvBcPt5I1M6UHVSGb4G1PP/SycFCL
 aDolkPD45t5HKqOuCaUKlLDhWquxw3YTBspd2tSdcdZluA9pA5D7dha+HI3q2pJKgIgv
 7crQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ab85Wj/pv/eyNCl9jj3/qpptG4tumUbJBe7Uftmergk=;
 b=dMLCH4gjB6HOZexEn8F5fiKic0voaPJnlWGZNCuHBoxCs3yNE7GugJDfQGecmfPU6c
 qYg0xHTFJ/XqOmMgUK+yMnCUqD8yTPlAshcKhqKb09LNDSLDW5BZ5LgQhfA03PqDiQUF
 CbSvZLwu0kgSSr0g2lHSVTREvz3Mb2rn+MOKZSFqYCDbOLWx7W45EoEQpuaQmaYdgSrn
 hlenDnbAcFSB5nl39s7HN0nKYBLuMMjXrkDu5hzomCeiW1SI8kbuPQIAaX2BqmNQnBOJ
 dhdJBDEaskonN0/t7oBNY/MTrV0eMLjOn0L71BFzheMjZwKicVqhTGsvUyhvIQa/RGX3
 60eg==
X-Gm-Message-State: AOAM530Wr4d3O7K3qvmvVs8lgJwGgo2L4qNWgn7MOtsDD4wPiczh6xoF
 Sh4NTdtgPxlZYfRWrmapC9Kh8rv+uPlSdDixyOE=
X-Google-Smtp-Source: ABdhPJx3V+DsXUMXDdny3yj3qLa/FEDVRdL1jKpJIxgqkQN/OddU4parCfOQx7J2uD/2WkJI/ItEpc7QspYOIvQE4Rw=
X-Received: by 2002:a9d:6548:: with SMTP id q8mr10018862otl.311.1621630684620; 
 Fri, 21 May 2021 13:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <1621590628-75988-1-git-send-email-jiapeng.chong@linux.alibaba.com>
 <09e40764-1d3a-0dfe-b278-5b5ce04670a9@gmail.com>
In-Reply-To: <09e40764-1d3a-0dfe-b278-5b5ce04670a9@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 21 May 2021 16:57:53 -0400
Message-ID: <CADnq5_M0nuj60jP04_3Rhx+piQLbfcCmksEkFePAreHjwButSA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu: Fix inconsistent indenting
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
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 Dave Airlie <airlied@linux.ie>, xinhui pan <Xinhui.Pan@amd.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIEZyaSwgTWF5IDIxLCAyMDIxIGF0IDk6MzUgQU0g
Q2hyaXN0aWFuIEvDtm5pZwo8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3Rl
Ogo+Cj4gQW0gMjEuMDUuMjEgdW0gMTE6NTAgc2NocmllYiBKaWFwZW5nIENob25nOgo+ID4gRWxp
bWluYXRlIHRoZSBmb2xsb3cgc21hdGNoIHdhcm5pbmc6Cj4gPgo+ID4gZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvc2RtYV92NV8wLmM6NDQ5Cj4gPiBzZG1hX3Y1XzBfcmluZ19lbWl0X21lbV9z
eW5jKCkgd2FybjogaW5jb25zaXN0ZW50IGluZGVudGluZy4KPiA+Cj4gPiBSZXBvcnRlZC1ieTog
QWJhY2kgUm9ib3QgPGFiYWNpQGxpbnV4LmFsaWJhYmEuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTog
SmlhcGVuZyBDaG9uZyA8amlhcGVuZy5jaG9uZ0BsaW51eC5hbGliYWJhLmNvbT4KPgo+IFJldmll
d2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4KPiA+
IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y1XzAuYyB8IDEzICsr
KysrKy0tLS0tLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
c2RtYV92NV8wLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y1XzAuYwo+ID4g
aW5kZXggNzVkNzMxMC4uYzQ1ZTFiMCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L3NkbWFfdjVfMC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9zZG1hX3Y1XzAuYwo+ID4gQEAgLTQ0MCwyMCArNDQwLDE5IEBAIHN0YXRpYyB2b2lkIHNkbWFf
djVfMF9yaW5nX2VtaXRfaWIoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLAo+ID4gICAgKi8KPiA+
ICAgc3RhdGljIHZvaWQgc2RtYV92NV8wX3JpbmdfZW1pdF9tZW1fc3luYyhzdHJ1Y3QgYW1kZ3B1
X3JpbmcgKnJpbmcpCj4gPiAgIHsKPiA+IC0gICAgdWludDMyX3QgZ2NyX2NudGwgPQo+ID4gLSAg
ICAgICAgICAgICAgICAgU0RNQV9HQ1JfR0wyX0lOViB8IFNETUFfR0NSX0dMMl9XQiB8IFNETUFf
R0NSX0dMTV9JTlYgfAo+ID4gLSAgICAgICAgICAgICAgICAgICAgIFNETUFfR0NSX0dMMV9JTlYg
fCBTRE1BX0dDUl9HTFZfSU5WIHwgU0RNQV9HQ1JfR0xLX0lOViB8Cj4gPiAtICAgICAgICAgICAg
ICAgICAgICAgU0RNQV9HQ1JfR0xJX0lOVigxKTsKPiA+ICsgICAgIHVpbnQzMl90IGdjcl9jbnRs
ID0gU0RNQV9HQ1JfR0wyX0lOViB8IFNETUFfR0NSX0dMMl9XQiB8IFNETUFfR0NSX0dMTV9JTlYg
fAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICBTRE1BX0dDUl9HTDFfSU5WIHwgU0RNQV9H
Q1JfR0xWX0lOViB8IFNETUFfR0NSX0dMS19JTlYgfAo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICBTRE1BX0dDUl9HTElfSU5WKDEpOwo+ID4KPiA+ICAgICAgIC8qIGZsdXNoIGVudGlyZSBj
YWNoZSBMMC9MMS9MMiwgdGhpcyBjYW4gYmUgb3B0aW1pemVkIGJ5IHBlcmZvcm1hbmNlIHJlcXVp
cmVtZW50ICovCj4gPiAgICAgICBhbWRncHVfcmluZ193cml0ZShyaW5nLCBTRE1BX1BLVF9IRUFE
RVJfT1AoU0RNQV9PUF9HQ1JfUkVRKSk7Cj4gPiAgICAgICBhbWRncHVfcmluZ193cml0ZShyaW5n
LCBTRE1BX1BLVF9HQ1JfUkVRX1BBWUxPQUQxX0JBU0VfVkFfMzFfNygwKSk7Cj4gPiAgICAgICBh
bWRncHVfcmluZ193cml0ZShyaW5nLCBTRE1BX1BLVF9HQ1JfUkVRX1BBWUxPQUQyX0dDUl9DT05U
Uk9MXzE1XzAoZ2NyX2NudGwpIHwKPiA+IC0gICAgICAgICAgICAgICAgICAgICBTRE1BX1BLVF9H
Q1JfUkVRX1BBWUxPQUQyX0JBU0VfVkFfNDdfMzIoMCkpOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgU0RNQV9QS1RfR0NSX1JFUV9QQVlMT0FEMl9CQVNFX1ZBXzQ3XzMyKDApKTsKPiA+ICAg
ICAgIGFtZGdwdV9yaW5nX3dyaXRlKHJpbmcsIFNETUFfUEtUX0dDUl9SRVFfUEFZTE9BRDNfTElN
SVRfVkFfMzFfNygwKSB8Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgU0RNQV9QS1RfR0NSX1JF
UV9QQVlMT0FEM19HQ1JfQ09OVFJPTF8xOF8xNihnY3JfY250bCA+PiAxNikpOwo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgU0RNQV9QS1RfR0NSX1JFUV9QQVlMT0FEM19HQ1JfQ09OVFJPTF8x
OF8xNihnY3JfY250bCA+PiAxNikpOwo+ID4gICAgICAgYW1kZ3B1X3Jpbmdfd3JpdGUocmluZywg
U0RNQV9QS1RfR0NSX1JFUV9QQVlMT0FENF9MSU1JVF9WQV80N18zMigwKSB8Cj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgU0RNQV9QS1RfR0NSX1JFUV9QQVlMT0FENF9WTUlEKDApKTsKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgIFNETUFfUEtUX0dDUl9SRVFfUEFZTE9BRDRfVk1JRCgwKSk7
Cj4gPiAgIH0KPiA+Cj4gPiAgIC8qKgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBhbWQtZ2Z4IG1haWxpbmcgbGlzdAo+IGFtZC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9hbWQtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
