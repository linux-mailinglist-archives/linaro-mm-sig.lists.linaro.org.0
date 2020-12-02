Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D63B2CC7A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 21:23:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CA34665F2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 20:23:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2CD6266608; Wed,  2 Dec 2020 20:23:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8850B665CA;
	Wed,  2 Dec 2020 20:22:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E89C766597
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 20:22:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C8A40665CA; Wed,  2 Dec 2020 20:22:51 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by lists.linaro.org (Postfix) with ESMTPS id 817A466597
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 20:22:50 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-424-Ixn4TkeAOOycxeVYL8XwNQ-1; Wed, 02 Dec 2020 15:22:48 -0500
X-MC-Unique: Ixn4TkeAOOycxeVYL8XwNQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 62C97185E497;
 Wed,  2 Dec 2020 20:22:45 +0000 (UTC)
Received: from [10.36.114.61] (ovpn-114-61.ams2.redhat.com [10.36.114.61])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7BAEB5D6AC;
 Wed,  2 Dec 2020 20:22:40 +0000 (UTC)
To: Minchan Kim <minchan@kernel.org>, Michal Hocko <mhocko@suse.com>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-3-minchan@kernel.org>
 <8f006a4a-c21d-9db3-5493-fb1cc651b0cf@redhat.com>
 <20201202154915.GU17338@dhcp22.suse.cz> <X8e9tSwcsrEsAv1O@google.com>
 <20201202164834.GV17338@dhcp22.suse.cz> <X8fU1ddmsSfuV6sD@google.com>
 <20201202185107.GW17338@dhcp22.suse.cz> <X8fqU82GXmu57f7V@google.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <f0e980cb-cc74-82e8-6ccf-09030a96103a@redhat.com>
Date: Wed, 2 Dec 2020 21:22:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <X8fqU82GXmu57f7V@google.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, Brian.Starkey@arm.com,
 hyesoo.yu@samsung.com, LKML <linux-kernel@vger.kernel.org>,
 willy@infradead.org, linaro-mm-sig@lists.linaro.org,
 linux-mm <linux-mm@kvack.org>, john.stultz@linaro.org,
 christian.koenig@amd.com, joaodias@google.com, hridya@google.com,
 iamjoonsoo.kim@lge.com, pullip.cho@samsung.com, surenb@google.com,
 Andrew Morton <akpm@linux-foundation.org>, vbabka@suse.cz,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/4] mm: introduce cma_alloc_bulk API
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

