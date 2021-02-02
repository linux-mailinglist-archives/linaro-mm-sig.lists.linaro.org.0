Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2551930B46C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Feb 2021 02:09:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A05366008
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Feb 2021 01:09:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3D0CE66538; Tue,  2 Feb 2021 01:09:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC7D36601F;
	Tue,  2 Feb 2021 01:08:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9155F607DB
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Feb 2021 01:08:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7FBE16601F; Tue,  2 Feb 2021 01:08:16 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by lists.linaro.org (Postfix) with ESMTPS id D6A2F607DB
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Feb 2021 01:08:14 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id u14so851920wmq.4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Feb 2021 17:08:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RndNhAUPEtKb/UpdxEGQ4FR5gEglHekd7o0mVZRrBqQ=;
 b=DcwZQhLrlokYai5yq5LmO+B3qakt57hSXhqJ8vQOSq23T85j1hDKi561st3Dh/87Xq
 6HpCqG12Q98cGfNso7X4wNd4aRwP9vG740HloDaG7DmogDgz9hL4KG7PLB5jv4knnb5l
 u04X17NcoEREVKqfiTePmsxI2h010oWqrPqTD+NeKXdyg8BorteQDz22T5XlbHW2vWmx
 RIkHFXJzkTdlvU1DwWT738027t9U0pluS6zV31l0zck6GRzgxJC0p/oxiZueeUMRtw9+
 jgH997QXXX85sm8gd4LHnUJFJJIGfG0y4xRfMzkcx2FWqsPZr2LTEzb6ghMwpFfkU/x8
 omXA==
X-Gm-Message-State: AOAM532R6kHe1RfPCBDAIgCcM1XSG1iGxxAxf5V3kNFZQ+5CPKAWxe93
 AecOJ5jAmCOZjKA5Ywu7w1q9KjB+T0LnDhNaRuhLTQ==
X-Google-Smtp-Source: ABdhPJxyhZPweyEZdtVS8pbzENesvAgQg7GA6UjMKqYygX8k02wcRUHVoGOMkAll0W7ToHbbz9juQ18x6KIdTBOcux8=
X-Received: by 2002:a05:600c:4fcb:: with SMTP id
 o11mr1232051wmq.88.1612228093600; 
 Mon, 01 Feb 2021 17:08:13 -0800 (PST)
MIME-Version: 1.0
References: <20210128083817.314315-1-surenb@google.com>
 <20210128091348.GA1962975@infradead.org>
 <CAJuCfpFUhJozS98WJpH0KQKBzyGXvqS1fitu-mgSyhaJ1xL8SQ@mail.gmail.com>
 <YBMAGRIwcbPF17cU@google.com>
 <CAJuCfpF78RYedBoAgkDdgMdfSmNwC2AQk-zZxAqkhCdtBB9gtQ@mail.gmail.com>
