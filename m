Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B251C3B0D91
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 21:20:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DADF8634FB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 19:20:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D5E476339F; Tue, 22 Jun 2021 19:20:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 335FE60F1E;
	Tue, 22 Jun 2021 19:20:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E2C1860B90
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 19:20:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DDB7C631D2; Tue, 22 Jun 2021 19:20:06 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com
 [209.85.161.47])
 by lists.linaro.org (Postfix) with ESMTPS id D2A7D60B90
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 19:20:04 +0000 (UTC)
Received: by mail-oo1-f47.google.com with SMTP id
 b24-20020a4a34180000b029024b199e7d4dso129141ooa.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 12:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IXTyvMzccD44HreGd+lTW6UPC/c6n0CNj/56dlhspnE=;
 b=jnrGKCc5k+rj2MWFkDqYwdwLo96z0bMl1L8GBzaSBanYW5s9QkrSoWIBy0C8sqBpiE
 sJp0+r8NksBdwWhFF0jipEeTILNVYlU4GGWVUekaNY/wa/lXH+zpc8tYd9r6p58jVT/q
 Y5HpOmjHxg7Zv+LdXx+OztqFobp4mnwzmSb0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IXTyvMzccD44HreGd+lTW6UPC/c6n0CNj/56dlhspnE=;
 b=I5o716qrZOd700+msYKgELl+FdsvPriFng7Uiw/85LbcIrD/Q2KVoA7STiRXmo8n3b
 27jrWiNnG/YoeIFzNJ+p+1Fn9Fd7iTVut/IJWaMbggP0tqwitDcX3G5REJoqwYR4zcnW
 ZhcPeR3OyBoAzbSD/OmuzehJwH1JhAqOeZzfgWh6LgX1+RVQCau2JPI+Udq56tM0hlAy
 VFjDI687BZiBY5OnbC1AXSUTP+heYXYNrzbMKg0xBaLn5xLw+Tbp574Kv0eBBumM8/wN
 qvFc1pJZS3kzjlhDg+NptKBo4gpIERBwS0JM2e4ybFMV3QzlQ+lJy6m1BI8UIeGJY9wf
 BN+g==
X-Gm-Message-State: AOAM530ZnoidX4mjKMvnUmBNGeko6nSbJhGOx2SsYq4jmi12bUskqdXa
 LYDZZUKC5SrveYUzMmHqPENdJfNMLiy3qPODYyHp/g==
X-Google-Smtp-Source: ABdhPJymCc3vHixvjSqTi5/BbnUPvRWX6NdnjghdlEx76K/WySHKdsKsTkAYb3Xk7+ky8kEKHa35K21lsy/Je7GeXFo=
X-Received: by 2002:a4a:9b99:: with SMTP id x25mr4621885ooj.85.1624389604204; 
 Tue, 22 Jun 2021 12:20:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
 <YNIw1g5HVCzvmKzP@ravnborg.org>
In-Reply-To: <YNIw1g5HVCzvmKzP@ravnborg.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 22 Jun 2021 21:19:53 +0200
Message-ID: <CAKMK7uE-c7evbXhNs9htsJ2wKWSMVcS=HHauvQ19-+9BT8NwSw@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/15] dma-resv: Fix kerneldoc
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgODo1MCBQTSBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+IHdyb3RlOgo+Cj4gSGkgRGFuaWVsLAo+Cj4gT24gVHVlLCBKdW4gMjIsIDIwMjEgYXQg
MDY6NTQ6NTdQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IE92ZXJzaWdodCBmcm9t
Cj4gPgo+ID4gY29tbWl0IDZlZGJkNmFiYjc4M2Q1NGY2YWM0YzNlZDVjZDllNTBjZmY2YzE1ZTkK
PiA+IEF1dGhvcjogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+
ID4gRGF0ZTogICBNb24gTWF5IDEwIDE2OjE0OjA5IDIwMjEgKzAyMDAKPgo+IHRoaXMgaXMgd2hh
dCB3ZSB1c2VzIEZpeGVzOiAuLi4gZm9yLgo+Cj4gSXQgbG9va3Mgd3JvbmcgdG8gaGlkZSBpdCBp
biB0aGUgZGVzY3JpcHRpb24uCgpJJ3ZlIGhvbmVzdGx5IGJlY29tZSBhIGJpdCB2YXJ5IG9mIHVz
aW5nIEZpeGVzOiBmb3IgZG9jcy9jb21tZW50cwpiZWNhdXNlIHRoZSBzdGFibGUgYXV0b3NlbGVj
dCBib3RzIGFyZSBfcmVhbGx5XyBrZWVuIG9uIHBpY2tpbmcgdXAKYW55dGhpbmcgd2l0aCBhIEZp
eGVzOiBsaW5lIGluIGl0LiBBbmQgdGhhdCBmZWVscyBhIGJpdCBsaWtlIG5vbnNlbnNlLgotRGFu
aWVsCgo+Cj4gICAgICAgICBTYW0KPgo+ID4KPiA+ICAgICBkbWEtYnVmOiByZW5hbWUgYW5kIGNs
ZWFudXAgZG1hX3Jlc3ZfZ2V0X2V4Y2wgdjMKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IENjOiBTdW1pdCBTZW13YWwgPHN1
bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+ID4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+
ID4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+ID4gLS0tCj4gPiAgaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKPiA+IGluZGV4IDU2MmI4ODVjZjlj
My4uZTFjYTIwODBhMWZmIDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5o
Cj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKPiA+IEBAIC0yMTIsNyArMjEyLDcg
QEAgc3RhdGljIGlubGluZSB2b2lkIGRtYV9yZXN2X3VubG9jayhzdHJ1Y3QgZG1hX3Jlc3YgKm9i
aikKPiA+ICB9Cj4gPgo+ID4gIC8qKgo+ID4gLSAqIGRtYV9yZXN2X2V4Y2x1c2l2ZSAtIHJldHVy
biB0aGUgb2JqZWN0J3MgZXhjbHVzaXZlIGZlbmNlCj4gPiArICogZG1hX3Jlc3ZfZXhjbF9mZW5j
ZSAtIHJldHVybiB0aGUgb2JqZWN0J3MgZXhjbHVzaXZlIGZlbmNlCj4gPiAgICogQG9iajogdGhl
IHJlc2VydmF0aW9uIG9iamVjdAo+ID4gICAqCj4gPiAgICogUmV0dXJucyB0aGUgZXhjbHVzaXZl
IGZlbmNlIChpZiBhbnkpLiBDYWxsZXIgbXVzdCBlaXRoZXIgaG9sZCB0aGUgb2JqZWN0cwo+ID4g
LS0KPiA+IDIuMzIuMC5yYzIKCgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIs
IEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
