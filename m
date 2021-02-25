Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F6A324E71
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Feb 2021 11:45:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0664F66787
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Feb 2021 10:45:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E80036678A; Thu, 25 Feb 2021 10:45:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D73766789;
	Thu, 25 Feb 2021 10:44:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 534FA66525
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 10:44:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3291466789; Thu, 25 Feb 2021 10:44:27 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id AD30B66525
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 10:44:25 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id i9so3933131wml.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 02:44:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=87k498fT7yj3CQjDeoWRIeMkjyDSkuKTTxswZ9ytFzY=;
 b=OW2stsS+Ejwi3Od4Ta3j/9+spfc85inpZWIthA3miOpzw+2zUUCRaHORF6zk2DbIrj
 Zevak15wcq1M+omoyTLTBYkWnaHeNk27dHlegaRxxiB1lE3H+wCvX2LoPfi8nWt1tx47
 sBsrnH3AaM0vwYwpOB8jJleOJU95yvtU+k+ROHKLRTyniB0TIyyjpT4SXn8YkSYkoiDz
 QXgXZKDjwb2lGoqehHB6kh833/fMEpxLzHNNE5tFhGdHFiYU/pqC8TmTRuu+aGFn2Drl
 Qox632I86ExTPJzhU1NeNAg2qkPfSdAacW7QTBdpNg5Ys6gOf2f6UXnTrlpv75HE/TtW
 svng==
X-Gm-Message-State: AOAM532jGmvAOZCPyHYD1Jvk/S5KMabY2/lj7ZYocY9lEMZHPL7Yy+dk
 93W54OFzvPwVn0LWfbNMSFiNgpckfndN7Q==
X-Google-Smtp-Source: ABdhPJzgLYMjXf3Q+8pL1lPT61BTvTEIZezq9n1onDMtQZszDluhk4BOoQzncMDg8S/ZqbTeGCh6Tg==
X-Received: by 2002:a1c:4d0d:: with SMTP id o13mr2620109wmh.147.1614249864812; 
 Thu, 25 Feb 2021 02:44:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a3sm8009780wrt.68.2021.02.25.02.44.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Feb 2021 02:44:24 -0800 (PST)
Date: Thu, 25 Feb 2021 11:44:22 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YDd/hlf8uM3+lxhr@phenom.ffwll.local>
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
 <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
 <f43311c8-a02a-1a29-a53b-88e599c92187@shipmail.org>
 <CAKMK7uE2UrOruQPWG9KPBQ781f9Bq9xpVRNserAC9BZ2VzDutQ@mail.gmail.com>
 <b30dacb0-edea-0a3c-6163-0f329e58ba61@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b30dacb0-edea-0a3c-6163-0f329e58ba61@gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Matthew Wilcox <willy@infradead.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require VM_PFNMAP vma for
 mmap
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