In-Reply-To: <CAJuCfpF78RYedBoAgkDdgMdfSmNwC2AQk-zZxAqkhCdtBB9gtQ@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Mon, 1 Feb 2021 17:08:02 -0800
Message-ID: <CAJuCfpH5nwvtMR+32G0-xa_hY-b_Hnw=Figqq9xcsTGgJhOiww@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 kernel-team <kernel-team@android.com>, James Jones <jajones@nvidia.com>,
 LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>, Christoph Hellwig <hch@infradead.org>,
 John Stultz <john.stultz@linaro.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 "\(Exiting\) Benjamin Gaignard" <benjamin.gaignard@linaro.org>,
 Hridya Valsaraju <hridya@google.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/1] dma-buf: heaps: Map system heap
 pages as managed by linux vm
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMTE6MDAgQU0gU3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJl
bmJAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIEphbiAyOCwgMjAyMSBhdCAxMDoxOSBB
TSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUaHUs
IEphbiAyOCwgMjAyMSBhdCAwOTo1Mjo1OUFNIC0wODAwLCBTdXJlbiBCYWdoZGFzYXJ5YW4gd3Jv
dGU6Cj4gPiA+IE9uIFRodSwgSmFuIDI4LCAyMDIxIGF0IDE6MTMgQU0gQ2hyaXN0b3BoIEhlbGx3
aWcgPGhjaEBpbmZyYWRlYWQub3JnPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIFRodSwgSmFu
IDI4LCAyMDIxIGF0IDEyOjM4OjE3QU0gLTA4MDAsIFN1cmVuIEJhZ2hkYXNhcnlhbiB3cm90ZToK
PiA+ID4gPiA+IEN1cnJlbnRseSBzeXN0ZW0gaGVhcCBtYXBzIGl0cyBidWZmZXJzIHdpdGggVk1f
UEZOTUFQIGZsYWcgdXNpbmcKPiA+ID4gPiA+IHJlbWFwX3Bmbl9yYW5nZS4gVGhpcyByZXN1bHRz
IGluIHN1Y2ggYnVmZmVycyBub3QgYmVpbmcgYWNjb3VudGVkCj4gPiA+ID4gPiBmb3IgaW4gUFNT
IGNhbGN1bGF0aW9ucyBiZWNhdXNlIHZtIHRyZWF0cyB0aGlzIG1lbW9yeSBhcyBoYXZpbmcgbm8K
PiA+ID4gPiA+IHBhZ2Ugc3RydWN0cy4gV2l0aG91dCBwYWdlIHN0cnVjdHMgdGhlcmUgYXJlIG5v
IGNvdW50ZXJzIHJlcHJlc2VudGluZwo+ID4gPiA+ID4gaG93IG1hbnkgcHJvY2Vzc2VzIGFyZSBt
YXBwaW5nIGEgcGFnZSBhbmQgdGhlcmVmb3JlIFBTUyBjYWxjdWxhdGlvbgo+ID4gPiA+ID4gaXMg
aW1wb3NzaWJsZS4KPiA+ID4gPiA+IEhpc3RvcmljYWxseSwgSU9OIGRyaXZlciB1c2VkIHRvIG1h
cCBpdHMgYnVmZmVycyBhcyBWTV9QRk5NQVAgYXJlYXMKPiA+ID4gPiA+IGR1ZSB0byBtZW1vcnkg
Y2FydmVvdXRzIHRoYXQgZGlkIG5vdCBoYXZlIHBhZ2Ugc3RydWN0cyBbMV0uIFRoYXQKPiA+ID4g
PiA+IGlzIG5vdCB0aGUgY2FzZSBhbnltb3JlIGFuZCBpdCBzZWVtcyB0aGVyZSB3YXMgZGVzaXJl
IHRvIG1vdmUgYXdheQo+ID4gPiA+ID4gZnJvbSByZW1hcF9wZm5fcmFuZ2UgWzJdLgo+ID4gPiA+
ID4gRG1hYnVmIHN5c3RlbSBoZWFwIGRlc2lnbiBpbmhlcml0cyB0aGlzIElPTiBiZWhhdmlvciBh
bmQgbWFwcyBpdHMKPiA+ID4gPiA+IHBhZ2VzIHVzaW5nIHJlbWFwX3Bmbl9yYW5nZSBldmVuIHRo
b3VnaCBhbGxvY2F0ZWQgcGFnZXMgYXJlIGJhY2tlZAo+ID4gPiA+ID4gYnkgcGFnZSBzdHJ1Y3Rz
Lgo+ID4gPiA+ID4gQ2xlYXIgVk1fSU8gYW5kIFZNX1BGTk1BUCBmbGFncyB3aGVuIG1hcHBpbmcg
bWVtb3J5IGFsbG9jYXRlZCBieSB0aGUKPiA+ID4gPiA+IHN5c3RlbSBoZWFwIGFuZCByZXBsYWNl
IHJlbWFwX3Bmbl9yYW5nZSB3aXRoIHZtX2luc2VydF9wYWdlLCBmb2xsb3dpbmcKPiA+ID4gPiA+
IExhdXJhJ3Mgc3VnZ2VzdGlvbiBpbiBbMV0uIFRoaXMgd291bGQgYWxsb3cgY29ycmVjdCBQU1Mg
Y2FsY3VsYXRpb24KPiA+ID4gPiA+IGZvciBkbWFidWZzLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFsx
XSBodHRwczovL2RyaXZlcmRldi1kZXZlbC5saW51eGRyaXZlcnByb2plY3QubmFya2l2ZS5jb20v
djBmSkdwYUQvdXNpbmctaW9uLW1lbW9yeS1mb3ItZGlyZWN0LWlvCj4gPiA+ID4gPiBbMl0gaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL3BpcGVybWFpbC9kcml2ZXJkZXYt
ZGV2ZWwvMjAxOC1PY3RvYmVyLzEyNzUxOS5odG1sCj4gPiA+ID4gPiAoc29ycnksIGNvdWxkIG5v
dCBmaW5kIGxvcmUgbGlua3MgZm9yIHRoZXNlIGRpc2N1c3Npb25zKQo+ID4gPiA+ID4KPiA+ID4g
PiA+IFN1Z2dlc3RlZC1ieTogTGF1cmEgQWJib3R0IDxsYWJib3R0QGtlcm5lbC5vcmc+Cj4gPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBTdXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29t
Pgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9o
ZWFwLmMgfCA2ICsrKystLQo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5
c3RlbV9oZWFwLmMKPiA+ID4gPiA+IGluZGV4IDE3ZTBlOWE2OGJhZi4uMGU5MmU0MmIyMjUxIDEw
MDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMK
PiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jCj4gPiA+
ID4gPiBAQCAtMjAwLDExICsyMDAsMTMgQEAgc3RhdGljIGludCBzeXN0ZW1faGVhcF9tbWFwKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQo+ID4gPiA+
ID4gICAgICAgc3RydWN0IHNnX3BhZ2VfaXRlciBwaXRlcjsKPiA+ID4gPiA+ICAgICAgIGludCBy
ZXQ7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gKyAgICAgLyogQWxsIHBhZ2VzIGFyZSBiYWNrZWQgYnkg
YSAic3RydWN0IHBhZ2UiICovCj4gPiA+ID4gPiArICAgICB2bWEtPnZtX2ZsYWdzICY9IH5WTV9Q
Rk5NQVA7Cj4gPiA+ID4KPiA+ID4gPiBXaHkgZG8gd2UgY2xlYXIgdGhpcyBmbGFnPyAgSXQgc2hv
dWxkbid0IGV2ZW4gYmUgc2V0IGhlcmUgYXMgZmFyIGFzIEkKPiA+ID4gPiBjYW4gdGVsbC4KPiA+
ID4KPiA+ID4gVGhhbmtzIGZvciB0aGUgcXVlc3Rpb24sIENocmlzdG9waC4KPiA+ID4gSSB0cmFj
a2VkIGRvd24gdGhhdCBmbGFnIGJlaW5nIHNldCBieSBkcm1fZ2VtX21tYXBfb2JqKCkgd2hpY2gg
RFJNCj4gPiA+IGRyaXZlcnMgdXNlIHRvICJTZXQgdXAgdGhlIFZNQSB0byBwcmVwYXJlIG1hcHBp
bmcgb2YgdGhlIEdFTSBvYmplY3QiCj4gPiA+IChhY2NvcmRpbmcgdG8gZHJtX2dlbV9tbWFwX29i
aiBjb21tZW50cykuIEkgYWxzbyBzZWUgYSBwYXR0ZXJuIGluCj4gPiA+IHNldmVyYWwgRE1SIGRy
aXZlcnMgdG8gY2FsbCBkcm1fZ2VtX21tYXBfb2JqKCkvZHJtX2dlbV9tbWFwKCksIHRoZW4KPiA+
ID4gY2xlYXIgVk1fUEZOTUFQIGFuZCB0aGVuIG1hcCB0aGUgVk1BIChmb3IgZXhhbXBsZSBoZXJl
Ogo+ID4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMjTDI0NikuCj4gPiA+IEkg
dGhvdWdodCB0aGF0IGRtYWJ1ZiBhbGxvY2F0b3IgKGluIHRoaXMgY2FzZSB0aGUgc3lzdGVtIGhl
YXApIHdvdWxkCj4gPiA+IGJlIHRoZSByaWdodCBwbGFjZSB0byBzZXQgdGhlc2UgZmxhZ3MgYmVj
YXVzZSBpdCBjb250cm9scyBob3cgbWVtb3J5Cj4gPiA+IGlzIGFsbG9jYXRlZCBiZWZvcmUgbWFw
cGluZy4gSG93ZXZlciBpdCdzIHF1aXRlIHBvc3NpYmxlIHRoYXQgSSdtCj4gPgo+ID4gSG93ZXZl
ciwgeW91J3JlIG5vdCBzZXR0aW5nIGJ1dCByZW1vdmluZyBhIGZsYWcgdW5kZXIgdGhlIGNhbGxl
ci4KPiA+IEl0J3MgZGlmZmVyZW50IHdpdGggYXBwZW5kaW5nIG1vcmUgZmxhZ3MoZS5nLiwgcmVt
b3ZpbmcgY29uZGl0aW9uCj4gPiB2cyBhZGRpbmcgbW9yZSBjb25kaXRpb25zKS4gSWYgd2Ugc2hv
dWxkIHJlbW92ZSB0aGUgZmxhZywgY2FsbGVyCj4gPiBkaWRuJ3QgbmVlZCB0byBzZXQgaXQgZnJv
bSB0aGUgYmVnaW5uaW5nLiBIaWRpbmcgaXQgdW5kZXIgdGhpcyBBUEkKPiA+IGNvbnRpbnVlIHRv
IG1ha2Ugd3JvbmcgdXNlY2FzZSBpbiBmdXR1cmUuCj4KPiBXaGljaCB0YWtlcyB1cyBiYWNrIHRv
IHRoZSBxdWVzdGlvbiBvZiB3aHkgVk1fUEZOTUFQIGlzIGJlaW5nIHNldCBieQo+IHRoZSBjYWxs
ZXIgaW4gdGhlIGZpcnN0IHBsYWNlLgo+Cj4gPgo+ID4gPiBtaXNzaW5nIHRoZSByZWFsIHJlYXNv
biBmb3IgVk1fUEZOTUFQIGJlaW5nIHNldCBpbiBkcm1fZ2VtX21tYXBfb2JqKCkKPiA+ID4gYmVm
b3JlIGRtYV9idWZfbW1hcCgpIGlzIGNhbGxlZC4gSSBjb3VsZCBub3QgZmluZCB0aGUgYW5zd2Vy
IHRvIHRoYXQsCj4gPiA+IHNvIEkgaG9wZSBzb21lb25lIGhlcmUgY2FuIGNsYXJpZnkgdGhhdC4K
PiA+Cj4gPiBHdWVzcyBEUk0gaGFkIHVzZWQgY2FydmVkIG91dCBwdXJlIFBGTiBtZW1vcnkgbG9u
ZyB0aW1lIGFnbyBhbmQKPiA+IGNoYW5nZWQgdG8gdXNlIGRtYWJ1ZiBzaW5jZSBzb21lcG9pbnQu
Cj4KPiBJdCB3b3VsZCBiZSByZWFsbHkgZ29vZCB0byBrbm93IHRoZSByZWFzb24gZm9yIHN1cmUg
dG8gYWRkcmVzcyB0aGUKPiBpc3N1ZSBwcm9wZXJseS4KPgo+ID4gV2hhdGV2ZXIgdGhlcmUgaXMg
YSBoaXN0b3J5LCByYXRoZXIgdGhhbiByZW1vdmluZyB0aGUgZmxhZwo+ID4gdW5kZXIgdGhlbSwg
bGV0J3MgYWRkIFdBUk5fT04odm1hLT52bV9mbGFncyAmIFZNX1BGTk1BUCkgc28KPiA+IHdlIGNv
dWxkIGNsZWFuIHVwIGNhdGNoaW5nIHRoZW0gYW5kIHN0YXJ0IGRpc2N1c3Npb24uCj4KPiBUaGUg
aXNzdWUgd2l0aCBub3QgY2xlYXJpbmcgdGhlIGZsYWcgaGVyZSBpcyB0aGF0IHZtX2luc2VydF9w
YWdlKCkgaGFzCj4gYSBCVUdfT04odm1hLT52bV9mbGFncyAmIFZNX1BGTk1BUCkuIElmIHdlIGRv
IG5vdCBjbGVhciB0aGlzIGZsYWcgSQo+IHN1c3BlY3Qgd2Ugd2lsbCBnZXQgbWFueSBhbmdyeSBk
ZXZlbG9wZXJzIDopCj4gSWYgeW91ciBhYm92ZSBndWVzcyBpcyBjb3JyZWN0IGFuZCB3ZSBjYW4g
bWFuZGF0ZSBkbWFidWYgaGVhcCB1c2Vycwo+IG5vdCB0byB1c2UgVk1fUEZOTUFQIHRoZW4gSSB0
aGluayB0aGUgZm9sbG93aW5nIGNvZGUgbWlnaHQgYmUgdGhlIGJlc3QKPiB3YXkgZm9yd2FyZDoK
Pgo+ICsgICAgICAgYm9vbCBwZm5fcmVxdWVzdGVkID0gISEodm1hLT52bV9mbGFncyAmIFZNX1BG
Tk1BUCk7Cj4gKy4gICAgICBXQVJOX09OX09OQ0UocGZuX3JlcXVlc3RlZCk7Cj4KPiAgICAgICAg
IGZvcl9lYWNoX3NndGFibGVfcGFnZSh0YWJsZSwgJnBpdGVyLCB2bWEtPnZtX3Bnb2ZmKSB7Cj4g
ICAgICAgICAgICAgICAgIHN0cnVjdCBwYWdlICpwYWdlID0gc2dfcGFnZV9pdGVyX3BhZ2UoJnBp
dGVyKTsKPgo+IC0gICAgICAgICAgICAgICByZXQgPSByZW1hcF9wZm5fcmFuZ2Uodm1hLCBhZGRy
LCBwYWdlX3RvX3BmbihwYWdlKSwgUEFHRV9TSVpFLAo+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdm1hLT52bV9wYWdlX3Byb3QpOwo+ICsgICAgICAgICAgICAgICByZXQg
PSBwZm5fcmVxdWVzdGVkID8KPiArLiAgICAgICAgICAgICAgICAgICAgICByZW1hcF9wZm5fcmFu
Z2Uodm1hLCBhZGRyLCBwYWdlX3RvX3BmbihwYWdlKSwgUEFHRV9TSVpFLAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdm1hLT52bV9wYWdlX3Byb3QpIDoKPiArICAgICAg
ICAgICAgICAgICAgICAgICB2bV9pbnNlcnRfcGFnZSh2bWEsIGFkZHIsIHBhZ2UpOwoKRm9sa3Ms
IGFueSBvYmplY3Rpb25zIHRvIHRoZSBhcHByb2FjaCBhYm92ZT8KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
