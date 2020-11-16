Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 789902B512B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 20:32:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A72A060639
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 19:32:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 92E9C60900; Mon, 16 Nov 2020 19:32:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D9EA665FA;
	Mon, 16 Nov 2020 19:31:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2A28460639
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 19:31:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1702F666D5; Mon, 16 Nov 2020 19:31:17 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id B093A60639
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 19:31:15 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id 23so20016143wrc.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 11:31:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Gy+aFlZ+UlqhCXFPvBz8U6FZZuIx3dpLmw8zSmXA8bs=;
 b=Ac7LS0VUGG/C7o4LS+mn7/jSmowniiNjmpy/HPbgaDZAot9R6dSEzC9+Z4EIdokra1
 84vCxapHLhnQPM+ImM7oVTijFXwof/V2jz0fgAuKmijdRgsC98Tx6iAVMmMRn4ZcDuqf
 4ia9AME+mSkdBbgSORlVGS9rz4/DJBxvrhJG9NyBCZ8X7ZlGOTqiuDgZdXtSzrm4CZz/
 lJzQM1r3WSq9wHd3N/tcjoz3TqGuhmWuyeEJPeOrk6xdzA4yJeWQitZ8FwfRqilEOpfA
 bHw/5fP9i2r+rJXbiBVTken7VRFgWo4LImrrs4BHHi48uZ7eWu1j0T3ZYDJpMlv3vinN
 Th1Q==
X-Gm-Message-State: AOAM531qMtn7LG/YNEV1qkEoOe8Ps0uq4a44oS/3j6ju6FPsQ1KEcD4h
 2S8HmVOZsEM2jl4AHnQkKHOf6ySCVUEAw9T6CEY=
X-Google-Smtp-Source: ABdhPJwP4kLb4gC4O9SvAVF/pYgU8WFFbMp3YumXDAJEWsu61ncuO3AZp3wNmBHUvb08R/hhAkRtZHxAg4t/T5B1He0=
X-Received: by 2002:adf:e9c9:: with SMTP id l9mr22164333wrn.124.1605555074945; 
 Mon, 16 Nov 2020 11:31:14 -0800 (PST)
MIME-Version: 1.0
References: <20201116173005.1825880-1-lee.jones@linaro.org>
 <20201116173005.1825880-4-lee.jones@linaro.org>
