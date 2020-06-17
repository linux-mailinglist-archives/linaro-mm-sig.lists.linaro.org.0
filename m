Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C102A1FC814
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2020 09:59:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E592761808
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2020 07:59:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D6EB0664F9; Wed, 17 Jun 2020 07:59:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 524A0618B2;
	Wed, 17 Jun 2020 07:58:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 32F7761808
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 07:58:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1F13960E41; Wed, 17 Jun 2020 07:58:26 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by lists.linaro.org (Postfix) with ESMTPS id 1A6EF60E41
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 07:58:06 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id a21so986133oic.8
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 00:58:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X+Qtu+2ZAyZXkh/oo1Lz6E9/PFmVPHRpkYwfH9QQzoY=;
 b=clTTSKANOdBbVtRfGhLpa/XqP2pCez9GgwnoZBZjqPoQgDA3TB9MF7FKNMDAuChbnB
 gRnVUeK1HNrAsJ3ajriXtJM/32svU1w7dPUVhqFI5aa27ahTBUjhHc5wCEh4km3Zn7x7
 o6mxRgrVLArDG4oyLS4IJrf10sPboaTX3m/sfuiGWlYRyb2lnnltED+Rr7xngGFmtFl8
 Kp07Bx5+7/GNLvG59Bp7j+ucFUluaUlwdh+eeR8lugljAPz16SzJBclaN1+eMiPT2yEg
 9btfzGi2Uorf359m/4Zh6gqHpWCJH5tAvWqkyZCUsqC4H+6gPzzcE7Sy5LH8TtvSKgan
 o2UA==
X-Gm-Message-State: AOAM5333uuLCDBIF7Nz/kwM8QXj+skMqQUCdpEm3GPKv3YxL3qGhkyM+
 8t9OgzejtyQ3Y1Ckp/7Bd88Yqh12UvbX+3xpTk9Icg==
X-Google-Smtp-Source: ABdhPJyg/qc6FJuRZYZqNNd5IMYVmnKGSrITOouFVSzC2Mh6TfEGJcQ4YwgOLOvW4cWrgZZvjXq69o3dCj+ez8idqyo=
X-Received: by 2002:aca:ed42:: with SMTP id l63mr6006514oih.101.1592380685425; 
 Wed, 17 Jun 2020 00:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local> <20200611141515.GW6578@ziepe.ca>
 <20200616120719.GL20149@phenom.ffwll.local> <20200616145312.GC6578@ziepe.ca>
In-Reply-To: <20200616145312.GC6578@ziepe.ca>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 17 Jun 2020 09:57:54 +0200
Message-ID: <CAKMK7uER6ax1zr14xYLKqDfDZp+ycBsY9Yx7JaVkKQ849VfSPg@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime lockdep
	annotations
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

