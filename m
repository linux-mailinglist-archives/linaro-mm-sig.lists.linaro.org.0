Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7F6248585
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:59:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31C97619D1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:59:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 21FC065FCE; Tue, 18 Aug 2020 12:59:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8232566710;
	Tue, 18 Aug 2020 12:33:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 784D460665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 10:11:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 613C460BD7; Tue, 18 Aug 2020 10:11:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by lists.linaro.org (Postfix) with ESMTPS id B301560665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 10:11:19 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-460-zT6RmIalO42FbkliyL6ECA-1; Tue, 18 Aug 2020 06:11:17 -0400
X-MC-Unique: zT6RmIalO42FbkliyL6ECA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F6881DDEE;
 Tue, 18 Aug 2020 10:11:12 +0000 (UTC)
Received: from [10.36.113.168] (ovpn-113-168.ams2.redhat.com [10.36.113.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4098A5D9D2;
 Tue, 18 Aug 2020 10:11:04 +0000 (UTC)
To: Hyesoo Yu <hyesoo.yu@samsung.com>, sumit.semwal@linaro.org
References: <20200818080415.7531-1-hyesoo.yu@samsung.com>
 <CGME20200818074553epcas2p240c2129fb8186f53e03abb0a0725461c@epcas2p2.samsung.com>
 <20200818080415.7531-3-hyesoo.yu@samsung.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 WNyWQQ==
Organization: Red Hat GmbH
Message-ID: <e6a50ebb-3299-77da-757a-3380e9d0ef87@redhat.com>
Date: Tue, 18 Aug 2020 12:11:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200818080415.7531-3-hyesoo.yu@samsung.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org, minchan@kernel.org,
 linux-kernel@vger.kernel.org, christian.koenig@amd.com, lmark@codeaurora.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, robh+dt@kernel.org,
 john.stultz@linaro.org, dri-devel@lists.freedesktop.org,
 benjamin.gaignard@linaro.org, joaodias@google.com, akpm@linux-foundation.org,
 pullip.cho@samsung.com, surenb@google.com, iamjoonsoo.kim@lge.com,
 vbabka@suse.cz, Brian.Starkey@arm.com
Subject: Re: [Linaro-mm-sig] [PATCH 2/3] dma-buf: heaps: add chunk heap to
	dmabuf heaps
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

T24gMTguMDguMjAgMTA6MDQsIEh5ZXNvbyBZdSB3cm90ZToKPiBUaGlzIHBhdGNoIGFkZHMgc3Vw
cG9ydCBmb3IgYSBjaHVuayBoZWFwIHRoYXQgYWxsb3dzIGZvciBidWZmZXJzCj4gdGhhdCBhcmUg
bWFkZSB1cCBvZiBhIGxpc3Qgb2YgZml4ZWQgc2l6ZSBjaHVua3MgdGFrZW4gZnJvbSBhIENNQS4K
PiBDaHVuayBzaXplcyBhcmUgY29uZmlndXJhdGQgd2hlbiB0aGUgaGVhcHMgYXJlIGNyZWF0ZWQu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnICAgICAgfCAgIDkgKysKPiAgZHJp
dmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlICAgICB8ICAgMSArCj4gIGRyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9jaHVua19oZWFwLmMgfCAyMjIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDIzMiBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL2RtYS1idWYvaGVhcHMvY2h1bmtfaGVhcC5jCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnIGIvZHJpdmVycy9kbWEtYnVmL2hl
YXBzL0tjb25maWcKPiBpbmRleCBhNWVlZjA2Li45ODU1MmZhIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL0tj
b25maWcKPiBAQCAtMTIsMyArMTIsMTIgQEAgY29uZmlnIERNQUJVRl9IRUFQU19DTUEKPiAgCSAg
Q2hvb3NlIHRoaXMgb3B0aW9uIHRvIGVuYWJsZSBkbWEtYnVmIENNQSBoZWFwLiBUaGlzIGhlYXAg
aXMgYmFja2VkCj4gIAkgIGJ5IHRoZSBDb250aWd1b3VzIE1lbW9yeSBBbGxvY2F0b3IgKENNQSku
IElmIHlvdXIgc3lzdGVtIGhhcyB0aGVzZQo+ICAJICByZWdpb25zLCB5b3Ugc2hvdWxkIHNheSBZ
IGhlcmUuCj4gKwo+ICtjb25maWcgRE1BQlVGX0hFQVBTX0NIVU5LCj4gKwl0cmlzdGF0ZSAiRE1B
LUJVRiBDSFVOSyBIZWFwIgo+ICsJZGVwZW5kcyBvbiBETUFCVUZfSEVBUFMgJiYgRE1BX0NNQQo+
ICsJaGVscAo+ICsJICBDaG9vc2UgdGhpcyBvcHRpb24gdG8gZW5hYmxlIGRtYS1idWYgQ0hVTksg
aGVhcC4gVGhpcyBoZWFwIGlzIGJhY2tlZAo+ICsJICBieSB0aGUgQ29udGlndW91cyBNZW1vcnkg
QWxsb2NhdG9yIChDTUEpIGFuZCBhbGxvY2F0ZSB0aGUgYnVmZmVycyB0aGF0Cj4gKwkgIGFyZSBt
YWRlIHVwIHRvIGEgbGlzdCBvZiBmaXhlZCBzaXplIGNodW5rcyB0YXNrZW4gZnJvbSBDTUEuIENo
dW5rIHNpemVzCj4gKwkgIGFyZSBjb25maWd1cmF0ZWQgd2hlbiB0aGUgaGVhcHMgYXJlIGNyZWF0
ZWQuCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZSBiL2RyaXZl
cnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZQo+IGluZGV4IDZlNTRjZGUuLjNiMmEwOTg2IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9NYWtlZmlsZQo+IEBAIC0yLDMgKzIsNCBAQAo+ICBvYmoteQkJCQkJKz0g
aGVhcC1oZWxwZXJzLm8KPiAgb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19TWVNURU0pCSs9IHN5
c3RlbV9oZWFwLm8KPiAgb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19DTUEpCQkrPSBjbWFfaGVh
cC5vCj4gK29iai0kKENPTkZJR19ETUFCVUZfSEVBUFNfQ0hVTkspCSs9IGNodW5rX2hlYXAubwo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvY2h1bmtfaGVhcC5jIGIvZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL2NodW5rX2hlYXAuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5k
ZXggMDAwMDAwMC4uMWVlZmFlYwo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2RtYS1i
dWYvaGVhcHMvY2h1bmtfaGVhcC5jCj4gQEAgLTAsMCArMSwyMjIgQEAKPiArLy8gU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiArLyoKPiArICogSU9OIE1lbW9yeSBBbGxvY2F0b3Ig
Y2h1bmsgaGVhcCBleHBvcnRlcgo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjAgU2Ftc3Vu
ZyBFbGVjdHJvbmljcyBDby4sIEx0ZC4KPiArICogQXV0aG9yOiA8aHllc29vLnl1QHNhbXN1bmcu
Y29tPiBmb3IgU2Ftc3VuZyBFbGVjdHJvbmljcy4KPiArICovCj4gKwo+ICsjaW5jbHVkZSA8bGlu
dXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9jbWEuaD4KPiArI2luY2x1
ZGUgPGxpbnV4L2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPgo+ICsjaW5j
bHVkZSA8bGludXgvZG1hLWhlYXAuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1jb250aWd1b3Vz
Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9lcnIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2Vycm5vLmg+
Cj4gKyNpbmNsdWRlIDxsaW51eC9oaWdobWVtLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUu
aD4KPiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3NjYXR0ZXJs
aXN0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zY2hlZC9zaWduYWwuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L29mX3Jlc2VydmVkX21lbS5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiArCj4gKyNp
bmNsdWRlICJoZWFwLWhlbHBlcnMuaCIKPiArCj4gK3N0cnVjdCBjaHVua19oZWFwIHsKPiArCXN0
cnVjdCBkbWFfaGVhcCAqaGVhcDsKPiArCXBoeXNfYWRkcl90IGJhc2U7Cj4gKwlwaHlzX2FkZHJf
dCBzaXplOwo+ICsJYXRvbWljX3QgY3VyX3BhZ2VibG9ja19pZHg7Cj4gKwl1bnNpZ25lZCBpbnQg
bWF4X251bV9wYWdlYmxvY2tzOwo+ICsJdW5zaWduZWQgaW50IG9yZGVyOwo+ICt9Owo+ICsKPiAr
c3RhdGljIHZvaWQgY2h1bmtfaGVhcF9mcmVlKHN0cnVjdCBoZWFwX2hlbHBlcl9idWZmZXIgKmJ1
ZmZlcikKPiArewo+ICsJc3RydWN0IGNodW5rX2hlYXAgKmNodW5rX2hlYXAgPSBkbWFfaGVhcF9n
ZXRfZHJ2ZGF0YShidWZmZXItPmhlYXApOwo+ICsJcGdvZmZfdCBwZzsKPiArCj4gKwlmb3IgKHBn
ID0gMDsgcGcgPCBidWZmZXItPnBhZ2Vjb3VudDsgcGcrKykKPiArCQlfX2ZyZWVfcGFnZXMoYnVm
ZmVyLT5wYWdlc1twZ10sIGNodW5rX2hlYXAtPm9yZGVyKTsKPiArCWt2ZnJlZShidWZmZXItPnBh
Z2VzKTsKPiArCWtmcmVlKGJ1ZmZlcik7Cj4gK30KPiArCj4gK3N0YXRpYyBpbmxpbmUgdW5zaWdu
ZWQgbG9uZyBjaHVua19nZXRfbmV4dF9wZm4oc3RydWN0IGNodW5rX2hlYXAgKmNodW5rX2hlYXAp
Cj4gK3sKPiArCXVuc2lnbmVkIGxvbmcgaSA9IGF0b21pY19pbmNfcmV0dXJuKCZjaHVua19oZWFw
LT5jdXJfcGFnZWJsb2NrX2lkeCkgJQo+ICsJCWNodW5rX2hlYXAtPm1heF9udW1fcGFnZWJsb2Nr
czsKPiArCj4gKwlyZXR1cm4gUEhZU19QRk4oY2h1bmtfaGVhcC0+YmFzZSkgKyBpICogcGFnZWJs
b2NrX25yX3BhZ2VzOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGNodW5rX2FsbG9jX3BhZ2VzKHN0
cnVjdCBjaHVua19oZWFwICpjaHVua19oZWFwLCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzLAo+ICsJCQkg
ICAgIHVuc2lnbmVkIGludCBvcmRlciwgdW5zaWduZWQgaW50IGNvdW50KQo+ICt7Cj4gKwl1bnNp
Z25lZCBsb25nIGJhc2U7Cj4gKwl1bnNpZ25lZCBpbnQgaSA9IDAsIG5yX2Jsb2NrID0gMCwgbnJf
ZWxlbSwgcmV0Owo+ICsKPiArCXdoaWxlIChjb3VudCkgewo+ICsJCS8qCj4gKwkJICogSWYgdGhl
IG51bWJlciBvZiBzY2FubmVkIHBhZ2UgYmxvY2sgaXMgdGhlIHNhbWUgYXMgbWF4IGJsb2NrLAo+
ICsJCSAqIHRoZSB0cmllcyBvZiBhbGxvY2F0aW9uIGZhaWxzLgo+ICsJCSAqLwo+ICsJCWlmIChu
cl9ibG9jaysrID09IGNodW5rX2hlYXAtPm1heF9udW1fcGFnZWJsb2Nrcykgewo+ICsJCQlyZXQg
PSAtRU5PTUVNOwo+ICsJCQlnb3RvIGVycl9idWxrOwo+ICsJCX0KPiArCQliYXNlID0gY2h1bmtf
Z2V0X25leHRfcGZuKGNodW5rX2hlYXApOwo+ICsJCW5yX2VsZW0gPSBtaW5fdCh1bnNpZ25lZCBp
bnQsIGNvdW50LCBwYWdlYmxvY2tfbnJfcGFnZXMgPj4gb3JkZXIpOwo+ICsJCXJldCA9IGFsbG9j
X3BhZ2VzX2J1bGsoYmFzZSwgYmFzZSArIHBhZ2VibG9ja19ucl9wYWdlcywgTUlHUkFURV9DTUEs
Cj4gKwkJCQkgICAgICAgR0ZQX0tFUk5FTCwgb3JkZXIsIG5yX2VsZW0sIHBhZ2VzICsgaSk7CgpT
byB5b3UgYXJlIGJ5cGFzc2luZyB0aGUgY29tcGxldGUgY21hIGFsbG9jYXRvciBoZXJlLiBUaGlz
IGFsbCBzbWVsbHMKbGlrZSBhIGNvbXBsZXRlIGhhY2sgdG8gbWUuIE5vLCBJIGRvbid0IHRoaW5r
IHRoaXMgaXMgdGhlIHJpZ2h0IHdheSB0bwpzdXBwb3J0IChvciByYXRoZXIgc3BlZWQgdXAgYWxs
b2NhdGlvbnMgZm9yKSBzcGVjaWFsLCB3ZWlyZCBoYXJkd2FyZS4KCi0tIApUaGFua3MsCgpEYXZp
ZCAvIGRoaWxkZW5iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
