Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B88F82B104B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Nov 2020 22:27:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2A75666D7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Nov 2020 21:27:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D3700666DD; Thu, 12 Nov 2020 21:27:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3C76666D8;
	Thu, 12 Nov 2020 21:26:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6229B66635
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Nov 2020 21:26:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 532AD666D9; Thu, 12 Nov 2020 21:26:55 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 598E6666D7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Nov 2020 21:26:37 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id j7so7546506wrp.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Nov 2020 13:26:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HziF5y2Ho33ipPGe8JAMvCvqv1ktqhXSvBiNR5cyKKo=;
 b=nL+Aaa8aKkdld4vc0qgwd9mNSt2pcsMVWucvhbKoC6QbdwJqXMxWwpbRYMCPXT2HaC
 SDs4sTSElB1p7cHnxHdoRDO51RnJiral45XnA3kuxjCHGcjQSWJIij0ljMRgmW87cZOq
 7aiykglWPxK+WRQItNIiEOXS15SLJPl2Ngjqi6yiIBUxhEWE09m94I1HIGcVTipSAZiY
 awhYDhOZxXJ7S84h+Yyuox0Utj5IrDiKxzuPo4kSDHb/EZk3V5eqQKnWcPPyY2Racdoy
 iCXTPmawsUW2qB3RhbzA7vPAbO3zUvbkAUc2YG8XnuRZLv/thbGZ+l6dLSKPA8XkE593
 MW4A==
X-Gm-Message-State: AOAM532Txvd/JGbA5C0uy9L9uHEh+fiHiAsj1qvdqtSV2NUS6REfdel+
 BsK2HOt2diW4oCXXeDsGDinM/FlM376pJjM/X+c=
X-Google-Smtp-Source: ABdhPJxIB/Q0rdjTpnfspr2y90QDinSOTab3wfLFpbQI9qmynfR60kBK/QgPN53OHeJMMwYAI40XkoKskcEEG5Z2l60=
X-Received: by 2002:adf:804e:: with SMTP id 72mr1869161wrk.114.1605216396614; 
 Thu, 12 Nov 2020 13:26:36 -0800 (PST)
MIME-Version: 1.0
References: <20201112190039.2785914-1-lee.jones@linaro.org>
 <20201112190039.2785914-16-lee.jones@linaro.org>
In-Reply-To: <20201112190039.2785914-16-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 12 Nov 2020 16:26:25 -0500
Message-ID: <CADnq5_OfR3KdoOrcBAiLtyqOi6kBkwkErZtRiBjo=zdAgb8hFQ@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 report to <xorg-driver-ati@lists.x.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 15/30] drm/amd/amdgpu/amdgpu_display:
	Remove pointless header
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

T24gVGh1LCBOb3YgMTIsIDIwMjAgYXQgMjowMSBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEl0IHNlZW1zIG9ubHkgdG8gcmVwZWF0IHRoZSBmdW5jdGlvbiBu
YW1lLgo+Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6
Cj4KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rpc3BsYXkuYzo0NTA6IHdh
cm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2FtZGdwdV9jb25uZWN0b3InIG5v
dCBkZXNjcmliZWQgaW4gJ2FtZGdwdV9kaXNwbGF5X2RkY19wcm9iZScKPiAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rpc3BsYXkuYzo0NTA6IHdhcm5pbmc6IEZ1bmN0aW9uIHBh
cmFtZXRlciBvciBtZW1iZXIgJ3VzZV9hdXgnIG5vdCBkZXNjcmliZWQgaW4gJ2FtZGdwdV9kaXNw
bGF5X2RkY19wcm9iZScKPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFt
ZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGlu
YXJvLm9yZz4KPiBDYzogcmVwb3J0IHRvIDx4b3JnLWRyaXZlci1hdGlAbGlzdHMueC5vcmc+Cj4g
Q2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8
bGVlLmpvbmVzQGxpbmFyby5vcmc+CgpBcHBsaWVkLiAgVGhhbmtzIQoKQWxleAoKPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rpc3BsYXkuYyB8IDQgLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2Rpc3BsYXkuYwo+IGluZGV4IDBiMTM0NTk4YjNhNjUuLmY0ZGU0YjQxYWRj
ZmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rpc3Bs
YXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kaXNwbGF5LmMK
PiBAQCAtNDQxLDEwICs0NDEsNiBAQCB2b2lkIGFtZGdwdV9kaXNwbGF5X3ByaW50X2Rpc3BsYXlf
c2V0dXAoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiAgICAgICAgIGRybV9jb25uZWN0b3JfbGlz
dF9pdGVyX2VuZCgmaXRlcik7Cj4gIH0KPgo+IC0vKioKPiAtICogYW1kZ3B1X2Rpc3BsYXlfZGRj
X3Byb2JlCj4gLSAqCj4gLSAqLwo+ICBib29sIGFtZGdwdV9kaXNwbGF5X2RkY19wcm9iZShzdHJ1
Y3QgYW1kZ3B1X2Nvbm5lY3RvciAqYW1kZ3B1X2Nvbm5lY3RvciwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBib29sIHVzZV9hdXgpCj4gIHsKPiAtLQo+IDIuMjUuMQo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFp
bGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
