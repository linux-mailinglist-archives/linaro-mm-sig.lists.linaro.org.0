Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4789F21ED82
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2020 12:00:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73855665AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2020 10:00:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5E85E665BA; Tue, 14 Jul 2020 10:00:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C5796659D;
	Tue, 14 Jul 2020 09:59:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B7C6160656
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 09:59:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A220E6659D; Tue, 14 Jul 2020 09:59:33 +0000 (UTC)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by lists.linaro.org (Postfix) with ESMTPS id 1730B60656
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 09:59:32 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id r8so13463072oij.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 02:59:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P8l6FryZA/keVvXZxlVWCIThf2OhcjulZofupovGm64=;
 b=isGVCHEe01PyerIWVn4RlFBTyXtZOhwon58PuQBOA8WMT/cW0mHPkt7WSiA/1Eh53e
 zNJehMoEE2ZT1m6JlpFpv3Y81iqAOQ0HsgsHa3bQWohh4V+4he29ZTsSlXCZJFlWaige
 anVR+CNZ+iffkbCCMTPU3070t4CRVt+8F43EItAQK4mQ3GgLBZm5Jslbko65G+XT3tqC
 M4hqVfyuHFSkxZXYZ+V2bDd3eX48rfH/kdoicpVfI4yoBQ/C7pQ7cHBbkk0DGbIpI+sj
 fjgOCrruMIPg99+YUP2bx/Z4Gm8yA4LoxlE9adsk3ZwmXf787C65ihL3lDnIqIpBRFCc
 LnCA==
X-Gm-Message-State: AOAM530TIBh4apnbSsF3Ndf5ZH9Z2d/BIj99gshCjAoQVDDLLYcsXWWl
 n5OLouN3R5K22go460OVK9S5oGyCcHCE5Zkbo9T6Lg==
X-Google-Smtp-Source: ABdhPJxzz/S8lATGQ/0IMYNwtQjDlAlFcSobX9FbPzm4XdALVWpg/Y5C8vwjamXN8Z0EGUWFlRHk8Cbz+tDX12mNXeA=
X-Received: by 2002:aca:cc8e:: with SMTP id c136mr2959277oig.128.1594720771402; 
 Tue, 14 Jul 2020 02:59:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-5-daniel.vetter@ffwll.ch>
 <20200712222716.4rhvj7hryiecjthv@smtp.gmail.com>
 <20200714095717.njwk2u4tkgro54jn@smtp.gmail.com>
In-Reply-To: <20200714095717.njwk2u4tkgro54jn@smtp.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 14 Jul 2020 11:59:20 +0200
Message-ID: <CAKMK7uGu4N2oe04N=haUodmVCLi6HnqFDORkObx8EPUQrEJ+MQ@mail.gmail.com>
To: Melissa Wen <melissa.srw@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Trevor Woerner <twoerner@gmail.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 04/25] drm/vkms: Annotate vblank timer
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

