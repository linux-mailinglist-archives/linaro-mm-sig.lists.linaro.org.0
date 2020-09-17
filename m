Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AAB26E240
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 19:23:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 00392666D9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Sep 2020 17:23:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E36F7666DF; Thu, 17 Sep 2020 17:23:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C537D666DE;
	Thu, 17 Sep 2020 17:23:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DAEA3666DD
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 17:23:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CFCE3666D9; Thu, 17 Sep 2020 17:23:15 +0000 (UTC)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by lists.linaro.org (Postfix) with ESMTPS id BCF49666D9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 17:23:14 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id t76so3346215oif.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Sep 2020 10:23:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=F86p0ud99YSiTMCN0ZfJJse9lFQfi+WRyzF06l3LfwA=;
 b=cPlgo6+/4TEHwWFbtHqVsk8he1OLCRdFmJthT64qAPfk7aUg+4+acPJoFoi+R67jaH
 gM38AFnCGgdPAyzb3qaYMohU71RdZzKA+OImT7JriUtVEuyk+r7RU6lIcFB5nX/1omGc
 +aTU0NYcK4lLjZj3vFogjz8zX8sUaPqc1DjeydjXMzs6YKg6mbCZlxP9ltnBE8UBR+eg
 OIN6ugyTnRGa3uskx7Xw11Z2fYku9kmvrFZfKkyuklxRfoOJlI4kO3x+chemQqSZ4Xyb
 dT/UrRIPiiE/7dH8yr4HYd12yYG/7KmG8ae+6fEB79qr/9fHB4sAHOXaSFLZ9gx25omc
 YCnw==
X-Gm-Message-State: AOAM5332ubxlmONcKur9pRhGIqvtFIfQEmE3WfjjuA3rQ/N6SdNsu+a8
 wbPAD70V9wzvhNuBQYB+cLWPjxR/t9qpq2WjDUzPtQ==
X-Google-Smtp-Source: ABdhPJwF3dNmQNnc08BdxH8My7DtOBpKWMR10LzO7dt3VFCMGmJE1UwcTFFGHLsdQ5ho5h5wrPc5sUf6w5ZuU6y8//k=
X-Received: by 2002:aca:6083:: with SMTP id u125mr7050119oib.14.1600363394219; 
 Thu, 17 Sep 2020 10:23:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uE=UqZD3PVC8XZAXrgGH-VsUF_-YQD3MLV8KK1kpxO4yQ@mail.gmail.com>
 <20200917113110.GE8409@ziepe.ca>
 <6fd74b84-959c-8b3b-c27b-e9fbf66396c7@gmail.com>
 <20200917121858.GF8409@ziepe.ca>
 <d82f08ee-2dec-18e8-fb06-d26f18ed777a@gmail.com>
 <20200917143551.GG8409@ziepe.ca>
 <5b330920-c789-fac7-e9b1-49f3bc1097a8@gmail.com>
 <20200917152456.GH8409@ziepe.ca>
 <CAKMK7uHQLAHXC_aBZZco0e3tbAqnNuW8QdJk=-V-yM2khw5e=Q@mail.gmail.com>
 <b9e65f47-b5c8-db09-117a-a8e22a5b6c71@amd.com>
 <20200917163907.GI8409@ziepe.ca>
In-Reply-To: <20200917163907.GI8409@ziepe.ca>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 17 Sep 2020 19:23:03 +0200
Message-ID: <CAKMK7uHrQ13-0oxTGZERQeoJ7jQES9jeDf0FhY3qW-NHdZvZ4w@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Linux MM <linux-mm@kvack.org>, Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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

