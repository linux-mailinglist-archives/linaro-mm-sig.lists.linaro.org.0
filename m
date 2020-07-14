Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC4121F615
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2020 17:24:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C7F561697
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2020 15:24:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8FACD61726; Tue, 14 Jul 2020 15:24:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 913A761754;
	Tue, 14 Jul 2020 15:23:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7C48061697
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 15:23:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6E1C261754; Tue, 14 Jul 2020 15:23:15 +0000 (UTC)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by lists.linaro.org (Postfix) with ESMTPS id 0F78F61697
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 15:23:14 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id c25so13307433otf.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 08:23:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cXIgj0iYr7P3K9BwnPZPhJf3MwNMTpVJeBZlv87Bh4I=;
 b=aIdF7Pu6kYWln/AeKcoG8UnqffUNtUNvmuoBVPcGlCsok6V4JoZYNshhGdu5z/A/NP
 pCzyx6+HdVLB4SqLx7RfN4YKC6znazlPhM9GL2NTOuC72Cwyldc0fLk3Vhe+5WjCzUsj
 MO/NhUyEQftylBl/g7WAPzX99IW/yB/iNqiKolwE4bm+YFjPS0G72Oy9XGI58NvZeEKI
 KNq6MQqLRSkUyliwOWOCSZtyrFMuFg9G6DguJmEDW9ZBM4kthIAvEQfAp+y012sAsMAP
 M5SrgO1jZAQDIhf+V4ruPhtnPwRGMH3W6Z+A3NeH9XZkbf2E6xhpQpbMvqV+zegr6hdV
 neLg==
X-Gm-Message-State: AOAM531vFmPlSySUZx2tTympAHJ2J5/r9Z3fDCP5QZpd2crjvYxnVKxU
 HLEhT82mldOEBDxaziBXS054+zgkmFKACgYMBorjIg==
X-Google-Smtp-Source: ABdhPJzMWKFMzStVCDzj6VA6xehwdIqELDcKSwQ56B351nM2OHgHnA5N7zQOfA0uHd0eJVAYd4Qstl3xeb/ssJHcYdM=
X-Received: by 2002:a9d:d55:: with SMTP id 79mr4759005oti.281.1594740193436;
 Tue, 14 Jul 2020 08:23:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-5-daniel.vetter@ffwll.ch>
 <20200712222716.4rhvj7hryiecjthv@smtp.gmail.com>
 <20200714095717.njwk2u4tkgro54jn@smtp.gmail.com>
 <CAKMK7uGu4N2oe04N=haUodmVCLi6HnqFDORkObx8EPUQrEJ+MQ@mail.gmail.com>
 <20200714145553.zetjvbewixnf2rla@smtp.gmail.com>
In-Reply-To: <20200714145553.zetjvbewixnf2rla@smtp.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 14 Jul 2020 17:23:02 +0200
Message-ID: <CAKMK7uEyu8A3or00J+fBhf5sHhhq5Xz7X9Y=2AMajEPSaNB+-g@mail.gmail.com>
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

