Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7669A219A3D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 09:53:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8994766460
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 07:53:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7DD476606D; Thu,  9 Jul 2020 07:53:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE27461697;
	Thu,  9 Jul 2020 07:52:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 65C0560C31
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 07:52:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5191761697; Thu,  9 Jul 2020 07:52:22 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 83DF660C31
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 07:52:20 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r12so1239330wrj.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2020 00:52:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vXgT6RRirIs9vOBxNCexqhs644sbUqmDyiATQNLIZbg=;
 b=HlcqXh4W4yDZRKe1Ykp0c64lTrIBoDqu3eFQXyC8NJivpotGvqFo2bIigy5s7prcu8
 9++c/BKahVLNpD39vsDZwVRKSFG+ATFXkHCQyoCQvJTET3AdLUPuzIP2cdI1LM2cHlHs
 WymC67jPs6kEALxDHkbMyN6MYPBgWWMyl3u9y/Qc4C4wTA1tLJLOeXo34CYuUAScq2MX
 9hcLj6sBVyz7ms0rtKGAaqqdHryToo/09DWmNClxudsrIvkB+Q9gj4fY+r4VykJiS3YN
 D98Vjus1ALQkw55GbDMVCQlv76wYOM+EPUh4xREy7u3uiU901tQigMz7wvXm+246IMwR
 HoXg==
X-Gm-Message-State: AOAM531ch4+dMrTSi0d6MBQuAjR/66Xge3TbnaeKg+tqEhsgNFz2aNxn
 YAbpgePypxYiQ2Yby6dPGQ16/g==
X-Google-Smtp-Source: ABdhPJzMhhfOQP1SZlv1tfEvaf51xgSXmeFIfxfR93qhGPvCNOG/Wm/4jNQxGEgUdKBWYOlZaCggsw==
X-Received: by 2002:a5d:55d1:: with SMTP id i17mr59080956wrw.190.1594281139547; 
 Thu, 09 Jul 2020 00:52:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f16sm3433990wmf.17.2020.07.09.00.52.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jul 2020 00:52:18 -0700 (PDT)
Date: Thu, 9 Jul 2020 09:52:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Daniel Stone <daniel@fooishbar.org>
Message-ID: <20200709075216.GM3278063@phenom.ffwll.local>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-2-daniel.vetter@ffwll.ch>
 <20c0a95b-8367-4f26-d058-1cb265255283@amd.com>
 <CAKMK7uFe7Pz4=UUkkunBms8vUrzwEpWJmScOMLO4KdADM43vnw@mail.gmail.com>
 <CAPj87rNXneE+Vry4aSV11=Qv2mbUsFjCLmNzRmx-Oeqj=u9dyw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPj87rNXneE+Vry4aSV11=Qv2mbUsFjCLmNzRmx-Oeqj=u9dyw@mail.gmail.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 01/25] dma-fence: basic
	lockdep annotations
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