T24gVHVlLCBKdWwgMTQsIDIwMjAgYXQgMTE6NTcgQU0gTWVsaXNzYSBXZW4gPG1lbGlzc2Euc3J3
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiAwNy8xMiwgUm9kcmlnbyBTaXF1ZWlyYSB3cm90ZToK
PiA+IEhpLAo+ID4KPiA+IEV2ZXJ5dGhpbmcgbG9va3MgZmluZSB0byBtZSwgSSBqdXN0IG5vdGlj
ZWQgdGhhdCB0aGUgYW1kZ3B1IHBhdGNoZXMgZGlkCj4gPiBub3QgYXBwbHkgc21vb3RobHksIGhv
d2V2ZXIgaXQgd2FzIHRyaXZpYWwgdG8gZml4IHRoZSBpc3N1ZXMuCj4gPgo+ID4gUmV2aWV3ZWQt
Ynk6IFJvZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWlyYW1lbG9AZ21haWwuY29tPgo+ID4K
PiA+IE1lbGlzc2EsCj4gPiBTaW5jZSB5b3UgYXJlIHVzaW5nIHZrbXMgcmVndWxhcmx5LCBjb3Vs
ZCB5b3UgdGVzdCB0aGlzIHBhdGNoIGFuZCByZXZpZXcKPiA+IGl0PyBSZW1lbWJlciB0byBhZGQg
eW91ciBUZXN0ZWQtYnkgd2hlbiB5b3UgZmluaXNoLgo+ID4KPiBIaSwKPgo+IEkndmUgYXBwbGll
ZCB0aGUgcGF0Y2ggc2VyaWVzLCByYW4gc29tZSB0ZXN0cyBvbiB2a21zLCBhbmQgZm91bmQgbm8K
PiBpc3N1ZXMuIEkgbWVhbiwgdGhpbmdzIGhhdmUgcmVtYWluZWQgc3RhYmxlLgo+Cj4gVGVzdGVk
LWJ5OiBNZWxpc3NhIFdlbiA8bWVsaXNzYS5zcndAZ21haWwuY29tPgoKRGlkIHlvdSB0ZXN0IHdp
dGggQ09ORklHX1BST1ZFX0xPQ0tJTkcgZW5hYmxlZCBpbiB0aGUga2VybmVsIC5jb25maWc/Cldp
dGhvdXQgdGhhdCBlbmFibGVkLCB0aGVyZSdzIG5vdCByZWFsbHkgYW55IGNoYW5nZSBoZXJlLCBi
dXQgd2l0aAp0aGF0IGVuYWJsZWQgdGhlcmUgbWlnaHQgYmUgc29tZSBsb2NrZGVwIHNwbGF0cyBp
biBkbWVzZyBpbmRpY2F0aW5nIGEKcHJvYmxlbS4KClRoYW5rcywgRGFuaWVsCj4KPiA+IFRoYW5r
cwo+ID4KPiA+IE9uIDA3LzA3LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gPiBUaGlzIGlzIG5l
ZWRlZCB0byBzaWduYWwgdGhlIGZlbmNlcyBmcm9tIHBhZ2UgZmxpcHMsIGFubm90YXRlIGl0Cj4g
PiA+IGFjY29yZGluZ2x5LiBXZSBuZWVkIHRvIGFubm90YXRlIGVudGlyZSB0aW1lciBjYWxsYmFj
ayBzaW5jZSBpZiB3ZSBnZXQKPiA+ID4gc3R1Y2sgYW55d2hlcmUgaW4gdGhlcmUsIHRoZW4gdGhl
IHRpbWVyIHN0b3BzLCBhbmQgaGVuY2UgZmVuY2VzIHN0b3AuCj4gPiA+IEp1c3QgYW5ub3RhdGlu
ZyB0aGUgdG9wIHBhcnQgdGhhdCBkb2VzIHRoZSB2YmxhbmsgaGFuZGxpbmcgaXNuJ3QKPiA+ID4g
ZW5vdWdoLgo+ID4gPgo+ID4gPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gPiA+
IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiA+ID4gQ2M6IGxpbnV4LXJkbWFA
dmdlci5rZXJuZWwub3JnCj4gPiA+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
ID4gPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gPiBDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+IENjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gPiBDYzogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+ID4gQ2M6IFJvZHJp
Z28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWlyYW1lbG9AZ21haWwuY29tPgo+ID4gPiBDYzogSGFu
ZWVuIE1vaGFtbWVkIDxoYW1vaGFtbWVkLnNhQGdtYWlsLmNvbT4KPiA+ID4gQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
dmttcy92a21zX2NydGMuYyB8IDggKysrKysrKy0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jIGIvZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19j
cnRjLmMKPiA+ID4gaW5kZXggYWM4NWUxNzQyOGY4Li5hNTNhNDA4NDhhNzIgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jCj4gPiA+IEBAIC0xLDUgKzEsNyBAQAo+ID4gPiAg
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4gPiA+Cj4gPiA+ICsjaW5jbHVk
ZSA8bGludXgvZG1hLWZlbmNlLmg+Cj4gPiA+ICsKPiA+ID4gICNpbmNsdWRlIDxkcm0vZHJtX2F0
b21pYy5oPgo+ID4gPiAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgo+ID4gPiAg
I2luY2x1ZGUgPGRybS9kcm1fcHJvYmVfaGVscGVyLmg+Cj4gPiA+IEBAIC0xNCw3ICsxNiw5IEBA
IHN0YXRpYyBlbnVtIGhydGltZXJfcmVzdGFydCB2a21zX3ZibGFua19zaW11bGF0ZShzdHJ1Y3Qg
aHJ0aW1lciAqdGltZXIpCj4gPiA+ICAgICBzdHJ1Y3QgZHJtX2NydGMgKmNydGMgPSAmb3V0cHV0
LT5jcnRjOwo+ID4gPiAgICAgc3RydWN0IHZrbXNfY3J0Y19zdGF0ZSAqc3RhdGU7Cj4gPiA+ICAg
ICB1NjQgcmV0X292ZXJydW47Cj4gPiA+IC0gICBib29sIHJldDsKPiA+ID4gKyAgIGJvb2wgcmV0
LCBmZW5jZV9jb29raWU7Cj4gPiA+ICsKPiA+ID4gKyAgIGZlbmNlX2Nvb2tpZSA9IGRtYV9mZW5j
ZV9iZWdpbl9zaWduYWxsaW5nKCk7Cj4gPiA+Cj4gPiA+ICAgICByZXRfb3ZlcnJ1biA9IGhydGlt
ZXJfZm9yd2FyZF9ub3coJm91dHB1dC0+dmJsYW5rX2hydGltZXIsCj4gPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgb3V0cHV0LT5wZXJpb2RfbnMpOwo+ID4gPiBAQCAt
NDksNiArNTMsOCBAQCBzdGF0aWMgZW51bSBocnRpbWVyX3Jlc3RhcnQgdmttc192Ymxhbmtfc2lt
dWxhdGUoc3RydWN0IGhydGltZXIgKnRpbWVyKQo+ID4gPiAgICAgICAgICAgICAgICAgICAgIERS
TV9ERUJVR19EUklWRVIoIkNvbXBvc2VyIHdvcmtlciBhbHJlYWR5IHF1ZXVlZFxuIik7Cj4gPiA+
ICAgICB9Cj4gPiA+Cj4gPiA+ICsgICBkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29v
a2llKTsKPiA+ID4gKwo+ID4gPiAgICAgcmV0dXJuIEhSVElNRVJfUkVTVEFSVDsKPiA+ID4gIH0K
PiA+ID4KPiA+ID4gLS0KPiA+ID4gMi4yNy4wCj4gPiA+Cj4gPgo+ID4gLS0KPiA+IFJvZHJpZ28g
U2lxdWVpcmEKPiA+IGh0dHBzOi8vc2lxdWVpcmEudGVjaAo+Cj4KCgotLSAKRGFuaWVsIFZldHRl
cgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwu
Y2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