T24gVHVlLCBKdWwgMTQsIDIwMjAgYXQgNDo1NiBQTSBNZWxpc3NhIFdlbiA8bWVsaXNzYS5zcndA
Z21haWwuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gMDcvMTQsIERhbmllbCBWZXR0ZXIgd3Jv
dGU6Cj4gPiBPbiBUdWUsIEp1bCAxNCwgMjAyMCBhdCAxMTo1NyBBTSBNZWxpc3NhIFdlbiA8bWVs
aXNzYS5zcndAZ21haWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gMDcvMTIsIFJvZHJpZ28g
U2lxdWVpcmEgd3JvdGU6Cj4gPiA+ID4gSGksCj4gPiA+ID4KPiA+ID4gPiBFdmVyeXRoaW5nIGxv
b2tzIGZpbmUgdG8gbWUsIEkganVzdCBub3RpY2VkIHRoYXQgdGhlIGFtZGdwdSBwYXRjaGVzIGRp
ZAo+ID4gPiA+IG5vdCBhcHBseSBzbW9vdGhseSwgaG93ZXZlciBpdCB3YXMgdHJpdmlhbCB0byBm
aXggdGhlIGlzc3Vlcy4KPiA+ID4gPgo+ID4gPiA+IFJldmlld2VkLWJ5OiBSb2RyaWdvIFNpcXVl
aXJhIDxyb2RyaWdvc2lxdWVpcmFtZWxvQGdtYWlsLmNvbT4KPiA+ID4gPgo+ID4gPiA+IE1lbGlz
c2EsCj4gPiA+ID4gU2luY2UgeW91IGFyZSB1c2luZyB2a21zIHJlZ3VsYXJseSwgY291bGQgeW91
IHRlc3QgdGhpcyBwYXRjaCBhbmQgcmV2aWV3Cj4gPiA+ID4gaXQ/IFJlbWVtYmVyIHRvIGFkZCB5
b3VyIFRlc3RlZC1ieSB3aGVuIHlvdSBmaW5pc2guCj4gPiA+ID4KPiA+ID4gSGksCj4gPiA+Cj4g
PiA+IEkndmUgYXBwbGllZCB0aGUgcGF0Y2ggc2VyaWVzLCByYW4gc29tZSB0ZXN0cyBvbiB2a21z
LCBhbmQgZm91bmQgbm8KPiA+ID4gaXNzdWVzLiBJIG1lYW4sIHRoaW5ncyBoYXZlIHJlbWFpbmVk
IHN0YWJsZS4KPiA+ID4KPiA+ID4gVGVzdGVkLWJ5OiBNZWxpc3NhIFdlbiA8bWVsaXNzYS5zcndA
Z21haWwuY29tPgo+ID4KPiA+IERpZCB5b3UgdGVzdCB3aXRoIENPTkZJR19QUk9WRV9MT0NLSU5H
IGVuYWJsZWQgaW4gdGhlIGtlcm5lbCAuY29uZmlnPwo+ID4gV2l0aG91dCB0aGF0IGVuYWJsZWQs
IHRoZXJlJ3Mgbm90IHJlYWxseSBhbnkgY2hhbmdlIGhlcmUsIGJ1dCB3aXRoCj4gPiB0aGF0IGVu
YWJsZWQgdGhlcmUgbWlnaHQgYmUgc29tZSBsb2NrZGVwIHNwbGF0cyBpbiBkbWVzZyBpbmRpY2F0
aW5nIGEKPiA+IHByb2JsZW0uCj4gPgo+Cj4gRXZlbiB3aXRoIHRoZSBsb2NrIGRlYnVnZ2luZyBj
b25maWcgZW5hYmxlZCwgbm8gbmV3IGlzc3VlIGFyb3NlIGluIGRtZXNnCj4gZHVyaW5nIG15IHRl
c3RzIHVzaW5nIHZrbXMuCgpFeGNlbGxlbnQsIHRoYW5rcyBhIGxvdCBmb3IgY29uZmlybWluZyB0
aGlzLgotRGFuaWVsCgo+Cj4gTWVsaXNzYQo+Cj4gPiBUaGFua3MsIERhbmllbAo+ID4gPgo+ID4g
PiA+IFRoYW5rcwo+ID4gPiA+Cj4gPiA+ID4gT24gMDcvMDcsIERhbmllbCBWZXR0ZXIgd3JvdGU6
Cj4gPiA+ID4gPiBUaGlzIGlzIG5lZWRlZCB0byBzaWduYWwgdGhlIGZlbmNlcyBmcm9tIHBhZ2Ug
ZmxpcHMsIGFubm90YXRlIGl0Cj4gPiA+ID4gPiBhY2NvcmRpbmdseS4gV2UgbmVlZCB0byBhbm5v
dGF0ZSBlbnRpcmUgdGltZXIgY2FsbGJhY2sgc2luY2UgaWYgd2UgZ2V0Cj4gPiA+ID4gPiBzdHVj
ayBhbnl3aGVyZSBpbiB0aGVyZSwgdGhlbiB0aGUgdGltZXIgc3RvcHMsIGFuZCBoZW5jZSBmZW5j
ZXMgc3RvcC4KPiA+ID4gPiA+IEp1c3QgYW5ub3RhdGluZyB0aGUgdG9wIHBhcnQgdGhhdCBkb2Vz
IHRoZSB2YmxhbmsgaGFuZGxpbmcgaXNuJ3QKPiA+ID4gPiA+IGVub3VnaC4KPiA+ID4gPiA+Cj4g
PiA+ID4gPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gPiA+ID4gPiBDYzogbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gPiA+ID4gPiBDYzogbGludXgtcmRtYUB2Z2Vy
Lmtlcm5lbC5vcmcKPiA+ID4gPiA+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
ID4gPiA+ID4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gPiA+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+ID4gPiA+IENjOiBN
YWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4g
PiA+ID4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwu
Y29tPgo+ID4gPiA+ID4gQ2M6IFJvZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWlyYW1lbG9A
Z21haWwuY29tPgo+ID4gPiA+ID4gQ2M6IEhhbmVlbiBNb2hhbW1lZCA8aGFtb2hhbW1lZC5zYUBn
bWFpbC5jb20+Cj4gPiA+ID4gPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+
ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc19jcnRjLmMg
fCA4ICsrKysrKystCj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+ID4gPiA+ID4KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vdmttcy92a21zX2NydGMuYyBiL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5j
Cj4gPiA+ID4gPiBpbmRleCBhYzg1ZTE3NDI4ZjguLmE1M2E0MDg0OGE3MiAxMDA2NDQKPiA+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS92a21zL3ZrbXNfY3J0Yy5jCj4gPiA+ID4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2NydGMuYwo+ID4gPiA+ID4gQEAgLTEsNSArMSw3
IEBACj4gPiA+ID4gPiAgLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4gPiA+
ID4gPgo+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UuaD4KPiA+ID4gPiA+ICsK
PiA+ID4gPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWMuaD4KPiA+ID4gPiA+ICAjaW5jbHVk
ZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+Cj4gPiA+ID4gPiAgI2luY2x1ZGUgPGRybS9kcm1f
cHJvYmVfaGVscGVyLmg+Cj4gPiA+ID4gPiBAQCAtMTQsNyArMTYsOSBAQCBzdGF0aWMgZW51bSBo
cnRpbWVyX3Jlc3RhcnQgdmttc192Ymxhbmtfc2ltdWxhdGUoc3RydWN0IGhydGltZXIgKnRpbWVy
KQo+ID4gPiA+ID4gICAgIHN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9ICZvdXRwdXQtPmNydGM7Cj4g
PiA+ID4gPiAgICAgc3RydWN0IHZrbXNfY3J0Y19zdGF0ZSAqc3RhdGU7Cj4gPiA+ID4gPiAgICAg
dTY0IHJldF9vdmVycnVuOwo+ID4gPiA+ID4gLSAgIGJvb2wgcmV0Owo+ID4gPiA+ID4gKyAgIGJv
b2wgcmV0LCBmZW5jZV9jb29raWU7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgZmVuY2VfY29v
a2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsKPiA+ID4gPiA+Cj4gPiA+ID4gPiAg
ICAgcmV0X292ZXJydW4gPSBocnRpbWVyX2ZvcndhcmRfbm93KCZvdXRwdXQtPnZibGFua19ocnRp
bWVyLAo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvdXRw
dXQtPnBlcmlvZF9ucyk7Cj4gPiA+ID4gPiBAQCAtNDksNiArNTMsOCBAQCBzdGF0aWMgZW51bSBo
cnRpbWVyX3Jlc3RhcnQgdmttc192Ymxhbmtfc2ltdWxhdGUoc3RydWN0IGhydGltZXIgKnRpbWVy
KQo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICBEUk1fREVCVUdfRFJJVkVSKCJDb21wb3Nl
ciB3b3JrZXIgYWxyZWFkeSBxdWV1ZWRcbiIpOwo+ID4gPiA+ID4gICAgIH0KPiA+ID4gPiA+Cj4g
PiA+ID4gPiArICAgZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7Cj4gPiA+
ID4gPiArCj4gPiA+ID4gPiAgICAgcmV0dXJuIEhSVElNRVJfUkVTVEFSVDsKPiA+ID4gPiA+ICB9
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gLS0KPiA+ID4gPiA+IDIuMjcuMAo+ID4gPiA+ID4KPiA+ID4g
Pgo+ID4gPiA+IC0tCj4gPiA+ID4gUm9kcmlnbyBTaXF1ZWlyYQo+ID4gPiA+IGh0dHBzOi8vc2lx
dWVpcmEudGVjaAo+ID4gPgo+ID4gPgo+ID4KPiA+Cj4gPiAtLQo+ID4gRGFuaWVsIFZldHRlcgo+
ID4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gPiBodHRwOi8vYmxvZy5m
ZndsbC5jaAoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