T24gVGh1LCBKdWwgMDksIDIwMjAgYXQgMDg6MzI6NDFBTSArMDEwMCwgRGFuaWVsIFN0b25lIHdy
b3RlOgo+IEhpLAo+IAo+IE9uIFdlZCwgOCBKdWwgMjAyMCBhdCAxNjoxMywgRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JvdGU6Cj4gPiBPbiBXZWQsIEp1bCA4LCAyMDIw
IGF0IDQ6NTcgUE0gQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3
cm90ZToKPiA+ID4gQ291bGQgd2UgbWVyZ2UgdGhpcyBjb250cm9sbGVkIGJ5IGEgc2VwYXJhdGUg
Y29uZmlnIG9wdGlvbj8KPiA+ID4KPiA+ID4gVGhpcyB3YXkgd2UgY291bGQgaGF2ZSB0aGUgY2hl
Y2tzIHVwc3RyZWFtIHdpdGhvdXQgaGF2aW5nIHRvIGZpeCBhbGwgdGhlCj4gPiA+IHN0dWZmIGJl
Zm9yZSB3ZSBkbyB0aGlzPwo+ID4KPiA+IFNpbmNlIGl0J3MgZnVsbHkgb3B0LWluIGFubm90YXRp
b25zIG5vdGhpbmcgYmxvd3MgdXAgaWYgd2UgZG9uJ3QgbWVyZ2UKPiA+IGFueSBhbm5vdGF0aW9u
cy4gU28gd2UgY291bGQgc3RhcnQgbWVyZ2luZyB0aGUgZmlyc3QgMyBwYXRjaGVzLiBBZnRlcgo+
ID4gdGhhdCB0aGUgZnVuIHN0YXJ0cyAuLi4KPiA+Cj4gPiBNeSByb3VnaCBpZGVhIHdhcyB0aGF0
IGZpcnN0IEknZCB0cnkgdG8gdGFja2xlIGRpc3BsYXksIHRodXMgZmFyCj4gPiB0aGVyZSdzIDIg
YWN0dWFsIGlzc3VlcyBpbiBkcml2ZXJzOgo+ID4gLSBhbWRncHUgaGFzIHNvbWUgZG1hX3Jlc3Zf
bG9jayBpbiBjb21taXRfdGFpbCwgcGx1cyBhIGttYWxsb2MuIEkKPiA+IHRoaW5rIHRob3NlIHNo
b3VsZCBiZSBmYWlybHkgZWFzeSB0byBmaXggKEknZCB0cnkgYSBzdGFiIGF0IHRoZW0gZXZlbikK
PiA+IC0gdm13Z2Z4IGhhcyBhIGZ1bGwgb24gbG9ja2luZyBpbnZlcnNpb24gd2l0aCBkbWFfcmVz
dl9sb2NrIGluCj4gPiBjb21taXRfdGFpbCwgYW5kIHRoYXQgb25lIGlzIGZ1bmN0aW9uYWwuIE5v
dCBqdXN0IHJlYWRpbmcgc29tZXRoaW5nCj4gPiB3aGljaCB3ZSBjYW4gc2FmZWx5IGFzc3VtZSB0
byBiZSBpbnZhcmlhbnQgYW55d2F5IChsaWtlIHRoZSB0bXogZmxhZwo+ID4gZm9yIGFtZGdwdSwg
b3Igd2hhdGV2ZXIgaXQgd2FzKS4KPiA+Cj4gPiBJJ3ZlIGRvbmUgYSBwaWxlIG1vcmUgYW5ub3Rh
dGlvbnMgcGF0Y2hlcyBmb3Igb3RoZXIgYXRvbWljIGRyaXZlcnMKPiA+IG5vdywgc28gaG9wZWZ1
bGx5IHRoYXQgZmx1c2hlcyBvdXQgYW55IHJlbWFpbmluZyBvZmZlbmRlcnMgaGVyZS4gU2luY2UK
PiA+IHNvbWUgb2YgdGhlIGFubm90YXRpb25zIGFyZSBpbiBoZWxwZXIgY29kZSB3b3JzdCBjYXNl
IHdlIG1pZ2h0IG5lZWQgYQo+ID4gZGV2LT5tb2RlX2NvbmZpZy5icm9rZW5fYXRvbWljX2NvbW1p
dCBmbGFnIHRvIGRpc2FibGUgdGhlbS4gQXQgbGVhc3QKPiA+IGZvciBub3cgSSBoYXZlIDAgcGxh
bnMgdG8gbWVyZ2UgYW55IG9mIHRoZXNlIHdoaWxlIHRoZXJlJ3Mga25vd24KPiA+IHVuc29sdmVk
IGlzc3Vlcy4gTWF5YmUgaWYgc29tZSBkcml2ZXJzIHRha2UgZm9yZXZlciB0byBnZXQgZml4ZWQg
d2UKPiA+IGNhbiB0aGVuIGFwcGx5IHNvbWUgZHVjdC10YXBlIGZvciB0aGUgYXRvbWljIGhlbHBl
ciBhbm5vdGF0aW9uIHBhdGNoLgo+ID4gSW5zdGVhZCBvZiBhIGZsYWcgd2UgY2FuIGFsc28gY29w
eXBhc3RhIHRoZSBhdG9taWNfY29tbWl0X3RhaWwgaG9vaywKPiA+IGxlYXZpbmcgdGhlIGFubm90
YXRpb25zIG91dCBhbmQgYWRkaW5nIGEgaHVnZSB3YXJuaW5nIGFib3V0IHRoYXQuCj4gCj4gSG93
IGFib3V0IGFuIG9wdC1pbiBkcm1fZHJpdmVyIERSSVZFUl9ERUFETE9DS19IQVBQWSBmbGFnPyBB
dCBmaXJzdAo+IHRoaXMgY291bGQganVzdCBkaXNhYmxlIHRoZSBhbm5vdGF0aW9ucyBhbmQgbm90
aGluZyBlbHNlLCBidXQgYXMgd2UKPiBzZWUgdGhlIGFubm90YXRpb25zIGdhaW5pbmcgcmVhbC13
b3JsZCB0ZXN0aW5nIGFuZCBtYXR1cml0eSwgd2UgY291bGQKPiBldmVudHVhbGx5IG1ha2UgaXQg
dGFpbnQgdGhlIGtlcm5lbC4KCllvdSBjYW4gZG8gdGhhdCBwcmV0dHkgbXVjaCBwZXItZHJpdmVy
LCBzaW5jZSB0aGUgYW5ub3RhdGlvbnMgYXJlIHByZXR0eQptdWNoIHBlci1kcml2ZXIuIE5vIGFu
bm90YXRpb25zIGluIHlvdXIgY29kZSwgbm8gbG9ja2RlcCBzcGxhdC4gT25seSBpZgp0aGVyZSdz
IHNvbWUgZG1hX2ZlbmNlX2JlZ2luL2VuZF9zaWduYWxsaW5nKCkgY2FsbHMgaXMgdGhlcmUgZXZl
biB0aGUKY2hhbmNlIG9mIGEgcHJvYmxlbS4KCkUuZy4gdGhpcyByb3VuZCBoYXMgdGhlIGk5MTUg
cGF0Y2ggZHJvcHBlZCBhbmQgKnRyYXJhYWFhKiBpbnRlbC1nZngtY2kgaXMKaGFwcHkgKG9yIHdl
bGwgYXQgbGVhc3QgYSBsb3QgaGFwcGllciwgdGhlcmUncyBzb21lIG5vaXNlIGluIHRoZXJlIHRo
YXQncwpwcm9iYWJseSBub3QgZnJvbSBteSBzdHVmZikuCgpTbyBJIGd1ZXNzIGlmIGFtZCB3YW50
cyB0aGlzLCB3ZSBjb3VsZCBkbyBhbiBEUk1fQU1ER1BVX01PQVJfTE9DS0RFUApLY29uZmlnIG9y
IHNpbWlsYXIuIEkgaGF2ZW4ndCB0ZXN0ZWQsIGJ1dCBJIHRoaW5rIGFzIGxvbmcgYXMgd2UgZG9u
J3QKbWVyZ2UgYW55IG9mIHRoZSBhbWRncHUgc3BlY2lmaWMgcGF0Y2hlcywgdGhlcmUncyBubyBz
cGxhdCBpbiBhbWRncHUuIFNvCndpdGggdGhhdCBJIHRoaW5rIHRoYXQncyBwbGVudHkgZW5vdWdo
IG9wdC1pbiBmb3IgZWFjaCBkcml2ZXIuIFRoZSBvbmx5CnByb2JsZW0gaXMgYSBiaXQgc2hhcmVk
IGhlbHBlciBjb2RlIGxpa2UgYXRvbWljIGhlbHBlcnMgYW5kIGRybSBzY2hlZHVsZXIuClRoZXJl
IHdlIG1pZ2h0IG5lZWQgc29tZSBvcHQtb3V0IChJIGRvbid0IHRoaW5rIG1lcmdpbmcgbWFrZXMg
c2Vuc2Ugd2hlbgptb3N0IG9mIHRoZSB1c2VycyBhcmUgc3RpbGwgYnJva2VuKS4KLURhbmllbAot
LSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0
cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
