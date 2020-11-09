Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 106972AC84C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Nov 2020 23:24:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49EEA665EE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Nov 2020 22:24:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3AFBF665EF; Mon,  9 Nov 2020 22:24:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98162665B5;
	Mon,  9 Nov 2020 22:23:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F199861900
 for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Nov 2020 22:23:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D86D8665B5; Mon,  9 Nov 2020 22:23:13 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id CA2D261900
 for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Nov 2020 22:23:11 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id 23so10528582wrc.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Nov 2020 14:23:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HIMdkonH/M8RHuv/jMDRV8k2qN0Wz0T+rWEsqMPSnwA=;
 b=Y330Zg/GZT4A2zdeYFS5PcemYbtjR1NZ4zNhy6VvHwgq1XYOQQZjbcDg2WRtDax4nl
 IyLEdeO/b0uR9FhFxPI+0XbF4mcoa0/2akMAbSeNOyaiz8Xw14xhhq1YcPSig3u4t760
 ZYBhVVqiI10CrYPqhHZ4N6/b2JXaZEqscCAvIPFa5SBqqSyuoJ8u1sOufdC6vCczbSsy
 zpkqGdoswiQq4N2YmQx+9FVr2neU3Mct0gbXUuhmekdoS8K6vBFO3ae29PG6onOoAU9q
 dOkZHDgZ/pYY4R9oeScAu7HB5KYFKUrFhP4eP8TS76y483Nzt4NdJCKs5JOaa+vJc18M
 PM/w==
X-Gm-Message-State: AOAM532xhK8gE2BPNIK4wPtARlWQqFG+nsc+7rFlLYBQ9vQvUiWHGKap
 bm/+KEdzk4vylUqOVkRtqzvQEEqwdBtjippu9Mk=
X-Google-Smtp-Source: ABdhPJxxQlstl0Xclg6pLXD+2YnocUBWnj82fQETra99luiqoS75TrxTds454fJh8RamwMKKq4SYChqU7lpxyUScJvs=
X-Received: by 2002:adf:f246:: with SMTP id b6mr20074356wrp.111.1604960590933; 
 Mon, 09 Nov 2020 14:23:10 -0800 (PST)
MIME-Version: 1.0
References: <20201109211855.3340030-1-lee.jones@linaro.org>
In-Reply-To: <20201109211855.3340030-1-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 9 Nov 2020 17:22:59 -0500
Message-ID: <CADnq5_N1BbXosxsGoc7L2NCY3rf3dqFB7SD84PNsFTC7rJPY6Q@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Slava Grigorev <slava.grigorev@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <glisse@freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 report to <xorg-driver-ati@lists.x.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 00/20] [Set 3] Rid W=1 warnings from GPU
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

