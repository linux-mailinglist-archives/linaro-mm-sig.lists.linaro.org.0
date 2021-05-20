Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A6A38B42B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 18:26:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADB236130C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 16:26:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 75DA96130B; Thu, 20 May 2021 16:26:01 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 050FC61269;
	Thu, 20 May 2021 16:25:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D2C0D6124A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 16:25:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D097861269; Thu, 20 May 2021 16:25:55 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 by lists.linaro.org (Postfix) with ESMTPS id C7B276124A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 16:25:53 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id
 t10-20020a05683022eab0290304ed8bc759so15353160otc.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 09:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=aBkhk3QDWbqSQxByb9B0QwU7XpNxQNo09cMdXpxbbl8=;
 b=ZTcJ2ZN5oiXQB5JixcdXLMUBNnapMtCPrrCADKk79kIX1HO7C6sJyH98HYPoLlmHsi
 aLwFtH/1sEk9TAJWoINwVFUCDVeDneG9y10WuHZCQkwnHAAC+wBLYozbvS6zxdJQjHnI
 0ygWlp5+o43N/ShvItsywwnmDq6K1Zrsxfo88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=aBkhk3QDWbqSQxByb9B0QwU7XpNxQNo09cMdXpxbbl8=;
 b=JnlFD42lIUCyJjiDaZVGzTHHZcE11OhzAmvJjfNnnxOg0LGCVc4yeU8KYXP+wyEZle
 G8LQno6qViKg1lt6QoH/R6dqw85bMI+hHaMZ7NNpUqUJ8tgl34peH5t/8QR6p55gBae8
 gcsHligHeTGu73sRDDyaWWxBYSKQyWxmoys2nPwyQ2kRsCxrMMfI8QfsU629gldjdiyX
 VsgIY0w0apG2luDBBj603l2HGFd0OaocilrFwV1W014YdzrCP2lY6fM8W1KC4kXF/YdX
 V5aKfMmeLMUo2rZZV0MSEZCDyl+Am4rPoHcPxj35UqMNRWjP9lczkw0VZdFHxPkeFzMI
 VR3g==
X-Gm-Message-State: AOAM532DkLRlekS9Y5iKn/erzsRaWBUVfRrm9iGmVgJ0Btgb6Ie6DlNq
 uYN6q+3nj3grl/uc5WrJqRPNByNQhNL+XAF87dopeg==
X-Google-Smtp-Source: ABdhPJzdUcCTfi80bWr13zSZ/F0YDpb9U8rAzzxeFvH1KraofvvTAPHpWCxezFVXjEF5rDoRiuG7kW/hvb7nC0aahGE=
X-Received: by 2002:a9d:4101:: with SMTP id o1mr4653449ote.281.1621527953214; 
 Thu, 20 May 2021 09:25:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210519183855.1523927-1-robdclark@gmail.com>
 <20210519183855.1523927-2-robdclark@gmail.com>
 <8dcdc8d5-176c-f0ad-0d54-6466e9e68a0a@amd.com>
 <CAF6AEGtg_VnxYrj94AfbAfViK1v8U0ZJyfJjS4taVLMF=YVy+w@mail.gmail.com>
