Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DDD2F46A3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 09:40:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C4F76672D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 08:40:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EC7A166736; Wed, 13 Jan 2021 08:40:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,RDNS_NONE,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27B306672C;
	Wed, 13 Jan 2021 08:39:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5DF39666E9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 08:39:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4435D6672C; Wed, 13 Jan 2021 08:39:38 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (unknown [63.128.21.124])
 by lists.linaro.org (Postfix) with ESMTPS id 508DB666E9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 08:39:37 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-520-5ykmI9XhN-2xGAaPK57QBw-1; Wed, 13 Jan 2021 03:39:32 -0500
X-MC-Unique: 5ykmI9XhN-2xGAaPK57QBw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2490115720;
 Wed, 13 Jan 2021 08:39:30 +0000 (UTC)
Received: from [10.36.114.135] (ovpn-114-135.ams2.redhat.com [10.36.114.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F389560BF1;
 Wed, 13 Jan 2021 08:39:26 +0000 (UTC)
To: Minchan Kim <minchan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-3-minchan@kernel.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <723e935f-3aa4-2c55-8d69-fcaf71f4eb4c@redhat.com>
Date: Wed, 13 Jan 2021 09:39:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210113012143.1201105-3-minchan@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, hyesoo.yu@samsung.com,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 2/4] mm: failfast mode with
 __GFP_NORETRY in alloc_contig_range
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

T24gMTMuMDEuMjEgMDI6MjEsIE1pbmNoYW4gS2ltIHdyb3RlOgo+IENvbnRpZ3VvdXMgbWVtb3J5
IGFsbG9jYXRpb24gY2FuIGJlIHN0YWxsZWQgZHVlIHRvIHdhaXRpbmcKPiBvbiBwYWdlIHdyaXRl
YmFjayBhbmQvb3IgcGFnZSBsb2NrIHdoaWNoIGNhdXNlcyB1bnByZWRpY3RhYmxlCj4gZGVsYXku
IEl0J3MgYSB1bmF2b2lkYWJsZSBjb3N0IGZvciB0aGUgcmVxdWVzdG9yIHRvIGdldCAqYmlnKgo+
IGNvbnRpZ3VvdXMgbWVtb3J5IGJ1dCBpdCdzIGV4cGVuc2l2ZSBmb3IgKnNtYWxsKiBjb250aWd1
b3VzCj4gbWVtb3J5KGUuZy4sIG9yZGVyLTQpIGJlY2F1c2UgY2FsbGVyIGNvdWxkIHJldHJ5IHRo
ZSByZXF1ZXN0Cj4gaW4gZGlmZnJlbnQgcmFuZ2Ugd2hlcmUgd291bGQgaGF2ZSBlYXN5IG1pZ3Jh
dGFibGUgcGFnZXMKPiB3aXRob3V0IHN0YWxsaW5nLgoKcy9kaWZmcmVudC9kaWZmZXJlbnQvCgo+
IAo+IFRoaXMgcGF0Y2ggaW50cm9kdWNlIF9fR0ZQX05PUkVUUlkgYXMgY29tcGFjdGlvbiBnZnBf
bWFzayBpbgo+IGFsbG9jX2NvbnRpZ19yYW5nZSBzbyBpdCB3aWxsIGZhaWwgZmFzdCB3aXRob3V0
IGJsb2NraW5nCj4gd2hlbiBpdCBlbmNvdW50ZXJzIHBhZ2VzIG5lZWRlZCB3YWl0dGluZy4KCnMv
d2FpdHRpbmcvd2FpdGluZy8KCj4gCj4gU2lnbmVkLW9mZi1ieTogTWluY2hhbiBLaW0gPG1pbmNo
YW5Aa2VybmVsLm9yZz4KPiAtLS0KPiAgbW0vcGFnZV9hbGxvYy5jIHwgOCArKysrKystLQo+ICAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9tbS9wYWdlX2FsbG9jLmMgYi9tbS9wYWdlX2FsbG9jLmMKPiBpbmRleCA1YjM5MjNk
YjkxNTguLmZmNDFjZWI0ZGI1MSAxMDA2NDQKPiAtLS0gYS9tbS9wYWdlX2FsbG9jLmMKPiArKysg
Yi9tbS9wYWdlX2FsbG9jLmMKPiBAQCAtODQ4OSwxMiArODQ4OSwxNiBAQCBzdGF0aWMgaW50IF9f
YWxsb2NfY29udGlnX21pZ3JhdGVfcmFuZ2Uoc3RydWN0IGNvbXBhY3RfY29udHJvbCAqY2MsCj4g
IAl1bnNpZ25lZCBpbnQgbnJfcmVjbGFpbWVkOwo+ICAJdW5zaWduZWQgbG9uZyBwZm4gPSBzdGFy
dDsKPiAgCXVuc2lnbmVkIGludCB0cmllcyA9IDA7Cj4gKwl1bnNpZ25lZCBpbnQgbWF4X3RyaWVz
ID0gNTsKPiAgCWludCByZXQgPSAwOwo+ICAJc3RydWN0IG1pZ3JhdGlvbl90YXJnZXRfY29udHJv
bCBtdGMgPSB7Cj4gIAkJLm5pZCA9IHpvbmVfdG9fbmlkKGNjLT56b25lKSwKPiAgCQkuZ2ZwX21h
c2sgPSBHRlBfVVNFUiB8IF9fR0ZQX01PVkFCTEUgfCBfX0dGUF9SRVRSWV9NQVlGQUlMLAo+ICAJ
fTsKPiAgCj4gKwlpZiAoY2MtPmFsbG9jX2NvbnRpZyAmJiBjYy0+bW9kZSA9PSBNSUdSQVRFX0FT
WU5DKQo+ICsJCW1heF90cmllcyA9IDE7Cj4gKwo+ICAJbWlncmF0ZV9wcmVwKCk7Cj4gIAo+ICAJ
d2hpbGUgKHBmbiA8IGVuZCB8fCAhbGlzdF9lbXB0eSgmY2MtPm1pZ3JhdGVwYWdlcykpIHsKPiBA
QCAtODUxMSw3ICs4NTE1LDcgQEAgc3RhdGljIGludCBfX2FsbG9jX2NvbnRpZ19taWdyYXRlX3Jh
bmdlKHN0cnVjdCBjb21wYWN0X2NvbnRyb2wgKmNjLAo+ICAJCQkJYnJlYWs7Cj4gIAkJCX0KPiAg
CQkJdHJpZXMgPSAwOwo+IC0JCX0gZWxzZSBpZiAoKyt0cmllcyA9PSA1KSB7Cj4gKwkJfSBlbHNl
IGlmICgrK3RyaWVzID09IG1heF90cmllcykgewo+ICAJCQlyZXQgPSByZXQgPCAwID8gcmV0IDog
LUVCVVNZOwo+ICAJCQlicmVhazsKPiAgCQl9Cj4gQEAgLTg1NjIsNyArODU2Niw3IEBAIGludCBh
bGxvY19jb250aWdfcmFuZ2UodW5zaWduZWQgbG9uZyBzdGFydCwgdW5zaWduZWQgbG9uZyBlbmQs
Cj4gIAkJLm5yX21pZ3JhdGVwYWdlcyA9IDAsCj4gIAkJLm9yZGVyID0gLTEsCj4gIAkJLnpvbmUg
PSBwYWdlX3pvbmUocGZuX3RvX3BhZ2Uoc3RhcnQpKSwKPiAtCQkubW9kZSA9IE1JR1JBVEVfU1lO
QywKPiArCQkubW9kZSA9IGdmcF9tYXNrICYgX19HRlBfTk9SRVRSWSA/IE1JR1JBVEVfQVNZTkMg
OiBNSUdSQVRFX1NZTkMsCj4gIAkJLmlnbm9yZV9za2lwX2hpbnQgPSB0cnVlLAo+ICAJCS5ub19z
ZXRfc2tpcF9oaW50ID0gdHJ1ZSwKPiAgCQkuZ2ZwX21hc2sgPSBjdXJyZW50X2dmcF9jb250ZXh0
KGdmcF9tYXNrKSwKPiAKCkknbSBmaW5lIHdpdGggdXNpbmcgZ2ZwIGZsYWdzIChlLmcuLCBfX0dG
UF9OT1JFVFJZKSBhcyBsb25nIGFzIHRoZXkKZG9uJ3QgZW5hYmxlIG90aGVyIGltcGxpY2l0IGJl
aGF2aW9yIChlLmcuLCBtb3ZlIGRyYWluaW5nIFggdG8gdGhlCmNhbGxlcikgdGhhdCdzIGhhcmQg
dG8gZ2V0IGZyb20gdGhlIGZsYWcgbmFtZS4KCklNSE8sIGlmIHdlIGV2ZXIgd2FudCB0byBtb3Zl
IGRyYWluaW5nIHRvIHRoZSBjYWxsZXIsIG9yIGNoYW5nZSB0aGUKYmVoYXZpb3Igb2YgYWxsb2Nf
Y29udGlnX3JhbmdlKCkgaW4gZGlmZmVyZW50IHdheXMgKGUuZy4sIGRpc2FibGUgUENQKSwKd2Ug
d29uJ3QgZ2V0IGFyb3VuZCBpbnRyb2R1Y2luZyBhIHNlcGFyYXRlIHNldCBvZiBmbGFncyBmb3IK
YWxsb2NfY29udGlnX3JhbmdlKCkuCgpMZXQncyBzZWUgd2hhdCBNaWNoYWwgdGhpbmtzLiBUaGFu
a3MhCgotLSAKVGhhbmtzLAoKRGF2aWQgLyBkaGlsZGVuYgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
