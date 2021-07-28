Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C343D8EF6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 15:24:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D98D863570
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 13:24:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B29C563568; Wed, 28 Jul 2021 13:24:33 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 290F0634DE;
	Wed, 28 Jul 2021 13:24:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B169760C39
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 13:24:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AD3BB634DE; Wed, 28 Jul 2021 13:24:29 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id 73CF360C39
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 13:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id E520420201B;
 Wed, 28 Jul 2021 15:24:26 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id I_-bR94y0FtT; Wed, 28 Jul 2021 15:24:26 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id 0B98420201A;
 Wed, 28 Jul 2021 15:24:25 +0200 (CEST)
Received: from [::1] by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1m8jXs-000xuj-7t; Wed, 28 Jul 2021 15:24:24 +0200
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Rob Clark <robdclark@chromium.org>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
Date: Wed, 28 Jul 2021 15:24:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
Content-Language: de-CH-frami
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
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMS0wNy0yOCAzOjEzIHAubS4sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjgu
MDcuMjEgdW0gMTU6MDggc2NocmllYiBNaWNoZWwgRMOkbnplcjoKPj4gT24gMjAyMS0wNy0yOCAx
OjM2IHAubS4sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBBbSAyNy4wNy4yMSB1bSAxNzoz
NyBzY2hyaWViIFJvYiBDbGFyazoKPj4+PiBPbiBUdWUsIEp1bCAyNywgMjAyMSBhdCA4OjE5IEFN
IE1pY2hlbCBEw6RuemVyIDxtaWNoZWxAZGFlbnplci5uZXQ+IHdyb3RlOgo+Pj4+PiBPbiAyMDIx
LTA3LTI3IDU6MTIgcC5tLiwgUm9iIENsYXJrIHdyb3RlOgo+Pj4+Pj4gT24gVHVlLCBKdWwgMjcs
IDIwMjEgYXQgNzo1MCBBTSBNaWNoZWwgRMOkbnplciA8bWljaGVsQGRhZW56ZXIubmV0PiB3cm90
ZToKPj4+Pj4+PiBPbiAyMDIxLTA3LTI3IDE6MzggYS5tLiwgUm9iIENsYXJrIHdyb3RlOgo+Pj4+
Pj4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4+Pj4+Pj4+Cj4+
Pj4+Pj4+IEJhc2VkIG9uIGRpc2N1c3Npb24gZnJvbSBhIHByZXZpb3VzIHNlcmllc1sxXSB0byBh
ZGQgYSAiYm9vc3QiIG1lY2hhbmlzbQo+Pj4+Pj4+PiB3aGVuLCBmb3IgZXhhbXBsZSwgdmJsYW5r
IGRlYWRsaW5lcyBhcmUgbWlzc2VkLsKgIEluc3RlYWQgb2YgYSBib29zdAo+Pj4+Pj4+PiBjYWxs
YmFjaywgdGhpcyBhcHByb2FjaCBhZGRzIGEgd2F5IHRvIHNldCBhIGRlYWRsaW5lIG9uIHRoZSBm
ZW5jZSwgYnkKPj4+Pj4+Pj4gd2hpY2ggdGhlIHdhaXRlciB3b3VsZCBsaWtlIHRvIHNlZSB0aGUg
ZmVuY2Ugc2lnbmFsbGVkLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJJ3ZlIG5vdCB5ZXQgaGFkIGEgY2hh
bmNlIHRvIHJlLXdvcmsgdGhlIGRybS9tc20gcGFydCBvZiB0aGlzLCBidXQKPj4+Pj4+Pj4gd2Fu
dGVkIHRvIHNlbmQgdGhpcyBvdXQgYXMgYW4gUkZDIGluIGNhc2UgSSBkb24ndCBoYXZlIGEgY2hh
bmNlIHRvCj4+Pj4+Pj4+IGZpbmlzaCB0aGUgZHJtL21zbSBwYXJ0IHRoaXMgd2Vlay4KPj4+Pj4+
Pj4KPj4+Pj4+Pj4gT3JpZ2luYWwgZGVzY3JpcHRpb246Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEluIHNv
bWUgY2FzZXMsIGxpa2UgZG91YmxlLWJ1ZmZlcmVkIHJlbmRlcmluZywgbWlzc2luZyB2Ymxhbmtz
IGNhbgo+Pj4+Pj4+PiB0cmljayB0aGUgR1BVIGludG8gcnVubmluZyBhdCBhIGxvd2VyIGZyZXF1
ZW5jZSwgd2hlbiByZWFsbHkgd2UKPj4+Pj4+Pj4gd2FudCB0byBiZSBydW5uaW5nIGF0IGEgaGln
aGVyIGZyZXF1ZW5jeSB0byBub3QgbWlzcyB0aGUgdmJsYW5rcwo+Pj4+Pj4+PiBpbiB0aGUgZmly
c3QgcGxhY2UuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoaXMgaXMgcGFydGlhbGx5IGluc3BpcmVkIGJ5
IGEgdHJpY2sgaTkxNSBkb2VzLCBidXQgaW1wbGVtZW50ZWQKPj4+Pj4+Pj4gdmlhIGRtYS1mZW5j
ZSBmb3IgYSBjb3VwbGUgb2YgcmVhc29uczoKPj4+Pj4+Pj4KPj4+Pj4+Pj4gMSkgVG8gY29udGlu
dWUgdG8gYmUgYWJsZSB0byB1c2UgdGhlIGF0b21pYyBoZWxwZXJzCj4+Pj4+Pj4+IDIpIFRvIHN1
cHBvcnQgY2FzZXMgd2hlcmUgZGlzcGxheSBhbmQgZ3B1IGFyZSBkaWZmZXJlbnQgZHJpdmVycwo+
Pj4+Pj4+Pgo+Pj4+Pj4+PiBbMV0gaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5v
dXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZyUy
RnNlcmllcyUyRjkwMzMxJTJGJmFtcDtkYXRhPTA0JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQw
YW1kLmNvbSU3QzI2OWIyZGYzZTFkYzRmMGI4NTZkMDhkOTUxYzhjNzY4JTdDM2RkODk2MWZlNDg4
NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzYzMDc0NTA5MTUzODU2MyU3Q1Vua25v
d24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pC
VGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MxMDAwJmFtcDtzZGF0YT1lWWFTT1NTNXdPbmdO
QWQ5d3VmcDVlV0N4NUd0QXdvNkdrdWx0Smdyam1BJTNEJmFtcDtyZXNlcnZlZD0wCj4+Pj4+Pj4g
VW5mb3J0dW5hdGVseSwgbm9uZSBvZiB0aGVzZSBhcHByb2FjaGVzIHdpbGwgaGF2ZSB0aGUgZnVs
bCBpbnRlbmRlZCBlZmZlY3Qgb25jZSBXYXlsYW5kIGNvbXBvc2l0b3JzIHN0YXJ0IHdhaXRpbmcg
Zm9yIGNsaWVudCBidWZmZXJzIHRvIGJlY29tZSBpZGxlIGJlZm9yZSB1c2luZyB0aGVtIGZvciBh
biBvdXRwdXQgZnJhbWUgKHRvIHByZXZlbnQgb3V0cHV0IGZyYW1lcyBmcm9tIGdldHRpbmcgZGVs
YXllZCBieSBjbGllbnQgd29yaykuIFNlZSBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0
aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnaXRsYWIuZ25vbWUub3JnJTJGR05P
TUUlMkZtdXR0ZXIlMkYtJTJGbWVyZ2VfcmVxdWVzdHMlMkYxODgwJmFtcDtkYXRhPTA0JTdDMDEl
N0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzI2OWIyZGYzZTFkYzRmMGI4NTZkMDhkOTUx
YzhjNzY4JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzYz
MDc0NTA5MTUzODU2MyU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURB
aUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MxMDAwJmFt
cDtzZGF0YT0xWmtPekxxYmlLU3lDaXhHWjB1N0hkJTJGYzFZblVadWIlMkYlMkZ4N1J1RWNsRktn
JTNEJmFtcDtyZXNlcnZlZD0wIChzaGFtZWxlc3MgcGx1ZyA6KSBmb3IgYSBwcm9vZiBvZiBjb25j
ZXB0IG9mIHRoaXMgZm9yIG11dHRlci4gVGhlIGJvb3N0IHdpbGwgb25seSBhZmZlY3QgdGhlIGNv
bXBvc2l0b3IncyBvd24gR1BVIHdvcmssIG5vdCB0aGUgY2xpZW50IHdvcmsgKHdoaWNoIG1lYW5z
IG5vIGVmZmVjdCBhdCBhbGwgZm9yIGZ1bGxzY3JlZW4gYXBwcyB3aGVyZSB0aGUgY29tcG9zaXRv
ciBjYW4gc2NhbiBvdXQgdGhlIGNsaWVudCBidWZmZXJzIGRpcmVjdGx5KS4KPj4+Pj4+Pgo+Pj4+
Pj4gSSBndWVzcyB5b3UgbWVhbiAibm8gZWZmZWN0IGF0IGFsbCAqZXhjZXB0KiBmb3IgZnVsbHNj
cmVlbi4uLiI/Cj4+Pj4+IEkgbWVhbnQgd2hhdCBJIHdyb3RlOiBUaGUgY29tcG9zaXRvciB3aWxs
IHdhaXQgZm9yIHRoZSBuZXh0IGJ1ZmZlciB0byBiZWNvbWUgaWRsZSwgc28gdGhlcmUncyBubyBi
b29zdCBmcm9tIHRoaXMgbWVjaGFuaXNtIGZvciB0aGUgY2xpZW50IGRyYXdpbmcgdG8gdGhhdCBi
dWZmZXIuIEFuZCBzaW5jZSB0aGUgY29tcG9zaXRvciBkb2VzIG5vIGRyYXdpbmcgb2YgaXRzIG93
biBpbiB0aGlzIGNhc2UsIHRoZXJlJ3Mgbm8gYm9vc3QgZnJvbSB0aGF0IGVpdGhlci4KPj4+Pj4K
Pj4+Pj4KPj4+Pj4+IEknZCBwZXJoYXBzIHJlY29tbWVuZCB0aGF0IHdheWxhbmQgY29tcG9zaXRv
cnMsIGluIGNhc2VzIHdoZXJlIG9ubHkgYQo+Pj4+Pj4gc2luZ2xlIGxheWVyIGlzIGNoYW5naW5n
LCBub3QgdHJ5IHRvIGJlIGNsZXZlciBhbmQganVzdCBwdXNoIHRoZQo+Pj4+Pj4gdXBkYXRlIGRv
d24gdG8gdGhlIGtlcm5lbC4KPj4+Pj4gRXZlbiBqdXN0IGZvciB0aGUgZnVsbHNjcmVlbiBkaXJl
Y3Qgc2Nhbm91dCBjYXNlLCB0aGF0IHdvdWxkIHJlcXVpcmUgc29tZSBraW5kIG9mIGF0b21pYyBL
TVMgQVBJIGV4dGVuc2lvbiB0byBhbGxvdyBxdWV1aW5nIG11bHRpcGxlIHBhZ2UgZmxpcHMgZm9y
IHRoZSBzYW1lIENSVEMuCj4+Pj4+Cj4+Pj4+IEZvciBvdGhlciBjYXNlcywgdGhpcyB3b3VsZCBh
bHNvIHJlcXVpcmUgYSBtZWNoYW5pc20gdG8gY2FuY2VsIGEgcGVuZGluZyBhdG9taWMgY29tbWl0
LCBmb3Igd2hlbiBhbm90aGVyIHN1cmZhY2UgdXBkYXRlIGNvbWVzIGluIGJlZm9yZSB0aGUgY29t
cG9zaXRvcidzIGRlYWRsaW5lLCB3aGljaCBhZmZlY3RzIHRoZSBwcmV2aW91c2x5IHNpbmdsZSB1
cGRhdGluZyBzdXJmYWNlIGFzIHdlbGwuCj4+Pj4+Cj4+Pj4gV2VsbCwgaW4gdGhlIGVuZCwgdGhl
cmUgaXMgbW9yZSB0aGFuIG9uZSBjb21wb3NpdG9yIG91dCB0aGVyZS4uIGFuZCBpZgo+Pj4+IHNv
bWUgd2F5bGFuZCBjb21wb3NpdG9ycyBhcmUgZ29pbmcgdGhpcyByb3V0ZSwgdGhleSBjYW4gYWxz
byBpbXBsZW1lbnQKPj4+PiB0aGUgc2FtZSBtZWNoYW5pc20gaW4gdXNlcnNwYWNlIHVzaW5nIHRo
ZSBzeXNmcyB0aGF0IGRldmZyZXEgZXhwb3J0cy4KPj4+Pgo+Pj4+IEJ1dCBpdCBzb3VuZHMgc2lt
cGxlciB0byBtZSBmb3IgdGhlIGNvbXBvc2l0b3IgdG8gaGF2ZSBhIHNvcnQgb2YgImdhbWUKPj4+
PiBtb2RlIiBmb3IgZnVsbHNjcmVlbiBnYW1lcy4uIEknbSBsZXNzIHdvcnJpZWQgYWJvdXQgVUkg
aW50ZXJhY3RpdmUKPj4+PiB3b3JrbG9hZHMsIGJvb3N0aW5nIHRoZSBHUFUgZnJlcSB1cG9uIHN1
ZGRlbiBhY3Rpdml0eSBhZnRlciBhIHBlcmlvZAo+Pj4+IG9mIGluYWN0aXZpdHkgc2VlbXMgdG8g
d29yayByZWFzb25hYmx5IHdlbGwgdGhlcmUuCj4+PiBBdCBsZWFzdCBBTUQgaGFyZHdhcmUgaXMg
YWxyZWFkeSBjYXBhYmxlIG9mIGZsaXBwaW5nIGZyYW1lcyBvbiBHUFUgZXZlbnRzIGxpa2UgZmlu
aXNoaW5nIHJlbmRlcmluZyAob3IgdXBsb2FkaW5nIGV0YykuCj4+Pgo+Pj4gQnkgd2FpdGluZyBp
biB1c2Vyc3BhY2Ugb24gdGhlIENQVSBiZWZvcmUgc2VuZCB0aGUgZnJhbWUgdG8gdGhlIGhhcmR3
YXJlIHlvdSBhcmUgY29tcGxldGVseSBraWxsaW5nIG9mIHN1Y2ggZmVhdHVyZXMuCj4+Pgo+Pj4g
Rm9yIGNvbXBvc2luZyB1c2UgY2FzZXMgdGhhdCBtYWtlcyBzZW5zZSwgYnV0IGNlcnRhaW5seSBu
b3QgZm9yIGZ1bGwgc2NyZWVuIGFwcGxpY2F0aW9ucyBhcyBmYXIgYXMgSSBjYW4gc2VlLgo+PiBF
dmVuIGZvciBmdWxsc2NyZWVuLCB0aGUgY3VycmVudCBLTVMgQVBJIG9ubHkgYWxsb3dzIHF1ZXVp
bmcgYSBzaW5nbGUgcGFnZSBmbGlwIHBlciBDUlRDLCB3aXRoIG5vIHdheSB0byBjYW5jZWwgb3Ig
b3RoZXJ3aXNlIG1vZGlmeSBpdC4gVGhlcmVmb3JlLCBhIFdheWxhbmQgY29tcG9zaXRvciBoYXMg
dG8gc2V0IGEgZGVhZGxpbmUgZm9yIHRoZSBuZXh0IHJlZnJlc2ggY3ljbGUsIGFuZCB3aGVuIHRo
ZSBkZWFkbGluZSBwYXNzZXMsIGl0IGhhcyB0byBzZWxlY3QgdGhlIGJlc3QgYnVmZmVyIGF2YWls
YWJsZSBmb3IgdGhlIGZ1bGxzY3JlZW4gc3VyZmFjZS4gVG8gbWFrZSBzdXJlIHRoZSBmbGlwIHdp
bGwgbm90IG1pc3MgdGhlIG5leHQgcmVmcmVzaCBjeWNsZSwgdGhlIGNvbXBvc2l0b3IgaGFzIHRv
IHBpY2sgYW4gaWRsZSBidWZmZXIuIElmIGl0IHBpY2tzIGEgbm9uLWlkbGUgYnVmZmVyLCBhbmQg
dGhlIHBlbmRpbmcgcmVuZGVyaW5nIGRvZXMgbm90IGZpbmlzaCBpbiB0aW1lIGZvciB2ZXJ0aWNh
bCBibGFuaywgdGhlIGZsaXAgd2lsbCBiZSBkZWxheWVkIGJ5IGF0IGxlYXN0IG9uZSByZWZyZXNo
IGN5Y2xlLCB3aGljaCByZXN1bHRzIGluIHZpc2libGUgc3R1dHRlcmluZy4KPj4KPj4gKFVudGls
IHRoZSBkZWFkbGluZSBwYXNzZXMsIHRoZSBXYXlsYW5kIGNvbXBvc2l0b3IgY2FuJ3QgZXZlbiBr
bm93IGlmIGEgcHJldmlvdXNseSBmdWxsc2NyZWVuIHN1cmZhY2Ugd2lsbCBzdGlsbCBiZSBmdWxs
c2NyZWVuIGZvciB0aGUgbmV4dCByZWZyZXNoIGN5Y2xlKQo+IAo+IFdlbGwgdGhlbiBsZXQncyBl
eHRlbmQgdGhlIEtNUyBBUEkgaW5zdGVhZCBvZiBoYWNraW5nIHRvZ2V0aGVyIHdvcmthcm91bmRz
IGluIHVzZXJzcGFjZS4KClRoYXQncyBpbmRlZWQgYSBwb3NzaWJsZSBzb2x1dGlvbiBmb3IgdGhl
IGZ1bGxzY3JlZW4gLyBkaXJlY3Qgc2Nhbm91dCBjYXNlLgoKTm90IGZvciB0aGUgZ2VuZXJhbCBj
b21wb3NpdGluZyBjYXNlIHRob3VnaCwgc2luY2UgYSBjb21wb3NpdG9yIGRvZXMgbm90IHdhbnQg
dG8gY29tcG9zaXRlIG11bHRpcGxlIG91dHB1dCBmcmFtZXMgcGVyIGRpc3BsYXkgcmVmcmVzaCBj
eWNsZSwgc28gaXQgaGFzIHRvIG1ha2Ugc3VyZSB0aGUgb25lIGZyYW1lIGhpdHMgdGhlIHRhcmdl
dC4KCgotLSAKRWFydGhsaW5nIE1pY2hlbCBEw6RuemVyICAgICAgICAgICAgICAgfCAgICAgICAg
ICAgICAgIGh0dHBzOi8vcmVkaGF0LmNvbQpMaWJyZSBzb2Z0d2FyZSBlbnRodXNpYXN0ICAgICAg
ICAgICAgIHwgICAgICAgICAgICAgTWVzYSBhbmQgWCBkZXZlbG9wZXIKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