T24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgOToyNyBBTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVw
ZS5jYT4gd3JvdGU6Cj4KPiBPbiBUdWUsIEp1biAxNiwgMjAyMCBhdCAwMjowNzoxOVBNICswMjAw
LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gPiA+IEkndmUgcGluZ2VkIGEgYnVuY2ggb2YgYXJt
c29jIGdwdSBkcml2ZXIgcGVvcGxlIGFuZCBhc2sgdGhlbSBob3cgbXVjaCB0aGlzCj4gPiA+ID4g
aHVydHMsIHNvIHRoYXQgd2UgaGF2ZSBhIGNsZWFyIGFuc3dlci4gT24geDg2IEkgZG9uJ3QgdGhp
bmsgd2UgaGF2ZSBtdWNoCj4gPiA+ID4gb2YgYSBjaG9pY2Ugb24gdGhpcywgd2l0aCB1c2VycHRy
IGluIGFtZCBhbmQgaTkxNSBhbmQgaG1tIHdvcmsgaW4gbm91dmVhdQo+ID4gPiA+IChidXQgbm91
dmVhdSBJIHRoaW5rIGRvZXNuJ3QgdXNlIGRtYV9mZW5jZSBpbiB0aGVyZSkuCj4gPiA+Cj4gPiA+
IFJpZ2h0LCBub3Igd2lsbCBSRE1BIE9EUC4KPiA+Cj4gPiBIbSwgd2hhdCdzIHRoZSBjb250ZXh0
IGhlcmU/IEkgdGhvdWdodCBSRE1BIHNpZGUgeW91IHJlYWxseSBkb24ndCB3YW50Cj4gPiBkbWFf
ZmVuY2UgaW4gbW11X25vdGlmaWVycywgc28gbm90IGNsZWFyIHRvIG1lIHdoYXQgeW91J3JlIGFn
cmVlaW5nIG9uCj4gPiBoZXJlLgo+Cj4gcmRtYSBkb2VzIG5vdCB1c2UgZG1hX2ZlbmNlIGF0IGFs
bCwgYW5kIHRob3VnaCBpdCBpcyBoYXJkIHRvIHRlbGwsIEkKPiBkaWRuJ3Qgbm90aWNlIGEgZG1h
X2ZlbmNlIGluIHRoZSBub3V2ZWF1IGludmFsaWRhdGlvbiBjYWxsIHBhdGguCgpOb3V2ZWF1IGZv
ciBjb21wdXRlIGhhcyBodyBwYWdlIGZhdWx0cy4gSXQgZG9lc24ndCBoYXZlIGh3IHBhZ2UgZmF1
bHRzCmZvciBub24tY29tcHV0ZSBmaXhlZCBmdW5jdGlvbiBibG9ja3MgYWZhaWssIHNvIHRoZXJl
J3MgYSBoeWJyaWQgbW9kZWwKZ29pbmcgb24uIEJ1dCBub3V2ZWF1IGFsc28gZG9lc24ndCBzdXBw
b3J0IHVzZXJzcGFjZSBtZW1vcnkgKGluc3RlYWQKb2YgZHJpdmVyLWFsbG9jYXRlZCBidWZmZXIg
b2JqZWN0cykgZm9yIHRoZXNlIGZpeGVkIGZ1bmN0aW9uIGJsb2NrcywKc28gbm8gbmVlZCB0byBo
YXZlIGEgZG1hX2ZlbmNlX3dhaXQgaW4gdGhlcmUuCgo+IEF0IHRoZSB2ZXJ5IGxlYXN0IEkgdGhp
bmsgdGhlcmUgc2hvdWxkIGJlIHNvbWUgYmlnIHdhcm5pbmcgdGhhdAo+IGRtYV9mZW5jZSBpbiBu
b3RpZmllcnMgc2hvdWxkIGJlIGF2b2lkZWQuCgpZZWFoIEknbSB3b3JraW5nIG9uIGRvY3VtZW50
YXRpb24sIGFuZCBhbHNvIHRoZSBub3RpZmllcnMgaGVyZQpob3BlZnVsbHkgbWFrZSBpdCBjbGVh
ciBpdCdzIG1hc3NpdmUgcGFpbi4gSSB0aGluayB3ZSBjb3VsZCBldmVuIG1ha2UKYSBoYXJkIHJ1
bGUgdGhhdCBkbWFfZmVuY2UgaW4gbW11IG5vdGlmaWVyIG91dHNpZGUgb2YgZHJpdmVycy9ncHUg
aXMgYQpidWcvbWlzZmVhdHVyZS4KCk1pZ2h0IGJlIGEgZ29vZCBpZGVhIHRvIGFkZCBhIE1BSU5U
QUlORVJTIGVudHJ5IHdpdGggYSBLOiByZWdleApwYXR0ZXJuLCBzbyB0aGF0IHlvdSBjYW4gY2F0
Y2ggc3VjaCBtb2RpZmllcnMuIFdlIGRvIGFscmVhZHkgaGF2ZSBzdWNoCmEgcGF0dGVybiBmb3Ig
ZG1hLWZlbmNlLCB0byBjYXRjaCBhYnVzZS4gU28gaWYgeW91IHdhbnQgSSBjb3VsZCB0eXBlCnVw
IGEgZG9jdW1lbnRhdGlvbiBwYXRjaCBmb3IgdGhpcywgZ2V0IHlvdXIgYW5kIG90aGVycyBhY2tz
IGFuZCB0aGUKZHJpLWRldmVsIGZvbGtzIHdvdWxkIGVuZm9yY2UgdGhhdCB0aGUgZG1hX2ZlbmNl
X3dhaXQgbWFkbmVzcyBkb2Vzbid0CmxlYWsgYmV5b25kIGRyaXZlcnMvZ3B1Cgo+IEllIGl0IGlz
IHN0cmFuZ2UgdGhhdCB0aGUgbmV3IHRvdGFsbHktbm90LWEtZ3B1IGRyaXZlcnMgdXNlIGRtYV9m
ZW5jZSwKPiB0aGV5IHN1cmVseSBkb24ndCBoYXZlIHRoZSBzYW1lIGNvbnN0cmFpbnRzIGFzIHRo
ZSBleGlzdGluZyBHUFUgd29ybGQsCj4gYW5kIGl0IHdvdWxkIGJlIGFubm95aW5nIHRvIHNlZSBk
bWFfZmVuY2Ugbm90aWZpZXJzIHNwcmluZyB1cCBpbiB0aGVtCgpJZiB5b3UgbWVhbiBkcml2ZXJz
L21pc2MvaGFiYW5hbGFicywgdGhhdCdzIGdvaW5nIHRvIGdldCB0YWtlbiBjYXJlIG9mOgoKCmNv
bW1pdCBlZDY1YmZkOWZkODZkZWMzNzcyNTcwYjAzMjBjYTg1YjlmYjY5ZjJlCkF1dGhvcjogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KRGF0ZTogICBNb24gTWF5IDExIDEx
OjExOjQyIDIwMjAgKzAyMDAKCiAgICBoYWJhbmFsYWJzOiBkb24ndCBzZXQgZGVmYXVsdCBmZW5j
ZV9vcHMtPndhaXQKCiAgICBJdCdzIHRoZSBkZWZhdWx0LgoKICAgIEFsc28gc28gbXVjaCBmb3Ig
IndlJ3JlIG5vdCBnb2luZyB0byB0ZWxsIHRoZSBncmFwaGljcyBwZW9wbGUgaG93IHRvCiAgICBy
ZXZpZXcgdGhlaXIgY29kZSIsIGRtYV9mZW5jZSBpcyBhIHByZXR0eSBjb3JlIHBpZWNlIG9mIGdw
dSBkcml2ZXIKICAgIGluZnJhc3RydWN0dXJlLiBBbmQgaXQncyB2ZXJ5IG11Y2ggdWFwaSByZWxl
dmFudCwgaW5jbHVkaW5nIHBpbGVzIG9mCiAgICBjb3JyZXNwb25kaW5nIHVzZXJzcGFjZSBwcm90
b2NvbHMgYW5kIGxpYnJhcmllcyBmb3IgaG93IHRvIHBhc3MgdGhlc2UKICAgIGFyb3VuZC4KCiAg
ICBXb3VsZCBiZSBncmVhdCBpZiBoYWJhbmFsYWJzIHdvdWxkIG5vdCB1c2UgdGhpcyAoZnJvbSBh
IHF1aWNrIGxvb2sKICAgIGl0J3Mgbm90IG5lZWRlZCBhdCBhbGwpLCBzaW5jZSBvcGVuIHNvdXJj
ZSB0aGUgdXNlcnNwYWNlIGFuZCBwbGF5aW5nCiAgICBieSB0aGUgdXN1YWwgcnVsZXMgaXNuJ3Qg
b24gdGhlIHRhYmxlLiBJZiB0aGF0J3Mgbm90IHBvc3NpYmxlIChiZWNhdXNlCiAgICBpdCdzIGFj
dHVhbGx5IHVzaW5nIHRoZSB1YXBpIHBhcnQgb2YgZG1hX2ZlbmNlIHRvIGludGVyYWN0IHdpdGgg
Z3B1CiAgICBkcml2ZXJzKSB0aGVuIHdlIGhhdmUgZXhhY3RseSB3aGF0IGV2ZXJ5b25lIHByb21p
c2VkIHdlJ2Qgd2FudCB0bwogICAgYXZvaWQuCgogICAgU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CiAgICBSZXZpZXdlZC1ieTogT2RlZCBHYWJi
YXkgPG9kZWQuZ2FiYmF5QGdtYWlsLmNvbT4KICAgIFNpZ25lZC1vZmYtYnk6IE9kZWQgR2FiYmF5
IDxvZGVkLmdhYmJheUBnbWFpbC5jb20+CgpPZGVkIGhhcyBhZ3JlZWQgdG8gcmVtb3ZlIHRoZSBk
bWEtZmVuY2UgdXNhZ2UsIHNpbmNlIHRoZXkgcmVhbGx5IGRvbid0Cm5lZWQgaXQgKGFuZCBhbGwg
dGhlIGJhZ2dhZ2UgdGhhdCBjb21lcyB3aXRoIGl0KSwgcGxhaW4gb2xkIGNvbXBsZXRpb24KaXMg
ZW5vdWdoIGZvciB0aGVpciB1c2UuIFRoaXMgdXNlIGlzIGFsc28gd2h5IEkgYWRkZWQgdGhlIHJl
Z2V4IHRvCk1BSU5UQUlORVJTLCBzbyB0aGF0IGluIHRoZSBmdXR1cmUgd2UgY2FuIGNhdGNoIHBl
b3BsZSB3aG8gdHJ5IHRvIHVzZQpkbWFfZmVuY2UgYmVjYXVzZSBpdCBsb29rcyBjdXRlIGFuZCB1
c2VmdWwsIGFuZCBhcmUgY29tcGxldGVseQpvYmxpdmlvdXMgdG8gYWxsIHRoZSBwYWluIGFuZCBo
ZWFkYWNoZXMgaW52b2x2ZWQuCgpDaGVlcnMsIERhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
