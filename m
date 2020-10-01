Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E009227FBDC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Oct 2020 10:49:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6135609B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Oct 2020 08:49:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9A49A617B6; Thu,  1 Oct 2020 08:49:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4207B60AAA;
	Thu,  1 Oct 2020 08:49:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8DD07609B3
 for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Oct 2020 08:49:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6A79260961; Thu,  1 Oct 2020 08:49:01 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 454BF60961
 for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Oct 2020 08:49:00 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z1so4689917wrt.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 01 Oct 2020 01:49:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=z3W/+UmHFDJR18MuX6sQgP8oE7n6vaF6n11YCm+XJiI=;
 b=jGK7mW7tGIRZR3ybLo2dSLNiQLKRZMSSwROUqnb8cMEU3UaL7QX9V3SvRWIvg04/0G
 JeqdKUVU9rNtJe94Nl6FGd86v3y/OxMJDYZXs10j8s+5AqthMrsdfiTqiNyOjWh94B/7
 fPQja8KL00VZ99WxpvB8xFaNSE4nTr9E9OqqW8xoFcCYKVFuiZu1DAEr/Z7YJmm9d5F4
 f5eD2hTsc8ArzRjpTImXAy9kAMLysTk34DAt6nPsDLVdKrqaTYrZY4R3sMRWZtWLDO3b
 HLGQKQ8vETz/ZX5FaquloJ1S/Gd5kH69goDWUac7cLHo9MnD3+M/2BH2t3LvomuFqYpP
 JaoA==
X-Gm-Message-State: AOAM532EaxyoPT4IZqrsfOPemSp7QHAN/ArnUgMeIDsf/caLDR+Y3W6y
 L4Bv7VOqxuKBzXGehTEfFcrNow==
X-Google-Smtp-Source: ABdhPJxOxyoDX0b5gNKiFbSaDU5KDIBVsfBcvH3wwR1QPfbuHsRGFXu73fInXCqwuMEGoH0WdO1vqA==
X-Received: by 2002:a5d:4a48:: with SMTP id v8mr7600342wrs.304.1601542139344; 
 Thu, 01 Oct 2020 01:48:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y1sm7475729wma.36.2020.10.01.01.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Oct 2020 01:48:58 -0700 (PDT)
Date: Thu, 1 Oct 2020 10:48:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Alexandre Bailon <abailon@baylibre.com>
Message-ID: <20201001084856.GC438822@phenom.ffwll.local>
Mail-Followup-To: Alexandre Bailon <abailon@baylibre.com>,
 linux-remoteproc@vger.kernel.org, ohad@wizery.com,
 gpain@baylibre.com, stephane.leprovost@mediatek.com,
 jstephan@baylibre.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 mturquette@baylibre.com, bjorn.andersson@linaro.org,
 christian.koenig@amd.com, linux-media@vger.kernel.org
References: <20200930115350.5272-1-abailon@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930115350.5272-1-abailon@baylibre.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: ohad@wizery.com, linaro-mm-sig@lists.linaro.org,
 stephane.leprovost@mediatek.com, christian.koenig@amd.com,
 mturquette@baylibre.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, gpain@baylibre.com, jstephan@baylibre.com,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [RFC PATCH 0/4] Add a RPMsg driver to support
 AI Processing Unit (APU)
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

