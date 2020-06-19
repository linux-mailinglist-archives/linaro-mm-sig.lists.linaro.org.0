Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 602232003D0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:26:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84D546659B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 08:26:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6C5BC665A1; Fri, 19 Jun 2020 08:26:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9B826658C;
	Fri, 19 Jun 2020 08:25:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CF30C66566
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 08:25:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C1EC96658C; Fri, 19 Jun 2020 08:25:51 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 23D1966566
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 08:25:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21546145-1500050 for multiple; Fri, 19 Jun 2020 09:25:14 +0100
MIME-Version: 1.0
In-Reply-To: <CAPj87rM0S2OPssf+WA+pjanT-0Om3yuUM1zUJCv4qTx5VYE=Fw@mail.gmail.com>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-4-daniel.vetter@ffwll.ch>
 <159186243606.1506.4437341616828968890@build.alporthouse.com>
 <CAPM=9ty6r1LuXAH_rf98GH0R9yN3x8xzKPjZG3QyvokpQBR-Hg@mail.gmail.com>
 <CAPj87rM0S2OPssf+WA+pjanT-0Om3yuUM1zUJCv4qTx5VYE=Fw@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniel Stone <daniel@fooishbar.org>, Dave Airlie <airlied@gmail.com>
Message-ID: <159255511144.7737.12635440776531222029@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 19 Jun 2020 09:25:11 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, DRI Development <dri-devel@lists.freedesktop.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Thomas Hellstrom <thomas.hellstrom@intel.com>, amd-gfx mailing list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@intel.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, Christian König <christian.koenig@amd.com>, Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 03/18] dma-fence: basic
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

