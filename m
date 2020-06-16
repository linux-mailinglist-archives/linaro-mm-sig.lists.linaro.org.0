Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 070311FAFDF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2020 14:08:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D8F966588
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2020 12:08:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7606561810; Tue, 16 Jun 2020 12:08:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 317046171A;
	Tue, 16 Jun 2020 12:07:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EA9116099C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 12:07:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D324D6171A; Tue, 16 Jun 2020 12:07:24 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 4959D6099C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 12:07:23 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id t194so2791551wmt.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 05:07:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=NYym/pSqjIIqScGqLo5Ww0j4iD30dp97jCKjhc4AWYU=;
 b=R7l+ev5JE5mcVz9Yqmi9KsPODa2kWS7c/RTMIWv4LpMpd4sUA8mEPWc1LLjsHtZcdZ
 2ELZj1d1TsSn0omEmrPrOXu0EcVoJeWJ7SQbY70xihkenPKh+8vXfBRWcWD75mZS3hm+
 oKqPDyG87ekP3/Eldt5LpuWNbYO4ref2amrI1u8Q+5VdwGAlGIeq2kxsKAHGQ+8NL2g4
 4u97ng2XM33m3T75vkR3F5RtQ7S1kx29raziinPJnFZPEkF7RLrwhahy/fe7Y0zrdZLO
 GgInrifuNCJ8vV0gstc65lAp3scWZbmqxbtduuyqCgBDVB32QhN2zo/q4V+sE8WRKR54
 ti1w==
X-Gm-Message-State: AOAM532G9ToELOXaZYIN+n+J58rDVPNQY0+H5eDsKawr/VCoHmEcs00K
 nE1JXm0RjD2U6CT8MzbJDKuE7w==
X-Google-Smtp-Source: ABdhPJzmf+2Tj55YA8oon0+fo0R23Li5LnD45uflCXtBTtCgHH7dL0b7di5HNdwrzpMTAQLZ6BjvLA==
X-Received: by 2002:a05:600c:2116:: with SMTP id
 u22mr2832332wml.97.1592309242285; 
 Tue, 16 Jun 2020 05:07:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a15sm28830028wra.86.2020.06.16.05.07.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 05:07:21 -0700 (PDT)
Date: Tue, 16 Jun 2020 14:07:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200616120719.GL20149@phenom.ffwll.local>
Mail-Followup-To: Jason Gunthorpe <jgg@ziepe.ca>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611141515.GW6578@ziepe.ca>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-media@vger.kernel.org
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