In-Reply-To: <20201116173005.1825880-4-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Nov 2020 14:31:03 -0500
Message-ID: <CADnq5_PDG_b4dtcPP-8_YM8wC9FQ6=owJFWn7DeRJmcETaLfFg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 03/43] drm/radeon/radeon_kms: Move
 'radeon_*_kms' prototypes to shared header
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

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMTI6MzAgUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5nIFc9MSBrZXJuZWwgYnVpbGQg
d2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9rbXMuYzo3NTY6
NTogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhyYWRlb25fZ2V0X3ZibGFu
a19jb3VudGVyX2ttc+KAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCj4gIDc1NiB8IHUzMiByYWRl
b25fZ2V0X3ZibGFua19jb3VudGVyX2ttcyhzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4gIHwgXn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRl
b25fa21zLmM6ODI2OjU6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYcmFk
ZW9uX2VuYWJsZV92Ymxhbmtfa21z4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KPiAgODI2IHwg
aW50IHJhZGVvbl9lbmFibGVfdmJsYW5rX2ttcyhzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4gIHwg
Xn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9u
X2ttcy5jOjg1Mzo2OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmHJhZGVv
bl9kaXNhYmxlX3ZibGFua19rbXPigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQo+ICA4NTMgfCB2
b2lkIHJhZGVvbl9kaXNhYmxlX3ZibGFua19rbXMoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+ICB8
IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRl
ci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1p
dC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2ln
bmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkFwcGxpZWQuICBU
aGFua3MhCgpBbGV4Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9kaXNw
bGF5LmMgfCAgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ttcy5jICAgICB8
ICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fa21zLmggICAgIHwgMzUgKysr
KysrKysrKysrKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDM3IGluc2VydGlvbnMo
KykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2tt
cy5oCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZGlzcGxheS5jCj4gaW5kZXggZWIw
ZDRjYjk1ZjBhNi4uM2E2ZmVkYWQwMDJkNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cmFkZW9uL3JhZGVvbl9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3Jh
ZGVvbl9kaXNwbGF5LmMKPiBAQCAtNDQsNiArNDQsNyBAQAo+Cj4gICNpbmNsdWRlICJhdG9tLmgi
Cj4gICNpbmNsdWRlICJyYWRlb24uaCIKPiArI2luY2x1ZGUgInJhZGVvbl9rbXMuaCIKPgo+ICBz
dGF0aWMgdm9pZCBhdml2b19jcnRjX2xvYWRfbHV0KHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKPiAg
ewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9rbXMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ttcy5jCj4gaW5kZXggM2QzMWMwNGU0YjNkYi4u
MDAxOTQwYmNhOTBhNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVv
bl9rbXMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ttcy5jCj4gQEAg
LTQxLDYgKzQxLDcgQEAKPiAgI2luY2x1ZGUgInJhZGVvbi5oIgo+ICAjaW5jbHVkZSAicmFkZW9u
X2FzaWMuaCIKPiAgI2luY2x1ZGUgInJhZGVvbl9kcnYuaCIKPiArI2luY2x1ZGUgInJhZGVvbl9r
bXMuaCIKPgo+ICAjaWYgZGVmaW5lZChDT05GSUdfVkdBX1NXSVRDSEVST08pCj4gIGJvb2wgcmFk
ZW9uX2hhc19hdHB4KHZvaWQpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L3JhZGVvbl9rbXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ttcy5oCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi4zNmU3M2NlYTkyMTU0Cj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ttcy5o
Cj4gQEAgLTAsMCArMSwzNSBAQAo+ICsvKiByYWRlb25fa21zLmggLS0gUHJpdmF0ZSBoZWFkZXIg
Zm9yIHJhZGVvbiBkcml2ZXIgLSotIGxpbnV4LWMgLSotCj4gKyAqCj4gKyAqIENvcHlyaWdodCAx
OTk5IFByZWNpc2lvbiBJbnNpZ2h0LCBJbmMuLCBDZWRhciBQYXJrLCBUZXhhcy4KPiArICogQ29w
eXJpZ2h0IDIwMDAgVkEgTGludXggU3lzdGVtcywgSW5jLiwgRnJlbW9udCwgQ2FsaWZvcm5pYS4K
PiArICogQWxsIHJpZ2h0cyByZXNlcnZlZC4KPiArICoKPiArICogUGVybWlzc2lvbiBpcyBoZXJl
YnkgZ3JhbnRlZCwgZnJlZSBvZiBjaGFyZ2UsIHRvIGFueSBwZXJzb24gb2J0YWluaW5nIGEKPiAr
ICogY29weSBvZiB0aGlzIHNvZnR3YXJlIGFuZCBhc3NvY2lhdGVkIGRvY3VtZW50YXRpb24gZmls
ZXMgKHRoZSAiU29mdHdhcmUiKSwKPiArICogdG8gZGVhbCBpbiB0aGUgU29mdHdhcmUgd2l0aG91
dCByZXN0cmljdGlvbiwgaW5jbHVkaW5nIHdpdGhvdXQgbGltaXRhdGlvbgo+ICsgKiB0aGUgcmln
aHRzIHRvIHVzZSwgY29weSwgbW9kaWZ5LCBtZXJnZSwgcHVibGlzaCwgZGlzdHJpYnV0ZSwgc3Vi
bGljZW5zZSwKPiArICogYW5kL29yIHNlbGwgY29waWVzIG9mIHRoZSBTb2Z0d2FyZSwgYW5kIHRv
IHBlcm1pdCBwZXJzb25zIHRvIHdob20gdGhlCj4gKyAqIFNvZnR3YXJlIGlzIGZ1cm5pc2hlZCB0
byBkbyBzbywgc3ViamVjdCB0byB0aGUgZm9sbG93aW5nIGNvbmRpdGlvbnM6Cj4gKyAqCj4gKyAq
IFRoZSBhYm92ZSBjb3B5cmlnaHQgbm90aWNlIGFuZCB0aGlzIHBlcm1pc3Npb24gbm90aWNlIChp
bmNsdWRpbmcgdGhlIG5leHQKPiArICogcGFyYWdyYXBoKSBzaGFsbCBiZSBpbmNsdWRlZCBpbiBh
bGwgY29waWVzIG9yIHN1YnN0YW50aWFsIHBvcnRpb25zIG9mIHRoZQo+ICsgKiBTb2Z0d2FyZS4K
PiArICoKPiArICogVEhFIFNPRlRXQVJFIElTIFBST1ZJREVEICJBUyBJUyIsIFdJVEhPVVQgV0FS
UkFOVFkgT0YgQU5ZIEtJTkQsIEVYUFJFU1MgT1IKPiArICogSU1QTElFRCwgSU5DTFVESU5HIEJV
VCBOT1QgTElNSVRFRCBUTyBUSEUgV0FSUkFOVElFUyBPRiBNRVJDSEFOVEFCSUxJVFksCj4gKyAq
IEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFIEFORCBOT05JTkZSSU5HRU1FTlQuICBJ
TiBOTyBFVkVOVCBTSEFMTAo+ICsgKiBQUkVDSVNJT04gSU5TSUdIVCBBTkQvT1IgSVRTIFNVUFBM
SUVSUyBCRSBMSUFCTEUgRk9SIEFOWSBDTEFJTSwgREFNQUdFUyBPUgo+ICsgKiBPVEhFUiBMSUFC
SUxJVFksIFdIRVRIRVIgSU4gQU4gQUNUSU9OIE9GIENPTlRSQUNULCBUT1JUIE9SIE9USEVSV0lT
RSwKPiArICogQVJJU0lORyBGUk9NLCBPVVQgT0YgT1IgSU4gQ09OTkVDVElPTiBXSVRIIFRIRSBT
T0ZUV0FSRSBPUiBUSEUgVVNFIE9SIE9USEVSCj4gKyAqIERFQUxJTkdTIElOIFRIRSBTT0ZUV0FS
RS4KPiArICoKPiArICovCj4gKwo+ICsjaWZuZGVmIF9fUkFERU9OX0tNU19IX18KPiArI2RlZmlu
ZSBfX1JBREVPTl9LTVNfSF9fCj4gKwo+ICt1MzIgcmFkZW9uX2dldF92YmxhbmtfY291bnRlcl9r
bXMoc3RydWN0IGRybV9jcnRjICpjcnRjKTsKPiAraW50IHJhZGVvbl9lbmFibGVfdmJsYW5rX2tt
cyhzdHJ1Y3QgZHJtX2NydGMgKmNydGMpOwo+ICt2b2lkIHJhZGVvbl9kaXNhYmxlX3ZibGFua19r
bXMoc3RydWN0IGRybV9jcnRjICpjcnRjKTsKPiArCj4gKyNlbmRpZiAgICAgICAgICAgICAgICAg
ICAgICAgICAvKiBfX1JBREVPTl9LTVNfSF9fICovCj4gLS0KPiAyLjI1LjEKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxp
bmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