In-Reply-To: <CAF6AEGtg_VnxYrj94AfbAfViK1v8U0ZJyfJjS4taVLMF=YVy+w@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 20 May 2021 18:25:42 +0200
Message-ID: <CAKMK7uF9Uz6amffv=bbErbU4+PQ0NRqV0Az9woQfTTikrJSrFw@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>, Matthew Brost <matthew.brost@intel.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 1/3] dma-fence: Add boost fence op
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
Cc: Rob Clark <robdclark@chromium.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCBNYXkgMjAsIDIwMjEgYXQgNDowMyBQTSBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXkgMTksIDIwMjEgYXQgMTE6NDcgUE0gQ2hyaXN0
aWFuIEvDtm5pZwo+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+ID4KPiA+IFVm
ZiwgdGhhdCBsb29rcyB2ZXJ5IGhhcmR3YXJlIHNwZWNpZmljIHRvIG1lLgo+Cj4gSG93c28/ICBJ
J20gbm90IHN1cmUgSSBhZ3JlZS4uIGFuZCBldmVuIGlmIGl0IHdhcyBub3QgdXNlZnVsIGZvciBz
b21lCj4gaHcsIGl0IHNob3VsZCBiZSB1c2VmdWwgZm9yIGVub3VnaCBkcml2ZXJzIChhbmQgaGFy
bSBubyBkcml2ZXJzKSwgc28gSQo+IHN0aWxsIHRoaW5rIGl0IGlzIGEgZ29vZCBpZGVhCj4KPiBU
aGUgZmFsbGJhY2sgcGxhbiBpcyB0byBnbyB0aGUgaTkxNSByb3V0ZSBhbmQgc3RvcCB1c2luZyBh
dG9taWMKPiBoZWxwZXJzIGFuZCBkbyB0aGUgc2FtZSB0aGluZyBpbnNpZGUgdGhlIGRyaXZlciwg
YnV0IHRoYXQgZG9lc24ndCBoZWxwCj4gYW55IG9mIHRoZSBjYXNlcyB3aGVyZSB5b3UgaGF2ZSBh
IHNlcGFyYXRlIGttcyBhbmQgZ3B1IGRyaXZlci4KCkRvbid0LCBiZWNhdXNlIHRoZSBpOTE1IHBs
YW4gaXMgdG8gYWN0dWFsbHkgbW92ZSB0b3dhcmRzIGRybS9zY2hlZHVsZXIKYW5kIGF0b21pYyBo
ZWxwZXJzLgoKPiA+IEFzIGZhciBhcyBJIGNhbiBzZWUgeW91IGNhbiBhbHNvIGltcGxlbWVudCBj
b21wbGV0ZWx5IGluc2lkZSB0aGUgYmFja2VuZAo+ID4gYnkgc3RhcnRpbmcgYSB0aW1lciBvbiBl
bmFibGVfc2lnbmFsaW5nLCBkb24ndCB5b3U/Cj4KPiBOb3QgcmVhbGx5Li4gSSBtZWFuLCB0aGUg
ZmFjdCB0aGF0IHNvbWV0aGluZyB3YWl0ZWQgb24gYSBmZW5jZSBjb3VsZAo+IGJlIGEgdXNlZnVs
IGlucHV0IHNpZ25hbCB0byBncHUgZnJlcSBnb3Zlcm5vciwgYnV0IGl0IGlzIGVudGlyZWx5Cj4g
aW5zdWZmaWNpZW50Li4KPgo+IElmIHRoZSBjcHUgaXMgc3BlbmRpbmcgYSBsb3Qgb2YgdGltZSB3
YWl0aW5nIG9uIGEgZmVuY2UsIGNwdWZyZXEgd2lsbAo+IGNsb2NrIGRvd24gc28geW91IHNwZW5k
IGxlc3MgdGltZSB3YWl0aW5nLiAgQW5kIG5vIHByb2JsZW0gaGFzIGJlZW4KPiBzb2x2ZWQuICBZ
b3UgYWJzb2x1dGVseSBuZWVkIHRoZSBjb25jZXB0IG9mIGEgbWlzc2VkIGRlYWRsaW5lLCBhbmQg
YQo+IHRpbWVyIGRvZXNuJ3QgZ2l2ZSB5b3UgdGhhdC4KCll1cCBhZ3JlZWQuCgpBZGRpbmcgTWF0
dCBCcm9zdCwgc2luY2UgaGUncyBwbGFubmluZyBhbGwgdGhpcyBib29zdGJhY2sgd29yay4KLURh
bmllbAoKPgo+IEJSLAo+IC1SCj4KPiA+IENocmlzdGlhbi4KPiA+Cj4gPiBBbSAxOS4wNS4yMSB1
bSAyMDozOCBzY2hyaWViIFJvYiBDbGFyazoKPiA+ID4gRnJvbTogUm9iIENsYXJrIDxyb2JkY2xh
cmtAY2hyb21pdW0ub3JnPgo+ID4gPgo+ID4gPiBBZGQgYSB3YXkgdG8gaGludCB0byB0aGUgZmVu
Y2Ugc2lnbmFsZXIgdGhhdCBhIGZlbmNlIHdhaXRlciBoYXMgbWlzc2VkIGEKPiA+ID4gZGVhZGxp
bmUgd2FpdGluZyBvbiB0aGUgZmVuY2UuCj4gPiA+Cj4gPiA+IEluIHNvbWUgY2FzZXMsIG1pc3Np
bmcgYSB2YmxhbmsgY2FuIHJlc3VsdCBpbiBsb3dlciBncHUgdXRpbGl6YXRpb24sCj4gPiA+IHdo
ZW4gcmVhbGx5IHdlIHdhbnQgdG8gZ28gaW4gdGhlIG9wcG9zaXRlIGRpcmVjdGlvbiBhbmQgYm9v
c3QgZ3B1IGZyZXEuCj4gPiA+IFRoZSBib29zdCBjYWxsYmFjayBnaXZlcyBzb21lIGZlZWRiYWNr
IHRvIHRoZSBmZW5jZSBzaWduYWxlciB0aGF0IHdlCj4gPiA+IGFyZSBtaXNzaW5nIGRlYWRsaW5l
cywgc28gaXQgY2FuIHRha2UgdGhpcyBpbnRvIGFjY291bnQgaW4gaXQncyBmcmVxLwo+ID4gPiB1
dGlsaXphdGlvbiBjYWxjdWxhdGlvbnMuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFJvYiBD
bGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4KPiA+ID4gLS0tCj4gPiA+ICAgaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UuaCB8IDI2ICsrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ICAg
MSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKykKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCj4g
PiA+IGluZGV4IDlmMTJlZmFhYTkzYS4uMTcyNzAyNTIxYWNjIDEwMDY0NAo+ID4gPiAtLS0gYS9p
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCj4gPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmgKPiA+ID4gQEAgLTIzMSw2ICsyMzEsMTcgQEAgc3RydWN0IGRtYV9mZW5jZV9vcHMgewo+
ID4gPiAgICAgICBzaWduZWQgbG9uZyAoKndhaXQpKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAo+
ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgIGJvb2wgaW50ciwgc2lnbmVkIGxvbmcgdGlt
ZW91dCk7Cj4gPiA+Cj4gPiA+ICsgICAgIC8qKgo+ID4gPiArICAgICAgKiBAYm9vc3Q6Cj4gPiA+
ICsgICAgICAqCj4gPiA+ICsgICAgICAqIE9wdGlvbmFsIGNhbGxiYWNrLCB0byBpbmRpY2F0ZSB0
aGF0IGEgZmVuY2Ugd2FpdGVyIG1pc3NlZCBhIGRlYWRsaW5lLgo+ID4gPiArICAgICAgKiBUaGlz
IGNhbiBzZXJ2ZSBhcyBhIHNpZ25hbCB0aGF0IChpZiBwb3NzaWJsZSkgd2hhdGV2ZXIgc2lnbmFs
cyB0aGUKPiA+ID4gKyAgICAgICogZmVuY2Ugc2hvdWxkIGJvb3N0IGl0J3MgY2xvY2tzLgo+ID4g
PiArICAgICAgKgo+ID4gPiArICAgICAgKiBUaGlzIGNhbiBiZSBjYWxsZWQgaW4gYW55IGNvbnRl
eHQgdGhhdCBjYW4gY2FsbCBkbWFfZmVuY2Vfd2FpdCgpLgo+ID4gPiArICAgICAgKi8KPiA+ID4g
KyAgICAgdm9pZCAoKmJvb3N0KShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7Cj4gPiA+ICsKPiA+
ID4gICAgICAgLyoqCj4gPiA+ICAgICAgICAqIEByZWxlYXNlOgo+ID4gPiAgICAgICAgKgo+ID4g
PiBAQCAtNTg2LDYgKzU5NywyMSBAQCBzdGF0aWMgaW5saW5lIHNpZ25lZCBsb25nIGRtYV9mZW5j
ZV93YWl0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBib29sIGludHIpCj4gPiA+ICAgICAgIHJl
dHVybiByZXQgPCAwID8gcmV0IDogMDsKPiA+ID4gICB9Cj4gPiA+Cj4gPiA+ICsvKioKPiA+ID4g
KyAqIGRtYV9mZW5jZV9ib29zdCAtIGhpbnQgZnJvbSB3YWl0ZXIgdGhhdCBpdCBtaXNzZWQgYSBk
ZWFkbGluZQo+ID4gPiArICoKPiA+ID4gKyAqIEBmZW5jZTogdGhlIGZlbmNlIHRoYXQgY2F1c2Vk
IHRoZSBtaXNzZWQgZGVhZGxpbmUKPiA+ID4gKyAqCj4gPiA+ICsgKiBUaGlzIGZ1bmN0aW9uIGdp
dmVzIGEgaGludCBmcm9tIGEgZmVuY2Ugd2FpdGVyIHRoYXQgYSBkZWFkbGluZSB3YXMKPiA+ID4g
KyAqIG1pc3NlZCwgc28gdGhhdCB0aGUgZmVuY2Ugc2lnbmFsZXIgY2FuIGZhY3RvciB0aGlzIGlu
IHRvIGRldmljZQo+ID4gPiArICogcG93ZXIgc3RhdGUgZGVjaXNpb25zCj4gPiA+ICsgKi8KPiA+
ID4gK3N0YXRpYyBpbmxpbmUgdm9pZCBkbWFfZmVuY2VfYm9vc3Qoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIGlmIChmZW5jZS0+b3BzLT5ib29zdCkKPiA+ID4g
KyAgICAgICAgICAgICBmZW5jZS0+b3BzLT5ib29zdChmZW5jZSk7Cj4gPiA+ICt9Cj4gPiA+ICsK
PiA+ID4gICBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfZ2V0X3N0dWIodm9pZCk7Cj4gPiA+
ICAgdTY0IGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKHVuc2lnbmVkIG51bSk7Cj4gPiA+Cj4gPgoK
CgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24K
aHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
