Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 198BE326348
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Feb 2021 14:29:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBD89667BD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Feb 2021 13:29:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C5EAE667D0; Fri, 26 Feb 2021 13:29:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D80756677E;
	Fri, 26 Feb 2021 13:28:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 330B6619BF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Feb 2021 13:28:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 20E5F6677E; Fri, 26 Feb 2021 13:28:53 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by lists.linaro.org (Postfix) with ESMTPS id 13315619BF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Feb 2021 13:28:51 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id i21so7414710oii.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Feb 2021 05:28:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rGUH/q8yAWgGk2JZzWrNvzmyVDAtFz6BDlab6pKMIpc=;
 b=a/hOojFVsM0JiS5u57IjBGKtjf9UbyM37MmW+e4ecmFOSmGcdsbwyhzIJyI1QwrDD7
 9YDqYYaGq3MOStPxtGWVomRqP/fmOpSQXMAzm5GoluXcrQAxEj4gq4wDtg4tg96CSJHg
 k9SS57pFZlRriXosqysK4fwDEaQk+53b0zF40FBgGYwleZRr2Kllku1waoCnU2+6M+WV
 kTNvFBGunOlBwFd2ka+UM8EVHTdq1q+boJuYlZN6/1IkKF6A35K8Di1iQE8z4mnAqvME
 rtF3jcF97FepIuEWIFbpO9rVUgz3xX1plPufG71R7nhe1cz6pt4J8XVW4LelI4Or1S3O
 J9AA==
X-Gm-Message-State: AOAM531kC2foalC2EVWlPkaK9HtlISt10oZ8Ad9ug101O4m0ObjYGJYp
 oARjuCd6V6BGq5M6OMF9DFbxr22/hTBiMPL1XrtWOg==
X-Google-Smtp-Source: ABdhPJw/VWpmxq1i7heFrmobIfJ05+MLxWgqFl5REF3XLrtDecxTlqf3sUJgHdTYAyfp8mQU2GOoslzgLsT5LZ1dyvQ=
X-Received: by 2002:aca:c790:: with SMTP id x138mr1938632oif.14.1614346130427; 
 Fri, 26 Feb 2021 05:28:50 -0800 (PST)
MIME-Version: 1.0
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
 <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
 <f43311c8-a02a-1a29-a53b-88e599c92187@shipmail.org>
 <CAKMK7uE2UrOruQPWG9KPBQ781f9Bq9xpVRNserAC9BZ2VzDutQ@mail.gmail.com>
 <b30dacb0-edea-0a3c-6163-0f329e58ba61@gmail.com>
 <YDd/hlf8uM3+lxhr@phenom.ffwll.local>
 <CAKMK7uFezcV52oTZbHeve2HFFATeCGyK6zTT6nE1KVP69QRr0A@mail.gmail.com>
 <61c5c371-debe-4ca0-a067-ce306e51ef88@shipmail.org>
In-Reply-To: <61c5c371-debe-4ca0-a067-ce306e51ef88@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 26 Feb 2021 14:28:39 +0100
Message-ID: <CAKMK7uFUiJyMP0E5JUzMOx=NyMW+ZObGsaFOh409x0LOvGbnzg@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
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

