Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CC10D1FF505
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:43:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC0F066539
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 14:43:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DCFC366576; Thu, 18 Jun 2020 14:43:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B8916653E;
	Thu, 18 Jun 2020 14:42:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ACC236652F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 14:42:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9FD356653E; Thu, 18 Jun 2020 14:42:41 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 678996652F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 14:42:40 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id h5so6356971wrc.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 07:42:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=pdYzXGFouE6m4FSIkgrBziaqe3C5lzqdVFEvi65td6k=;
 b=MLvs/jpJfxgw7P2y49W7Xnue0ulcPLLTpwiKqz67rPYMpuwyvszMS7sNG3FSv76WxV
 UhZnn4hwMW6LCwP+ba1Tz732TGfQZWB5zeDTLhxjUIaL/lawh37QQVeUX5qO5ggWdpqR
 lsRGem3PL6IYqTGQqz1IXx+kKEqvcvcoKKEX6gzRsqNoUCZc+J3NOxo14nVL2PzPEPg4
 oZPDNwuz8rz7sjsI07iyhDoSNCdJUpxGMtDSqVeyZmwJpSumZBQUGWJLmRFnUlJnW7m9
 D204P1wsZyp9oOjpBiMpOjh/t82bwPTZrWg3irZv867kdVD1TCmBotikKU9cfLGYuGew
 535Q==
X-Gm-Message-State: AOAM530g2MO47JzM9mph8yiG0ITEIcGRiYXscx8cgaiREh4+wtxN0M0b
 VGtuTXXwGni7VVeziUbmYds/tw==
X-Google-Smtp-Source: ABdhPJxnVXjNFjlZjZjkcFFWafgkcwR6ZwnMtNAx31PJPXgT9P8/Pv/85bqfzuCJe/q/lkXd/e/Xbg==
X-Received: by 2002:adf:cf0c:: with SMTP id o12mr4325124wrj.265.1592491359458; 
 Thu, 18 Jun 2020 07:42:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g25sm3649693wmh.18.2020.06.18.07.42.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 07:42:38 -0700 (PDT)
Date: Thu, 18 Jun 2020 16:42:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200618144236.GR20149@phenom.ffwll.local>
Mail-Followup-To: Jason Gunthorpe <jgg@ziepe.ca>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
 <20200616120719.GL20149@phenom.ffwll.local>
 <20200616145312.GC6578@ziepe.ca>
 <CAKMK7uER6ax1zr14xYLKqDfDZp+ycBsY9Yx7JaVkKQ849VfSPg@mail.gmail.com>
 <20200617152940.GG6578@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617152940.GG6578@ziepe.ca>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
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