T24gVGh1LCBGZWIgMjUsIDIwMjEgYXQgMTE6Mjg6MzFBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAyNC4wMi4yMSB1bSAxMDozMSBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4g
PiBPbiBXZWQsIEZlYiAyNCwgMjAyMSBhdCAxMDoxNiBBTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50
ZWwpCj4gPiA8dGhvbWFzX29zQHNoaXBtYWlsLm9yZz4gd3JvdGU6Cj4gPiA+IAo+ID4gPiBPbiAy
LzI0LzIxIDk6NDUgQU0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+ID4gT24gV2VkLCBGZWIg
MjQsIDIwMjEgYXQgODo0NiBBTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpCj4gPiA+ID4gPHRo
b21hc19vc0BzaGlwbWFpbC5vcmc+IHdyb3RlOgo+ID4gPiA+ID4gT24gMi8yMy8yMSAxMTo1OSBB
TSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4gPiA+ID4gdGxkcjsgRE1BIGJ1ZmZlcnMgYXJl
bid0IG5vcm1hbCBtZW1vcnksIGV4cGVjdGluZyB0aGF0IHlvdSBjYW4gdXNlCj4gPiA+ID4gPiA+
IHRoZW0gbGlrZSB0aGF0IChsaWtlIGNhbGxpbmcgZ2V0X3VzZXJfcGFnZXMgd29ya3MsIG9yIHRo
YXQgdGhleSdyZQo+ID4gPiA+ID4gPiBhY2NvdW50aW5nIGxpa2UgYW55IG90aGVyIG5vcm1hbCBt
ZW1vcnkpIGNhbm5vdCBiZSBndWFyYW50ZWVkLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU2lu
Y2Ugc29tZSB1c2Vyc3BhY2Ugb25seSBydW5zIG9uIGludGVncmF0ZWQgZGV2aWNlcywgd2hlcmUg
YWxsCj4gPiA+ID4gPiA+IGJ1ZmZlcnMgYXJlIGFjdHVhbGx5IGFsbCByZXNpZGVudCBzeXN0ZW0g
bWVtb3J5LCB0aGVyZSdzIGEgaHVnZQo+ID4gPiA+ID4gPiB0ZW1wdGF0aW9uIHRvIGFzc3VtZSB0
aGF0IGEgc3RydWN0IHBhZ2UgaXMgYWx3YXlzIHByZXNlbnQgYW5kIHVzZWFibGUKPiA+ID4gPiA+
ID4gbGlrZSBmb3IgYW55IG1vcmUgcGFnZWNhY2hlIGJhY2tlZCBtbWFwLiBUaGlzIGhhcyB0aGUg
cG90ZW50aWFsIHRvCj4gPiA+ID4gPiA+IHJlc3VsdCBpbiBhIHVhcGkgbmlnaHRtYXJlLgo+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gVG8gc3RvcCB0aGlzIGdhcCByZXF1aXJlIHRoYXQgRE1BIGJ1
ZmZlciBtbWFwcyBhcmUgVk1fUEZOTUFQLCB3aGljaAo+ID4gPiA+ID4gPiBibG9ja3MgZ2V0X3Vz
ZXJfcGFnZXMgYW5kIGFsbCB0aGUgb3RoZXIgc3RydWN0IHBhZ2UgYmFzZWQKPiA+ID4gPiA+ID4g
aW5mcmFzdHJ1Y3R1cmUgZm9yIGV2ZXJ5b25lLiBJbiBzcGlyaXQgdGhpcyBpcyB0aGUgdWFwaSBj
b3VudGVycGFydCB0bwo+ID4gPiA+ID4gPiB0aGUga2VybmVsLWludGVybmFsIENPTkZJR19ETUFC
VUZfREVCVUcuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBNb3RpdmF0ZWQgYnkgYSByZWNlbnQg
cGF0Y2ggd2hpY2ggd2FudGVkIHRvIHN3aWNoIHRoZSBzeXN0ZW0gZG1hLWJ1Zgo+ID4gPiA+ID4g
PiBoZWFwIHRvIHZtX2luc2VydF9wYWdlIGluc3RlYWQgb2Ygdm1faW5zZXJ0X3Bmbi4KPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+IHYyOgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gSmFzb24gYnJv
dWdodCB1cCB0aGF0IHdlIGFsc28gd2FudCB0byBndWFyYW50ZWUgdGhhdCBhbGwgcHRlcyBoYXZl
IHRoZQo+ID4gPiA+ID4gPiBwdGVfc3BlY2lhbCBmbGFnIHNldCwgdG8gY2F0Y2ggZmFzdCBnZXRf
dXNlcl9wYWdlcyAob24gYXJjaGl0ZWN0dXJlcwo+ID4gPiA+ID4gPiB0aGF0IHN1cHBvcnQgdGhp
cykuIEFsbG93aW5nIFZNX01JWEVETUFQIChsaWtlIFZNX1NQRUNJQUwgZG9lcykgd291bGQKPiA+
ID4gPiA+ID4gc3RpbGwgYWxsb3cgdm1faW5zZXJ0X3BhZ2UsIGJ1dCBsaW1pdGluZyB0byBWTV9Q
Rk5NQVAgd2lsbCBjYXRjaCB0aGF0Lgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gICAgRnJvbSBh
dWRpdGluZyB0aGUgdmFyaW91cyBmdW5jdGlvbnMgdG8gaW5zZXJ0IHBmbiBwdGUgZW50aXJlcwo+
ID4gPiA+ID4gPiAodm1faW5zZXJ0X3Bmbl9wcm90LCByZW1hcF9wZm5fcmFuZ2UgYW5kIGFsbCBp
dCdzIGNhbGxlcnMgbGlrZQo+ID4gPiA+ID4gPiBkbWFfbW1hcF93YykgaXQgbG9va3MgbGlrZSBW
TV9QRk5NQVAgaXMgYWxyZWFkeSByZXF1aXJlZCBhbnl3YXksIHNvCj4gPiA+ID4gPiA+IHRoaXMg
c2hvdWxkIGJlIHRoZSBjb3JyZWN0IGZsYWcgdG8gY2hlY2sgZm9yLgo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+IElmIHdlIHJlcXVpcmUgVk1fUEZOTUFQLCBmb3Igb3JkaW5hcnkgcGFnZSBtYXBwaW5n
cywgd2UgYWxzbyBuZWVkIHRvCj4gPiA+ID4gPiBkaXNhbGxvdyBDT1cgbWFwcGluZ3MsIHNpbmNl
IGl0IHdpbGwgbm90IHdvcmsgb24gYXJjaGl0ZWN0dXJlcyB0aGF0Cj4gPiA+ID4gPiBkb24ndCBo
YXZlIENPTkZJR19BUkNIX0hBU19QVEVfU1BFQ0lBTCwgKHNlZSB0aGUgZG9jcyBmb3Igdm1fbm9y
bWFsX3BhZ2UoKSkuCj4gPiA+ID4gSG0gSSBmaWd1cmVkIGV2ZXJ5b25lIGp1c3QgdXNlcyBNQVBf
U0hBUkVEIGZvciBidWZmZXIgb2JqZWN0cyBzaW5jZQo+ID4gPiA+IENPVyByZWFsbHkgbWFrZXMg
YWJzb2x1dGVseSBubyBzZW5zZS4gSG93IHdvdWxkIHdlIGVuZm9yY2UgdGhpcz8KPiA+ID4gUGVy
aGFwcyByZXR1cm5pbmcgLUVJTlZBTCBvbiBpc19jb3dfbWFwcGluZygpIGF0IG1tYXAgdGltZS4g
RWl0aGVyIHRoYXQKPiA+ID4gb3IgYWxsb3dpbmcgTUlYRURNQVAuCj4gPiA+IAo+ID4gPiA+ID4g
QWxzbyB3b3J0aCBub3RpbmcgaXMgdGhlIGNvbW1lbnQgaW4gIHR0bV9ib19tbWFwX3ZtYV9zZXR1
cCgpIHdpdGgKPiA+ID4gPiA+IHBvc3NpYmxlIHBlcmZvcm1hbmNlIGltcGxpY2F0aW9ucyB3aXRo
IHg4NiArIFBBVCArIFZNX1BGTk1BUCArIG5vcm1hbAo+ID4gPiA+ID4gcGFnZXMuIFRoYXQncyBh
IHZlcnkgb2xkIGNvbW1lbnQsIHRob3VnaCwgYW5kIG1pZ2h0IG5vdCBiZSB2YWxpZCBhbnltb3Jl
Lgo+ID4gPiA+IEkgdGhpbmsgdGhhdCdzIHdoeSB0dG0gaGFzIGEgcGFnZSBjYWNoZSBmb3IgdGhl
c2UsIGJlY2F1c2UgaXQgaW5kZWVkCj4gPiA+ID4gc3Vja3MuIFRoZSBQQVQgY2hhbmdlcyBvbiBw
YWdlcyBhcmUgcmF0aGVyIGV4cGVuc2l2ZS4KPiA+ID4gSUlSQyB0aGUgcGFnZSBjYWNoZSB3YXMg
aW1wbGVtZW50ZWQgYmVjYXVzZSBvZiB0aGUgc2xvd25lc3Mgb2YgdGhlCj4gPiA+IGNhY2hpbmcg
bW9kZSB0cmFuc2l0aW9uIGl0c2VsZiwgbW9yZSBzcGVjaWZpY2FsbHkgdGhlIHdiaW52ZCgpIGNh
bGwgKwo+ID4gPiBnbG9iYWwgVExCIGZsdXNoLgo+IAo+IFllcywgZXhhY3RseSB0aGF0LiBUaGUg
Z2xvYmFsIFRMQiBmbHVzaCBpcyB3aGF0IHJlYWxseSBicmVha3Mgb3VyIG5lY2sgaGVyZQo+IGZy
b20gYSBwZXJmb3JtYW5jZSBwZXJzcGVjdGl2ZS4KPiAKPiA+ID4gPiBUaGVyZSBpcyBzdGlsbCBh
biBpc3N1ZSBmb3IgaW9tZW0gbWFwcGluZ3MsIGJlY2F1c2UgdGhlIFBBVCB2YWxpZGF0aW9uCj4g
PiA+ID4gZG9lcyBhIGxpbmVhciB3YWxrIG9mIHRoZSByZXNvdXJjZSB0cmVlIChsb2wpIGZvciBl
dmVyeSB2bV9pbnNlcnRfcGZuLgo+ID4gPiA+IEJ1dCBmb3IgaTkxNSBhdCBsZWFzdCB0aGlzIGlz
IGZpeGVkIGJ5IHVzaW5nIHRoZSBpb19tYXBwaW5nCj4gPiA+ID4gaW5mcmFzdHJ1Y3R1cmUsIHdo
aWNoIGRvZXMgdGhlIFBBVCByZXNlcnZhdGlvbiBvbmx5IG9uY2Ugd2hlbiB5b3Ugc2V0Cj4gPiA+
ID4gdXAgdGhlIG1hcHBpbmcgYXJlYSBhdCBkcml2ZXIgbG9hZC4KPiA+ID4gWWVzLCBJIGd1ZXNz
IHRoYXQgd2FzIHRoZSBpc3N1ZSB0aGF0IHRoZSBjb21tZW50IGRlc2NyaWJlcywgYnV0IHRoZQo+
ID4gPiBpc3N1ZSB3YXNuJ3QgdGhlcmUgd2l0aCB2bV9pbnNlcnRfbWl4ZWQoKSArIFZNX01JWEVE
TUFQLgo+ID4gPiAKPiA+ID4gPiBBbHNvIFRUTSB1c2VzIFZNX1BGTk1BUCByaWdodCBub3cgZm9y
IGV2ZXJ5dGhpbmcsIHNvIGl0IGNhbid0IGJlIGEKPiA+ID4gPiBwcm9ibGVtIHRoYXQgaHVydHMg
bXVjaCA6LSkKPiA+ID4gSG1tLCBib3RoIDUuMTEgYW5kIGRybS10aXAgYXBwZWFycyB0byBzdGls
bCB1c2UgTUlYRURNQVA/Cj4gPiA+IAo+ID4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9s
aW51eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMjTDU1NAo+
ID4gVWggdGhhdCdzIGJhZCwgYmVjYXVzZSBtaXhlZCBtYXBzIHBvaW50aW5nIGF0IHN0cnVjdCBw
YWdlIHdvbnQgc3RvcAo+ID4gZ3VwLiBBdCBsZWFzdCBhZmFpay4KPiAKPiBIdWk/IEknbSBwcmV0
dHkgc3VyZSBNSVhFRE1BUCBzdG9wcyBndXAgYXMgd2VsbC4gT3RoZXJ3aXNlIHdlIHdvdWxkIGhh
dmUKPiBhbHJlYWR5IHNlZW4gdG9ucyBvZiBwcm9ibGVtcyB3aXRoIHRoZSBwYWdlIGNhY2hlLgoK
T24gYW55IGFyY2hpdGVjdHVyZSB3aGljaCBoYXMgQ09ORklHX0FSQ0hfSEFTX1BURV9TUEVDSUFM
IHZtX2luc2VydF9taXhlZApib2lscyBkb3duIHRvIHZtX2luc2VydF9wZm4gd3J0IGd1cC4gQW5k
IHNwZWNpYWwgcHRlIHN0b3BzIGd1cCBmYXN0IHBhdGguCgpCdXQgaWYgeW91IGRvbid0IGhhdmUg
Vk1fSU8gb3IgVk1fUEZOTUFQIHNldCwgdGhlbiBJJ20gbm90IHNlZWluZyBob3cKeW91J3JlIHN0
b3BwaW5nIGd1cCBzbG93IHBhdGguIFNlZSBjaGVja192bWFfZmxhZ3MoKSBpbiBtbS9ndXAuYy4K
CkFsc28gaWYgeW91IGRvbid0IGhhdmUgQ09ORklHX0FSQ0hfSEFTX1BURV9TUEVDSUFMIHRoZW4g
SSBkb24ndCB0aGluawp2bV9pbnNlcnRfbWl4ZWQgZXZlbiB3b3JrcyBvbiBpb21lbSBwZm5zLiBU
aGVyZSdzIHRoZSBkZXZtYXAgZXhjZXB0aW9uLApidXQgd2UncmUgbm90IGRldm1hcC4gV29yc2Ug
dHRtIGFidXNlcyBzb21lIGFjY2lkZW50YWwgY29kZXBhdGggdG8gc211Z2dsZQppbiBodWdlcHRl
IHN1cHBvcnQgYnkgaW50ZW50aW9uYWxseSBub3QgYmVpbmcgZGV2bWFwLgoKU28gSSdtIHJlYWxs
eSBub3Qgc3VyZSB0aGlzIHdvcmtzIGFzIHdlIHRoaW5rIGl0IHNob3VsZC4gTWF5YmUgZ29vZCB0
byBkbwphIHF1aWNrIHRlc3QgcHJvZ3JhbSBvbiBhbWRncHUgd2l0aCBhIGJ1ZmZlciBpbiBzeXN0
ZW0gbWVtb3J5IG9ubHkgYW5kIHRyeQp0byBkbyBkaXJlY3QgaW8gaW50byBpdC4gSWYgaXQgd29y
a3MsIHlvdSBoYXZlIGEgcHJvYmxlbSwgYW5kIGEgYmFkIG9uZS4KLURhbmllbAoKPiAKPiBSZWdh
cmRzLAo+IENocmlzdGlhbi4KPiAKPiA+IENocmlzdGlhbiwgZG8gd2UgbmVlZCB0byBwYXRjaCB0
aGlzIHVwLCBhbmQgbWF5YmUgZml4IHVwIHR0bSBmYXVsdAo+ID4gaGFuZGxlciB0byB1c2UgaW9f
bWFwcGluZyBzbyB0aGUgdm1faW5zZXJ0X3BmbiBzdHVmZiBpcyBmYXN0Pwo+ID4gLURhbmllbAo+
IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9u
Cmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