T24gMDIuMTIuMjAgMjA6MjYsIE1pbmNoYW4gS2ltIHdyb3RlOgo+IE9uIFdlZCwgRGVjIDAyLCAy
MDIwIGF0IDA3OjUxOjA3UE0gKzAxMDAsIE1pY2hhbCBIb2NrbyB3cm90ZToKPj4gT24gV2VkIDAy
LTEyLTIwIDA5OjU0OjI5LCBNaW5jaGFuIEtpbSB3cm90ZToKPj4+IE9uIFdlZCwgRGVjIDAyLCAy
MDIwIGF0IDA1OjQ4OjM0UE0gKzAxMDAsIE1pY2hhbCBIb2NrbyB3cm90ZToKPj4+PiBPbiBXZWQg
MDItMTItMjAgMDg6MTU6NDksIE1pbmNoYW4gS2ltIHdyb3RlOgo+Pj4+PiBPbiBXZWQsIERlYyAw
MiwgMjAyMCBhdCAwNDo0OToxNVBNICswMTAwLCBNaWNoYWwgSG9ja28gd3JvdGU6Cj4+Pj4gWy4u
Ll0KPj4+Pj4+IFdlbGwsIHdoYXQgSSBjYW4gc2VlIGlzIHRoYXQgdGhpcyBuZXcgaW50ZXJmYWNl
IGlzIGFuIGFudGlwYXRlcm4gdG8gb3VyCj4+Pj4+PiBhbGxvY2F0aW9uIHJvdXRpbmVzLiBXZSB0
ZW5kIHRvIGNvbnRyb2wgYWxsb2NhdGlvbnMgYnkgZ2ZwIG1hc2sgeWV0IHlvdQo+Pj4+Pj4gYXJl
IGludHJvZHVjaW5nIGEgYm9vbCBwYXJhbWV0ZXIgdG8gbWFrZSBzb21ldGhpbmcgZmFzdGVyLi4u
IFdoYXQgdGhhdAo+Pj4+Pj4gcmVhbGx5IG1lYW5zIGlzIHJhdGhlciBhcmJpdHJhcnkuIFdvdWxk
IGl0IG1ha2UgbW9yZSBzZW5zZSB0byB0ZWFjaAo+Pj4+Pj4gY21hX2FsbG9jIHJlc3AuIGFsbG9j
X2NvbnRpZ19yYW5nZSB0byByZWNvZ25pemUgR0ZQX05PV0FJVCwgR0ZQX05PUkVUUlkgcmVzcC4K
Pj4+Pj4+IEdGUF9SRVRSWV9NQVlGQUlMIGluc3RlYWQ/Cj4+Pj4+Cj4+Pj4+IElmIHdlIHVzZSBj
bWFfYWxsb2MsIHRoYXQgaW50ZXJmYWNlIHJlcXVpcmVzICJhbGxvY2F0ZSBvbmUgYmlnIG1lbW9y
eQo+Pj4+PiBjaHVuayIuIElPVywgcmV0dXJuIHZhbHVlIGlzIGp1c3Qgc3RydWN0IHBhZ2UgYW5k
IGV4cGVjdGVkIHRoYXQgdGhlIHBhZ2UKPj4+Pj4gaXMgYSBiaWcgY29udGlndW9zIG1lbW9yeS4g
VGhhdCBtZWFucyBpdCBjb3VsZG4ndCBoYXZlIGEgaG9sZSBpbiB0aGUKPj4+Pj4gcmFuZ2UuCj4+
Pj4+IEhvd2V2ZXIgdGhlIGlkZWEgaGVyZSwgd2hhdCB3ZSBhc2tlZCBpcyBtdWNoIHNtYWxsZXIg
Y2h1bmsgcmF0aGVyCj4+Pj4+IHRoYW4gYSBiaWcgY29udGlndW91cyBtZW1vcnkgc28gd2UgY291
bGQgc2tpcCBzb21lIG9mIHBhZ2VzIGlmIHRoZXkgYXJlCj4+Pj4+IHJhbmRvbWx5IHBpbm5lZChs
b25nLXRlcm0vc2hvcnQtdGVybSB3aGF0ZXZlcikgYW5kIHNlYXJjaCBvdGhlciBwYWdlcwo+Pj4+
PiBpbiB0aGUgQ01BIGFyZWEgdG8gYXZvaWQgbG9uZyBzdGFsbC4gVGh1cywgaXQgY291bGRuJ3Qg
d29yayB3aXRoIGV4aXNpbmcKPj4+Pj4gY21hX2FsbG9jIEFQSSB3aXRoIHNpbXBsZSBnZnBfbWFr
Lgo+Pj4+Cj4+Pj4gSSByZWFsbHkgZG8gbm90IHNlZSB0aGF0IGFzIHNvbWV0aGluZyByZWFsbHkg
YWxpZW50IHRvIHRoZSBjbWFfYWxsb2MKPj4+PiBpbnRlcmZhY2UuIEFsbCB5b3Ugc2hvdWxkIGNh
cmUgYWJvdXQsIHJlYWxseSwgaXMgd2hhdCBzaXplIG9mIHRoZSBvYmplY3QKPj4+PiB5b3Ugd2Fu
dCBhbmQgaG93IGhhcmQgdGhlIHN5c3RlbSBzaG91bGQgdHJ5LiBJZiB5b3UgaGF2ZSBhIHByb2Js
ZW0gd2l0aAo+Pj4+IGFuIGludGVybmFsIGltcGxlbWVudGF0aW9uIG9mIENNQSBhbmQgaG93IGl0
IGNob29zZXMgYSByYW5nZSBhbmQgZGVhbAo+Pj4+IHdpdGggcGlubmVkIHBhZ2VzIHRoZW4gaXQg
c2hvdWxkIGJlIGFkZHJlc3NlZCBpbnNpZGUgdGhlIENNQSBhbGxvY2F0b3IuCj4+Pj4gSSBzdXNw
ZWN0IHRoYXQgeW91IGFyZSBlZmZlY3RpdmVsbHkgdHJ5aW5nIHRvIHdvcmthcm91bmQgdGhvc2Ug
cHJvYmxlbXMKPj4+PiBieSBhIHNpZGUgaW1wbGVtZW50YXRpb24gd2l0aCBhIHNsaWdodGx5IGRp
ZmZlcmVudCBBUEkuIE9yIG1heWJlIEkgc3RpbGwKPj4+PiBkbyBub3QgZm9sbG93IHRoZSBhY3R1
YWwgcHJvYmxlbS4KPj4+PiAgCj4+Pj4+PiBJIGFtIG5vdCBkZWVwbHkgZmFtaWxpYXIgd2l0aCB0
aGUgY21hIGFsbG9jYXRvciBzbyBzb3JyeSBmb3IgYQo+Pj4+Pj4gcG90ZW50aWFsbHkgc3R1cGlk
IHF1ZXN0aW9uLiBXaHkgZG9lcyBhIGJ1bGsgaW50ZXJmYWNlIHBlcmZvcm1zIGJldHRlcgo+Pj4+
Pj4gdGhhbiByZXBlYXRlZCBjYWxscyB0byBjbWFfYWxsb2M/IElzIHRoaXMgYmVjYXVzZSBhIGZh
aWx1cmUgd291bGQgaGVscAo+Pj4+Pj4gdG8gbW92ZSBvbiB0byB0aGUgbmV4dCBwZm4gcmFuZ2Ug
d2hpbGUgYSByZXBlYXRlZCBjYWxsIHdvdWxkIGhhdmUgdG8KPj4+Pj4+IGRlYWwgd2l0aCB0aGUg
c2FtZSByYW5nZT8KPj4+Pj4KPj4+Pj4gWXViLCB0cnVlIHdpdGggb3RoZXIgb3ZlcmhlYWRzKGUu
Zy4sIG1pZ3JhdGlvbiByZXRyaWFsLCB3YWl0aW5nIHdyaXRlYmFjawo+Pj4+PiBQQ1AvTFJVIGRy
YWluaW5nIElQSSkKPj4+Pgo+Pj4+IFdoeSBjYW5ub3QgdGhpcyBiZSBpbXBsZW1lbnRlZCBpbiB0
aGUgY21hX2FsbG9jIGxheWVyPyBJIG1lYW4geW91IGNhbgo+Pj4+IGNhY2hlIGZhaWxlZCBjYXNl
cyBhbmQgb3B0aW1pemUgdGhlIHByb3BlciBwZm4gcmFuZ2Ugc2VhcmNoLgo+Pj4KPj4+IFNvIGRv
IHlvdSBzdWdnZXN0IHRoaXM/Cj4+Pgo+Pj4gZW51bSBjbWFfYWxsb2NfbW9kZSB7Cj4+PiAJQ01B
X0FMTE9DX05PUk1BTCwKPj4+IAlDTUFfQUxMT0NfRkFJTF9GQVNULAo+Pj4gfTsKPj4+Cj4+PiBz
dHJ1Y3QgcGFnZSAqY21hX2FsbG9jKHN0cnVjdCBjbWEgKmNtYSwgc2l6ZV90IGNvdW50LCB1bnNp
Z25lZCBpbnQKPj4+IAlhbGlnbiwgZW51bSBjbWFfYWxsb2NfbW9kZSBtb2RlKTsKPj4+Cj4+PiA+
RnJvbSBub3cgb24sIGNtYV9hbGxvYyB3aWxsIGtlZXAgbGFzdCBmYWlsZWQgcGZuIGFuZCB0aGVu
IHN0YXJ0IHRvCj4+PiBzZWFyY2ggZnJvbSB0aGUgbmV4dCBwZm4gZm9yIGJvdGggQ01BX0FMTE9D
X05PUk1BTCBhbmQKPj4+IENNQV9BTExPQ19GQUlMX0ZBU1QgaWYgcmVxdWVzdGVkIHNpemUgZnJv
bSB0aGUgY2FjaGVkIHBmbiBpcyBva2F5Cj4+PiB3aXRoaW4gQ01BIGFyZWEgYW5kIHRoZW4gd3Jh
cGFyb3VuZCBpdCBjb3VsZG4ndCBmaW5kIHJpZ2h0IHBhZ2VzCj4+PiBmcm9tIHRoZSBjYWNoZWQg
cGZuLiBPdGhld2lzZSwgdGhlIGNhY2hlZCBwZm4gd2lsbCByZXNldCB0byB0aGUgemVybwo+Pj4g
c28gdGhhdCBpdCBzdGFydHMgdGhlIHNlYXJjaCBmcm9tIHRoZSAwLiBJIGxpa2UgdGhlIGlkZWEg
c2luY2UgaXQncwo+Pj4gZ2VuZXJhbCBpbXByb3ZlbWVudCwgSSB0aGluay4KPj4KPj4gWWVzIHNv
bWV0aGluZyBsaWtlIHRoYXQuIFRoZXJlIGFyZSBtb3JlIG9wdGlvbnMgdG8gYmUgY2xldmVyIGhl
cmUgLSBlLmcuCj4+IHRyYWNrIHJhbmdlcyBldGMuIGJ1dCBJIGFtIG5vdCBzdXJlIHRoaXMgaXMg
d29ydGggdGhlIGNvbXBsZXhpdHkuCj4gCj4gQWdyZWUuIEp1c3QgbGFzdCBwZm4gY2FjaGluZyB3
b3VsZCBiZSBnb29kIGVub3VnaCBhcyBzaW1wbGUgc3RhcnQuCj4gCj4+Cj4+PiBGdXJ0aGVtb3Jl
LCBXaXRoIENNQV9BTExPQ19GQUlMX0ZBU1QsIGl0IGNvdWxkIGF2b2lkIHNldmVyYWwgb3Zlcmhl
YWRzCj4+PiBhdCB0aGUgY29zdCBvZiBzYWNyaWZpY2luZyBhbGxvY2F0aW9uIHN1Y2Nlc3MgcmF0
aW8gbGlrZSBHRlBfTk9SRVRSWS4KPj4KPj4gSSBhbSBzdGlsbCBub3Qgc3VyZSBhIHNwZWNpZmlj
IGZsYWcgaXMgYSBnb29kIGludGVyZmFjZS4gUmVhbGx5IGNhbiB0aGlzCj4+IGJlIGdmcF9tYXNr
IGluc3RlYWQ/Cj4gCj4gSSBhbSBub3Qgc3Ryb25nKGV2ZW4sIEkgZGlkIGl0IHdpdGggR0ZQX05P
UkVUUlkpIGJ1dCBEYXZpZCB3YW50ZWQgdG8KPiBoYXZlIHNwZWNpYWwgbW9kZSBhbmQgSSBhZ3Jl
ZWQgd2hlbiBoZSBtZW50aW9uZWQgQUxMT0NfQ09OVElHX0hBUkQgYXMKPiBvbmUgb2Ygb3B0aW9u
cyBpbiBmdXR1cmUoaXQgd291bGQgYmUgaGFyZCB0byBpbmRpY2F0ZSB0aGF0IG1vZGUgd2l0aAo+
IGdmcCBmbGFncykuCgpJIGNhbid0IHRlbGwgcmVnYXJkaW5nIHRoZSBDTUEgaW50ZXJmYWNlLCBi
dXQgZm9yIHRoZSBhbGxvY19jb250aWcoKQppbnRlcmZhY2UgSSB0aGluayBtb2RlcyBtYWtlIHNl
bnNlLiBZZXMsIGl0J3MgZGlmZmVyZW50IHRvIG90aGVyCmFsbG9jYXRlcnMsIGJ1dCB0aGUgY29u
dGlnIHJhbmdlIGFsbG9jYXRlciBpcyBkaWZmZXJlbnQgYWxyZWFkeS4gRS5nLiwKdGhlIENNQSBh
bGxvY2F0ZXIgbW9zdGx5IGhpZGVzICJ3aGljaCBleGFjdCBQRk5zIHlvdSB0cnkgdG8gYWxsb2Nh
dGUiLgoKSW4gdGhlIGNvbnRpZyByYW5nZSBhbGxvY2F0ZXIsIGdmcCBmbGFncyBhcmUgY3VycmVu
dGx5IHVzZWQgdG8gZXhwcmVzcwpob3cgdG8gYWxsb2NhdGUgcGFnZXMgdXNlZCBhcyBtaWdyYXRp
b24gdGFyZ2V0cy4gSSBkb24ndCB0aGluayBtYW5nbGluZwppbiBvdGhlciBnZnAgZmxhZ3MgKG9y
IGV2ZW4gb3ZlcmxvYWRpbmcgdGhlbSkgbWFrZXMgdGhpbmdzIGEgbG90CmNsZWFyZXIuIEUuZy4s
IEdGUF9OT1JFVFJZOiBkb24ndCByZXRyeSB0byBhbGxvY2F0ZSBtaWdyYXRpb24gdGFyZ2V0cz8K
ZG9uJ3QgcmV0cnkgdG8gbWlncmF0ZSBwYWdlcz8gYm90aD8KCkFzIEkgc2FpZCwgb3RoZXIgYXNw
ZWN0cyBtaWdodCBiZSBoYXJkZXIgdG8gbW9kZWwgKGUuZy4sIGRvbid0IGRyYWluCkxSVSkgYW5k
IGhpZGluZyB0aGVtIGJlaGluZCBnZW5lcmljIGdmcCBmbGFncyAoZS5nLiwgR0ZQX05PUkVUUlkp
IGZlZWxzCndyb25nLgoKV2l0aCB0aGUgbW9kZSwgd2UncmUgZXhwcmVzc2luZyBkZXRhaWxzIGZv
ciB0aGUgbmVjZXNzYXJ5IHBhZ2UKbWlncmF0aW9uLiBTdWdnZXN0aW9ucyBvbiBob3cgdG8gbW9k
ZWwgdGhhdCBhcmUgd2VsY29tZS4KCi0tIApUaGFua3MsCgpEYXZpZCAvIGRoaWxkZW5iCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
