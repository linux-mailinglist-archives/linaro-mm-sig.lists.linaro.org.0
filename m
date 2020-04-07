Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5A31A0EDE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Apr 2020 16:06:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A04F366169
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Apr 2020 14:06:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8F4C2661BF; Tue,  7 Apr 2020 14:06:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07E566618A;
	Tue,  7 Apr 2020 14:05:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3BBBA66098
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2020 14:05:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2EAF96618A; Tue,  7 Apr 2020 14:05:49 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id DE63366098
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2020 14:05:47 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id a49so3177467otc.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Apr 2020 07:05:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1NdsvHQeHu5QTk7zrN8HxtBhQoh7MwqSb5UgLwBlUkg=;
 b=Cc6qmRgOBIztWiSIPmxxieXTc56fB9S4w8F3A3Sv5eK4oWTif7hoYbCSGizzdA1/qd
 JKad6xUBsEdqP5lmZg3/766UXAfhqQdn0aJHCpNC+sLo0IhaEXAuieQ9Ika11XyJs+ZO
 Ch+rjKoFDoMazdOs4JsYCXESmGspHLWHCBrauXT7sFEKKsjENVwE0iaOmuGHW2H2/6Fg
 A7P4e56RM56WU7v3CXnOBNZ9G7IWdJfsCX4xq36gToNxxUJ4lx3IsVAY8F7LPwUROp5l
 kVoEH/1spsDAaaitmlqr57HWweun/cGxcA3bG2S3+U6PkYQGktKCue3CkaGUcpc0BQR6
 /0YQ==
X-Gm-Message-State: AGi0PuZ2/0RcVIsAHqXF/6yM93/fZcFEsNJgeWYwpJZoombDV1cz+CXy
 XKOgwksS2KM7TLb2sjxJZXkaVf74Iy/N0rq3NeMuRA==
X-Google-Smtp-Source: APiQypL/RlVT2i69RdrWi7CstJmXxSmQgsRErYEyJetTK19b3yru1qFqr6NV0uNNQhhnA48y6Mo8ViTg31pruJQoNjs=
X-Received: by 2002:a05:6830:15d4:: with SMTP id
 j20mr1666775otr.303.1586268346055; 
 Tue, 07 Apr 2020 07:05:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200114134101.159194-1-liumartin@google.com>
 <20200224033941.GB211610@google.com>
 <CAO_48GEPKk64uepCqZEc=6XGiv4tZnPHv=RZdwzKPuUqOxjpow@mail.gmail.com>
In-Reply-To: <CAO_48GEPKk64uepCqZEc=6XGiv4tZnPHv=RZdwzKPuUqOxjpow@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 7 Apr 2020 16:05:34 +0200
Message-ID: <CAKMK7uH9gxp79VPfG+yMp+65_-+=U2iV1UH-SfzRnOc=9T4cPw@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 Minchan Kim <minchan@kernel.org>, jenhaochen@google.com,
 Wei Wang <wvw@google.com>, Martin Liu <liumartin@google.com>,
 surenb@google.com,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: support 32bit DMA_BUF_SET_NAME
	ioctl
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