T24gVGh1LCBTZXAgMTcsIDIwMjAgYXQgNjozOSBQTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVw
ZS5jYT4gd3JvdGU6Cj4KPiBPbiBUaHUsIFNlcCAxNywgMjAyMCBhdCAwNjowNjoxNFBNICswMjAw
LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+ID4gPiA+IElmIGl0IGlzIGFscmVhZHkgdGFraW5n
IGEgcGFnZSBmYXVsdCBJJ20gbm90IHN1cmUgdGhlIGV4dHJhIGZ1bmN0aW9uCj4gPiA+ID4gY2Fs
bCBpbmRpcmVjdGlvbiBpcyBnb2luZyB0byBiZSBhIGJpZyBkZWFsLiBIYXZpbmcgYSB1bmlmb3Jt
IFZNQQo+ID4gPiA+IHNvdW5kcyBzYW5lciB0aGFuIGV2ZXJ5IGRyaXZlciBjdXN0b20gcm9sbGlu
ZyBzb21ldGhpbmcuCj4gPiA+ID4KPiA+ID4gPiBXaGVuIEkgdW53b3VuZCBhIHNpbWlsYXIgbWVz
cyBpbiBSRE1BIGFsbCB0aGUgY3VzdG9tIFZNQSBzdHVmZiBpbiB0aGUKPiA+ID4gPiBkcml2ZXJz
IHR1cm5lZCBvdXQgdG8gYmUgZ2VuZXJhbGx5IGJ1Z2d5LCBhdCBsZWFzdC4KPiA+ID4gPgo+ID4g
PiA+IElzIHZtYS0+dm1fZmlsZS0+cHJpdmF0ZV9kYXRhIHVuaXZlcnNhbGx5IGEgZG1hX2J1ZiBw
b2ludGVyIGF0IGxlYXN0Pwo+ID4gPiBOb3BlLiBJIHRoaW5rIGlmIHlvdSB3YW50IHRoaXMgd2l0
aG91dCBzb21lIGxhcmdlIHNjYWxlIHJld3JpdGUgb2YgYQo+ID4gPiBsb3Qgb2YgY29kZSB3ZSdk
IG5lZWQgYSB2bW9wcy0+Z2V0X2RtYWJ1ZiBvciBzaW1pbGFyLiBOb3QgcHJldHR5LCBidXQKPiA+
ID4gd291bGQgZ2V0IHRoZSBqb2IgZG9uZS4KPiA+Cj4gPiBZZWFoLCBhZ3JlZSB0aGF0IHNvdW5k
cyBsaWtlIHRoZSBzaW1wbGVzdCBhcHByb2FjaC4KPgo+IEkgZG9uJ3QgdGhpbmsgdGhhdCB3aWxs
IGZseSwgaXQgaXMgY2xlYXJseSBvbmx5IHBhcGVyaW5nIG92ZXIgYSBtZXNzCj4gaW5zaWRlIERS
TS9kbWEgYnVmIDpcCgpkbWEtYnVmIHN0YXJ0ZWQgb3V0IGFzIHNvbWV0aGluZyB0byBwYXBlciBv
dmVyIHRoZSBkaXNqb2ludCBtZXNzIG9mCmFsbG9jYXRvcnMsIHNpbmNlIGl0IHdhcyBwcmV0dHkg
Y2xlYXIgdG8gYW55b25lIGludm9sdmVkIHdlJ3JlIG5vdApnb2luZyB0byB1bmlmeSB0aGVtIGFu
eXRpbWUgc29vbiwgaWYgZXZlci4gU28gdGhlIG1lc3MgcHJldHR5IG11Y2ggaXMKYm91bmQgdG8g
c3RheS4KCkkgdGhpbmsgbW9zdCByZWFzb25hYmxlIHRoaW5nIHdvdWxkIGJlIHRvIHRocm93IGEg
Y29tbW9uIHZtb3BzIGluCnRoZXJlIHNvbWVob3csIGJ1dCBldmVuIHRoYXQgbWVhbnMgc29tZSBs
YXJnZSBzY2FsZSBzdXJnZXJ5IGFjcm9zcwpldmVyeSBkcml2ZXIvc3Vic3lzdGVtIGludm9sdmVk
IGluIGRtYS1idWYuIEl0IHdvdWxkbid0IHVuaWZ5CmFueXRoaW5nLCBhbGwgaXQgd291bGQgZ2l2
ZSB5b3UgaXMgYSBjb25zdGFudCB2bWEtPnZtX29wcyB0byBkbyBzb21lCmtpbmQgb2YgdXBjYXN0
aW5nLiBBbmQgdGhhdCB3b3VsZCBzdGlsbCBvbmx5IGdpdmUgeW91IGEgc2xpZ2h0bHkgbGVzcwpv
cGFxdWUgcG9pbnRlciB3aXRoIGEgY2FsbGJhY2sgdG8gdXBjYXN0IHRvIGEgZG1hLWJ1ZiBpbiBz
b21lCmRyaXZlci9zdWJzeXN0ZW0gc3BlY2lmaWMgd2F5LgotRGFuaWVsCi0tIApEYW5pZWwgVmV0
dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZnds
bC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
