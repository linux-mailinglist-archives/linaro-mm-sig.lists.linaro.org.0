Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A21B307E86
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 20:00:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83FD76674C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 19:00:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 774A866760; Thu, 28 Jan 2021 19:00:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93DB9607C7;
	Thu, 28 Jan 2021 19:00:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 42971607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 19:00:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 371AE6674C; Thu, 28 Jan 2021 19:00:15 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by lists.linaro.org (Postfix) with ESMTPS id A1EC3607C7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 19:00:12 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id v15so6515866wrx.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 11:00:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zAtH5Uh2eCj5xsMSKVB//0rXkS/VAF35BJgeGHp7Chc=;
 b=RY8EB/fRdSFHJr9jZc2OqZU4FGiX9m/u+HO5O9N2S35RdA56uEAmTBOlly4qTYkutV
 ds/vnjP4j7lQyDqWBJ2oz7cYInbmSmhJ12ZeDIlCj70AI3YXnppvdNrF829tWIfhRXpI
 w6cuv6VhvSDXEqenz5+9Be3n3GogOuuGQEnF2kdR8qZYrm2ua8QcoyMZwD9Lw6JI2W9O
 nxNw1CPVPy83c1ySLYdFDo+sgS3IP8NDtqVR1LefBkcHo0IYhbnC4Vv0taWTMKWZ4Kdq
 U1rzk/3wlue+Mo+pjfOM529OmmYeOjqkur8xlN8HLFCBnrjF2zKaRxpu1Gnif7sAB7Kx
 1qSw==
X-Gm-Message-State: AOAM5311qDd7juK8onF+scVYdqo8gkw8mXOdSdecxUMSZMlYu2e9c/eU
 xuseiYRrig0fKu2AaSxeie+kEyRLL0hPOBVEPMqBpg==
X-Google-Smtp-Source: ABdhPJwSD5bzVn93QFm2pNU5i5Gr+VKO1jTjvXuRMhaz/F8HEdl87Jiogq2f2azHZ1YzRMI8ccsd1ebb852jTPWVuyg=
X-Received: by 2002:a5d:6884:: with SMTP id h4mr616422wru.106.1611860411575;
 Thu, 28 Jan 2021 11:00:11 -0800 (PST)
MIME-Version: 1.0
References: <20210128083817.314315-1-surenb@google.com>
 <20210128091348.GA1962975@infradead.org>
 <CAJuCfpFUhJozS98WJpH0KQKBzyGXvqS1fitu-mgSyhaJ1xL8SQ@mail.gmail.com>
 <YBMAGRIwcbPF17cU@google.com>