SGkgSmFzb24sCgpTb21laG93IHRoaXMgZ290IHN0dWNrIHNvbWV3aGVyZSBpbiB0aGUgbWFpbCBx
dWV1ZXMsIG9ubHkgcG9wcGVkIHVwIGp1c3QKbm93IC4uLgoKT24gVGh1LCBKdW4gMTEsIDIwMjAg
YXQgMTE6MTU6MTVBTSAtMDMwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOgo+IE9uIFRodSwgSnVu
IDExLCAyMDIwIGF0IDEwOjM0OjMwQU0gKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+
IEkgc3RpbGwgaGF2ZSBteSBkb3VidHMgYWJvdXQgYWxsb3dpbmcgZmVuY2Ugd2FpdGluZyBmcm9t
IHdpdGhpbiBzaHJpbmtlcnMuCj4gPiA+IElNTyBpZGVhbGx5IHRoZXkgc2hvdWxkIHVzZSBhIHRy
eXdhaXQgYXBwcm9hY2gsIGluIG9yZGVyIHRvIGFsbG93IG1lbW9yeQo+ID4gPiBhbGxvY2F0aW9u
IGR1cmluZyBjb21tYW5kIHN1Ym1pc3Npb24gZm9yIGRyaXZlcnMgdGhhdAo+ID4gPiBwdWJsaXNo
IGZlbmNlcyBiZWZvcmUgY29tbWFuZCBzdWJtaXNzaW9uLiAoU2luY2UgZWFybHkgcmVzZXJ2YXRp
b24gb2JqZWN0Cj4gPiA+IHJlbGVhc2UgcmVxdWlyZXMgdGhhdCkuCj4gPiAKPiA+IFllYWggaXQg
aXMgYSBiaXQgYW5ub3lpbmcsIGUuZy4gZm9yIGRybS9zY2hlZHVsZXIgSSB0aGluayB3ZSdsbCBl
bmQgdXAKPiA+IHdpdGggYSBtZW1wb29sIHRvIG1ha2Ugc3VyZSBpdCBjYW4gaGFuZGxlIGl0J3Mg
YWxsb2NhdGlvbnMuCj4gPiAKPiA+ID4gQnV0IHNpbmNlIGRyaXZlcnMgYXJlIGFscmVhZHkgd2Fp
dGluZyBmcm9tIHdpdGhpbiBzaHJpbmtlcnMgYW5kIEkgdGFrZSB5b3VyCj4gPiA+IHdvcmQgZm9y
IEhNTSByZXF1aXJpbmcgdGhpcywKPiA+IAo+ID4gWWVhaCB0aGUgYmlnIHRyb3VibGUgaXMgSE1N
IGFuZCBtbXUgbm90aWZpZXJzLiBUaGF0J3MgdGhlIHJlYWxseSBhd2t3YXJkCj4gPiBvbmUsIHRo
ZSBzaHJpbmtlciBvbmUgaXMgYSBsb3QgbGVzcyBlc3RhYmxpc2hlZC4KPiAKPiBJIHJlYWxseSBx
dWVzdGlvbiBpZiBIVyB0aGF0IG5lZWRzIHNvbWV0aGluZyBsaWtlIERNQSBmZW5jZSBzaG91bGQK
PiBldmVuIGJlIHVzaW5nIG1tdSBub3RpZmllcnMgLSB0aGUgYmVzdCB1c2UgaXMgSFcgdGhhdCBj
YW4gZmVuY2UgdGhlCj4gRE1BIGRpcmVjdGx5IHdpdGhvdXQgaGF2aW5nIHRvIGdldCBpbnZvbHZl
ZCB3aXRoIHNvbWUgY29tbWFuZCBzdHJlYW0KPiBwcm9jZXNzaW5nLgo+IAo+IE9yIGF0IHRoZSB2
ZXJ5IGxlYXN0IGl0IHNob3VsZCBub3QgYmUgYSBnZW5lcmljIERNQSBmZW5jZSBidXQgYQo+IG5h
cnJvd2VkIGNvbXBsZXRpb24gdGllZCBvbmx5IGludG8gdGhlIHNhbWUgR1BVIGRyaXZlcidzIGNv
bW1hbmQKPiBjb21wbGV0aW9uIHByb2Nlc3Npbmcgd2hpY2ggc2hvdWxkIGJlIGFibGUgdG8gcHJv
Z3Jlc3Mgd2l0aG91dAo+IGJsb2NraW5nLgoKVGhlIHByb2JsZW0gd2l0aCBncHVzIGlzIHRoYXQg
dGhlc2UgY29tcGxldGlvbnMgbGVhayBhY3Jvc3MgdGhlIGJvYXJkIGxpa2UKbWFkLiBCb3RoIGlu
dGVybmFsbHkgd2l0aGluIG1lbW9yeSBtYW5hZ2VycyAobWFkZSBhIGxvdCB3b3JzZSB3aXRoIHAy
cApkaXJlY3QgYWNjZXNzIHRvIHZyYW0pLCBhbmQgdGhyb3VnaCB1YXBpLgoKTWFueSBncHVzIHN0
aWxsIGhhdmUgYSB2ZXJ5IGhhcmQgdGltZSBwcmVlbXB0aW5nLCBzbyBkb2luZyBhbiBvdmVyYWxs
CnN3aXRjaCBpbiBkcml2ZXJzL2dwdSB0byBhIG1lbW9yeSBtYW5hZ2VtZW50IG1vZGVsIHdoZXJl
IHRoYXQgaXMgcmVxdWlyZWQKaXMgbm90IGEgdmVyeSByZWFsaXN0aWMgb3B0aW9uLiAgQW5kIG1p
bmltYWxseSB5b3UgbmVlZCBlaXRoZXIgcHJlZW1wdAooc3RpbGwgdGFrZXMgYSB3aGlsZSwgYnV0
IGEgbG90IGZhc3RlciBnZW5lcmFsbHkgdGhhbiB3YWl0aW5nIGZvciB3b3JrIHRvCmNvbXBsZXRl
KSBvciBodyBmYXVsdHMgKGp1c3QgYSBidW5jaCBvZiB0bGIgZmx1c2hlcyBwbHVzIHZpcnR1YWwg
aW5kZXhlZApjYWNoZXMsIHNvIGp1c3QgdGhlIGNhdmVhdCBvZiB0aGF0IGZvciBhIGdwdSwgd2hp
Y2ggaGFzIGxvdHMgYW5kIGJpZyB0bGJzCmFuZCBjYWNoZXMpLiBTbyBwcmV2ZW50aW5nIHRoZSBj
b21wbGV0aW9uIGxlYWtzIHdpdGhpbiB0aGUga2VybmVsIGlzIEkKdGhpbmsgdW5yZWFsaXN0aWMs
IGV4Y2VwdCBpZiB3ZSBqdXN0IHNheSAid2VsbCBzb3JyeSwgcnVuIG9uIHdpbmRvd3MsCm1rYXki
IGZvciBtYW55IGdwdSB3b3JrbG9hZHMuIE9yIG1vcmUgcmVhbGlzdGljICJ3ZWxsIHNvcnJ5LCBy
dW4gb24gdGhlCm52aWRpYSBibG9iIHdpdGggbnZpZGlhIGh3Ii4KClRoZSB1c2Vyc3BhY2Ugc2lk
ZSB3ZSBjYW4gc29tZXdoYXQgaXNvbGF0ZSwgYXQgbGVhc3QgZm9yIHB1cmUgY29tcHV0ZQp3b3Jr
bG9hZHMuIEJ1dCB0aGUgdGhpbmcgaXMgZHJpdmVycy9ncHUgaXMgYSBjb250aW51bSBmcm9tIHRp
bnkgc29jcwood2hlcmUgZG1hX2ZlbmNlIGlzIGEgdmVyeSBuaWNlIG1vZGVsKSB0byBodWdlIGNv
bXB1dGUgc3R1ZmYgKHdoZXJlIGl0J3MKbWF5YmUgbm90IHRoZSBuaWNlc3QsIGJ1dCBoZXkgaHcg
c3Vja3Mgc28gc3RpbGwgbmVlZWRlZCkuIERvaW5nIGZ1bGwgb24KYnJlYWsgaW4gdWFwaSBzb21l
d2hlcmUgaW4gdGhlcmUgaXMgYXQgbGVhc3QgYSBiaXQgYXdrd2FyZCwgZS5nLiBzb21lIG9mCnRo
ZSBtZWRpYSBjb2RlYyBjb2RlIG9uIGludGVsIHJ1bnMgYWxsIHRoZSB3YXkgZnJvbSB0aGUgc21h
bGxlc3QgaW50ZWwgc29jCnRvIHRoZSBiaWcgdHJhbnNjb2RlIHNlcnZlcnMuCgpTbyB0aGUgY3Vy
cmVudCBzdGF0dXMgcXVvIGlzICJ0b3RhbCBtZXNzLCBldmVyeSBkcml2ZXIgZGVmaW5lcyB0aGVp
ciBvd24KcnVsZXMiLiBBbGwgSSdtIHRyeWluZyB0byBkbyBpcyBzb21lIGNvbW1vbiBydWxlcyBo
ZXJlLCBkbyBtYWtlIHRoaXMgbWVzcwpzbGlnaHRseSBtb3JlIG1hbmFnZWFibGUgYW5kIG92ZXJh
bGwgcmV2aWV3YWJsZSBhbmQgdGVzdGFibGUuCgpJIGhhdmUgbm8gaWxsdXNpb25zIHRoYXQgdGhp
cyBpcyBmdW5kYW1lbnRhbGx5IHByZXR0eSBob3JyaWJsZSwgYW5kIHRoZQpsZWZ0b3ZlciB3aWdn
bGUgcm9vbSBmb3Igd3JpdGluZyBtZW1vcnkgbWFuYWdlciBpcyBiYXJlbHkgbW9yZSB0aGFuIGEK
aGFpcmxpbmUuIEp1c3Qgbm90IHNlZWluZyBob3cgb3RoZXIgb3B0aW9ucyBhcmUgYmV0dGVyLgoK
PiBUaGUgaW50ZW50IG9mIG5vdGlmaWVycyB3YXMgbmV2ZXIgdG8gZW5kbGVzc2x5IGJsb2NrIHdo
aWxlIHZhc3QKPiBhbW91bnRzIG9mIFNXIGRvZXMgd29yay4KPiAKPiBHb2luZyBhcm91bmQgYW5k
IHN3aXRjaGluZyBldmVyeXRoaW5nIGluIGEgR1BVIHRvIEdGUF9BVE9NSUMgc2VlbXMKPiBsaWtl
IGJhZCBpZGVhLgoKSXQncyBub3QgZXZlcnlvbmUsIG9yIGF0IGxlYXN0IG5vdCBldmVyeXdoZXJl
LCBpdCdzIHNvbWUgZmFpcmx5IGxpbWl0ZWQKY2FzZXMuIEFsc28sIGV2ZW4gaWYgd2UgZHJvcCB0
aGUgbW11X25vdGlmaWVyIG9uIHRoZSBmbG9vciwgdGhlbiB3ZSdyZQpzdHVjayB3aXRoIHNocmlu
a2VycyBhbmQgR0ZQX05PRlMuIFN0aWxsIG5lZWQgYSBtZW1wb29sIG9mIHNvbWUgc29ydHMgdG8K
Z3VhcmFudGVlIHlvdSBnZXQgb3V0IG9mIGEgYmluZCwgc28gbm90IG11Y2ggYmV0dGVyLgoKQXQg
bGVhc3QgdGhhdCdzIG15IGN1cnJlbnQgdW5kZXJzdGFuZGluZyBvZiB3aGVyZSB3ZSBhcmUgYWNy
b3NzIGFsbApkcml2ZXJzLgoKPiA+IEkndmUgcGluZ2VkIGEgYnVuY2ggb2YgYXJtc29jIGdwdSBk
cml2ZXIgcGVvcGxlIGFuZCBhc2sgdGhlbSBob3cgbXVjaCB0aGlzCj4gPiBodXJ0cywgc28gdGhh
dCB3ZSBoYXZlIGEgY2xlYXIgYW5zd2VyLiBPbiB4ODYgSSBkb24ndCB0aGluayB3ZSBoYXZlIG11
Y2gKPiA+IG9mIGEgY2hvaWNlIG9uIHRoaXMsIHdpdGggdXNlcnB0ciBpbiBhbWQgYW5kIGk5MTUg
YW5kIGhtbSB3b3JrIGluIG5vdXZlYXUKPiA+IChidXQgbm91dmVhdSBJIHRoaW5rIGRvZXNuJ3Qg
dXNlIGRtYV9mZW5jZSBpbiB0aGVyZSkuIAo+IAo+IFJpZ2h0LCBub3Igd2lsbCBSRE1BIE9EUC4g
CgpIbSwgd2hhdCdzIHRoZSBjb250ZXh0IGhlcmU/IEkgdGhvdWdodCBSRE1BIHNpZGUgeW91IHJl
YWxseSBkb24ndCB3YW50CmRtYV9mZW5jZSBpbiBtbXVfbm90aWZpZXJzLCBzbyBub3QgY2xlYXIg
dG8gbWUgd2hhdCB5b3UncmUgYWdyZWVpbmcgb24KaGVyZS4KLURhbmllbAotLSAKRGFuaWVsIFZl
dHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3
bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