T24gTW9uLCBOb3YgOSwgMjAyMCBhdCA0OjE5IFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gVGhpcyBzZXQgaXMgcGFydCBvZiBhIGxhcmdlciBlZmZvcnQgYXR0
ZW1wdGluZyB0byBjbGVhbi11cCBXPTEKPiBrZXJuZWwgYnVpbGRzLCB3aGljaCBhcmUgY3VycmVu
dGx5IG92ZXJ3aGVsbWluZ2x5IHJpZGRsZWQgd2l0aAo+IG5pZ2dseSBsaXR0bGUgd2FybmluZ3Mu
Cj4KPiBUaGlzIHNldCB0YWtlcyB0aGUgcnVubmluZyAoZGVjcmVhc2luZykgdG90YWwgZnJvbSA1
MDAwIGJlZm9yZQo+IFtTZXQgMV0gZG93biB0byAyMzAwLgo+Cj4gTGVlIEpvbmVzICgyMCk6Cj4g
ICBkcm0vcmFkZW9uL3JhZGVvbl90dG06IFBsYWNlIGRlY2xhcmF0aW9uIG9mICdyZGV2JyBpbiBz
YW1lIGNsYXVzZSBhcwo+ICAgICBpdHMgdXNlCj4gICBkcm0vcmFkZW9uOiBNb3ZlIHJhZGVvbl90
dG17aW5pdCxmaW5pfSB0byBzaGFyZWQgbG9jYXRpb24KPiAgIGRybS9yYWRlb24vcmFkZW9uX2Zl
bmNlOiBEZW1vdGUgc29tZSBub24tY29uZm9ybWFudCBrZXJuZWwtZG9jIGhlYWRlcnMKPiAgICAg
YW5kIGZpeCBhbm90aGVyCj4gICBkcm0vcmFkZW9uOiBNb3ZlICdyYWRlb25fYWRkX2xlZ2FjeV9l
bmNvZGVyJyBwcm90b3R5cGUgdG8gc2hhcmVkCj4gICAgIGhlYWRlcgo+ICAgZHJtL3JhZGVvbjog
TW92ZSAncmFkZW9uX2FkZF9sZWdhY3lfZW5jb2RlcidzIHByb3RvdHlwZSB0byBzaGFyZWQKPiAg
ICAgbG9jYXRpb24KPiAgIGRybS9yYWRlb24vcmFkZW9uX2Nvbm5lY3RvcnM6IFN0cmlwIG91dCBz
ZXQgYnV0IHVudXNlZCB2YXJpYWJsZSAncmV0Jwo+ICAgZHJtL3JhZGVvbi9yYWRlb25fZGlzcGxh
eTogUmVtb3ZlIHVudXNlZCB2YXJpYWJsZSAnbW9kJwo+ICAgZHJtL3JhZGVvbi9yYWRlb25faTJj
OiBSZW1vdmUgcG9pbnRsZXNzIGZ1bmN0aW9uIGhlYWRlcgo+ICAgZHJtL3JhZGVvbi9yYWRlb25f
aXJxX2ttczogRGVtb3RlIG5vbi1jb25mb3JtYW50IGtlcm5lbC1kb2MgZml4Cj4gICAgIGFub3Ro
ZXIKPiAgIGRybS9yYWRlb24vcmFkZW9uX3Jpbmc6IEFkZCBtaXNzaW5nIGZ1bmN0aW9uIHBhcmFt
ZXRlcnMgJ3JkZXYnIGFuZAo+ICAgICAnZGF0YScKPiAgIGRybS9yYWRlb24vcjYwMDogU3RyaXAg
b3V0IHNldCBidXQgdW51c2VkICd0bXAnIHZhcmlhYmxlcwo+ICAgZHJtL3JhZGVvbi9yYWRlb25f
Y3M6IEZpeCBhIGJ1bmNoIG9mIGRvYy1yb3QgaXNzdWVzCj4gICBkcm0vcmFkZW9uL2V2ZXJncmVl
bjogTW92ZSAncnY3NzBfc2V0X2Nsa19ieXBhc3NfbW9kZScgcHJvdG90eXBlIHRvCj4gICAgIHNo
YXJlZCBsb2NhdGlvbgo+ICAgZHJtL3JhZGVvbjogTW92ZSAncmFkZW9uX3BtX2FjcGlfZXZlbnRf
aGFuZGxlcicgcHJvdG90eXBlIGludG8gc2hhcmVkCj4gICAgIGhlYWRlcgo+ICAgZHJtL3JhZGVv
bi9yNjAwZDogTW92ZSAncmM2MDBfKicgcHJvdG90eXBlcyBpbnRvIHNoYXJlZCBoZWFkZXIKPiAg
IGRybS9yYWRlb24vcmFkZW9uX2F1ZGlvOiBNb3ZlICdkY2UzXzJfKicgcHJvdG90eXBlcyB0byBz
aGFyZWQgbG9jYXRpb24KPiAgIGRybS9yYWRlb24vZXZlcmdyZWVuZDogTW92ZSAnZXZlcmdyZWVu
XyonIGFuZCAnc3Vtb18qJyBwcm90b3R5cGVzIG91dAo+ICAgICB0byBzaGFyZWQgbG9jYXRpb24K
PiAgIGRybS9yYWRlb24vcmFkZW9uX2Rpc3BsYXk6IEZpeCBmdW5jdGlvbiBkb2MgZm9ybWF0dGlu
ZyBhbmQgbWlzc2luZwo+ICAgICBwYXJhbSBpc3N1ZXMKPiAgIGRybS9yYWRlb24vcjYwMDogRml4
IGEgbWlzbmFtZWQgcGFyYW1ldGVyIGRlc2NyaXB0aW9uIGFuZCBhIGZvcm1hdHRpbmcKPiAgICAg
aXNzdWUKPiAgIGRybS9yYWRlb24vY2lrOiBGaXggYSBidW5jaCBvZiBmdW5jdGlvbiBwYXJhbWV0
ZXIgZGVzY3JpcHRpb25zCj4KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9jaWsuYyAgICAgICAg
ICAgICAgIHwgMTAgKysrLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2V2ZXJncmVlbi5j
ICAgICAgICAgfCAgMSAtCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vbmkuYyAgICAgICAgICAg
ICAgICB8IDE2IC0tLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yNjAwLmMgICAg
ICAgICAgICAgIHwgMTEgKysrLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDBkLmgg
ICAgICAgICAgICAgfCAxNCArKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRl
b24uaCAgICAgICAgICAgIHwgMzQgKysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dw
dS9kcm0vcmFkZW9uL3JhZGVvbl9hY3BpLmMgICAgICAgfCAgMiAtLQo+ICBkcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL3JhZGVvbl9hdG9tYmlvcy5jICAgfCAgNSAtLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vcmFkZW9uX2F1ZGlvLmMgICAgICB8IDIzICstLS0tLS0tLS0tLS0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9hdWRpby5oICAgICAgfCAxMiArKysrKysrKwo+ICBk
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jb21iaW9zLmMgICAgfCAgNSAtLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Nvbm5lY3RvcnMuYyB8ICA0ICstLQo+ICBkcml2
ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jcy5jICAgICAgICAgfCAxMiArKysrLS0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kaXNwbGF5LmMgICAgfCAxNyArKysrKy0tLS0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9lbmNvZGVycy5jICAgfCAgMyAtLQo+
ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9mZW5jZS5jICAgICAgfCAgNiArKy0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2kyYy5jICAgICAgICB8ICA0IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9pcnFfa21zLmMgICAgfCAgNiArKy0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX29iamVjdC5jICAgICB8ICAyIC0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3JpbmcuYyAgICAgICB8ICAzICsrCj4gIGRyaXZlcnMv
Z3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jICAgICAgICB8ICA4ICsrLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9yYWRlb24vc2kuYyAgICAgICAgICAgICAgICB8ICA2IC0tLS0KPiAgMjIgZmlsZXMg
Y2hhbmdlZCwgOTYgaW5zZXJ0aW9ucygrKSwgMTA4IGRlbGV0aW9ucygtKQoKSW5zdGVhZCBvZiBq
dXN0IGR1bXBpbmcgZXZlcnl0aGluZyBpbiByYWRlb24uaCwgSSB0aGluayBpdCB3b3VsZCBiZQpj
bGVhbmVyIHRvIGFkZCBuZXcgaGVhZGVycyB0aGF0IG1hdGNoIHRoZSAuYyBmaWxlcyB0aGF0IGRl
ZmluZSB0aGVtLgpFLmcuLCBhZGQgZXZlcmdyZWVuLmggYW5kIHB1dCBhbGwgdGhlIHN0dWZmIGZy
b20gZXZlcmdyZWVuLmMgaW4gdGhlcmUuCkFkZCBydjc3MC5oIGFuZCBhZGQgYWxsIHRoZSBzdHVm
ZiBkZWZpbmVkIGluIHJ2NzcwLmMsIGV0Yy4KCkFsZXgKCj4KPiBDYzogQWxleCBEZXVjaGVyIDxh
bGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBEYXZpZCBBaXJsaWUg
PGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiBDYzogSmVyb21lIEdsaXNzZSA8Z2xpc3NlQGZyZWVkZXNrdG9wLm9yZz4KPiBDYzogbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9y
Zwo+IENjOiByZXBvcnQgdG8gPHhvcmctZHJpdmVyLWF0aUBsaXN0cy54Lm9yZz4KPiBDYzogU2xh
dmEgR3JpZ29yZXYgPHNsYXZhLmdyaWdvcmV2QGFtZC5jb20+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8
c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gLS0KPiAyLjI1LjEKPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlz
dAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