In-Reply-To: <YBMAGRIwcbPF17cU@google.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Thu, 28 Jan 2021 11:00:00 -0800
Message-ID: <CAJuCfpF78RYedBoAgkDdgMdfSmNwC2AQk-zZxAqkhCdtBB9gtQ@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>, christian.koenig@amd.com,
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMTA6MTkgQU0gTWluY2hhbiBLaW0gPG1pbmNoYW5Aa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEphbiAyOCwgMjAyMSBhdCAwOTo1Mjo1OUFNIC0w
ODAwLCBTdXJlbiBCYWdoZGFzYXJ5YW4gd3JvdGU6Cj4gPiBPbiBUaHUsIEphbiAyOCwgMjAyMSBh
dCAxOjEzIEFNIENocmlzdG9waCBIZWxsd2lnIDxoY2hAaW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4g
PiA+Cj4gPiA+IE9uIFRodSwgSmFuIDI4LCAyMDIxIGF0IDEyOjM4OjE3QU0gLTA4MDAsIFN1cmVu
IEJhZ2hkYXNhcnlhbiB3cm90ZToKPiA+ID4gPiBDdXJyZW50bHkgc3lzdGVtIGhlYXAgbWFwcyBp
dHMgYnVmZmVycyB3aXRoIFZNX1BGTk1BUCBmbGFnIHVzaW5nCj4gPiA+ID4gcmVtYXBfcGZuX3Jh
bmdlLiBUaGlzIHJlc3VsdHMgaW4gc3VjaCBidWZmZXJzIG5vdCBiZWluZyBhY2NvdW50ZWQKPiA+
ID4gPiBmb3IgaW4gUFNTIGNhbGN1bGF0aW9ucyBiZWNhdXNlIHZtIHRyZWF0cyB0aGlzIG1lbW9y
eSBhcyBoYXZpbmcgbm8KPiA+ID4gPiBwYWdlIHN0cnVjdHMuIFdpdGhvdXQgcGFnZSBzdHJ1Y3Rz
IHRoZXJlIGFyZSBubyBjb3VudGVycyByZXByZXNlbnRpbmcKPiA+ID4gPiBob3cgbWFueSBwcm9j
ZXNzZXMgYXJlIG1hcHBpbmcgYSBwYWdlIGFuZCB0aGVyZWZvcmUgUFNTIGNhbGN1bGF0aW9uCj4g
PiA+ID4gaXMgaW1wb3NzaWJsZS4KPiA+ID4gPiBIaXN0b3JpY2FsbHksIElPTiBkcml2ZXIgdXNl
ZCB0byBtYXAgaXRzIGJ1ZmZlcnMgYXMgVk1fUEZOTUFQIGFyZWFzCj4gPiA+ID4gZHVlIHRvIG1l
bW9yeSBjYXJ2ZW91dHMgdGhhdCBkaWQgbm90IGhhdmUgcGFnZSBzdHJ1Y3RzIFsxXS4gVGhhdAo+
ID4gPiA+IGlzIG5vdCB0aGUgY2FzZSBhbnltb3JlIGFuZCBpdCBzZWVtcyB0aGVyZSB3YXMgZGVz
aXJlIHRvIG1vdmUgYXdheQo+ID4gPiA+IGZyb20gcmVtYXBfcGZuX3JhbmdlIFsyXS4KPiA+ID4g
PiBEbWFidWYgc3lzdGVtIGhlYXAgZGVzaWduIGluaGVyaXRzIHRoaXMgSU9OIGJlaGF2aW9yIGFu
ZCBtYXBzIGl0cwo+ID4gPiA+IHBhZ2VzIHVzaW5nIHJlbWFwX3Bmbl9yYW5nZSBldmVuIHRob3Vn
aCBhbGxvY2F0ZWQgcGFnZXMgYXJlIGJhY2tlZAo+ID4gPiA+IGJ5IHBhZ2Ugc3RydWN0cy4KPiA+
ID4gPiBDbGVhciBWTV9JTyBhbmQgVk1fUEZOTUFQIGZsYWdzIHdoZW4gbWFwcGluZyBtZW1vcnkg
YWxsb2NhdGVkIGJ5IHRoZQo+ID4gPiA+IHN5c3RlbSBoZWFwIGFuZCByZXBsYWNlIHJlbWFwX3Bm
bl9yYW5nZSB3aXRoIHZtX2luc2VydF9wYWdlLCBmb2xsb3dpbmcKPiA+ID4gPiBMYXVyYSdzIHN1
Z2dlc3Rpb24gaW4gWzFdLiBUaGlzIHdvdWxkIGFsbG93IGNvcnJlY3QgUFNTIGNhbGN1bGF0aW9u
Cj4gPiA+ID4gZm9yIGRtYWJ1ZnMuCj4gPiA+ID4KPiA+ID4gPiBbMV0gaHR0cHM6Ly9kcml2ZXJk
ZXYtZGV2ZWwubGludXhkcml2ZXJwcm9qZWN0Lm5hcmtpdmUuY29tL3YwZkpHcGFEL3VzaW5nLWlv
bi1tZW1vcnktZm9yLWRpcmVjdC1pbwo+ID4gPiA+IFsyXSBodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvcGlwZXJtYWlsL2RyaXZlcmRldi1kZXZlbC8yMDE4LU9jdG9iZXIv
MTI3NTE5Lmh0bWwKPiA+ID4gPiAoc29ycnksIGNvdWxkIG5vdCBmaW5kIGxvcmUgbGlua3MgZm9y
IHRoZXNlIGRpc2N1c3Npb25zKQo+ID4gPiA+Cj4gPiA+ID4gU3VnZ2VzdGVkLWJ5OiBMYXVyYSBB
YmJvdHQgPGxhYmJvdHRAa2VybmVsLm9yZz4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTdXJlbiBC
YWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2
ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyB8IDYgKysrKy0tCj4gPiA+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4KPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgYi9kcml2
ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYwo+ID4gPiA+IGluZGV4IDE3ZTBlOWE2OGJh
Zi4uMGU5MmU0MmIyMjUxIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9zeXN0ZW1faGVhcC5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3Rl
bV9oZWFwLmMKPiA+ID4gPiBAQCAtMjAwLDExICsyMDAsMTMgQEAgc3RhdGljIGludCBzeXN0ZW1f
aGVhcF9tbWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAq
dm1hKQo+ID4gPiA+ICAgICAgIHN0cnVjdCBzZ19wYWdlX2l0ZXIgcGl0ZXI7Cj4gPiA+ID4gICAg
ICAgaW50IHJldDsKPiA+ID4gPgo+ID4gPiA+ICsgICAgIC8qIEFsbCBwYWdlcyBhcmUgYmFja2Vk
IGJ5IGEgInN0cnVjdCBwYWdlIiAqLwo+ID4gPiA+ICsgICAgIHZtYS0+dm1fZmxhZ3MgJj0gflZN
X1BGTk1BUDsKPiA+ID4KPiA+ID4gV2h5IGRvIHdlIGNsZWFyIHRoaXMgZmxhZz8gIEl0IHNob3Vs
ZG4ndCBldmVuIGJlIHNldCBoZXJlIGFzIGZhciBhcyBJCj4gPiA+IGNhbiB0ZWxsLgo+ID4KPiA+
IFRoYW5rcyBmb3IgdGhlIHF1ZXN0aW9uLCBDaHJpc3RvcGguCj4gPiBJIHRyYWNrZWQgZG93biB0
aGF0IGZsYWcgYmVpbmcgc2V0IGJ5IGRybV9nZW1fbW1hcF9vYmooKSB3aGljaCBEUk0KPiA+IGRy
aXZlcnMgdXNlIHRvICJTZXQgdXAgdGhlIFZNQSB0byBwcmVwYXJlIG1hcHBpbmcgb2YgdGhlIEdF
TSBvYmplY3QiCj4gPiAoYWNjb3JkaW5nIHRvIGRybV9nZW1fbW1hcF9vYmogY29tbWVudHMpLiBJ
IGFsc28gc2VlIGEgcGF0dGVybiBpbgo+ID4gc2V2ZXJhbCBETVIgZHJpdmVycyB0byBjYWxsIGRy
bV9nZW1fbW1hcF9vYmooKS9kcm1fZ2VtX21tYXAoKSwgdGhlbgo+ID4gY2xlYXIgVk1fUEZOTUFQ
IGFuZCB0aGVuIG1hcCB0aGUgVk1BIChmb3IgZXhhbXBsZSBoZXJlOgo+ID4gaHR0cHM6Ly9lbGl4
aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2dlbS5jI0wyNDYpLgo+ID4gSSB0aG91Z2h0IHRoYXQgZG1hYnVmIGFs
bG9jYXRvciAoaW4gdGhpcyBjYXNlIHRoZSBzeXN0ZW0gaGVhcCkgd291bGQKPiA+IGJlIHRoZSBy
aWdodCBwbGFjZSB0byBzZXQgdGhlc2UgZmxhZ3MgYmVjYXVzZSBpdCBjb250cm9scyBob3cgbWVt
b3J5Cj4gPiBpcyBhbGxvY2F0ZWQgYmVmb3JlIG1hcHBpbmcuIEhvd2V2ZXIgaXQncyBxdWl0ZSBw
b3NzaWJsZSB0aGF0IEknbQo+Cj4gSG93ZXZlciwgeW91J3JlIG5vdCBzZXR0aW5nIGJ1dCByZW1v
dmluZyBhIGZsYWcgdW5kZXIgdGhlIGNhbGxlci4KPiBJdCdzIGRpZmZlcmVudCB3aXRoIGFwcGVu
ZGluZyBtb3JlIGZsYWdzKGUuZy4sIHJlbW92aW5nIGNvbmRpdGlvbgo+IHZzIGFkZGluZyBtb3Jl
IGNvbmRpdGlvbnMpLiBJZiB3ZSBzaG91bGQgcmVtb3ZlIHRoZSBmbGFnLCBjYWxsZXIKPiBkaWRu
J3QgbmVlZCB0byBzZXQgaXQgZnJvbSB0aGUgYmVnaW5uaW5nLiBIaWRpbmcgaXQgdW5kZXIgdGhp
cyBBUEkKPiBjb250aW51ZSB0byBtYWtlIHdyb25nIHVzZWNhc2UgaW4gZnV0dXJlLgoKV2hpY2gg
dGFrZXMgdXMgYmFjayB0byB0aGUgcXVlc3Rpb24gb2Ygd2h5IFZNX1BGTk1BUCBpcyBiZWluZyBz
ZXQgYnkKdGhlIGNhbGxlciBpbiB0aGUgZmlyc3QgcGxhY2UuCgo+Cj4gPiBtaXNzaW5nIHRoZSBy
ZWFsIHJlYXNvbiBmb3IgVk1fUEZOTUFQIGJlaW5nIHNldCBpbiBkcm1fZ2VtX21tYXBfb2JqKCkK
PiA+IGJlZm9yZSBkbWFfYnVmX21tYXAoKSBpcyBjYWxsZWQuIEkgY291bGQgbm90IGZpbmQgdGhl
IGFuc3dlciB0byB0aGF0LAo+ID4gc28gSSBob3BlIHNvbWVvbmUgaGVyZSBjYW4gY2xhcmlmeSB0
aGF0Lgo+Cj4gR3Vlc3MgRFJNIGhhZCB1c2VkIGNhcnZlZCBvdXQgcHVyZSBQRk4gbWVtb3J5IGxv
bmcgdGltZSBhZ28gYW5kCj4gY2hhbmdlZCB0byB1c2UgZG1hYnVmIHNpbmNlIHNvbWVwb2ludC4K
Ckl0IHdvdWxkIGJlIHJlYWxseSBnb29kIHRvIGtub3cgdGhlIHJlYXNvbiBmb3Igc3VyZSB0byBh
ZGRyZXNzIHRoZQppc3N1ZSBwcm9wZXJseS4KCj4gV2hhdGV2ZXIgdGhlcmUgaXMgYSBoaXN0b3J5
LCByYXRoZXIgdGhhbiByZW1vdmluZyB0aGUgZmxhZwo+IHVuZGVyIHRoZW0sIGxldCdzIGFkZCBX
QVJOX09OKHZtYS0+dm1fZmxhZ3MgJiBWTV9QRk5NQVApIHNvCj4gd2UgY291bGQgY2xlYW4gdXAg
Y2F0Y2hpbmcgdGhlbSBhbmQgc3RhcnQgZGlzY3Vzc2lvbi4KClRoZSBpc3N1ZSB3aXRoIG5vdCBj
bGVhcmluZyB0aGUgZmxhZyBoZXJlIGlzIHRoYXQgdm1faW5zZXJ0X3BhZ2UoKSBoYXMKYSBCVUdf
T04odm1hLT52bV9mbGFncyAmIFZNX1BGTk1BUCkuIElmIHdlIGRvIG5vdCBjbGVhciB0aGlzIGZs
YWcgSQpzdXNwZWN0IHdlIHdpbGwgZ2V0IG1hbnkgYW5ncnkgZGV2ZWxvcGVycyA6KQpJZiB5b3Vy
IGFib3ZlIGd1ZXNzIGlzIGNvcnJlY3QgYW5kIHdlIGNhbiBtYW5kYXRlIGRtYWJ1ZiBoZWFwIHVz
ZXJzCm5vdCB0byB1c2UgVk1fUEZOTUFQIHRoZW4gSSB0aGluayB0aGUgZm9sbG93aW5nIGNvZGUg
bWlnaHQgYmUgdGhlIGJlc3QKd2F5IGZvcndhcmQ6CgorICAgICAgIGJvb2wgcGZuX3JlcXVlc3Rl
ZCA9ICEhKHZtYS0+dm1fZmxhZ3MgJiBWTV9QRk5NQVApOworLiAgICAgIFdBUk5fT05fT05DRShw
Zm5fcmVxdWVzdGVkKTsKCiAgICAgICAgZm9yX2VhY2hfc2d0YWJsZV9wYWdlKHRhYmxlLCAmcGl0
ZXIsIHZtYS0+dm1fcGdvZmYpIHsKICAgICAgICAgICAgICAgIHN0cnVjdCBwYWdlICpwYWdlID0g
c2dfcGFnZV9pdGVyX3BhZ2UoJnBpdGVyKTsKCi0gICAgICAgICAgICAgICByZXQgPSByZW1hcF9w
Zm5fcmFuZ2Uodm1hLCBhZGRyLCBwYWdlX3RvX3BmbihwYWdlKSwgUEFHRV9TSVpFLAotICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZtYS0+dm1fcGFnZV9wcm90KTsKKyAgICAg
ICAgICAgICAgIHJldCA9IHBmbl9yZXF1ZXN0ZWQgPworLiAgICAgICAgICAgICAgICAgICAgICBy
ZW1hcF9wZm5fcmFuZ2Uodm1hLCBhZGRyLCBwYWdlX3RvX3BmbihwYWdlKSwgUEFHRV9TSVpFLAor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZtYS0+dm1fcGFnZV9wcm90KSA6
CisgICAgICAgICAgICAgICAgICAgICAgIHZtX2luc2VydF9wYWdlKHZtYSwgYWRkciwgcGFnZSk7
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