T24gVHVlLCBBcHIgNywgMjAyMCBhdCAzOjI2IFBNIFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2Fs
QGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gSGVsbG8sCj4KPiBEYW5pZWwsIHlvdXIgY29tbWVudHMg
aGVyZSwgcGxlYXNlPwoKRG9uJ3QgOi0pCgpJIG1lYW4gcnVsZSBvZiB0aHVtYiB5b3Ugc2hvdWxk
IG5ldmVyIG5lZWQgYSBjb21wYXRfaW9jdGwgZm9yIGEgbmV3CmlvY3RsLCB0aGF0J3MganVzdCBm
YWlsdXJlIHRvIHJlYWQKaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC92NS40LXByZXBy
Yy1jcHUvaW9jdGwvYm90Y2hpbmctdXAtaW9jdGxzLmh0bWwKClNwZWNpZmljYWxseSB0aGUgY2hh
ciAqIHBvaW50ZXIgaW4gdGhlIGlvY3RsIGRlZmluaXRpb24gaXMgdGhlCnByb2JsZW0uIE5vdyB3
ZSdyZSBzb21ld2hhdCBsdWNreSBoZXJlLCBzaW5jZSB0aGUgYWN0dWFsIGxheW91dCBvZiB0aGUK
ZGF0YSBpc24ndCBkaWZmZXJlbnQgYmV0d2VlbiAzMiBhbmQgNjQgYml0LCBpdCdzIG9ubHkgdGhl
IGlvY3RsLiBXaGljaAppcyB0aGUgMm5kIGlzc3VlLCB0aGUgdHlwZSBpbiB0aGVyZSBzaG91bGQg
YmUgdGhlIHR5cGUgb2YgdGhlIGRhdGEgaW4KdXNlcnNwYWNlLCBub3QgdGhlIHR5cGUgb2YgdGhl
IF9wb2ludGVyXyB0byB0aGUgc3R1ZmYgaW4gdXNlcnNwYWNlLiBTbwpoZXJlIGFjdHVhbGx5IHZh
cmlhYmxlLXNpemVkIGNoYXJbXSBhcnJheSwgd2hpY2ggYWxzbyBkb2Vzbid0IHdvcmsKcmVhbGx5
LgoKQW55d2F5IEkndmUgY3JlYXRlZCBhIHF1aWNrIHBhdGNoIHRvIGhhdmUgZGlzdGluY3QgaW9j
dGwgbnVtYmVyCmRlZmluZXMgYW5kIGhhbmRsZSBib3RoIGluIHRoZSBtYWluIGhhbmRsZXIsIHRo
YXQgc2hvdWxkIHdvcmsuIENjJ2VkCmV2ZXJ5b25lIGZyb20gdGhpcyB0aHJlYWQsIHBsZWFzZSB0
ZXN0LgotRGFuaWVsCgo+Cj4gT24gTW9uLCAyNCBGZWIgMjAyMCBhdCAwOTowOSwgTWFydGluIExp
dSA8bGl1bWFydGluQGdvb2dsZS5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFR1ZSwgSmFuIDE0LCAy
MDIwIGF0IDA5OjQxOjAxUE0gKzA4MDAsIE1hcnRpbiBMaXUgd3JvdGU6Cj4gPgo+ID4gQ0MgbW9y
ZSBNTHMgZm9yIHdpbmRlciByZXZpZXcuCj4gPgo+ID4gPiBUaGlzIGNvbW1pdCBhZGRzIFNFVF9O
QU1FIGlvY3RsIGNvdmVyc2lvbiB0bwo+ID4gPiBzdXBwb3J0IDMyIGJpdCBpb2N0bC4KPiA+ID4K
PiA+ID4gU2lnbmVkLW9mZi1ieTogTWFydGluIExpdSA8bGl1bWFydGluQGdvb2dsZS5jb20+Cj4g
PiA+IC0tLQo+ID4gPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDIyICsrKysrKysrKysr
KysrKysrKysrKy0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ID4gPiBpbmRleCBjZTQxY2Q5Yjc1OGEu
LmE3MzA0OGIzNDg0MyAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Ywo+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiA+IEBAIC0yNSw2ICsy
NSw3IEBACj4gPiA+ICAjaW5jbHVkZSA8bGludXgvbW0uaD4KPiA+ID4gICNpbmNsdWRlIDxsaW51
eC9tb3VudC5oPgo+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3BzZXVkb19mcy5oPgo+ID4gPiArI2lu
Y2x1ZGUgPGxpbnV4L2NvbXBhdC5oPgo+ID4gPgo+ID4gPiAgI2luY2x1ZGUgPHVhcGkvbGludXgv
ZG1hLWJ1Zi5oPgo+ID4gPiAgI2luY2x1ZGUgPHVhcGkvbGludXgvbWFnaWMuaD4KPiA+ID4gQEAg
LTQwOSwxMyArNDEwLDMyIEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfc2hvd19mZGluZm8oc3RydWN0
IHNlcV9maWxlICptLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKPiA+ID4gICAgICAgZG1hX3Jlc3ZfdW5s
b2NrKGRtYWJ1Zi0+cmVzdik7Cj4gPiA+ICB9Cj4gPiA+Cj4gPiA+ICsjaWZkZWYgQ09ORklHX0NP
TVBBVAo+ID4gPiArc3RhdGljIGxvbmcgZG1hX2J1Zl9pb2N0bF9jb21wYXQoc3RydWN0IGZpbGUg
KmZpbGUsIHVuc2lnbmVkIGludCBjbWQsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB1bnNpZ25lZCBsb25nIGFyZykKPiA+ID4gK3sKPiA+ID4gKyAgICAgc3dpdGNoIChfSU9D
X05SKGNtZCkpIHsKPiA+ID4gKyAgICAgY2FzZSBfSU9DX05SKERNQV9CVUZfU0VUX05BTUUpOgo+
ID4gPiArICAgICAgICAgICAgIC8qIEZpeCB1cCBwb2ludGVyIHNpemUqLwo+ID4gPiArICAgICAg
ICAgICAgIGlmIChfSU9DX1NJWkUoY21kKSA9PSBzaXplb2YoY29tcGF0X3VwdHJfdCkpIHsKPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgIGNtZCAmPSB+SU9DU0laRV9NQVNLOwo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgY21kIHw9IHNpemVvZih2b2lkICopIDw8IElPQ1NJWkVfU0hJRlQ7
Cj4gPiA+ICsgICAgICAgICAgICAgfQo+ID4gPiArICAgICAgICAgICAgIGJyZWFrOwo+ID4gPiAr
ICAgICB9Cj4gPiA+ICsgICAgIHJldHVybiBkbWFfYnVmX2lvY3RsKGZpbGUsIGNtZCwgKHVuc2ln
bmVkIGxvbmcpY29tcGF0X3B0cihhcmcpKTsKPiA+ID4gK30KPiA+ID4gKyNlbmRpZgo+ID4gPiAr
Cj4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBkbWFfYnVmX2ZvcHMg
PSB7Cj4gPiA+ICAgICAgIC5yZWxlYXNlICAgICAgICA9IGRtYV9idWZfcmVsZWFzZSwKPiA+ID4g
ICAgICAgLm1tYXAgICAgICAgICAgID0gZG1hX2J1Zl9tbWFwX2ludGVybmFsLAo+ID4gPiAgICAg
ICAubGxzZWVrICAgICAgICAgPSBkbWFfYnVmX2xsc2VlaywKPiA+ID4gICAgICAgLnBvbGwgICAg
ICAgICAgID0gZG1hX2J1Zl9wb2xsLAo+ID4gPiAgICAgICAudW5sb2NrZWRfaW9jdGwgPSBkbWFf
YnVmX2lvY3RsLAo+ID4gPiAtICAgICAuY29tcGF0X2lvY3RsICAgPSBjb21wYXRfcHRyX2lvY3Rs
LAo+ID4gPiArI2lmZGVmIENPTkZJR19DT01QQVQKPiA+ID4gKyAgICAgLmNvbXBhdF9pb2N0bCAg
ID0gZG1hX2J1Zl9pb2N0bF9jb21wYXQsCj4gPiA+ICsjZW5kaWYKPiA+ID4gICAgICAgLnNob3df
ZmRpbmZvICAgID0gZG1hX2J1Zl9zaG93X2ZkaW5mbywKPiA+ID4gIH07Cj4gPiA+Cj4gPiA+IC0t
Cj4gPiA+IDIuMjUuMC5yYzEuMjgzLmc4OGRmZGM0MTkzLWdvb2cKPiA+ID4KPgo+Cj4KPiAtLQo+
IFRoYW5rcyBhbmQgcmVnYXJkcywKPgo+IFN1bWl0IFNlbXdhbAo+IExpbmFybyBDb25zdW1lciBH
cm91cCAtIEtlcm5lbCBUZWFtIExlYWQKPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKCgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIs
IEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3
bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