T24gRnJpLCBGZWIgMjYsIDIwMjEgYXQgMTA6NDEgQU0gVGhvbWFzIEhlbGxzdHLDtm0gKEludGVs
KQo8dGhvbWFzX29zQHNoaXBtYWlsLm9yZz4gd3JvdGU6Cj4KPgo+IE9uIDIvMjUvMjEgNDo0OSBQ
TSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IE9uIFRodSwgRmViIDI1LCAyMDIxIGF0IDExOjQ0
IEFNIERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4gd3JvdGU6Cj4gPj4gT24gVGh1LCBG
ZWIgMjUsIDIwMjEgYXQgMTE6Mjg6MzFBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
PiA+Pj4gQW0gMjQuMDIuMjEgdW0gMTA6MzEgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+ID4+Pj4g
T24gV2VkLCBGZWIgMjQsIDIwMjEgYXQgMTA6MTYgQU0gVGhvbWFzIEhlbGxzdHLDtm0gKEludGVs
KQo+ID4+Pj4gPHRob21hc19vc0BzaGlwbWFpbC5vcmc+IHdyb3RlOgo+ID4+Pj4+IE9uIDIvMjQv
MjEgOTo0NSBBTSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+Pj4+Pj4gT24gV2VkLCBGZWIgMjQs
IDIwMjEgYXQgODo0NiBBTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpCj4gPj4+Pj4+IDx0aG9t
YXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPiA+Pj4+Pj4+IE9uIDIvMjMvMjEgMTE6NTkgQU0s
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPj4+Pj4+Pj4gdGxkcjsgRE1BIGJ1ZmZlcnMgYXJlbid0
IG5vcm1hbCBtZW1vcnksIGV4cGVjdGluZyB0aGF0IHlvdSBjYW4gdXNlCj4gPj4+Pj4+Pj4gdGhl
bSBsaWtlIHRoYXQgKGxpa2UgY2FsbGluZyBnZXRfdXNlcl9wYWdlcyB3b3Jrcywgb3IgdGhhdCB0
aGV5J3JlCj4gPj4+Pj4+Pj4gYWNjb3VudGluZyBsaWtlIGFueSBvdGhlciBub3JtYWwgbWVtb3J5
KSBjYW5ub3QgYmUgZ3VhcmFudGVlZC4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IFNpbmNlIHNvbWUg
dXNlcnNwYWNlIG9ubHkgcnVucyBvbiBpbnRlZ3JhdGVkIGRldmljZXMsIHdoZXJlIGFsbAo+ID4+
Pj4+Pj4+IGJ1ZmZlcnMgYXJlIGFjdHVhbGx5IGFsbCByZXNpZGVudCBzeXN0ZW0gbWVtb3J5LCB0
aGVyZSdzIGEgaHVnZQo+ID4+Pj4+Pj4+IHRlbXB0YXRpb24gdG8gYXNzdW1lIHRoYXQgYSBzdHJ1
Y3QgcGFnZSBpcyBhbHdheXMgcHJlc2VudCBhbmQgdXNlYWJsZQo+ID4+Pj4+Pj4+IGxpa2UgZm9y
IGFueSBtb3JlIHBhZ2VjYWNoZSBiYWNrZWQgbW1hcC4gVGhpcyBoYXMgdGhlIHBvdGVudGlhbCB0
bwo+ID4+Pj4+Pj4+IHJlc3VsdCBpbiBhIHVhcGkgbmlnaHRtYXJlLgo+ID4+Pj4+Pj4+Cj4gPj4+
Pj4+Pj4gVG8gc3RvcCB0aGlzIGdhcCByZXF1aXJlIHRoYXQgRE1BIGJ1ZmZlciBtbWFwcyBhcmUg
Vk1fUEZOTUFQLCB3aGljaAo+ID4+Pj4+Pj4+IGJsb2NrcyBnZXRfdXNlcl9wYWdlcyBhbmQgYWxs
IHRoZSBvdGhlciBzdHJ1Y3QgcGFnZSBiYXNlZAo+ID4+Pj4+Pj4+IGluZnJhc3RydWN0dXJlIGZv
ciBldmVyeW9uZS4gSW4gc3Bpcml0IHRoaXMgaXMgdGhlIHVhcGkgY291bnRlcnBhcnQgdG8KPiA+
Pj4+Pj4+PiB0aGUga2VybmVsLWludGVybmFsIENPTkZJR19ETUFCVUZfREVCVUcuCj4gPj4+Pj4+
Pj4KPiA+Pj4+Pj4+PiBNb3RpdmF0ZWQgYnkgYSByZWNlbnQgcGF0Y2ggd2hpY2ggd2FudGVkIHRv
IHN3aWNoIHRoZSBzeXN0ZW0gZG1hLWJ1Zgo+ID4+Pj4+Pj4+IGhlYXAgdG8gdm1faW5zZXJ0X3Bh
Z2UgaW5zdGVhZCBvZiB2bV9pbnNlcnRfcGZuLgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gdjI6Cj4g
Pj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBKYXNvbiBicm91Z2h0IHVwIHRoYXQgd2UgYWxzbyB3YW50IHRv
IGd1YXJhbnRlZSB0aGF0IGFsbCBwdGVzIGhhdmUgdGhlCj4gPj4+Pj4+Pj4gcHRlX3NwZWNpYWwg
ZmxhZyBzZXQsIHRvIGNhdGNoIGZhc3QgZ2V0X3VzZXJfcGFnZXMgKG9uIGFyY2hpdGVjdHVyZXMK
PiA+Pj4+Pj4+PiB0aGF0IHN1cHBvcnQgdGhpcykuIEFsbG93aW5nIFZNX01JWEVETUFQIChsaWtl
IFZNX1NQRUNJQUwgZG9lcykgd291bGQKPiA+Pj4+Pj4+PiBzdGlsbCBhbGxvdyB2bV9pbnNlcnRf
cGFnZSwgYnV0IGxpbWl0aW5nIHRvIFZNX1BGTk1BUCB3aWxsIGNhdGNoIHRoYXQuCj4gPj4+Pj4+
Pj4KPiA+Pj4+Pj4+PiAgICAgRnJvbSBhdWRpdGluZyB0aGUgdmFyaW91cyBmdW5jdGlvbnMgdG8g
aW5zZXJ0IHBmbiBwdGUgZW50aXJlcwo+ID4+Pj4+Pj4+ICh2bV9pbnNlcnRfcGZuX3Byb3QsIHJl
bWFwX3Bmbl9yYW5nZSBhbmQgYWxsIGl0J3MgY2FsbGVycyBsaWtlCj4gPj4+Pj4+Pj4gZG1hX21t
YXBfd2MpIGl0IGxvb2tzIGxpa2UgVk1fUEZOTUFQIGlzIGFscmVhZHkgcmVxdWlyZWQgYW55d2F5
LCBzbwo+ID4+Pj4+Pj4+IHRoaXMgc2hvdWxkIGJlIHRoZSBjb3JyZWN0IGZsYWcgdG8gY2hlY2sg
Zm9yLgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+PiBJZiB3ZSByZXF1aXJlIFZNX1BGTk1BUCwgZm9yIG9y
ZGluYXJ5IHBhZ2UgbWFwcGluZ3MsIHdlIGFsc28gbmVlZCB0bwo+ID4+Pj4+Pj4gZGlzYWxsb3cg
Q09XIG1hcHBpbmdzLCBzaW5jZSBpdCB3aWxsIG5vdCB3b3JrIG9uIGFyY2hpdGVjdHVyZXMgdGhh
dAo+ID4+Pj4+Pj4gZG9uJ3QgaGF2ZSBDT05GSUdfQVJDSF9IQVNfUFRFX1NQRUNJQUwsIChzZWUg
dGhlIGRvY3MgZm9yIHZtX25vcm1hbF9wYWdlKCkpLgo+ID4+Pj4+PiBIbSBJIGZpZ3VyZWQgZXZl
cnlvbmUganVzdCB1c2VzIE1BUF9TSEFSRUQgZm9yIGJ1ZmZlciBvYmplY3RzIHNpbmNlCj4gPj4+
Pj4+IENPVyByZWFsbHkgbWFrZXMgYWJzb2x1dGVseSBubyBzZW5zZS4gSG93IHdvdWxkIHdlIGVu
Zm9yY2UgdGhpcz8KPiA+Pj4+PiBQZXJoYXBzIHJldHVybmluZyAtRUlOVkFMIG9uIGlzX2Nvd19t
YXBwaW5nKCkgYXQgbW1hcCB0aW1lLiBFaXRoZXIgdGhhdAo+ID4+Pj4+IG9yIGFsbG93aW5nIE1J
WEVETUFQLgo+ID4+Pj4+Cj4gPj4+Pj4+PiBBbHNvIHdvcnRoIG5vdGluZyBpcyB0aGUgY29tbWVu
dCBpbiAgdHRtX2JvX21tYXBfdm1hX3NldHVwKCkgd2l0aAo+ID4+Pj4+Pj4gcG9zc2libGUgcGVy
Zm9ybWFuY2UgaW1wbGljYXRpb25zIHdpdGggeDg2ICsgUEFUICsgVk1fUEZOTUFQICsgbm9ybWFs
Cj4gPj4+Pj4+PiBwYWdlcy4gVGhhdCdzIGEgdmVyeSBvbGQgY29tbWVudCwgdGhvdWdoLCBhbmQg
bWlnaHQgbm90IGJlIHZhbGlkIGFueW1vcmUuCj4gPj4+Pj4+IEkgdGhpbmsgdGhhdCdzIHdoeSB0
dG0gaGFzIGEgcGFnZSBjYWNoZSBmb3IgdGhlc2UsIGJlY2F1c2UgaXQgaW5kZWVkCj4gPj4+Pj4+
IHN1Y2tzLiBUaGUgUEFUIGNoYW5nZXMgb24gcGFnZXMgYXJlIHJhdGhlciBleHBlbnNpdmUuCj4g
Pj4+Pj4gSUlSQyB0aGUgcGFnZSBjYWNoZSB3YXMgaW1wbGVtZW50ZWQgYmVjYXVzZSBvZiB0aGUg
c2xvd25lc3Mgb2YgdGhlCj4gPj4+Pj4gY2FjaGluZyBtb2RlIHRyYW5zaXRpb24gaXRzZWxmLCBt
b3JlIHNwZWNpZmljYWxseSB0aGUgd2JpbnZkKCkgY2FsbCArCj4gPj4+Pj4gZ2xvYmFsIFRMQiBm
bHVzaC4KPiA+Pj4gWWVzLCBleGFjdGx5IHRoYXQuIFRoZSBnbG9iYWwgVExCIGZsdXNoIGlzIHdo
YXQgcmVhbGx5IGJyZWFrcyBvdXIgbmVjayBoZXJlCj4gPj4+IGZyb20gYSBwZXJmb3JtYW5jZSBw
ZXJzcGVjdGl2ZS4KPiA+Pj4KPiA+Pj4+Pj4gVGhlcmUgaXMgc3RpbGwgYW4gaXNzdWUgZm9yIGlv
bWVtIG1hcHBpbmdzLCBiZWNhdXNlIHRoZSBQQVQgdmFsaWRhdGlvbgo+ID4+Pj4+PiBkb2VzIGEg
bGluZWFyIHdhbGsgb2YgdGhlIHJlc291cmNlIHRyZWUgKGxvbCkgZm9yIGV2ZXJ5IHZtX2luc2Vy
dF9wZm4uCj4gPj4+Pj4+IEJ1dCBmb3IgaTkxNSBhdCBsZWFzdCB0aGlzIGlzIGZpeGVkIGJ5IHVz
aW5nIHRoZSBpb19tYXBwaW5nCj4gPj4+Pj4+IGluZnJhc3RydWN0dXJlLCB3aGljaCBkb2VzIHRo
ZSBQQVQgcmVzZXJ2YXRpb24gb25seSBvbmNlIHdoZW4geW91IHNldAo+ID4+Pj4+PiB1cCB0aGUg
bWFwcGluZyBhcmVhIGF0IGRyaXZlciBsb2FkLgo+ID4+Pj4+IFllcywgSSBndWVzcyB0aGF0IHdh
cyB0aGUgaXNzdWUgdGhhdCB0aGUgY29tbWVudCBkZXNjcmliZXMsIGJ1dCB0aGUKPiA+Pj4+PiBp
c3N1ZSB3YXNuJ3QgdGhlcmUgd2l0aCB2bV9pbnNlcnRfbWl4ZWQoKSArIFZNX01JWEVETUFQLgo+
ID4+Pj4+Cj4gPj4+Pj4+IEFsc28gVFRNIHVzZXMgVk1fUEZOTUFQIHJpZ2h0IG5vdyBmb3IgZXZl
cnl0aGluZywgc28gaXQgY2FuJ3QgYmUgYQo+ID4+Pj4+PiBwcm9ibGVtIHRoYXQgaHVydHMgbXVj
aCA6LSkKPiA+Pj4+PiBIbW0sIGJvdGggNS4xMSBhbmQgZHJtLXRpcCBhcHBlYXJzIHRvIHN0aWxs
IHVzZSBNSVhFRE1BUD8KPiA+Pj4+Pgo+ID4+Pj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29t
L2xpbnV4L2xhdGVzdC9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyNMNTU0
Cj4gPj4+PiBVaCB0aGF0J3MgYmFkLCBiZWNhdXNlIG1peGVkIG1hcHMgcG9pbnRpbmcgYXQgc3Ry
dWN0IHBhZ2Ugd29udCBzdG9wCj4gPj4+PiBndXAuIEF0IGxlYXN0IGFmYWlrLgo+ID4+PiBIdWk/
IEknbSBwcmV0dHkgc3VyZSBNSVhFRE1BUCBzdG9wcyBndXAgYXMgd2VsbC4gT3RoZXJ3aXNlIHdl
IHdvdWxkIGhhdmUKPiA+Pj4gYWxyZWFkeSBzZWVuIHRvbnMgb2YgcHJvYmxlbXMgd2l0aCB0aGUg
cGFnZSBjYWNoZS4KPiA+PiBPbiBhbnkgYXJjaGl0ZWN0dXJlIHdoaWNoIGhhcyBDT05GSUdfQVJD
SF9IQVNfUFRFX1NQRUNJQUwgdm1faW5zZXJ0X21peGVkCj4gPj4gYm9pbHMgZG93biB0byB2bV9p
bnNlcnRfcGZuIHdydCBndXAuIEFuZCBzcGVjaWFsIHB0ZSBzdG9wcyBndXAgZmFzdCBwYXRoLgo+
ID4+Cj4gPj4gQnV0IGlmIHlvdSBkb24ndCBoYXZlIFZNX0lPIG9yIFZNX1BGTk1BUCBzZXQsIHRo
ZW4gSSdtIG5vdCBzZWVpbmcgaG93Cj4gPj4geW91J3JlIHN0b3BwaW5nIGd1cCBzbG93IHBhdGgu
IFNlZSBjaGVja192bWFfZmxhZ3MoKSBpbiBtbS9ndXAuYy4KPiA+Pgo+ID4+IEFsc28gaWYgeW91
IGRvbid0IGhhdmUgQ09ORklHX0FSQ0hfSEFTX1BURV9TUEVDSUFMIHRoZW4gSSBkb24ndCB0aGlu
awo+ID4+IHZtX2luc2VydF9taXhlZCBldmVuIHdvcmtzIG9uIGlvbWVtIHBmbnMuIFRoZXJlJ3Mg
dGhlIGRldm1hcCBleGNlcHRpb24sCj4gPj4gYnV0IHdlJ3JlIG5vdCBkZXZtYXAuIFdvcnNlIHR0
bSBhYnVzZXMgc29tZSBhY2NpZGVudGFsIGNvZGVwYXRoIHRvIHNtdWdnbGUKPiA+PiBpbiBodWdl
cHRlIHN1cHBvcnQgYnkgaW50ZW50aW9uYWxseSBub3QgYmVpbmcgZGV2bWFwLgo+ID4+Cj4gPj4g
U28gSSdtIHJlYWxseSBub3Qgc3VyZSB0aGlzIHdvcmtzIGFzIHdlIHRoaW5rIGl0IHNob3VsZC4g
TWF5YmUgZ29vZCB0byBkbwo+ID4+IGEgcXVpY2sgdGVzdCBwcm9ncmFtIG9uIGFtZGdwdSB3aXRo
IGEgYnVmZmVyIGluIHN5c3RlbSBtZW1vcnkgb25seSBhbmQgdHJ5Cj4gPj4gdG8gZG8gZGlyZWN0
IGlvIGludG8gaXQuIElmIGl0IHdvcmtzLCB5b3UgaGF2ZSBhIHByb2JsZW0sIGFuZCBhIGJhZCBv
bmUuCj4gPiBUaGF0J3MgcHJvYmFibHkgaW1wb3NzaWJsZSwgc2luY2UgYSBxdWljayBnaXQgZ3Jl
cCBzaG93cyB0aGF0IHByZXR0eQo+ID4gbXVjaCBhbnl0aGluZyByZWFzb25hYmxlIGhhcyBzcGVj
aWFsIHB0ZXM6IGFyYywgYXJtLCBhcm02NCwgcG93ZXJwYywKPiA+IHJpc2N2LCBzMzkwLCBzaCwg
c3BhcmMsIHg4Ni4gSSBkb24ndCB0aGluayB5b3UnbGwgaGF2ZSBhIHBsYXRmb3JtCj4gPiB3aGVy
ZSB5b3UgY2FuIHBsdWcgYW4gYW1kZ3B1IGluIGFuZCBhY3R1YWxseSBleGVyY2lzZSB0aGUgYnVn
IDotKQo+Cj4gSG0uIEFGQUlLIF9pbnNlcnRfbWl4ZWQoKSBkb2Vzbid0IHNldCBQVEVfU1BFQ0lB
TCBvbiBzeXN0ZW0gcGFnZXMsIHNvIEkKPiBkb24ndCBzZWUgd2hhdCBzaG91bGQgYmUgc3RvcHBp
bmcgZ3VwIHRvIHRob3NlPwoKSWYgeW91IGhhdmUgYW4gYXJjaCB3aXRoIHB0ZSBzcGVjaWFsIHdl
IHVzZSBpbnNlcnRfcGZuKCksIHdoaWNoIGFmYWljdAp3aWxsIHVzZSBwdGVfbWtzcGVjaWFsIGZv
ciB0aGUgIWRldm1hcCBjYXNlLiBBbmQgdHRtIGlzbid0IGRldm1hcAoob3RoZXJ3aXNlIG91ciBo
dWdlcHRlIGFidXNlIG9mIGRldm1hcCBodWdlcHRlcyB3b3VsZCBnbyByYXRoZXIKd3JvbmcpLgoK
U28gSSB0aGluayBpdCBzdG9wcyBndXAuIEJ1dCBJIGhhdmVuJ3QgdmVyaWZpZWQgYXQgYWxsLiBX
b3VsZCBiZSBnb29kCmlmIENocmlzdGlhbiBjYW4gY2hlY2sgdGhpcyB3aXRoIHNvbWUgZGlyZWN0
IGlvIHRvIGEgYnVmZmVyIGluIHN5c3RlbQptZW1vcnkuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0
ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xs
LmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
