Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 299C33D8E93
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 15:08:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0D806354F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 13:08:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7CAA7647BC; Wed, 28 Jul 2021 13:08:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B06061813;
	Wed, 28 Jul 2021 13:08:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B959960C39
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 13:08:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B738461179; Wed, 28 Jul 2021 13:08:24 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id 5A0B161813
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 13:08:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id 7C50320201B;
 Wed, 28 Jul 2021 15:08:21 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 4BGu1Zb87bub; Wed, 28 Jul 2021 15:08:20 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id 2F6EF20201A;
 Wed, 28 Jul 2021 15:08:20 +0200 (CEST)
Received: from [::1] by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1m8jIJ-000xp8-5z; Wed, 28 Jul 2021 15:08:19 +0200
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Rob Clark <robdclark@chromium.org>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
Date: Wed, 28 Jul 2021 15:08:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
Content-Language: en-CA
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Matthew Brost <matthew.brost@intel.com>, Jack Zhang <Jack.Zhang1@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMS0wNy0yOCAxOjM2IHAubS4sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjcu
MDcuMjEgdW0gMTc6Mzcgc2NocmllYiBSb2IgQ2xhcms6Cj4+IE9uIFR1ZSwgSnVsIDI3LCAyMDIx
IGF0IDg6MTkgQU0gTWljaGVsIETDpG56ZXIgPG1pY2hlbEBkYWVuemVyLm5ldD4gd3JvdGU6Cj4+
PiBPbiAyMDIxLTA3LTI3IDU6MTIgcC5tLiwgUm9iIENsYXJrIHdyb3RlOgo+Pj4+IE9uIFR1ZSwg
SnVsIDI3LCAyMDIxIGF0IDc6NTAgQU0gTWljaGVsIETDpG56ZXIgPG1pY2hlbEBkYWVuemVyLm5l
dD4gd3JvdGU6Cj4+Pj4+IE9uIDIwMjEtMDctMjcgMTozOCBhLm0uLCBSb2IgQ2xhcmsgd3JvdGU6
Cj4+Pj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4+Pj4+Pgo+
Pj4+Pj4gQmFzZWQgb24gZGlzY3Vzc2lvbiBmcm9tIGEgcHJldmlvdXMgc2VyaWVzWzFdIHRvIGFk
ZCBhICJib29zdCIgbWVjaGFuaXNtCj4+Pj4+PiB3aGVuLCBmb3IgZXhhbXBsZSwgdmJsYW5rIGRl
YWRsaW5lcyBhcmUgbWlzc2VkLsKgIEluc3RlYWQgb2YgYSBib29zdAo+Pj4+Pj4gY2FsbGJhY2ss
IHRoaXMgYXBwcm9hY2ggYWRkcyBhIHdheSB0byBzZXQgYSBkZWFkbGluZSBvbiB0aGUgZmVuY2Us
IGJ5Cj4+Pj4+PiB3aGljaCB0aGUgd2FpdGVyIHdvdWxkIGxpa2UgdG8gc2VlIHRoZSBmZW5jZSBz
aWduYWxsZWQuCj4+Pj4+Pgo+Pj4+Pj4gSSd2ZSBub3QgeWV0IGhhZCBhIGNoYW5jZSB0byByZS13
b3JrIHRoZSBkcm0vbXNtIHBhcnQgb2YgdGhpcywgYnV0Cj4+Pj4+PiB3YW50ZWQgdG8gc2VuZCB0
aGlzIG91dCBhcyBhbiBSRkMgaW4gY2FzZSBJIGRvbid0IGhhdmUgYSBjaGFuY2UgdG8KPj4+Pj4+
IGZpbmlzaCB0aGUgZHJtL21zbSBwYXJ0IHRoaXMgd2Vlay4KPj4+Pj4+Cj4+Pj4+PiBPcmlnaW5h
bCBkZXNjcmlwdGlvbjoKPj4+Pj4+Cj4+Pj4+PiBJbiBzb21lIGNhc2VzLCBsaWtlIGRvdWJsZS1i
dWZmZXJlZCByZW5kZXJpbmcsIG1pc3NpbmcgdmJsYW5rcyBjYW4KPj4+Pj4+IHRyaWNrIHRoZSBH
UFUgaW50byBydW5uaW5nIGF0IGEgbG93ZXIgZnJlcXVlbmNlLCB3aGVuIHJlYWxseSB3ZQo+Pj4+
Pj4gd2FudCB0byBiZSBydW5uaW5nIGF0IGEgaGlnaGVyIGZyZXF1ZW5jeSB0byBub3QgbWlzcyB0
aGUgdmJsYW5rcwo+Pj4+Pj4gaW4gdGhlIGZpcnN0IHBsYWNlLgo+Pj4+Pj4KPj4+Pj4+IFRoaXMg
aXMgcGFydGlhbGx5IGluc3BpcmVkIGJ5IGEgdHJpY2sgaTkxNSBkb2VzLCBidXQgaW1wbGVtZW50
ZWQKPj4+Pj4+IHZpYSBkbWEtZmVuY2UgZm9yIGEgY291cGxlIG9mIHJlYXNvbnM6Cj4+Pj4+Pgo+
Pj4+Pj4gMSkgVG8gY29udGludWUgdG8gYmUgYWJsZSB0byB1c2UgdGhlIGF0b21pYyBoZWxwZXJz
Cj4+Pj4+PiAyKSBUbyBzdXBwb3J0IGNhc2VzIHdoZXJlIGRpc3BsYXkgYW5kIGdwdSBhcmUgZGlm
ZmVyZW50IGRyaXZlcnMKPj4+Pj4+Cj4+Pj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy85MDMzMS8KPj4+Pj4gVW5mb3J0dW5hdGVseSwgbm9uZSBvZiB0aGVz
ZSBhcHByb2FjaGVzIHdpbGwgaGF2ZSB0aGUgZnVsbCBpbnRlbmRlZCBlZmZlY3Qgb25jZSBXYXls
YW5kIGNvbXBvc2l0b3JzIHN0YXJ0IHdhaXRpbmcgZm9yIGNsaWVudCBidWZmZXJzIHRvIGJlY29t
ZSBpZGxlIGJlZm9yZSB1c2luZyB0aGVtIGZvciBhbiBvdXRwdXQgZnJhbWUgKHRvIHByZXZlbnQg
b3V0cHV0IGZyYW1lcyBmcm9tIGdldHRpbmcgZGVsYXllZCBieSBjbGllbnQgd29yaykuIFNlZSBo
dHRwczovL2dpdGxhYi5nbm9tZS5vcmcvR05PTUUvbXV0dGVyLy0vbWVyZ2VfcmVxdWVzdHMvMTg4
MCAoc2hhbWVsZXNzIHBsdWcgOikgZm9yIGEgcHJvb2Ygb2YgY29uY2VwdCBvZiB0aGlzIGZvciBt
dXR0ZXIuIFRoZSBib29zdCB3aWxsIG9ubHkgYWZmZWN0IHRoZSBjb21wb3NpdG9yJ3Mgb3duIEdQ
VSB3b3JrLCBub3QgdGhlIGNsaWVudCB3b3JrICh3aGljaCBtZWFucyBubyBlZmZlY3QgYXQgYWxs
IGZvciBmdWxsc2NyZWVuIGFwcHMgd2hlcmUgdGhlIGNvbXBvc2l0b3IgY2FuIHNjYW4gb3V0IHRo
ZSBjbGllbnQgYnVmZmVycyBkaXJlY3RseSkuCj4+Pj4+Cj4+Pj4gSSBndWVzcyB5b3UgbWVhbiAi
bm8gZWZmZWN0IGF0IGFsbCAqZXhjZXB0KiBmb3IgZnVsbHNjcmVlbi4uLiI/Cj4+PiBJIG1lYW50
IHdoYXQgSSB3cm90ZTogVGhlIGNvbXBvc2l0b3Igd2lsbCB3YWl0IGZvciB0aGUgbmV4dCBidWZm
ZXIgdG8gYmVjb21lIGlkbGUsIHNvIHRoZXJlJ3Mgbm8gYm9vc3QgZnJvbSB0aGlzIG1lY2hhbmlz
bSBmb3IgdGhlIGNsaWVudCBkcmF3aW5nIHRvIHRoYXQgYnVmZmVyLiBBbmQgc2luY2UgdGhlIGNv
bXBvc2l0b3IgZG9lcyBubyBkcmF3aW5nIG9mIGl0cyBvd24gaW4gdGhpcyBjYXNlLCB0aGVyZSdz
IG5vIGJvb3N0IGZyb20gdGhhdCBlaXRoZXIuCj4+Pgo+Pj4KPj4+PiBJJ2QgcGVyaGFwcyByZWNv
bW1lbmQgdGhhdCB3YXlsYW5kIGNvbXBvc2l0b3JzLCBpbiBjYXNlcyB3aGVyZSBvbmx5IGEKPj4+
PiBzaW5nbGUgbGF5ZXIgaXMgY2hhbmdpbmcsIG5vdCB0cnkgdG8gYmUgY2xldmVyIGFuZCBqdXN0
IHB1c2ggdGhlCj4+Pj4gdXBkYXRlIGRvd24gdG8gdGhlIGtlcm5lbC4KPj4+IEV2ZW4ganVzdCBm
b3IgdGhlIGZ1bGxzY3JlZW4gZGlyZWN0IHNjYW5vdXQgY2FzZSwgdGhhdCB3b3VsZCByZXF1aXJl
IHNvbWUga2luZCBvZiBhdG9taWMgS01TIEFQSSBleHRlbnNpb24gdG8gYWxsb3cgcXVldWluZyBt
dWx0aXBsZSBwYWdlIGZsaXBzIGZvciB0aGUgc2FtZSBDUlRDLgo+Pj4KPj4+IEZvciBvdGhlciBj
YXNlcywgdGhpcyB3b3VsZCBhbHNvIHJlcXVpcmUgYSBtZWNoYW5pc20gdG8gY2FuY2VsIGEgcGVu
ZGluZyBhdG9taWMgY29tbWl0LCBmb3Igd2hlbiBhbm90aGVyIHN1cmZhY2UgdXBkYXRlIGNvbWVz
IGluIGJlZm9yZSB0aGUgY29tcG9zaXRvcidzIGRlYWRsaW5lLCB3aGljaCBhZmZlY3RzIHRoZSBw
cmV2aW91c2x5IHNpbmdsZSB1cGRhdGluZyBzdXJmYWNlIGFzIHdlbGwuCj4+Pgo+PiBXZWxsLCBp
biB0aGUgZW5kLCB0aGVyZSBpcyBtb3JlIHRoYW4gb25lIGNvbXBvc2l0b3Igb3V0IHRoZXJlLi4g
YW5kIGlmCj4+IHNvbWUgd2F5bGFuZCBjb21wb3NpdG9ycyBhcmUgZ29pbmcgdGhpcyByb3V0ZSwg
dGhleSBjYW4gYWxzbyBpbXBsZW1lbnQKPj4gdGhlIHNhbWUgbWVjaGFuaXNtIGluIHVzZXJzcGFj
ZSB1c2luZyB0aGUgc3lzZnMgdGhhdCBkZXZmcmVxIGV4cG9ydHMuCj4+Cj4+IEJ1dCBpdCBzb3Vu
ZHMgc2ltcGxlciB0byBtZSBmb3IgdGhlIGNvbXBvc2l0b3IgdG8gaGF2ZSBhIHNvcnQgb2YgImdh
bWUKPj4gbW9kZSIgZm9yIGZ1bGxzY3JlZW4gZ2FtZXMuLiBJJ20gbGVzcyB3b3JyaWVkIGFib3V0
IFVJIGludGVyYWN0aXZlCj4+IHdvcmtsb2FkcywgYm9vc3RpbmcgdGhlIEdQVSBmcmVxIHVwb24g
c3VkZGVuIGFjdGl2aXR5IGFmdGVyIGEgcGVyaW9kCj4+IG9mIGluYWN0aXZpdHkgc2VlbXMgdG8g
d29yayByZWFzb25hYmx5IHdlbGwgdGhlcmUuCj4gCj4gQXQgbGVhc3QgQU1EIGhhcmR3YXJlIGlz
IGFscmVhZHkgY2FwYWJsZSBvZiBmbGlwcGluZyBmcmFtZXMgb24gR1BVIGV2ZW50cyBsaWtlIGZp
bmlzaGluZyByZW5kZXJpbmcgKG9yIHVwbG9hZGluZyBldGMpLgo+IAo+IEJ5IHdhaXRpbmcgaW4g
dXNlcnNwYWNlIG9uIHRoZSBDUFUgYmVmb3JlIHNlbmQgdGhlIGZyYW1lIHRvIHRoZSBoYXJkd2Fy
ZSB5b3UgYXJlIGNvbXBsZXRlbHkga2lsbGluZyBvZiBzdWNoIGZlYXR1cmVzLgo+IAo+IEZvciBj
b21wb3NpbmcgdXNlIGNhc2VzIHRoYXQgbWFrZXMgc2Vuc2UsIGJ1dCBjZXJ0YWlubHkgbm90IGZv
ciBmdWxsIHNjcmVlbiBhcHBsaWNhdGlvbnMgYXMgZmFyIGFzIEkgY2FuIHNlZS4KCkV2ZW4gZm9y
IGZ1bGxzY3JlZW4sIHRoZSBjdXJyZW50IEtNUyBBUEkgb25seSBhbGxvd3MgcXVldWluZyBhIHNp
bmdsZSBwYWdlIGZsaXAgcGVyIENSVEMsIHdpdGggbm8gd2F5IHRvIGNhbmNlbCBvciBvdGhlcndp
c2UgbW9kaWZ5IGl0LiBUaGVyZWZvcmUsIGEgV2F5bGFuZCBjb21wb3NpdG9yIGhhcyB0byBzZXQg
YSBkZWFkbGluZSBmb3IgdGhlIG5leHQgcmVmcmVzaCBjeWNsZSwgYW5kIHdoZW4gdGhlIGRlYWRs
aW5lIHBhc3NlcywgaXQgaGFzIHRvIHNlbGVjdCB0aGUgYmVzdCBidWZmZXIgYXZhaWxhYmxlIGZv
ciB0aGUgZnVsbHNjcmVlbiBzdXJmYWNlLiBUbyBtYWtlIHN1cmUgdGhlIGZsaXAgd2lsbCBub3Qg
bWlzcyB0aGUgbmV4dCByZWZyZXNoIGN5Y2xlLCB0aGUgY29tcG9zaXRvciBoYXMgdG8gcGljayBh
biBpZGxlIGJ1ZmZlci4gSWYgaXQgcGlja3MgYSBub24taWRsZSBidWZmZXIsIGFuZCB0aGUgcGVu
ZGluZyByZW5kZXJpbmcgZG9lcyBub3QgZmluaXNoIGluIHRpbWUgZm9yIHZlcnRpY2FsIGJsYW5r
LCB0aGUgZmxpcCB3aWxsIGJlIGRlbGF5ZWQgYnkgYXQgbGVhc3Qgb25lIHJlZnJlc2ggY3ljbGUs
IHdoaWNoIHJlc3VsdHMgaW4gdmlzaWJsZSBzdHV0dGVyaW5nLgoKKFVudGlsIHRoZSBkZWFkbGlu
ZSBwYXNzZXMsIHRoZSBXYXlsYW5kIGNvbXBvc2l0b3IgY2FuJ3QgZXZlbiBrbm93IGlmIGEgcHJl
dmlvdXNseSBmdWxsc2NyZWVuIHN1cmZhY2Ugd2lsbCBzdGlsbCBiZSBmdWxsc2NyZWVuIGZvciB0
aGUgbmV4dCByZWZyZXNoIGN5Y2xlKQoKCi0tIApFYXJ0aGxpbmcgTWljaGVsIETDpG56ZXIgICAg
ICAgICAgICAgICB8ICAgICAgICAgICAgICAgaHR0cHM6Ly9yZWRoYXQuY29tCkxpYnJlIHNvZnR3
YXJlIGVudGh1c2lhc3QgICAgICAgICAgICAgfCAgICAgICAgICAgICBNZXNhIGFuZCBYIGRldmVs
b3BlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
