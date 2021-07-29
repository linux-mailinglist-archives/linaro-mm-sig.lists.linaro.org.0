Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E333D9F38
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 10:09:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BB4563586
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 08:09:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 06C0563542; Thu, 29 Jul 2021 08:09:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF5FD6350B;
	Thu, 29 Jul 2021 08:09:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 316DD60C64
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 08:09:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2F61463509; Thu, 29 Jul 2021 08:09:09 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id EBBAA62F00
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 08:09:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id 9624E20201B;
 Thu, 29 Jul 2021 10:09:05 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id qMf5KNcZpsS5; Thu, 29 Jul 2021 10:09:05 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id 525BC20201A;
 Thu, 29 Jul 2021 10:09:04 +0200 (CEST)
Received: from [::1] by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1m916A-00140j-Bn; Thu, 29 Jul 2021 10:08:58 +0200
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Pekka Paalanen <ppaalanen@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
 <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
 <eedfdc75-72f8-9150-584b-c5e9d16db180@amd.com>
 <20210728165700.38c39cf8@eldfell>
 <74e310fa-e544-889f-2389-5abe06f80eb8@amd.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <fab1c1e6-64cb-6bab-4bc3-e61441174e2f@daenzer.net>
Date: Thu, 29 Jul 2021 10:08:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <74e310fa-e544-889f-2389-5abe06f80eb8@amd.com>
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
Cc: Rob Clark <robdclark@chromium.org>, Matthew Brost <matthew.brost@intel.com>,
 Jack Zhang <Jack.Zhang1@amd.com>, open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMS0wNy0yOCA0OjMwIHAubS4sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjgu
