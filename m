Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7809138B6BB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:07:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 282B761407
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:07:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F3AFF613C4; Thu, 20 May 2021 19:07:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C67E06131F;
	Thu, 20 May 2021 19:07:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 37EC76130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:07:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 20A396131F; Thu, 20 May 2021 19:07:38 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by lists.linaro.org (Postfix) with ESMTPS id 0FADD6130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:07:36 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id b25so17462581oic.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tivSZul1r1F6cXTIGetorCc6IvXldYG9DGcrI+56/Vo=;
 b=KwOehk5T3VqGA6Vo0ut4YB3Lvw6MJynXVG9O7X6y6tafaD5A3b+cyRT09CMWB5ErqJ
 ySAG2N+us1IkTFxsPRq7CKazXy7KkUhI/O2f0P9vIQXHZYikaPzqmiwlGLfY+37bLtt1
 kh4/T4dNaZKd42Bi5nLC2gEnVjOWV5G72A6//9A3RCXE9ZpPV9lEN3ULn8uUzb2GSqKw
 1ULAHwJ7UxoGuMqC71u7y/+lEGb98Ml/G0nKzaqJesmr5tJ8rAVwLbw3Ks8heMMOPsTC
 g2DFuRKJNok+bRi+tIuQPft0S5zqYbIpXtUCQs52AcHxPbKh+4I466KGMdDb+DtG4AAs
 YB0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tivSZul1r1F6cXTIGetorCc6IvXldYG9DGcrI+56/Vo=;
 b=N2vsa9NhTL/j+CF9d2LymXb/wGpZ4ZYrvPouY089jAMGMu40TxJcdzm4KNcasBs+su
 q1QtReCHvMPi4TwE65ynz5gDhieTdeJOMHvnbnT5ayhRh5lfuogX3zFUkD7Qgv5c6h+W
 F7cQ1VwetBnWofrB7U0W9p/og4+4tzyUZvZMwPdHVnhmXji8udmSvDMsiKnLBTwPfrag
 wqabeR8X8hzp7yiDeNsPweZiTyVwObKo+ynqwgBB6K4H0yISJ8GGiL13IJtn4nYdBKeE
 PZvoj8D1i2zpDdejz6pSp4J+DLXXHHa6bJRfg1WV7y6cbp5Q0zNVx8/m1LpxTLmuIZ35
 NkGQ==
X-Gm-Message-State: AOAM531hjfWg5QlFb1UPQfihurpbOPTpz2tscrh4A1d30XUqvx6Ok8/K
 P8ZswPReoKqLcpjzRa+rUUOccKOTk47//TEluB0=
X-Google-Smtp-Source: ABdhPJzgJB1LgjuwXSwFitmQBsumwTKZiFfIShZ0oIJEvDs0+pTtwXmxx/z6zQxihaCTMwdvsqGQPWV4riB11PMv/LI=
X-Received: by 2002:a05:6808:1592:: with SMTP id
 t18mr2452836oiw.123.1621537655443; 
 Thu, 20 May 2021 12:07:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-4-lee.jones@linaro.org>
 <16b0f3a3-92a8-074c-f926-fba832060a71@amd.com>
In-Reply-To: <16b0f3a3-92a8-074c-f926-fba832060a71@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:07:24 -0400
Message-ID: <CADnq5_O4Uu4yVKLKSoeVFZVyA7XJdMEjdiUdaQm0zHOacLM7iw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 03/38] drm/radeon/radeon_cs: Fix
 incorrectly documented function 'radeon_cs_parser_fini'
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
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <glisse@freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Lee Jones <lee.jones@linaro.org>, linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIFRodSwgTWF5IDIwLCAyMDIxIGF0IDg6MDQgQU0g
Q2hyaXN0aWFuIEvDtm5pZwo8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFt
IDIwLjA1LjIxIHVtIDE0OjAyIHNjaHJpZWIgTGVlIEpvbmVzOgo+ID4gRml4ZXMgdGhlIGZvbGxv
d2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6Cj4gPgo+ID4gICBkcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL3JhZGVvbl9jcy5jOjQxNzogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBm
b3IgY3NfcGFyc2VyX2ZpbmkoKS4gUHJvdG90eXBlIHdhcyBmb3IgcmFkZW9uX2NzX3BhcnNlcl9m
aW5pKCkgaW5zdGVhZAo+ID4KPiA+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVy
QGFtZC5jb20+Cj4gPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+ID4gQ2M6IERh
bmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiA+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0
LnNlbXdhbEBsaW5hcm8ub3JnPgo+ID4gQ2M6IEplcm9tZSBHbGlzc2UgPGdsaXNzZUBmcmVlZGVz
a3RvcC5vcmc+Cj4gPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBDYzogbGludXgtbWVkaWFAdmdlci5r
ZXJuZWwub3JnCj4gPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+Cj4gUmV2aWV3ZWQt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPgo+ID4gLS0t
Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2NzLmMgfCAyICstCj4gPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL3JhZGVvbi9yYWRlb25fY3MuYwo+ID4gaW5kZXggNDgxNjI1MDFjMWVlNi4uODBhM2JlZTkz
M2Q2ZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2NzLmMK
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2NzLmMKPiA+IEBAIC00MDUs
NyArNDA1LDcgQEAgc3RhdGljIGludCBjbXBfc2l6ZV9zbWFsbGVyX2ZpcnN0KHZvaWQgKnByaXYs
IGNvbnN0IHN0cnVjdCBsaXN0X2hlYWQgKmEsCj4gPiAgIH0KPiA+Cj4gPiAgIC8qKgo+ID4gLSAq
IGNzX3BhcnNlcl9maW5pKCkgLSBjbGVhbiBwYXJzZXIgc3RhdGVzCj4gPiArICogcmFkZW9uX2Nz
X3BhcnNlcl9maW5pKCkgLSBjbGVhbiBwYXJzZXIgc3RhdGVzCj4gPiAgICAqIEBwYXJzZXI6IHBh
cnNlciBzdHJ1Y3R1cmUgaG9sZGluZyBwYXJzaW5nIGNvbnRleHQuCj4gPiAgICAqIEBlcnJvcjog
IGVycm9yIG51bWJlcgo+ID4gICAgKiBAYmFja29mZjogICAgICAgIGluZGljYXRvciB0byBiYWNr
b2ZmIHRoZSByZXNlcnZhdGlvbgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBhbWQtZ2Z4IG1haWxpbmcgbGlzdAo+IGFtZC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9hbWQtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