T24gV2VkLCBTZXAgMzAsIDIwMjAgYXQgMDE6NTM6NDZQTSArMDIwMCwgQWxleGFuZHJlIEJhaWxv
biB3cm90ZToKPiBUaGlzIGFkZHMgYSBSUE1zZyBkcml2ZXIgdGhhdCBpbXBsZW1lbnRzIGNvbW11
bmljYXRpb24gYmV0d2VlbiB0aGUgQ1BVIGFuZCBhbgo+IEFQVS4KPiBUaGlzIHVzZXMgVmlydElP
IGJ1ZmZlciB0byBleGNoYW5nZSBtZXNzYWdlcyBidXQgZm9yIHNoYXJpbmcgZGF0YSwgdGhpcyB1
c2VzCj4gYSBkbWFidWYsIG1hcHBlZCB0byBiZSBzaGFyZWQgYmV0d2VlbiBDUFUgKHVzZXJzcGFj
ZSkgYW5kIEFQVS4KPiBUaGUgZHJpdmVyIGlzIHJlbGF0aXZlbHkgZ2VuZXJpYywgYW5kIHNob3Vs
ZCB3b3JrIHdpdGggYW55IFNvQyBpbXBsZW1lbnRpbmcKPiBoYXJkd2FyZSBhY2NlbGVyYXRvciBm
b3IgQUkgaWYgdGhleSB1c2Ugc3VwcG9ydCByZW1vdGVwcm9jIGFuZCBWaXJ0SU8uCj4gCj4gRm9y
IHRoZSBwZW9wbGUgaW50ZXJlc3RlZCBieSB0aGUgZmlybXdhcmUgb3IgdXNlcnNwYWNlIGxpYnJh
cnksCj4gdGhlIHNvdXJjZXMgYXJlIGF2YWlsYWJsZSBoZXJlOgo+IGh0dHBzOi8vZ2l0aHViLmNv
bS9CYXlMaWJyZS9vcGVuLWFtcC90cmVlL3YyMDIwLjAxLW10ay9hcHBzL2V4YW1wbGVzL2FwdQoK
U2luY2UgdGhpcyBoYXMgb3BlbiB1c2Vyc3BhY2UgKGZyb20gYSB2ZXJ5IGN1cnNvcnkgbG9vayks
IGFuZCBzbWVsbHMgdmVyeQptdWNoIGxpa2UgYW4gYWNjZWxlcmF0aW9uIGRyaXZlciwgYW5kIHNl
ZW1zIHRvIHVzZSBkbWEtYnVmIGZvciBtZW1vcnkKbWFuYWdlbWVudDogV2h5IGlzIHRoaXMgbm90
IGp1c3QgYSBkcm0gZHJpdmVyPwotRGFuaWVsCgo+IAo+IEFsZXhhbmRyZSBCYWlsb24gKDMpOgo+
ICAgQWRkIGEgUlBNU0cgZHJpdmVyIGZvciB0aGUgQVBVIGluIHRoZSBtdDgxODMKPiAgIHJwbXNn
OiBhcHVfcnBtc2c6IHVwZGF0ZSB0aGUgd2F5IHRvIHN0b3JlIElPTU1VIG1hcHBpbmcKPiAgIHJw
bXNnOiBhcHVfcnBtc2c6IEFkZCBhbiBJT0NUTCB0byByZXF1ZXN0IElPTU1VIG1hcHBpbmcKPiAK
PiBKdWxpZW4gU1RFUEhBTiAoMSk6Cj4gICBycG1zZzogYXB1X3JwbXNnOiBBZGQgc3VwcG9ydCBm
b3IgYXN5bmMgYXB1IHJlcXVlc3QKPiAKPiAgZHJpdmVycy9ycG1zZy9LY29uZmlnICAgICAgICAg
IHwgICA5ICsKPiAgZHJpdmVycy9ycG1zZy9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKPiAgZHJp
dmVycy9ycG1zZy9hcHVfcnBtc2cuYyAgICAgIHwgNzUyICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ICBkcml2ZXJzL3JwbXNnL2FwdV9ycG1zZy5oICAgICAgfCAgNTIgKysrCj4g
IGluY2x1ZGUvdWFwaS9saW51eC9hcHVfcnBtc2cuaCB8ICA0NyArKysKPiAgNSBmaWxlcyBjaGFu
Z2VkLCA4NjEgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ycG1z
Zy9hcHVfcnBtc2cuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ycG1zZy9hcHVfcnBt
c2cuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS91YXBpL2xpbnV4L2FwdV9ycG1zZy5o
Cj4gCj4gLS0gCj4gMi4yNi4yCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpLWRldmVsCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