T24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMTI6Mjk6NDBQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIFdlZCwgSnVuIDE3LCAyMDIwIGF0IDA5OjU3OjU0QU0gKzAyMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gCj4gPiA+IEF0IHRoZSB2ZXJ5IGxlYXN0IEkgdGhpbmsgdGhlcmUg
c2hvdWxkIGJlIHNvbWUgYmlnIHdhcm5pbmcgdGhhdAo+ID4gPiBkbWFfZmVuY2UgaW4gbm90aWZp
ZXJzIHNob3VsZCBiZSBhdm9pZGVkLgo+ID4gCj4gPiBZZWFoIEknbSB3b3JraW5nIG9uIGRvY3Vt
ZW50YXRpb24sIGFuZCBhbHNvIHRoZSBub3RpZmllcnMgaGVyZQo+ID4gaG9wZWZ1bGx5IG1ha2Ug
aXQgY2xlYXIgaXQncyBtYXNzaXZlIHBhaW4uIEkgdGhpbmsgd2UgY291bGQgZXZlbiBtYWtlCj4g
PiBhIGhhcmQgcnVsZSB0aGF0IGRtYV9mZW5jZSBpbiBtbXUgbm90aWZpZXIgb3V0c2lkZSBvZiBk
cml2ZXJzL2dwdSBpcyBhCj4gPiBidWcvbWlzZmVhdHVyZS4KPiAKPiBZZXAhCj4KPiA+IE1pZ2h0
IGJlIGEgZ29vZCBpZGVhIHRvIGFkZCBhIE1BSU5UQUlORVJTIGVudHJ5IHdpdGggYSBLOiByZWdl
eAo+ID4gcGF0dGVybiwgc28gdGhhdCB5b3UgY2FuIGNhdGNoIHN1Y2ggbW9kaWZpZXJzLiBXZSBk
byBhbHJlYWR5IGhhdmUgc3VjaAo+ID4gYSBwYXR0ZXJuIGZvciBkbWEtZmVuY2UsIHRvIGNhdGNo
IGFidXNlLiBTbyBpZiB5b3Ugd2FudCBJIGNvdWxkIHR5cGUKPiA+IHVwIGEgZG9jdW1lbnRhdGlv
biBwYXRjaCBmb3IgdGhpcywgZ2V0IHlvdXIgYW5kIG90aGVycyBhY2tzIGFuZCB0aGUKPiA+IGRy
aS1kZXZlbCBmb2xrcyB3b3VsZCBlbmZvcmNlIHRoYXQgdGhlIGRtYV9mZW5jZV93YWl0IG1hZG5l
c3MgZG9lc24ndAo+ID4gbGVhayBiZXlvbmQgZHJpdmVycy9ncHUKPiAKPiBJdCBzZWVtcyBsaWtl
IHRoZSBiZXN0IHRoaW5nCgpKdXN0IHRob3VnaHQgYWJvdXQgd2hlcmUgdG8gYmVzdCBwdXQgdGhp
cywgYW5kIEkgdGhpbmsgaW5jbHVkaW5nIGl0IGFzCmFub3RoZXIgcGFyYWdyYXBoIGluIHRoZSBu
ZXh0IHJvdW5kIG9mIHRoaXMgc2VyaWVzIG1ha2VzIHRoZSBtb3N0IHNlbnNlLgpZb3UnbGwgZ2V0
IGNjJ2VkIGZvciBhY2tpbmcgd2hlbiB0aGF0IGhhcHBlbnMgLSBtaWdodCB0YWtlIGEgd2hpbGUg
c2luY2UKdGhlcmUncyBhIGxvdCBvZiBkZXRhaWxzIGhlcmUgYWxsIG92ZXIgdG8gc29ydCBvdXQu
Ci1EYW5pZWwKCj4gIAo+ID4gT2RlZCBoYXMgYWdyZWVkIHRvIHJlbW92ZSB0aGUgZG1hLWZlbmNl
IHVzYWdlLCBzaW5jZSB0aGV5IHJlYWxseSBkb24ndAo+ID4gbmVlZCBpdCAoYW5kIGFsbCB0aGUg
YmFnZ2FnZSB0aGF0IGNvbWVzIHdpdGggaXQpLCBwbGFpbiBvbGQgY29tcGxldGlvbgo+ID4gaXMg
ZW5vdWdoIGZvciB0aGVpciB1c2UuIFRoaXMgdXNlIGlzIGFsc28gd2h5IEkgYWRkZWQgdGhlIHJl
Z2V4IHRvCj4gPiBNQUlOVEFJTkVSUywgc28gdGhhdCBpbiB0aGUgZnV0dXJlIHdlIGNhbiBjYXRj
aCBwZW9wbGUgd2hvIHRyeSB0byB1c2UKPiA+IGRtYV9mZW5jZSBiZWNhdXNlIGl0IGxvb2tzIGN1
dGUgYW5kIHVzZWZ1bCwgYW5kIGFyZSBjb21wbGV0ZWx5Cj4gPiBvYmxpdmlvdXMgdG8gYWxsIHRo
ZSBwYWluIGFuZCBoZWFkYWNoZXMgaW52b2x2ZWQuCj4gCj4gVGhpcyBpcyBnb29kIQo+IAo+IFRo
YW5rcywKPiBKYXNvbiAKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
