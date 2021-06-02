Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B60397E4E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Jun 2021 03:57:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9A3C6102C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Jun 2021 01:57:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 03CE160FBF; Wed,  2 Jun 2021 01:57:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C270660A97;
	Wed,  2 Jun 2021 01:57:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D2669607E0
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Jun 2021 01:57:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D0F6160A97; Wed,  2 Jun 2021 01:57:48 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by lists.linaro.org (Postfix) with ESMTPS id C870F607E0
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Jun 2021 01:57:46 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id v142so830460oie.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Jun 2021 18:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SU3VNhIHP4qFfMS6BHdB+T/4wdfQUGXE54wCPeu58gQ=;
 b=QQO75cNDTpDKr0tOdLOk5vG9ysCKgZa/phRsAdD89jlR+TT9Wjgl3mHuc1yXOnZu9L
 xsRhHTI9U8g5BYgBihgDXw6SikyKy9uI+vcBR/0GRLeuZPZPL/sZ+Q8NyhCrFi6h/8Rq
 ZEOkfNeRAWeAfwfI/4mLVNOdfpqIvjsk/+BgiSUjprCSv3xhbHyQZJvd23gxCfFk6QKD
 QOImaejnjZGYi3c+IWhtKD14pHWKC11iaZ1fLPcXIYgwoFVMWYOv7mN3EYxOAP7W4T9/
 yHHTxTAYdLhrWVepaPX/WcM0IxKK2z1R8oLv3rcFrSmis3GkxABc1obOY4Yh0u0nmFw4
 Ckkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SU3VNhIHP4qFfMS6BHdB+T/4wdfQUGXE54wCPeu58gQ=;
 b=J4wOYka6Rnhm0OvU0Ku0OiLJfaAuEzcNIPfoh1ciKqMB/U/rzmjECQEule2YF4xJaU
 /rIMNlOzKITXPDD30Qe0+HTQVX0Z0m+NtzLfoxRMh0egiTvkGqC8UCqoCNA4GVfdlyWG
 w3WRtuRJLi300QPrkc7dy5I+gMXmNkoQpCaFfA+ALGwcynmUalokiyK+4OfGlkUgZfIh
 vX3eOx2RgUtaQCp6z0bJIqiRVIvVAv16Jo0aOb968IhEzFoh8VdAApMhxkQOQ6iwkjd2
 y+zy/VMRZIMxpoG1mOsTzTA3U6ZP2VaF79zx5YUw/w3vYzK7+BY2eLF+TV7Ey9PQTKhc
 l6KQ==
X-Gm-Message-State: AOAM533AxBA588ObClXRJWi/AaZ+D3JcX7izyKtcBtmzwp281I/IXSBo
 mMwGQg5dBPkijPHDqdT9bKTtdAtVdIcv2+ikDzc=
X-Google-Smtp-Source: ABdhPJz1oJcj/TIW7IPXKfUGMx+mKb7O5I8+KY9nNPCZgngt3Y0TTxSNjp3R9qmQkBVU/dtI0mfS9UGxQ14qdDZsEFg=
X-Received: by 2002:a05:6808:1592:: with SMTP id
 t18mr19903224oiw.123.1622599066060; 
 Tue, 01 Jun 2021 18:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <1622194158-70898-1-git-send-email-jiapeng.chong@linux.alibaba.com>
 <37a4f0bf-4acb-3961-699b-8335e194e315@amd.com>
In-Reply-To: <37a4f0bf-4acb-3961-699b-8335e194e315@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 1 Jun 2021 21:57:35 -0400
Message-ID: <CADnq5_NY_uWzB6QjsM0_+xcbQkMfy1wm2gQx3v7xW_eHQ804YA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3] amdgpu: remove unreachable code
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
 Dave Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 "Deucher, Alexander" <alexander.deucher@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCk9uIEZyaSwgTWF5IDI4LCAyMDIxIGF0IDg6MTggQU0gQ2hyaXN0
aWFuIEvDtm5pZwo8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFtIDI4LjA1
LjIxIHVtIDExOjI5IHNjaHJpZWIgSmlhcGVuZyBDaG9uZzoKPiA+IEluIHRoZSBmdW5jdGlvbiBh
bWRncHVfdXZkX2NzX21zZygpLCBldmVyeSBicmFuY2ggaW4gdGhlIHN3aXRjaAo+ID4gc3RhdGVt
ZW50IHdpbGwgaGF2ZSBhIHJldHVybiwgc28gdGhlIGNvZGUgYmVsb3cgdGhlIHN3aXRjaCBzdGF0
ZW1lbnQKPiA+IHdpbGwgbm90IGJlIGV4ZWN1dGVkLgo+ID4KPiA+IEVsaW1pbmF0ZSB0aGUgZm9s
bG93IHNtYXRjaCB3YXJuaW5nOgo+ID4KPiA+IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV91dmQuYzo4NDUgYW1kZ3B1X3V2ZF9jc19tc2coKSB3YXJuOgo+ID4gaWdub3JpbmcgdW5y
ZWFjaGFibGUgY29kZS4KPiA+Cj4gPiBSZXBvcnRlZC1ieTogQWJhY2kgUm9ib3QgPGFiYWNpQGxp
bnV4LmFsaWJhYmEuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogSmlhcGVuZyBDaG9uZyA8amlhcGVu
Zy5jaG9uZ0BsaW51eC5hbGliYWJhLmNvbT4KPgo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4KPiA+IC0tLQo+ID4gQ2hhbmdlcyBpbiB2
MjoKPiA+ICAgIC1Gb3IgdGhlIGZvbGxvdyBhZHZpY2U6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3BhdGNod29yay9wYXRjaC8xNDM1OTY4Lwo+ID4KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3V2ZC5jIHwgMyArLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfdXZkLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfdXZkLmMKPiA+IGluZGV4IGM2ZGJjMDguLjM1ZjY4NzQgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXZkLmMKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91dmQuYwo+ID4gQEAgLTgyOSw5ICs4MjksOCBAQCBz
dGF0aWMgaW50IGFtZGdwdV91dmRfY3NfbXNnKHN0cnVjdCBhbWRncHVfdXZkX2NzX2N0eCAqY3R4
LAo+ID4KPiA+ICAgICAgIGRlZmF1bHQ6Cj4gPiAgICAgICAgICAgICAgIERSTV9FUlJPUigiSWxs
ZWdhbCBVVkQgbWVzc2FnZSB0eXBlICglZCkhXG4iLCBtc2dfdHlwZSk7Cj4gPiAtICAgICAgICAg
ICAgIHJldHVybiAtRUlOVkFMOwo+ID4gICAgICAgfQo+ID4gLSAgICAgQlVHKCk7Cj4gPiArCj4g
PiAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+ICAgfQo+ID4KPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYW1kLWdmeCBtYWlsaW5nIGxpc3QKPiBh
bWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vYW1kLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
