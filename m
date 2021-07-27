Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9613D78A7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 16:41:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31CC5634E1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 14:41:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 09822634D8; Tue, 27 Jul 2021 14:41:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 979B161A44;
	Tue, 27 Jul 2021 14:41:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2E1F56130A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 14:41:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2BC3F61A44; Tue, 27 Jul 2021 14:41:11 +0000 (UTC)
Received: from netline-mail3.netline.ch (mail.netline.ch [148.251.143.180])
 by lists.linaro.org (Postfix) with ESMTP id 0CD366130A
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 14:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by netline-mail3.netline.ch (Postfix) with ESMTP id 1247720201C;
 Tue, 27 Jul 2021 16:41:08 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at netline-mail3.netline.ch
Received: from netline-mail3.netline.ch ([127.0.0.1])
 by localhost (netline-mail3.netline.ch [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id LbFgcm9rFac0; Tue, 27 Jul 2021 16:41:06 +0200 (CEST)
Received: from thor (24.99.2.85.dynamic.wline.res.cust.swisscom.ch
 [85.2.99.24])
 by netline-mail3.netline.ch (Postfix) with ESMTPA id 368B120201A;
 Tue, 27 Jul 2021 16:41:06 +0200 (CEST)
Received: from localhost ([::1]) by thor with esmtp (Exim 4.94.2)
 (envelope-from <michel@daenzer.net>)
 id 1m8OGW-000qa4-SG; Tue, 27 Jul 2021 16:41:04 +0200
To: Rob Clark <robdclark@gmail.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>
Message-ID: <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
Date: Tue, 27 Jul 2021 16:41:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210726233854.2453899-1-robdclark@gmail.com>
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
Cc: Matthew Brost <matthew.brost@intel.com>, Rob Clark <robdclark@chromium.org>,
 Jack Zhang <Jack.Zhang1@amd.com>, open list <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMS0wNy0yNyAxOjM4IGEubS4sIFJvYiBDbGFyayB3cm90ZToKPiBGcm9tOiBSb2IgQ2xh
cmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4gCj4gQmFzZWQgb24gZGlzY3Vzc2lvbiBmcm9t
IGEgcHJldmlvdXMgc2VyaWVzWzFdIHRvIGFkZCBhICJib29zdCIgbWVjaGFuaXNtCj4gd2hlbiwg
Zm9yIGV4YW1wbGUsIHZibGFuayBkZWFkbGluZXMgYXJlIG1pc3NlZC4gIEluc3RlYWQgb2YgYSBi
b29zdAo+IGNhbGxiYWNrLCB0aGlzIGFwcHJvYWNoIGFkZHMgYSB3YXkgdG8gc2V0IGEgZGVhZGxp
bmUgb24gdGhlIGZlbmNlLCBieQo+IHdoaWNoIHRoZSB3YWl0ZXIgd291bGQgbGlrZSB0byBzZWUg
dGhlIGZlbmNlIHNpZ25hbGxlZC4KPiAKPiBJJ3ZlIG5vdCB5ZXQgaGFkIGEgY2hhbmNlIHRvIHJl
LXdvcmsgdGhlIGRybS9tc20gcGFydCBvZiB0aGlzLCBidXQKPiB3YW50ZWQgdG8gc2VuZCB0aGlz
IG91dCBhcyBhbiBSRkMgaW4gY2FzZSBJIGRvbid0IGhhdmUgYSBjaGFuY2UgdG8KPiBmaW5pc2gg
dGhlIGRybS9tc20gcGFydCB0aGlzIHdlZWsuCj4gCj4gT3JpZ2luYWwgZGVzY3JpcHRpb246Cj4g
Cj4gSW4gc29tZSBjYXNlcywgbGlrZSBkb3VibGUtYnVmZmVyZWQgcmVuZGVyaW5nLCBtaXNzaW5n
IHZibGFua3MgY2FuCj4gdHJpY2sgdGhlIEdQVSBpbnRvIHJ1bm5pbmcgYXQgYSBsb3dlciBmcmVx
dWVuY2UsIHdoZW4gcmVhbGx5IHdlCj4gd2FudCB0byBiZSBydW5uaW5nIGF0IGEgaGlnaGVyIGZy
ZXF1ZW5jeSB0byBub3QgbWlzcyB0aGUgdmJsYW5rcwo+IGluIHRoZSBmaXJzdCBwbGFjZS4KPiAK
PiBUaGlzIGlzIHBhcnRpYWxseSBpbnNwaXJlZCBieSBhIHRyaWNrIGk5MTUgZG9lcywgYnV0IGlt
cGxlbWVudGVkCj4gdmlhIGRtYS1mZW5jZSBmb3IgYSBjb3VwbGUgb2YgcmVhc29uczoKPiAKPiAx
KSBUbyBjb250aW51ZSB0byBiZSBhYmxlIHRvIHVzZSB0aGUgYXRvbWljIGhlbHBlcnMKPiAyKSBU
byBzdXBwb3J0IGNhc2VzIHdoZXJlIGRpc3BsYXkgYW5kIGdwdSBhcmUgZGlmZmVyZW50IGRyaXZl
cnMKPiAKPiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85MDMz
MS8KClVuZm9ydHVuYXRlbHksIG5vbmUgb2YgdGhlc2UgYXBwcm9hY2hlcyB3aWxsIGhhdmUgdGhl
IGZ1bGwgaW50ZW5kZWQgZWZmZWN0IG9uY2UgV2F5bGFuZCBjb21wb3NpdG9ycyBzdGFydCB3YWl0
aW5nIGZvciBjbGllbnQgYnVmZmVycyB0byBiZWNvbWUgaWRsZSBiZWZvcmUgdXNpbmcgdGhlbSBm
b3IgYW4gb3V0cHV0IGZyYW1lICh0byBwcmV2ZW50IG91dHB1dCBmcmFtZXMgZnJvbSBnZXR0aW5n
IGRlbGF5ZWQgYnkgY2xpZW50IHdvcmspLiBTZWUgaHR0cHM6Ly9naXRsYWIuZ25vbWUub3JnL0dO
T01FL211dHRlci8tL21lcmdlX3JlcXVlc3RzLzE4ODAgKHNoYW1lbGVzcyBwbHVnIDopIGZvciBh
IHByb29mIG9mIGNvbmNlcHQgb2YgdGhpcyBmb3IgbXV0dGVyLiBUaGUgYm9vc3Qgd2lsbCBvbmx5
IGFmZmVjdCB0aGUgY29tcG9zaXRvcidzIG93biBHUFUgd29yaywgbm90IHRoZSBjbGllbnQgd29y
ayAod2hpY2ggbWVhbnMgbm8gZWZmZWN0IGF0IGFsbCBmb3IgZnVsbHNjcmVlbiBhcHBzIHdoZXJl
IHRoZSBjb21wb3NpdG9yIGNhbiBzY2FuIG91dCB0aGUgY2xpZW50IGJ1ZmZlcnMgZGlyZWN0bHkp
LgoKCi0tIApFYXJ0aGxpbmcgTWljaGVsIETDpG56ZXIgICAgICAgICAgICAgICB8ICAgICAgICAg
ICAgICAgaHR0cHM6Ly9yZWRoYXQuY29tCkxpYnJlIHNvZnR3YXJlIGVudGh1c2lhc3QgICAgICAg
ICAgICAgfCAgICAgICAgICAgICBNZXNhIGFuZCBYIGRldmVsb3BlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
