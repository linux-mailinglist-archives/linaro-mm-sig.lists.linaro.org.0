Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA61460FF0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 09:22:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C10861C3F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 08:22:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 76F6660E25; Mon, 29 Nov 2021 08:22:08 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 404216090F;
	Mon, 29 Nov 2021 08:22:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ABA3B603AB
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 08:22:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A77596090F; Mon, 29 Nov 2021 08:22:03 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id A157D603AB
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 08:22:01 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id a9so34862072wrr.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 00:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Hq1bgqxxCdegLBVOo7l4Q7H1Xie6p+wm7vH0Y40mkwo=;
 b=CtNwvmW+uiYnu8xy64dsZh+j2/65YctzX6oqs2wOYwbMozt8JZF1cV5+4Y7H4uNO8h
 QCH7gI6Q72FTybeCnLQWb14URcpKiR7AndKkYpXOkC8Q9n7MUr+8wws4u3GY1irCXSD3
 vvmaAef8eAGIpyf5lsxsUWtqdVOo19QpajKqE8rOWNBwJYVukHD4HPX9lHgtTkFOc+Bj
 kp2PBi3Ox3w9cjOe46WQuh27R/m9Ya+lVOXzciZa0FsQ65iq4SRqzGYf25SSzOhvBjEZ
 VPCQJ0aSSAgZrfu8cgT0JsRs/Bpj9RKIWkh3GJoV+MufxqZdmQKVJkDzH3UoohTJRzHN
 TF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Hq1bgqxxCdegLBVOo7l4Q7H1Xie6p+wm7vH0Y40mkwo=;
 b=UFD1Eqc8XDnkfaNFL7WzBrtT8Hz3Y30wLwbHJjEu7BZytZQb90H2Fwb5x/zDiDm8mg
 Kx8xhWKJIMcQMKl5pY18Wp8dGDHc3PBRy/+G714YdXTXYaQ8yUNVMDkAqKBWCvyai9XU
 Q60nvv3FOj3C6kdZCxKMSjyYf2kaWYHAsNdQ7Xqfx7rQNVA3fYEuZM8Wu+kecD9pw0rX
 euc9teI6E51bWySN/coCr0zxsFk7O93wP4LA5IrJoTDfLn9Z/Uiinex9vDEyatb+xovS
 RxE/NlOAx4mdZbUFVVZNKmptOIVMhixDpSQaWwtjBbprsUBviIZwDYjT8ulUhOESJ5Nj
 5yaA==
X-Gm-Message-State: AOAM532P7xo0sIfHiBXvSZxkHAisw6eppTkowikSVv4BtTmCmbiv1+2v
 twXt+QrSxWQV3bw5zs1148YDOy9xG8w=
X-Google-Smtp-Source: ABdhPJzM2sppvC4WxGqvhpvtbRdPMWvSKAbROEghlA2ucohzHDqrxrVpH61SK17Yl6Nfbz7PsOLtuA==
X-Received: by 2002:adf:fbc5:: with SMTP id d5mr34606968wrs.291.1638174120446; 
 Mon, 29 Nov 2021 00:22:00 -0800 (PST)
Received: from [192.168.178.21] (p57b0b77b.dip0.t-ipconnect.de.
 [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id az15sm13456982wmb.0.2021.11.29.00.21.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 00:22:00 -0800 (PST)
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20211129073533.414008-1-thomas.hellstrom@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <4fd0eee6-342f-fb31-717c-901440f38c35@gmail.com>
Date: Mon, 29 Nov 2021 09:21:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211129073533.414008-1-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma_fence_array: Fix PENDING_ERROR leak
 in dma_fence_array_signaled()
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
Cc: linaro-mm-sig@lists.linaro.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjkuMTEuMjEgdW0gMDg6MzUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBJZiBhIGRt
YV9mZW5jZV9hcnJheSBpcyByZXBvcnRlZCBzaWduYWxlZCBieSBhIGNhbGwgdG8KPiBkbWFfZmVu
Y2VfaXNfc2lnbmFsZWQoKSwgaXQgbWF5IGxlYWsgdGhlIFBFTkRJTkdfRVJST1Igc3RhdHVzLgo+
Cj4gRml4IHRoaXMgYnkgY2xlYXJpbmcgdGhlIFBFTkRJTkdfRVJST1Igc3RhdHVzIGlmIHdlIHJl
dHVybiB0cnVlIGluCj4gZG1hX2ZlbmNlX2FycmF5X3NpZ25hbGVkKCkuCj4KPiBGaXhlczogMWY3
MGI4YjgxMmYzICgiZG1hLWZlbmNlOiBQcm9wYWdhdGUgZXJyb3JzIHRvIGRtYS1mZW5jZS1hcnJh
eSBjb250YWluZXIiKQo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBDYzog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+Cj4gQ2M6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6
IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KClJl
dmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cgo+
IC0tLQo+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgNiArKysrKy0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLWFycmF5LmMKPiBpbmRleCBkM2ZiZDk1MGJlOTQuLjNlMDdmOTYxZTJmMyAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKPiArKysgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKPiBAQCAtMTA0LDcgKzEwNCwxMSBAQCBz
dGF0aWMgYm9vbCBkbWFfZmVuY2VfYXJyYXlfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UpCj4gICB7Cj4gICAJc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqYXJyYXkgPSB0b19kbWFfZmVu
Y2VfYXJyYXkoZmVuY2UpOwo+ICAgCj4gLQlyZXR1cm4gYXRvbWljX3JlYWQoJmFycmF5LT5udW1f
cGVuZGluZykgPD0gMDsKPiArCWlmIChhdG9taWNfcmVhZCgmYXJyYXktPm51bV9wZW5kaW5nKSA+
IDApCj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsKPiArCWRtYV9mZW5jZV9hcnJheV9jbGVhcl9wZW5k
aW5nX2Vycm9yKGFycmF5KTsKPiArCXJldHVybiB0cnVlOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMg
dm9pZCBkbWFfZmVuY2VfYXJyYXlfcmVsZWFzZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
