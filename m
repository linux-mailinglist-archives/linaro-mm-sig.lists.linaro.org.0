Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2042F2B5144
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 20:37:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4775C666E1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 19:37:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 36CE3666EF; Mon, 16 Nov 2020 19:37:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A993665FA;
	Mon, 16 Nov 2020 19:36:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5E5C060639
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 19:36:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 529CE665FA; Mon, 16 Nov 2020 19:36:20 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id DC8E060639
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 19:36:18 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id h2so422351wmm.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 11:36:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Jd4NYM09nIgiVAxjCFV+Ai4BIQhFfa+s3Pg4oNazxak=;
 b=n5wcfbmhbK0pj3jjfW/wCkZQozrQn0XzJTPQKTeTp0sfSk5dM+SyeRc4wYlsETXu8H
 NFam0HvXkWeA4BmzqPqkRNDRMNOgMZWCx8xq7Mn1/6j8hXZ1lA0H6/72jKs+sySVJ/o4
 n9CfkMXonVS6leBBXqHdGpi1tWITINnsqS9dAR4k5J2PAZ0DIei+1P6LUNeFnexfoASi
 Lx82Rx1+4K8+2wskmCtKcZLwBAJ4xCU8JCShdGmncRvHx/0Sann1DaDk2FA/SIyAZ27m
 qw3zIe7aAov8AQr4xB/Xe4V0PxNS0S90HgO+I9HboJQqj+JODfZ2X8qnacGAWiXJKEpZ
 eofw==
X-Gm-Message-State: AOAM531wN9cS8RHL7wwxkPQG7Jhw5gTI4hD1itvtyuDunKT5GBBDi/oT
 GtjS2/1/gbtx/IIs83vu9F3/ThUm6AojR3qubn0=
X-Google-Smtp-Source: ABdhPJwwedHpQP8TC22Plw3AmPLyM53Oqs5C6ao4BlprKxqBsMtvBBZFpha3W4NY0cIvWVuoBd1EO7VcpHjzLZyJmaQ=
X-Received: by 2002:a7b:c015:: with SMTP id c21mr468641wmb.79.1605555378107;
 Mon, 16 Nov 2020 11:36:18 -0800 (PST)
MIME-Version: 1.0
References: <20201116173005.1825880-1-lee.jones@linaro.org>
 <20201116173005.1825880-6-lee.jones@linaro.org>
In-Reply-To: <20201116173005.1825880-6-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Nov 2020 14:36:07 -0500
Message-ID: <CADnq5_N0FVXjao6W+kNQJAMmL2ARt1Qw2A6726=Vh2jN_ms8jA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 05/43] drm/radeon: Move radeon_ttm{init,
	fini} to shared location
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
d2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYzogQXQg
dG9wIGxldmVsOgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYzo4MTc6NTog
d2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhyYWRlb25fdHRtX2luaXTigJkg
Wy1XbWlzc2luZy1wcm90b3R5cGVzXQo+ICA4MTcgfCBpbnQgcmFkZW9uX3R0bV9pbml0KHN0cnVj
dCByYWRlb25fZGV2aWNlICpyZGV2KQo+ICB8IF5+fn5+fn5+fn5+fn5+fgo+ICBkcml2ZXJzL2dw
dS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYzo4Nzg6Njogd2FybmluZzogbm8gcHJldmlvdXMgcHJv
dG90eXBlIGZvciDigJhyYWRlb25fdHRtX2ZpbmnigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQo+
ICA4NzggfCB2b2lkIHJhZGVvbl90dG1fZmluaShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldikK
PiAgfCBefn5+fn5+fn5+fn5+fn4KPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVj
aGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmll
bCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13
YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzog
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtl
cm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2lnbmVkLW9m
Zi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkFwcGxpZWQuICBUaGFua3Mh
CgpBbGV4CgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fb2JqZWN0LmMg
fCAgMyArLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMgICAgfCAgMSAr
Cj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5oICAgIHwgMzYgKysrKysrKysr
KysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yYWRlb25fdHRtLmgKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3Jh
ZGVvbl9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX29iamVjdC5jCj4g
aW5kZXggYWI4MWUzNWNiMDYwNi4uOGJjNWFkMWQ2NTg1NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9vYmplY3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9y
YWRlb24vcmFkZW9uX29iamVjdC5jCj4gQEAgLTQwLDkgKzQwLDggQEAKPgo+ICAjaW5jbHVkZSAi
cmFkZW9uLmgiCj4gICNpbmNsdWRlICJyYWRlb25fdHJhY2UuaCIKPiArI2luY2x1ZGUgInJhZGVv
bl90dG0uaCIKPgo+IC1pbnQgcmFkZW9uX3R0bV9pbml0KHN0cnVjdCByYWRlb25fZGV2aWNlICpy
ZGV2KTsKPiAtdm9pZCByYWRlb25fdHRtX2Zpbmkoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYp
Owo+ICBzdGF0aWMgdm9pZCByYWRlb25fYm9fY2xlYXJfc3VyZmFjZV9yZWcoc3RydWN0IHJhZGVv
bl9ibyAqYm8pOwo+Cj4gIC8qCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24v
cmFkZW9uX3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMKPiBpbmRl
eCAyOTM5ZTcxY2ViNzAwLi4yOGIzMDBlZDIwMGVhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcmFkZW9uX3R0bS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fdHRtLmMKPiBAQCAtNTEsNiArNTEsNyBAQAo+Cj4gICNpbmNsdWRlICJyYWRlb25fcmVn
LmgiCj4gICNpbmNsdWRlICJyYWRlb24uaCIKPiArI2luY2x1ZGUgInJhZGVvbl90dG0uaCIKPgo+
ICBzdGF0aWMgaW50IHJhZGVvbl90dG1fZGVidWdmc19pbml0KHN0cnVjdCByYWRlb25fZGV2aWNl
ICpyZGV2KTsKPiAgc3RhdGljIHZvaWQgcmFkZW9uX3R0bV9kZWJ1Z2ZzX2Zpbmkoc3RydWN0IHJh
ZGVvbl9kZXZpY2UgKnJkZXYpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L3JhZGVvbl90dG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5oCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi45MWVhNzE0MWJjODEyCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3R0bS5o
Cj4gQEAgLTAsMCArMSwzNiBAQAo+ICsvKiByYWRlb25fdHRtLmggLS0gUHJpdmF0ZSBoZWFkZXIg
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
RS4KPiArICoKPiArICovCj4gKwo+ICsjaWZuZGVmIF9fUkFERU9OX1RUTV9IX18KPiArI2RlZmlu
ZSBfX1JBREVPTl9UVE1fSF9fCj4gKwo+ICtzdHJ1Y3QgcmFkZW9uX2RldmljZTsKPiArCj4gK2lu
dCByYWRlb25fdHRtX2luaXQoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpOwo+ICt2b2lkIHJh
ZGVvbl90dG1fZmluaShzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4gKwo+ICsjZW5kaWYg
ICAgICAgICAgICAgICAgICAgICAgICAgLyogX19SQURFT05fVFRNX0hfXyAqLwo+IC0tCj4gMi4y
NS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2
ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