MDcuMjEgdW0gMTU6NTcgc2NocmllYiBQZWtrYSBQYWFsYW5lbjoKPj4gT24gV2VkLCAyOCBKdWwg
MjAyMSAxNTozMTo0MSArMDIwMAo+PiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOgo+Pgo+Pj4gQW0gMjguMDcuMjEgdW0gMTU6MjQgc2NocmllYiBNaWNo
ZWwgRMOkbnplcjoKPj4+PiBPbiAyMDIxLTA3LTI4IDM6MTMgcC5tLiwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPj4+Pj4gQW0gMjguMDcuMjEgdW0gMTU6MDggc2NocmllYiBNaWNoZWwgRMOkbnpl
cjoKPj4+Pj4+IE9uIDIwMjEtMDctMjggMTozNiBwLm0uLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+Pj4+Pj4+IEF0IGxlYXN0IEFNRCBoYXJkd2FyZSBpcyBhbHJlYWR5IGNhcGFibGUgb2YgZmxp
cHBpbmcgZnJhbWVzIG9uIEdQVSBldmVudHMgbGlrZSBmaW5pc2hpbmcgcmVuZGVyaW5nIChvciB1
cGxvYWRpbmcgZXRjKS4KPj4+Pj4+Pgo+Pj4+Pj4+IEJ5IHdhaXRpbmcgaW4gdXNlcnNwYWNlIG9u
IHRoZSBDUFUgYmVmb3JlIHNlbmQgdGhlIGZyYW1lIHRvIHRoZSBoYXJkd2FyZSB5b3UgYXJlIGNv
bXBsZXRlbHkga2lsbGluZyBvZiBzdWNoIGZlYXR1cmVzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gRm9yIGNv
bXBvc2luZyB1c2UgY2FzZXMgdGhhdCBtYWtlcyBzZW5zZSwgYnV0IGNlcnRhaW5seSBub3QgZm9y
IGZ1bGwgc2NyZWVuIGFwcGxpY2F0aW9ucyBhcyBmYXIgYXMgSSBjYW4gc2VlLgo+Pj4+Pj4gRXZl
biBmb3IgZnVsbHNjcmVlbiwgdGhlIGN1cnJlbnQgS01TIEFQSSBvbmx5IGFsbG93cyBxdWV1aW5n
IGEgc2luZ2xlIHBhZ2UgZmxpcCBwZXIgQ1JUQywgd2l0aCBubyB3YXkgdG8gY2FuY2VsIG9yIG90
aGVyd2lzZSBtb2RpZnkgaXQuIFRoZXJlZm9yZSwgYSBXYXlsYW5kIGNvbXBvc2l0b3IgaGFzIHRv
IHNldCBhIGRlYWRsaW5lIGZvciB0aGUgbmV4dCByZWZyZXNoIGN5Y2xlLCBhbmQgd2hlbiB0aGUg
ZGVhZGxpbmUgcGFzc2VzLCBpdCBoYXMgdG8gc2VsZWN0IHRoZSBiZXN0IGJ1ZmZlciBhdmFpbGFi
bGUgZm9yIHRoZSBmdWxsc2NyZWVuIHN1cmZhY2UuIFRvIG1ha2Ugc3VyZSB0aGUgZmxpcCB3aWxs
IG5vdCBtaXNzIHRoZSBuZXh0IHJlZnJlc2ggY3ljbGUsIHRoZSBjb21wb3NpdG9yIGhhcyB0byBw
aWNrIGFuIGlkbGUgYnVmZmVyLiBJZiBpdCBwaWNrcyBhIG5vbi1pZGxlIGJ1ZmZlciwgYW5kIHRo
ZSBwZW5kaW5nIHJlbmRlcmluZyBkb2VzIG5vdCBmaW5pc2ggaW4gdGltZSBmb3IgdmVydGljYWwg
YmxhbmssIHRoZSBmbGlwIHdpbGwgYmUgZGVsYXllZCBieSBhdCBsZWFzdCBvbmUgcmVmcmVzaCBj
eWNsZSwgd2hpY2ggcmVzdWx0cyBpbiB2aXNpYmxlIHN0dXR0ZXJpbmcuCj4+Pj4+Pgo+Pj4+Pj4g
KFVudGlsIHRoZSBkZWFkbGluZSBwYXNzZXMsIHRoZSBXYXlsYW5kIGNvbXBvc2l0b3IgY2FuJ3Qg
ZXZlbiBrbm93IGlmIGEgcHJldmlvdXNseSBmdWxsc2NyZWVuIHN1cmZhY2Ugd2lsbCBzdGlsbCBi
ZSBmdWxsc2NyZWVuIGZvciB0aGUgbmV4dCByZWZyZXNoIGN5Y2xlKQo+Pj4+PiBXZWxsIHRoZW4g
bGV0J3MgZXh0ZW5kIHRoZSBLTVMgQVBJIGluc3RlYWQgb2YgaGFja2luZyB0b2dldGhlciB3b3Jr
YXJvdW5kcyBpbiB1c2Vyc3BhY2UuCj4+Pj4gVGhhdCdzIGluZGVlZCBhIHBvc3NpYmxlIHNvbHV0
aW9uIGZvciB0aGUgZnVsbHNjcmVlbiAvIGRpcmVjdCBzY2Fub3V0IGNhc2UuCj4+Pj4KPj4+PiBO
b3QgZm9yIHRoZSBnZW5lcmFsIGNvbXBvc2l0aW5nIGNhc2UgdGhvdWdoLCBzaW5jZSBhIGNvbXBv
c2l0b3IgZG9lcyBub3Qgd2FudCB0byBjb21wb3NpdGUgbXVsdGlwbGUgb3V0cHV0IGZyYW1lcyBw
ZXIgZGlzcGxheSByZWZyZXNoIGN5Y2xlLCBzbyBpdCBoYXMgdG8gbWFrZSBzdXJlIHRoZSBvbmUg
ZnJhbWUgaGl0cyB0aGUgdGFyZ2V0Lgo+Pj4gWWVhaCwgdGhhdCdzIHRydWUgYXMgd2VsbC4KPj4+
Cj4+PiBBdCBsZWFzdCBhcyBsb25nIGFzIG5vYm9keSBpbnZlbnRzIGEgbWVjaGFuaXNtIHRvIGRv
IHRoaXMgZGVjaXNpb24gb24KPj4+IHRoZSBHUFUgaW5zdGVhZC4KPj4gVGhhdCB3b3VsZCBtZWFu
IHB1dHRpbmcgdGhlIHdob2xlIHdpbmRvdyBtYW5hZ2VyIGludG8gdGhlIEdQVS4KPiAKPiBOb3Qg
cmVhbGx5LiBZb3Ugb25seSBuZWVkIHRvIGRlY2lkZSBpZiB5b3Ugd2FudCB0byB1c2UgdGhlIG5l
dyBiYWNraW5nIHN0b3JlIG9yIHRoZSBvbGQgb25lIGJhc2VkIG9uIGlmIHRoZSBuZXcgc3VyZmFj
ZSBpcyByZWFkeSBvciBub3QuCgpXaGlsZSBzb21ldGhpbmcgbGlrZSB0aGF0IG1pZ2h0IGJlIGEg
cG9zc2libGUgb3B0aW1pemF0aW9uIGZvciAocHJvYmFibHkgY29tbW9uKSBjYXNlcyB3aGVyZSB0
aGUgbmV3IGJ1ZmZlciBkb2VzIG5vdCBjb21lIHdpdGggb3RoZXIgc3RhdGUgY2hhbmdlcyB3aGlj
aCBhZmZlY3QgdGhlIG91dHB1dCBmcmFtZSBiZXlvbmQgdGhlIGJ1ZmZlciBjb250ZW50cywgdGhl
cmUgd2lsbCBhbHdheXMgYmUgY2FzZXMgKGF0IGxlYXN0IHVudGlsIGEgV2F5bGFuZCBjb21wb3Np
dG9yIGNhbiBmdWxseSBydW4gb24gdGhlIEdQVSwgYXMgUGVra2Egbm90ZWQgc29tZXdoYXQgam9r
aW5nbHkgOikgd2hlcmUgdGhpcyBuZWVkcyB0byBiZSBoYW5kbGVkIG9uIHRoZSBDUFUuCgpJJ20g
Y3VycmVudGx5IGZvY3VzaW5nIG9uIHRoYXQgZ2VuZXJhbCBjYXNlLiBPcHRpbWl6YXRpb25zIGZv
ciBzcGVjaWFsIGNhc2VzIG1heSBmb2xsb3cgbGF0ZXIuCgoKLS0gCkVhcnRobGluZyBNaWNoZWwg
RMOkbnplciAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICBodHRwczovL3JlZGhhdC5jb20K
TGlicmUgc29mdHdhcmUgZW50aHVzaWFzdCAgICAgICAgICAgICB8ICAgICAgICAgICAgIE1lc2Eg
YW5kIFggZGV2ZWxvcGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