UXVvdGluZyBEYW5pZWwgU3RvbmUgKDIwMjAtMDYtMTEgMTA6MDE6NDYpCj4gSGksCj4gCj4gT24g
VGh1LCAxMSBKdW4gMjAyMCBhdCAwOTo0NCwgRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29t
PiB3cm90ZToKPiA+IE9uIFRodSwgMTEgSnVuIDIwMjAgYXQgMTg6MDEsIENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+ID4gSW50cm9kdWNpbmcgYSBnbG9i
YWwgbG9ja21hcCB0aGF0IGNhbm5vdCBjYXB0dXJlIHRoZSBydWxlcyBjb3JyZWN0bHksCj4gPgo+
ID4gQ2FuIHlvdSBkb2N1bWVudCB0aGUgcnVsZXMgYWxsIGRyaXZlcnMgc2hvdWxkIGJlIGZvbGxv
d2luZyB0aGVuLAo+ID4gYmVjYXVzZSBmcm9tIGhlcmUgaXQgbG9va3MgdG8gZ2V0IHJlZmFjdG9y
ZWQgZXZlcnkgdmVyc2lvbiBvZiBpOTE1LAo+ID4gYW5kIGl0IHdvdWxkIGJlIG5pY2UgaWYgd2Ug
Y291bGQgYWxsIGFpbSBmb3IgdGhlIHNhbWUgc2V0IG9mIHRoaW5ncwo+ID4gcm91Z2hseS4gV2Un
dmUgYWxyZWFkeSBoYWQgZW5vdWdoIHByb2JsZW1zIHdpdGggYW1kZ3B1IHZzIGk5MTUgdnMKPiA+
IGV2ZXJ5b25lIGVsc2Ugd2l0aCBmZW5jZXMsIGlmIHRoaXMgc3RvcHMgdGhhdCBpbiB0aGUgZnV0
dXJlIHRoZW4gSSdkCj4gPiByYXRoZXIgd2UgaGF2ZSB0aGF0IHRoYW4ganVzdCBzb21lIHVud3Jp
dHRlbiBydWxlcyBwZXIgZHJpdmVyIGFuZAo+ID4gdW50ZXN0YWJsZS4KPiAKPiBBcyBzb21lb25l
IHdobyBoYXMgc3VuayBhIGJ1bmNoIG9mIHdvcmsgaW50byBleHBsaWNpdC1mZW5jaW5nCj4gYXdh
cmVuZXNzIGluIG15IGNvbXBvc2l0b3Igc28gSSBjYW4gbmV2ZXIgYmUgYmxvY2tlZCwgSSdkIGJl
Cj4gZGlzYXBwb2ludGVkIGlmIHRoZSBpbmZyYXN0cnVjdHVyZSB3YXMgdWx0aW1hdGVseSBwb2lu
dGxlc3MgYmVjYXVzZQo+IHRoZSBkb2N1bWVudGVkIGZlbmNpbmcgcnVsZXMgd2VyZSBcX29fLyBv
ciB0aGVyZWFib3V0cy4gTG9ja2RlcAo+IGRlZmluaXRlbHkgaXNuJ3QgbXkgYXJlYSBvZiBleHBl
cnRpc2Ugc28gSSBjYW4ndCBjb21tZW50IG9uIHRoZSBwYXRjaAo+IHBlciBzZSwgYnV0IGhhdmlu
ZyBzb21ldGhpbmcgdG8gZW5zdXJlIHdlIGRvbid0IGhpdCBkZWFkbG9ja3Mgc3VyZQo+IHNlZW1z
IGEgbG90IGJldHRlciB0aGFuIG5vdGhpbmcuCgpUaGlzIGlzIGRvaW5nIGRlcGVuZGVuY3kgYW5h
bHlzaXMgb24gZXhlY3V0aW9uIGNvbnRleHRzIHdoaWNoIGlzIGEgZmFyCmNyeSBmcm9tIGRvaW5n
IHRoZSBmZW5jZSBkZXBlbmRlbmN5IGFuYWx5c2lzLCBhbmQgc28gaGFzIHRvIGFjdGl2ZWx5Cmln
bm9yZSB0aGUgY3ljbGVzIHRoYXQgbXVzdCBleGlzdCBvbiB0aGUgZG1hIHNpZGUsIGFuZCBhbHNv
IHRoZSBjeWNsZXMKdGhhdCBwcmV2ZW50IGVudGVyaW5nIGV4ZWN1dGlvbiBjb250ZXh0cyBvbiB0
aGUgQ1BVLiBJdCBoYXMgdG8gYWN0aXZlbHkKaWdub3JlIHNjaGVkdWxlciBleGVjdXRpb24gY29u
dGV4dHMsIGZvciBsb2NrZGVwIGNyaWVzLCBhbmQgc28gd2UgZG8gbm90CmdldCBhbmFseXNpcyBv
ZiB0aGUgbG9ja2luZyBjb250ZXh0cyBhbG9uZyB0aGF0IHBhdGguIFRoaXMgd291bGQgYmUKc29s
dmFibGUgYWxvbmcgdGhlIGxpbmVzIG9mIGV4dGVuZGluZyBsb2NrZGVwIGFsYSBsb2NrZGVwX2Rt
YV9lbnRlcigpLgoKSGFkIGk5MTUncyBleGVjdXRpb24gZmxvdyBiZWVuIG1hcmtlZCB1cCwgaXQg
c2hvdWxkIGhhdmUgZm91bmQgdGhlCmR1YmlvdXMgd2FpdCBmb3IgZXh0ZXJuYWwgZmVuY2VzIGlu
c2lkZSB0aGUgZGVhZCBHUFUgcmVjb3ZlcnksIGFuZApwcm9iYWJseSBmb3VuZCBhIGZldyBtb3Jl
IHRoaW5ncyB0byBjb21wbGFpbiBhYm91dCB3aXRoIHRoZSByZXNldCBsb2NraW5nLgpbTm90ZSB3
ZSBhbHJlYWR5IGRvIHRoZSBzYW1lIGFubm90YXRpb25zIGZvciB3YWl0LXZzLXJlc2V0LCBidXQg
bm90CnJlc2V0LXZzLWV4ZWN1dGlvbi5dCgpEZXRlcm1pbmF0aW9uIG9mIHdoaWNoIHdhaXRzIGFy
ZSBsZWdhbCBhbmQgd2hpY2ggYXJlIG5vdCBpcyBlbnRpcmVseSBhZApob2MsIGZvciB0aGVyZSBp
cyBubyBzdGF0dXMgY2hhbmdlIHRyYWNraW5nIGluIHRoZSBkZXBlbmRlbmN5IGFuYWx5c2lzClt0
aGF0IGlzIG9uY2UgYW4gZXhlY3V0aW9uIGNvbnRleHQgaXMgbGlua2VkIHRvIGEgcHVibGlzaGVk
IGZlbmNlLCBhZ2FpbgppbnRlZ3JhbCB0byBsb2NrZGVwLl0gQ29uc2lkZXIgaWYgdGhlIGNvbXBs
ZXRpb24gY2hhaW4gaW4gYXRvbWljIGlzCnN3YXBwZWQgb3V0IGZvciB0aGUgbW9yYWxseSBlcXVp
dmFsZW50IGZlbmNlcyBhbG9uZyBpbnRlcnR3aW5lZCB0aW1lbGluZXMsCmFuZCBzbyBpdCBkb2Vz
IGEgYnVuY2ggb2YgZG1hX2ZlbmNlX3dhaXQoKSBpbnN0ZWFkLiBXaHkgYXJlIHRob3NlIHdhaXRz
CmxlZ2FsIGRlc3BpdGUgdGhlbSBiZWluZyBhZnRlciB3ZSBoYXZlIGNvbW1pdHRlZCB0byBmdWxm
aWxsaW5nIHRoZSBvdXQKZmVuY2U/IFtXaHkgYXJlIHRoZSB3YWl0cyBvbiBhbmQgZm9yIHRoZSBH
UFUgbGVnYWwsIHNpbmNlIHRoZXkgZXF1YWxseQpibG9jayBleGVjdXRpb24gZmxvdz9dCgpGb3Jj
aW5nIGEgZ2VuZXJpYyBwcmltaXRpdmUgdG8gYWx3YXlzIGJlIHBhcnQgb2YgdGhlIHNhbWUgZ2xv
YmFsIG1hcCBpcwpob3JyaWJsZS4gWW91IGZvcmdvIGJlaW5nIGFibGUgdG8gdXNlIHRoZSBwcmlt
aXRpdmUgZm9yIHVucmVsYXRlZCB0YXNrcywKbG9zZSB0aGUgYWJpbGl0eSB0byBuYW1lIHBhcnRp
Y3VsYXIgY29udGV4dHMgdG8gZ2FpbiBtb3JlIGluZm9ybWF0aXZlCmRlcGVuZGVuY3kgY3ljbGUg
cmVwb3J0cyBmcm9tIGhhdmluZyB0aGUgZXhwbGljaXQgbGlua2FnZS4gWW91IGNhbiBhZGQKd2Fp
dF9tYXAgdHJhY2tpbmcgd2l0aG91dCBsb3NzIG9mIGdlbmVyYWxpdHkgW2luIGxlc3MgdGhhbiAx
MCBsaW5lc10sCmFuZCB5b3UgY2FuIHN0aWxsIGVuZm9yY2UgdGhhdCBhbGwgZmVuY2VzIHVzZWQg
Zm9yIGEgY29tbW9uIHB1cnBvc2UKZm9sbG93IHRoZSBzYW1lIHJ1bGVzIFt0aGUgc2ltcGxlc3Qg
d2F5IGJlaW5nIHRvIGRlZmF1bHQgdG8gdGhlIHNpbmd1bGFyCndhaXRfbWFwXS4gQnV0IGl0J3Mg
dGhlIGV4cGxpY2l0bHkgbmFtZWQgZXhlY3V0aW9uIGNvbnRleHRzIHRoYXQgYXJlIHRoZQpiaWdn
ZXN0IGJvb24gdG8gcmVhZGluZyB0aGUgY29kZSBhbmQgcmVhZGluZyB0aGUgbG9ja2RlcCB3YXJu
cy4KClRoaXMgaXMgYSBidW5jaCBvZiBhZCBob2MgdHJhY2tpbmcgZm9yIGEgdmVyeSBuYXJyb3cg
cHVycG9zZSBhcHBsaWVkCmdsb2JhbGx5LCB3aXRoIGxvc3Mgb2YgaW5mb3JtYXRpb24uCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
